/// Base authenticated HTTP client for FHIR
library;

import 'dart:async';
import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        AuthConfig,
        SmartTokenResponse,
        TokenStorage,
        SecureTokenStorage,
        AuthState,
        TokenException,
        HttpHeaders,
        UserAgent;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// Base class for authenticated FHIR HTTP clients
abstract class FhirAuthClient extends http.BaseClient {
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

  final TokenStorage tokenStorage;
  final http.Client innerClient;
  final Logger logger;

  /// Current token response
  SmartTokenResponse? _currentTokens;

  /// Lock for token refresh to prevent concurrent refreshes
  final _refreshLock = Completer<void>()..complete();

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

  /// Refresh the access token
  Future<void> refreshToken() async {
    // Prevent concurrent refreshes
    if (!_refreshLock.isCompleted) {
      await _refreshLock.future;
      return;
    }

    final lock = Completer<void>();
    _refreshLock.future.then((_) => lock.complete());

    try {
      logger.fine('Refreshing access token');

      final current = _currentTokens ?? await tokenStorage.loadTokens();
      if (current?.refreshToken == null) {
        throw const TokenException(
          'No refresh token available',
          details: 'Cannot refresh without a refresh token',
        );
      }

      // Perform refresh - implemented by subclass
      final newTokens = await performTokenRefresh(current!.refreshToken!);

      // Update tokens
      _currentTokens = newTokens;
      await tokenStorage.saveTokens(newTokens);

      // Update auth state
      await tokenStorage.saveAuthState(
        AuthState(
          tokenResponse: newTokens,
          lastAuthenticated: DateTime.now(),
          authMethod: config.authMethod,
        ),
      );

      logger.fine('Token refresh successful');
    } finally {
      lock.complete();
    }
  }

  /// Perform the actual token refresh - implemented by subclass
  Future<SmartTokenResponse> performTokenRefresh(String refreshToken);

  /// Get current access token
  Future<String?> getAccessToken() async {
    _currentTokens ??= await tokenStorage.loadTokens();

    if (_currentTokens == null) {
      return null;
    }

    // Check if expired and try to refresh
    if (_currentTokens!.isExpired) {
      if (_currentTokens!.refreshToken != null) {
        try {
          await refreshToken();
        } catch (e) {
          logger.warning('Failed to refresh expired token', e);
          return null;
        }
      } else {
        return null;
      }
    }

    return _currentTokens?.accessToken;
  }

  /// Send HTTP request with authentication
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Add authentication header
    final token = await getAccessToken();
    if (token != null) {
      request.headers[HttpHeaders.authorization] = 'Bearer $token';
    }

    // Add standard headers
    request.headers[HttpHeaders.accept] = 'application/fhir+json';
    request.headers[HttpHeaders.userAgent] = UserAgent.full;

    // Log request
    logger.fine('${request.method} ${request.url}');

    // Send request
    var response = await innerClient.send(request);

    // Handle 401 Unauthorized - try to refresh and retry once
    if (response.statusCode == 401 && _currentTokens?.refreshToken != null) {
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
    _currentTokens ??= await tokenStorage.loadTokens();
    return _currentTokens;
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
