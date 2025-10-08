/// OAuth 2.0 flow management for authorization code grant
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        SmartTokenResponse,
        AuthorizationException,
        NetworkException,
        SecurityException,
        SecurityViolationType,
        PkceManager,
        StateManager,
        JwtValidator,
        GrantType,
        ResponseType,
        OAuthParameters,
        ContentTypes,
        HttpHeaders;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// Manages OAuth 2.0 authorization code flow
class OAuthFlow {
  OAuthFlow({
    required this.clientId,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.redirectUri,
    this.clientSecret,
    this.scopes = const [],
    this.additionalParameters = const {},
    this.useBasicAuth = true,
    http.Client? httpClient,
    PkceManager? pkceManager,
    StateManager? stateManager,
    JwtValidator? jwtValidator,
    Logger? logger,
  })  : _httpClient = httpClient ?? http.Client(),
        _pkceManager = pkceManager ?? PkceManager(),
        _stateManager = stateManager ?? StateManager(),
        _jwtValidator = jwtValidator ?? JwtValidator(),
        _logger = logger ?? Logger('OAuthFlow');

  /// OAuth client ID
  final String clientId;

  /// Authorization endpoint URL
  final Uri authorizationEndpoint;

  /// Token endpoint URL
  final Uri tokenEndpoint;

  /// Redirect URI for authorization response
  final Uri redirectUri;

  /// Client secret (for confidential clients)
  final String? clientSecret;

  /// Requested scopes
  final List<String> scopes;

  /// Additional parameters for authorization request
  final Map<String, String> additionalParameters;

  /// Use HTTP Basic auth for client credentials
  final bool useBasicAuth;

  final http.Client _httpClient;
  final PkceManager _pkceManager;
  final StateManager _stateManager;
  final JwtValidator _jwtValidator;
  final Logger _logger;

  /// Current state parameter
  String? _currentState;

  /// Current nonce parameter
  String? _currentNonce;

  /// Generate authorization URL with security parameters
  Uri buildAuthorizationUrl({
    ResponseType responseType = ResponseType.code,
    String? state,
    String? nonce,
    Map<String, String>? extraParameters,
  }) {
    _logger.fine('Building authorization URL');

    // Generate security parameters
    _currentState = state ?? _stateManager.generateState();
    _currentNonce = nonce ?? _stateManager.generateNonce();

    // Build query parameters
    final parameters = <String, String>{
      OAuthParameters.responseType: responseType.value,
      OAuthParameters.clientId: clientId,
      OAuthParameters.redirectUri: redirectUri.toString(),
      if (scopes.isNotEmpty) OAuthParameters.scope: scopes.join(' '),
      OAuthParameters.state: _currentState!,
      if (_currentNonce != null) OAuthParameters.nonce: _currentNonce!,
      // Add PKCE parameters
      ..._pkceManager.toAuthorizationParameters(),
      // Add any additional parameters
      ...additionalParameters,
      if (extraParameters != null) ...extraParameters,
    };

    final url = authorizationEndpoint.replace(queryParameters: parameters);
    _logger.fine(
        'Authorization URL: ${url.toString().replaceAll(RegExp(r'state=\S+'), 'state=***')}');

    return url;
  }

  /// Handle authorization response and exchange code for tokens
  Future<SmartTokenResponse> handleAuthorizationResponse(
    Map<String, String> responseParameters,
  ) async {
    _logger.fine('Handling authorization response');

    // Check for error response
    if (responseParameters.containsKey(OAuthParameters.error)) {
      final error = responseParameters[OAuthParameters.error]!;
      final description = responseParameters[OAuthParameters.errorDescription];
      final errorUri = responseParameters[OAuthParameters.errorUri];

      throw AuthorizationException(
        'Authorization failed: $error',
        details: description,
        errorCode: error,
        errorDescription: description,
        errorUri: errorUri != null ? Uri.tryParse(errorUri) : null,
      );
    }

    // Validate state parameter
    final responseState = responseParameters[OAuthParameters.state];
    if (responseState == null) {
      throw const SecurityException(
        'Missing state parameter in authorization response',
        securityViolationType: SecurityViolationType.stateMismatch,
      );
    }

    if (_currentState == null || responseState != _currentState) {
      _stateManager.validateStateOrThrow(responseState);
    }

    // Get authorization code
    final code = responseParameters[OAuthParameters.code];
    if (code == null) {
      throw const AuthorizationException(
        'Missing authorization code in response',
        errorCode: 'invalid_response',
      );
    }

    // Exchange code for tokens
    return exchangeCodeForToken(code);
  }

  /// Exchange authorization code for access token
  Future<SmartTokenResponse> exchangeCodeForToken(String code) async {
    _logger.fine('Exchanging authorization code for token');

    // Build request body
    final body = <String, String>{
      OAuthParameters.grantType: GrantType.authorizationCode.value,
      OAuthParameters.code: code,
      OAuthParameters.redirectUri: redirectUri.toString(),
      // Add PKCE verifier
      ..._pkceManager.toTokenParameters(),
    };

    // Add client credentials
    final headers = <String, String>{
      HttpHeaders.contentType: ContentTypes.formUrlEncoded,
      HttpHeaders.accept: ContentTypes.json,
    };

    if (useBasicAuth && clientSecret != null) {
      // Use HTTP Basic authentication
      final credentials = base64Encode(utf8.encode('$clientId:$clientSecret'));
      headers[HttpHeaders.authorization] = 'Basic $credentials';
    } else {
      // Add client credentials to body
      body[OAuthParameters.clientId] = clientId;
      if (clientSecret != null) {
        body[OAuthParameters.clientSecret] = clientSecret!;
      }
    }

    // Make token request
    final response = await _httpClient.post(
      tokenEndpoint,
      headers: headers,
      body: body,
    );

    if (response.statusCode != 200) {
      _logger.severe('Token exchange failed: ${response.statusCode}');

      // Try to parse error response
      try {
        final error = jsonDecode(response.body) as Map<String, dynamic>;
        throw AuthorizationException(
          'Token exchange failed',
          statusCode: response.statusCode,
          errorCode: error[OAuthParameters.error] as String?,
          errorDescription: error[OAuthParameters.errorDescription] as String?,
          details: response.body,
        );
      } catch (e) {
        if (e is AuthorizationException) rethrow;
        throw NetworkException(
          'Token exchange failed',
          statusCode: response.statusCode,
          details: response.body,
        );
      }
    }

    // Parse token response
    final responseData = jsonDecode(response.body) as Map<String, dynamic>;
    final tokenResponse = SmartTokenResponse.fromJson(responseData);

    // Validate ID token if present
    if (tokenResponse.idToken != null && _currentNonce != null) {
      await _validateIdToken(tokenResponse.idToken!, _currentNonce!);
    }

    _logger.fine('Token exchange successful');
    return tokenResponse;
  }

  /// Refresh access token using refresh token
  Future<SmartTokenResponse> refreshAccessToken(String refreshToken) async {
    _logger.fine('Refreshing access token');

    final body = <String, String>{
      OAuthParameters.grantType: GrantType.refreshToken.value,
      OAuthParameters.refreshToken: refreshToken,
      if (scopes.isNotEmpty) OAuthParameters.scope: scopes.join(' '),
    };

    final headers = <String, String>{
      HttpHeaders.contentType: ContentTypes.formUrlEncoded,
      HttpHeaders.accept: ContentTypes.json,
    };

    if (useBasicAuth && clientSecret != null) {
      final credentials = base64Encode(utf8.encode('$clientId:$clientSecret'));
      headers[HttpHeaders.authorization] = 'Basic $credentials';
    } else {
      body[OAuthParameters.clientId] = clientId;
      if (clientSecret != null) {
        body[OAuthParameters.clientSecret] = clientSecret!;
      }
    }

    final response = await _httpClient.post(
      tokenEndpoint,
      headers: headers,
      body: body,
    );

    if (response.statusCode != 200) {
      _logger.severe('Token refresh failed: ${response.statusCode}');

      try {
        final error = jsonDecode(response.body) as Map<String, dynamic>;
        throw AuthorizationException(
          'Token refresh failed',
          statusCode: response.statusCode,
          errorCode: error[OAuthParameters.error] as String?,
          errorDescription: error[OAuthParameters.errorDescription] as String?,
          details: response.body,
        );
      } catch (e) {
        if (e is AuthorizationException) rethrow;
        throw NetworkException(
          'Token refresh failed',
          statusCode: response.statusCode,
          details: response.body,
        );
      }
    }

    final responseData = jsonDecode(response.body) as Map<String, dynamic>;
    final tokenResponse = SmartTokenResponse.fromJson(responseData);

    _logger.fine('Token refresh successful');
    return tokenResponse;
  }

  /// Revoke a token
  Future<void> revokeToken(
    String token, {
    String tokenTypeHint = 'access_token',
  }) async {
    _logger.fine('Revoking token');

    // Check if revocation endpoint exists (not all servers support it)
    // For now, we'll assume it's at a standard location
    final revocationEndpoint = tokenEndpoint.replace(
      path: tokenEndpoint.path.replaceAll('/token', '/revoke'),
    );

    final body = <String, String>{
      'token': token,
      'token_type_hint': tokenTypeHint,
    };

    final headers = <String, String>{
      HttpHeaders.contentType: ContentTypes.formUrlEncoded,
    };

    if (useBasicAuth && clientSecret != null) {
      final credentials = base64Encode(utf8.encode('$clientId:$clientSecret'));
      headers[HttpHeaders.authorization] = 'Basic $credentials';
    } else {
      body[OAuthParameters.clientId] = clientId;
      if (clientSecret != null) {
        body[OAuthParameters.clientSecret] = clientSecret!;
      }
    }

    try {
      final response = await _httpClient.post(
        revocationEndpoint,
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        _logger.fine('Token revoked successfully');
      } else {
        _logger.warning(
            'Token revocation may have failed: ${response.statusCode}');
      }
    } catch (e) {
      // Revocation failure is not critical
      _logger.warning('Token revocation failed', e);
    }
  }

  /// Validate ID token
  Future<void> _validateIdToken(String idToken, String expectedNonce) async {
    try {
      await _jwtValidator.validateToken(
        idToken,
        expectedNonce: expectedNonce,
      );

      // Additional validation can be done here
      _logger.fine('ID token validated successfully');
    } catch (e) {
      _logger.severe('ID token validation failed', e);
      throw SecurityException(
        'Invalid ID token',
        innerException: e,
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    }
  }

  /// Reset flow state
  void reset() {
    _currentState = null;
    _currentNonce = null;
    _pkceManager.reset();
    _stateManager.clear();
  }

  /// Clean up resources
  void dispose() {
    _httpClient.close();
    reset();
  }
}
