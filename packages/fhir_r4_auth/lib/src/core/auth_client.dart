/// Base authenticated HTTP client for FHIR
library;

import 'dart:async';
import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        AuthConfig,
        AuthState,
        HttpHeaders,
        SecureTokenStorage,
        SmartTokenResponse,
        TokenStorage,
        UserAgent;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// Base class for authenticated FHIR HTTP clients
abstract class FhirAuthClient extends http.BaseClient {
  /// Creates an authenticated client for [config]; defaults to
  /// [SecureTokenStorage], a fresh `http.Client`, and a
  /// `Logger('FhirAuthClient')` when those are not supplied.
  FhirAuthClient({
    required this.config,
    TokenStorage? tokenStorage,
    http.Client? innerClient,
    Logger? logger,
  })  : tokenStorage = tokenStorage ?? SecureTokenStorage(),
        innerClient = innerClient ?? http.Client(),
        logger = logger ?? Logger('FhirAuthClient');

  /// Authentication configuration
  final AuthConfig config;

  /// Persistence for access/refresh tokens and auth state.
  final TokenStorage tokenStorage;

  /// The underlying HTTP client used to send authenticated requests.
  final http.Client innerClient;

  /// Logger for request, refresh, and error diagnostics.
  final Logger logger;

  /// Current token response
  SmartTokenResponse? _currentTokens;

  /// The in-flight refresh operation, if one is running.
  ///
  /// Concurrent callers await this same future instead of starting their own
  /// refresh, so a burst of expired-token requests triggers exactly one token
  /// exchange. This matters with refresh-token rotation: parallel refreshes
  /// would each present the same refresh token, and the second would be
  /// rejected (and can invalidate the whole token family).
  Future<void>? _refreshInFlight;

  /// Get FHIR base URL
  FhirUri get fhirBaseUrl => config.fhirBaseUrl;

  /// Check if client is authenticated
  Future<bool> isAuthenticated() async {
    try {
      // Check memory first
      if (_currentTokens != null && !_currentTokens!.isExpired) {
        return true;
      }

      // Check storage
      final stored = await tokenStorage.loadTokens();
      if (stored != null && !stored.isExpired) {
        _currentTokens = stored;
        return true;
      }

      // Check if we can refresh
      if (stored?.refreshToken != null && !stored!.isRefreshExpired) {
        try {
          await refreshToken();
          return true;
        } catch (e) {
          logger.warning('Token refresh failed during auth check', e);
        }
      }

      return false;
    } catch (e) {
      logger.severe('Error checking authentication', e);
      return false;
    }
  }

  /// Login - must be implemented by subclasses
  Future<void> login();

  /// Logout and clear tokens
  Future<void> logout() async {
    logger.fine('Logging out');
    _currentTokens = null;
    await tokenStorage.clearTokens();
    await onLogout();
  }

  /// Hook for subclasses to handle logout
  Future<void> onLogout() async {}

  /// Refresh the access token.
  ///
  /// Concurrent calls are coalesced: the first starts the refresh and every
  /// other caller awaits the same operation.
  Future<void> refreshToken() {
    // Assigned synchronously before any await, so concurrent callers that
    // arrive before this refresh completes observe the same in-flight future.
    final existing = _refreshInFlight;
    if (existing != null) return existing;

    final op = _performRefresh();
    _refreshInFlight = op;
    return op.whenComplete(() => _refreshInFlight = null);
  }

  Future<void> _performRefresh() async {
    logger.fine('Refreshing access token');

    final current = _currentTokens ?? await tokenStorage.loadTokens();

    // Perform refresh - subclass handles the strategy
    // (backend services re-authenticate; SMART uses refresh token)
    final refreshTokenValue = current?.refreshToken;
    var newTokens = await performTokenRefresh(refreshTokenValue ?? '');

    // Per RFC 6749 §6, the authorization server MAY omit refresh_token from a
    // refresh response, in which case the client keeps using the existing one.
    // Carry it forward so we don't strand ourselves without a refresh token.
    if (newTokens.refreshToken == null && current?.refreshToken != null) {
      newTokens = newTokens.copyWith(refreshToken: current!.refreshToken);
    }

    // storeTokens updates in-memory state, secure storage, and auth state (and
    // lets subclasses refresh their own token caches).
    await storeTokens(newTokens);

    logger.fine('Token refresh successful');
  }

  /// Perform the actual token refresh - implemented by subclass
  Future<SmartTokenResponse> performTokenRefresh(String refreshToken);

  /// Get current access token
  Future<String?> getAccessToken() async {
    _currentTokens ??= await tokenStorage.loadTokens();

    if (_currentTokens == null) {
      return null;
    }

    // Check if expired and try to refresh/re-authenticate
    if (_currentTokens!.isExpired) {
      try {
        await refreshToken();
      } catch (e) {
        logger.warning('Failed to refresh expired token', e);
        return null;
      }
    }

    return _currentTokens?.accessToken;
  }

  /// Whether the bearer token may be attached to a request for [url].
  ///
  /// The access token is bound to the configured FHIR server (its OAuth
  /// audience). Only requests to that same origin (scheme + host + port) get
  /// the `Authorization` header, so the token can never leak to a different
  /// host if the client is pointed at (or redirected to) one.
  bool _isFhirServerOrigin(Uri url) {
    final base = Uri.parse(config.fhirBaseUrl.toString());
    return url.scheme == base.scheme &&
        url.host == base.host &&
        url.port == base.port;
  }

  /// Send HTTP request with authentication
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Add authentication header, but only for the configured FHIR server.
    final sameOrigin = _isFhirServerOrigin(request.url);
    final token = sameOrigin ? await getAccessToken() : null;
    if (token != null) {
      request.headers[HttpHeaders.authorization] = 'Bearer $token';
    } else if (!sameOrigin) {
      logger.warning(
        'Not attaching bearer token: request host ${request.url.host} does '
        'not match the configured FHIR server ${config.fhirBaseUrl}',
      );
    }

    // Add standard headers
    request.headers[HttpHeaders.accept] = 'application/fhir+json';
    request.headers[HttpHeaders.userAgent] = UserAgent.full;

    // Log request
    logger.fine('${request.method} ${request.url}');

    // Send request
    var response = await innerClient.send(request);

    // Handle 401 Unauthorized - try to refresh/re-authenticate and retry once
    if (response.statusCode == 401 && _currentTokens != null && sameOrigin) {
      logger.fine('Got 401, attempting token refresh');

      try {
        await refreshToken();

        // Retry with new token
        final retryRequest = _copyRequest(request);
        final newToken = await getAccessToken();
        if (newToken != null) {
          retryRequest.headers[HttpHeaders.authorization] = 'Bearer $newToken';
        }

        response = await innerClient.send(retryRequest);
      } catch (e) {
        logger.warning('Token refresh failed on 401', e);
      }
    }

    logger.fine('Response: ${response.statusCode}');
    return response;
  }

  /// Copy a request for retry
  http.BaseRequest _copyRequest(http.BaseRequest original) {
    if (original is http.Request) {
      final request = http.Request(original.method, original.url)
        ..headers.addAll(original.headers)
        ..body = original.body;
      return request;
    } else if (original is http.StreamedRequest) {
      throw UnsupportedError('Cannot retry streamed requests');
    } else {
      throw UnsupportedError('Unknown request type: ${original.runtimeType}');
    }
  }

  /// Store tokens after successful authentication
  Future<void> storeTokens(SmartTokenResponse tokens) async {
    _currentTokens = tokens;
    await tokenStorage.saveTokens(tokens);

    // Save auth state
    await tokenStorage.saveAuthState(
      AuthState(
        tokenResponse: tokens,
        lastAuthenticated: DateTime.now(),
        authMethod: config.authMethod,
      ),
    );
  }

  /// Get stored tokens
  Future<SmartTokenResponse?> getStoredTokens() async {
    return _currentTokens ??= await tokenStorage.loadTokens();
  }

  /// Purge the in-memory access/refresh tokens without touching persistent
  /// storage.
  ///
  /// Called when a session times out so the client immediately stops
  /// attaching the (now-invalid) bearer token to outgoing requests. Storage is
  /// cleared separately by the session manager. Subclasses that cache their
  /// own token copy should override this and call the `super` implementation.
  void clearInMemoryTokens() {
    _currentTokens = null;
  }

  /// Get patient context if available
  String? get patientContext => _currentTokens?.patientContext;

  /// Get encounter context if available
  String? get encounterContext => _currentTokens?.encounterContext;

  /// Get FHIR user if available
  String? get fhirUser => _currentTokens?.fhirUser;

  @override
  void close() {
    innerClient.close();
    super.close();
  }
}
