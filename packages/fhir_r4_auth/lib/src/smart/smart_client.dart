/// SMART on FHIR client implementation
library;

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart' show CapabilityStatement;
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        FhirAuthClient,
        SmartConfig,
        SmartTokenResponse,
        OAuthFlow,
        Authenticator,
        WebAuthenticator,
        AuthenticationException,
        NetworkException,
        ConfigurationException,
        SmartCapability;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// SMART on FHIR client for OAuth authentication
class SmartFhirClient extends FhirAuthClient {
  SmartFhirClient({
    required SmartConfig config,
    Authenticator? authenticator,
    OAuthFlow? oauthFlow,
    http.Client? httpClient,
    super.logger,
    super.tokenStorage,
  })  : _authenticator = authenticator ?? WebAuthenticator(),
        _oauthFlow = oauthFlow,
        _httpClient = httpClient ?? http.Client(),
        _logger = logger ?? Logger('SmartFhirClient'),
        super(config: config, innerClient: httpClient);

  /// Get SMART configuration
  SmartConfig get smartConfig => config as SmartConfig;

  final Authenticator _authenticator;
  final http.Client _httpClient;
  final Logger _logger;
  OAuthFlow? _oauthFlow;

  /// SMART capabilities from server
  List<SmartCapability>? _serverCapabilities;

  /// Cached smart token response for synchronous access
  SmartTokenResponse? _cachedSmartTokens;

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

      _logger.fine('SMART login successful');
    } catch (e, stackTrace) {
      _logger.severe('SMART login failed', e, stackTrace);

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

    final oauthFlow = await _getOAuthFlow();
    return oauthFlow.refreshAccessToken(refreshToken);
  }

  @override
  Future<void> storeTokens(SmartTokenResponse tokens) async {
    _cachedSmartTokens = tokens;
    await super.storeTokens(tokens);
  }

  @override
  Future<void> logout() async {
    _cachedSmartTokens = null;
    await super.logout();
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

        return {
          'authorization_endpoint':
              Uri.parse(metadata['authorization_endpoint'] as String),
          'token_endpoint': Uri.parse(metadata['token_endpoint'] as String),
          if (metadata['revocation_endpoint'] != null)
            'revocation_endpoint':
                Uri.parse(metadata['revocation_endpoint'] as String),
          if (metadata['introspection_endpoint'] != null)
            'introspection_endpoint':
                Uri.parse(metadata['introspection_endpoint'] as String),
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
      headers: {'Accept': 'application/fhir+json'},
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

    for (final extension in security?.extension_ ?? []) {
      if (extension.url ==
          'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris') {
        for (final ext in extension.extension_ ?? []) {
          if (ext.url == 'authorize') {
            authEndpoint = ext.valueUri?.toString();
          } else if (ext.url == 'token') {
            tokenEndpoint = ext.valueUri?.toString();
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

    return {
      'authorization_endpoint': Uri.parse(authEndpoint),
      'token_endpoint': Uri.parse(tokenEndpoint),
    };
  }

  /// Get server capabilities
  Future<List<SmartCapability>> getServerCapabilities() async {
    if (_serverCapabilities == null) {
      await _discoverEndpoints();
    }
    return _serverCapabilities ?? [];
  }

  /// Check if server supports a capability
  Future<bool> supportsCapability(SmartCapability capability) async {
    final capabilities = await getServerCapabilities();
    return capabilities.contains(capability);
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
    _oauthFlow?.dispose();
    super.close();
  }
}
