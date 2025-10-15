/// SMART on FHIR client implementation
library;

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart' show CapabilityStatement, FhirExtension;
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        AuditEvent,
        AuditEventType,
        AuditLogger,
        AuditSeverity,
        Authenticator,
        AuthenticationException,
        ConfigurationException,
        FhirAuthClient,
        NetworkException,
        OAuthFlow,
        Session,
        SessionManager,
        SmartCapability,
        SmartConfig,
        SmartTokenResponse,
        TimeoutReason,
        TokenIntrospector,
        WebAuthenticator;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// SMART on FHIR client for OAuth authentication
class SmartFhirClient extends FhirAuthClient {
  SmartFhirClient({
    required SmartConfig config,
    Authenticator? authenticator,
    OAuthFlow? oauthFlow,
    http.Client? httpClient,
    AuditLogger? auditLogger,
    SessionManager? sessionManager,
    super.logger,
    super.tokenStorage,
  })  : _authenticator = authenticator ?? WebAuthenticator(),
        _oauthFlow = oauthFlow,
        _httpClient = httpClient ?? http.Client(),
        _auditLogger = auditLogger,
        _sessionManager = sessionManager,
        _logger = logger ?? Logger('SmartFhirClient'),
        super(config: config, innerClient: httpClient);

  /// Get SMART configuration
  SmartConfig get smartConfig => config as SmartConfig;

  final Authenticator _authenticator;
  final http.Client _httpClient;
  final AuditLogger? _auditLogger;
  final SessionManager? _sessionManager;
  final Logger _logger;
  OAuthFlow? _oauthFlow;

  /// SMART capabilities from server
  List<SmartCapability>? _serverCapabilities;

  /// Discovered endpoints
  Uri? _revocationEndpoint;
  Uri? _introspectionEndpoint;

  /// Token introspector (lazy initialized)
  TokenIntrospector? _tokenIntrospector;

  /// Cached smart token response for synchronous access
  SmartTokenResponse? _cachedSmartTokens;

  /// Stream of session timeout warnings
  Stream<Duration>? get onSessionTimeoutWarning =>
      _sessionManager?.onTimeoutWarning;

  /// Stream of session timeout events
  Stream<TimeoutReason>? get onSessionTimeout => _sessionManager?.onTimeout;

  /// Get current session
  Session? get currentSession => _sessionManager?.currentSession;

  /// Get OAuth flow (lazy initialization)
  Future<OAuthFlow> _getOAuthFlow() async {
    if (_oauthFlow != null) return _oauthFlow!;

    // Get endpoints if not configured
    Uri? authEndpoint = smartConfig.authorizeUrl;
    Uri? tokenEndpoint = smartConfig.tokenUrl;

    if (authEndpoint == null || tokenEndpoint == null) {
      final endpoints = await _discoverEndpoints();
      authEndpoint ??= endpoints['authorization_endpoint'] as Uri;
      tokenEndpoint ??= endpoints['token_endpoint'] as Uri;
    }

    _oauthFlow = OAuthFlow(
      clientId: smartConfig.clientId,
      authorizationEndpoint: authEndpoint,
      tokenEndpoint: tokenEndpoint,
      redirectUri: smartConfig.redirectUri,
      clientSecret: smartConfig.clientSecret,
      scopes: smartConfig.buildScopes(),
      additionalParameters: smartConfig.buildAuthorizationParameters(),
      httpClient: _httpClient,
    );

    return _oauthFlow!;
  }

  @override
  Future<void> login() async {
    _logger.fine('Starting SMART login');

    // Audit: log authentication attempt
    await _auditLogger?.logAuthenticationAttempt(userId: 'unknown');

    try {
      // Get OAuth flow
      final oauthFlow = await _getOAuthFlow();

      // Build authorization URL
      final authUrl = oauthFlow.buildAuthorizationUrl(
        extraParameters: smartConfig.customParameters,
      );

      _logger.fine('Launching authorization URL');

      // Launch authentication
      final responseUrl = await _authenticator.authenticate(
        authorizationUrl: authUrl,
        redirectUri: smartConfig.redirectUri,
        callbackUrlScheme: smartConfig.redirectUri.scheme,
      );

      // Handle authorization response
      final tokens = await oauthFlow.handleAuthorizationResponse(
        responseUrl.queryParameters,
      );

      // Store tokens and context
      await storeTokens(tokens);

      // Start session
      if (_sessionManager != null) {
        await _sessionManager!.startSession(
          userId: tokens.fhirUser ?? 'unknown',
          metadata: <String, dynamic>{
            'scopes': tokens.scopesList,
            if (tokens.patientContext != null)
              'patient_context': tokens.patientContext,
            if (tokens.encounterContext != null)
              'encounter_context': tokens.encounterContext,
          },
        );
      }

      _logger.fine('SMART login successful');

      // Audit: log successful authentication
      await _auditLogger?.logAuthenticationSuccess(
        userId: tokens.fhirUser ?? 'unknown',
        details: <String, dynamic>{
          'scopes': tokens.scopesList,
          if (tokens.patientContext != null)
            'patient_context': tokens.patientContext,
          if (tokens.encounterContext != null)
            'encounter_context': tokens.encounterContext,
        },
      );

      // Audit: log token issued
      await _auditLogger?.logTokenIssued(
        userId: tokens.fhirUser,
        scopes: tokens.scopesList,
      );
    } catch (e, stackTrace) {
      _logger.severe('SMART login failed', e, stackTrace);

      // Audit: log authentication failure
      await _auditLogger?.logAuthenticationFailure(
        reason: e.toString(),
        errorCode: e is AuthenticationException
            ? 'authentication_failed'
            : 'unknown_error',
      );

      if (e is AuthenticationException) {
        rethrow;
      }

      throw AuthenticationException(
        'SMART authentication failed',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<SmartTokenResponse> performTokenRefresh(String refreshToken) async {
    _logger.fine('Performing SMART token refresh');

    try {
      final oauthFlow = await _getOAuthFlow();
      final newTokens = await oauthFlow.refreshAccessToken(refreshToken);

      // Record activity on token refresh
      await _sessionManager?.recordActivity();

      // Audit: log token refresh
      await _auditLogger?.logTokenRefreshed(
        userId: newTokens.fhirUser,
      );

      return newTokens;
    } catch (e) {
      _logger.severe('Token refresh failed', e);
      rethrow;
    }
  }

  @override
  Future<void> storeTokens(SmartTokenResponse tokens) async {
    _cachedSmartTokens = tokens;
    await super.storeTokens(tokens);
  }

  @override
  Future<void> logout() async {
    final userId = _cachedSmartTokens?.fhirUser ?? 'unknown';

    // End session
    if (_sessionManager != null) {
      await _sessionManager!.endSession(TimeoutReason.logout);
    }

    // Revoke tokens if revocation endpoint is available
    if (_revocationEndpoint != null && _cachedSmartTokens != null) {
      try {
        _logger.fine('Attempting to revoke tokens during logout');
        await revokeCurrentTokens();
      } catch (e) {
        _logger.warning('Token revocation failed during logout', e);
        // Continue with logout even if revocation fails
      }
    }

    // Audit: log session ended
    await _auditLogger?.logEvent(
      AuditEvent(
        eventType: AuditEventType.sessionEnded,
        severity: AuditSeverity.info,
        message: 'User logged out',
        userId: userId,
        clientId: smartConfig.clientId,
        outcome: true,
      ),
    );

    _cachedSmartTokens = null;
    await super.logout();
  }

  /// Record user activity (prevents idle timeout)
  Future<void> recordActivity() async {
    await _sessionManager?.recordActivity();
  }

  /// Extend session (refresh activity timestamp)
  Future<void> extendSession() async {
    await _sessionManager?.extendSession();
  }

  /// Get session information
  Map<String, dynamic>? getSessionInfo() => _sessionManager?.getSessionInfo();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Record activity on API requests
    await recordActivity();
    return super.send(request);
  }

  /// Discover OAuth endpoints from metadata
  Future<Map<String, dynamic>> _discoverEndpoints() async {
    _logger.fine('Discovering SMART endpoints');

    // Try .well-known/smart-configuration first
    Uri metadataUrl =
        Uri.parse('${smartConfig.fhirBaseUrl}/.well-known/smart-configuration');

    try {
      final response = await _httpClient.get(metadataUrl);

      if (response.statusCode == 200) {
        final metadata = jsonDecode(response.body) as Map<String, dynamic>;

        // Parse capabilities if present
        if (metadata['capabilities'] is List) {
          _serverCapabilities = (metadata['capabilities'] as List)
              .map((c) => SmartCapability.values.firstWhere(
                  (cap) => cap.value == c,
                  orElse: () => SmartCapability.launchStandalone))
              .toList();
        }

        // Store discovered endpoints
        if (metadata['revocation_endpoint'] != null) {
          _revocationEndpoint =
              Uri.parse(metadata['revocation_endpoint'] as String);
          _logger.fine('Discovered revocation endpoint: $_revocationEndpoint');
        }

        if (metadata['introspection_endpoint'] != null) {
          _introspectionEndpoint =
              Uri.parse(metadata['introspection_endpoint'] as String);
          _logger.fine(
              'Discovered introspection endpoint: $_introspectionEndpoint');
        }

        return <String, dynamic>{
          'authorization_endpoint':
              Uri.parse(metadata['authorization_endpoint'] as String),
          'token_endpoint': Uri.parse(metadata['token_endpoint'] as String),
          if (_revocationEndpoint != null)
            'revocation_endpoint': _revocationEndpoint,
          if (_introspectionEndpoint != null)
            'introspection_endpoint': _introspectionEndpoint,
        };
      }
    } catch (e) {
      _logger.warning('Failed to fetch .well-known/smart-configuration', e);
    }

    // Fall back to CapabilityStatement
    return _discoverFromCapabilityStatement();
  }

  /// Discover endpoints from CapabilityStatement
  Future<Map<String, dynamic>> _discoverFromCapabilityStatement() async {
    _logger.fine('Fetching CapabilityStatement for endpoint discovery');

    final response = await _httpClient.get(
      Uri.parse('${smartConfig.fhirBaseUrl}/metadata'),
      headers: <String, String>{'Accept': 'application/fhir+json'},
    );

    if (response.statusCode != 200) {
      throw NetworkException(
        'Failed to fetch CapabilityStatement',
        statusCode: response.statusCode,
        details: response.body,
      );
    }

    final capabilityStatement = CapabilityStatement.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    // Look for OAuth URIs in security extension
    final security = capabilityStatement.rest?.firstOrNull?.security;
    final oauth = security?.service?.firstOrNull;

    if (oauth == null) {
      throw const ConfigurationException(
        'No OAuth configuration found in CapabilityStatement',
        configurationField: 'rest.security.service',
      );
    }

    // Extract OAuth URIs from extensions
    String? authEndpoint;
    String? tokenEndpoint;
    String? revocationEndpoint;
    String? introspectionEndpoint;

    for (final extension in security?.extension_ ?? <FhirExtension>[]) {
      if (extension.url.toString() ==
          'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris') {
        for (final ext in extension.extension_ ?? <FhirExtension>[]) {
          if (ext.url.toString() == 'authorize') {
            authEndpoint = ext.valueUri?.toString();
          } else if (ext.url.toString() == 'token') {
            tokenEndpoint = ext.valueUri?.toString();
          } else if (ext.url.toString() == 'revoke') {
            revocationEndpoint = ext.valueUri?.toString();
            _revocationEndpoint = revocationEndpoint == null
                ? null
                : Uri.parse(revocationEndpoint);
            _logger
                .fine('Discovered revocation endpoint: $_revocationEndpoint');
          } else if (ext.url.toString() == 'introspect') {
            introspectionEndpoint = ext.valueUri?.toString();
            _introspectionEndpoint = introspectionEndpoint == null
                ? null
                : Uri.parse(introspectionEndpoint);
            _logger.fine(
                'Discovered introspection endpoint: $_introspectionEndpoint');
          }
        }
      }
    }

    if (authEndpoint == null || tokenEndpoint == null) {
      throw const ConfigurationException(
        'Missing OAuth endpoints in CapabilityStatement',
        configurationField: 'oauth-uris extension',
      );
    }

    return <String, dynamic>{
      'authorization_endpoint': Uri.parse(authEndpoint),
      'token_endpoint': Uri.parse(tokenEndpoint),
      if (_revocationEndpoint != null)
        'revocation_endpoint': _revocationEndpoint,
      if (_introspectionEndpoint != null)
        'introspection_endpoint': _introspectionEndpoint,
    };
  }

  /// Get server capabilities
  Future<List<SmartCapability>> getServerCapabilities() async {
    if (_serverCapabilities == null) {
      await _discoverEndpoints();
    }
    return _serverCapabilities ?? <SmartCapability>[];
  }

  /// Check if server supports a capability
  Future<bool> supportsCapability(SmartCapability capability) async {
    final capabilities = await getServerCapabilities();
    return capabilities.contains(capability);
  }

  /// Get revocation endpoint (may be null if not supported)
  Uri? get revocationEndpoint => _revocationEndpoint;

  /// Get introspection endpoint (may be null if not supported)
  Uri? get introspectionEndpoint => _introspectionEndpoint;

  /// Revoke the current access token
  Future<void> revokeAccessToken() async {
    if (_revocationEndpoint == null) {
      _logger.warning('No revocation endpoint available');
      throw const ConfigurationException(
        'Token revocation not supported by server',
        configurationField: 'revocation_endpoint',
      );
    }

    final tokens = _cachedSmartTokens ?? await getStoredTokens();
    if (tokens == null) {
      _logger.warning('No tokens available to revoke');
      return;
    }

    final oauthFlow = await _getOAuthFlow();
    await oauthFlow.revokeToken(
      tokens.accessToken,
      revocationEndpoint: _revocationEndpoint!,
      tokenTypeHint: 'access_token',
    );

    _logger.fine('Access token revoked');
  }

  /// Revoke the current refresh token
  Future<void> revokeRefreshToken() async {
    if (_revocationEndpoint == null) {
      _logger.warning('No revocation endpoint available');
      throw const ConfigurationException(
        'Token revocation not supported by server',
        configurationField: 'revocation_endpoint',
      );
    }

    final tokens = _cachedSmartTokens ?? await getStoredTokens();
    if (tokens?.refreshToken == null) {
      _logger.warning('No refresh token available to revoke');
      return;
    }

    final oauthFlow = await _getOAuthFlow();
    await oauthFlow.revokeToken(
      tokens!.refreshToken!,
      revocationEndpoint: _revocationEndpoint!,
      tokenTypeHint: 'refresh_token',
    );

    _logger.fine('Refresh token revoked');
  }

  /// Revoke both access and refresh tokens
  Future<void> revokeCurrentTokens() async {
    try {
      await revokeAccessToken();
    } catch (e) {
      _logger.warning('Failed to revoke access token', e);
    }

    try {
      await revokeRefreshToken();
    } catch (e) {
      _logger.warning('Failed to revoke refresh token', e);
    }
  }

  /// Get token introspector (lazy initialization)
  TokenIntrospector getTokenIntrospector() {
    if (_introspectionEndpoint == null) {
      throw const ConfigurationException(
        'Token introspection not supported by server',
        configurationField: 'introspection_endpoint',
      );
    }

    return _tokenIntrospector ??= TokenIntrospector(
      introspectionEndpoint: _introspectionEndpoint!,
      clientId: smartConfig.clientId,
      clientSecret: smartConfig.clientSecret,
      httpClient: _httpClient,
      logger: _logger,
    );
  }

  /// Check if current access token is active
  Future<bool> isAccessTokenActive() async {
    try {
      final tokens = _cachedSmartTokens ?? await getStoredTokens();
      if (tokens == null) return false;

      final introspector = getTokenIntrospector();
      return await introspector.isTokenActive(tokens.accessToken);
    } catch (e) {
      _logger.warning('Failed to check token status', e);
      return false;
    }
  }

  /// Get need patient banner flag from current tokens
  bool? get needPatientBanner => _cachedSmartTokens?.needPatientBanner;

  /// Get SMART style URL from current tokens
  String? get smartStyleUrl => _cachedSmartTokens?.smartStyleUrl;

  /// Get launch intent from current tokens
  String? get intent => _cachedSmartTokens?.intent;

  /// Get tenant from current tokens
  String? get tenant => _cachedSmartTokens?.tenant;

  @override
  void close() {
    _sessionManager?.dispose();
    _oauthFlow?.dispose();
    _tokenIntrospector?.dispose();
    super.close();
  }
}
