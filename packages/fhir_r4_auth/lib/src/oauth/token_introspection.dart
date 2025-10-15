/// Token introspection implementation per RFC 7662
/// Allows validation of token status with authorization server
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        AuthorizationException,
        NetworkException,
        OAuthParameters,
        ContentTypes,
        HttpHeaders;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// Result of token introspection
class TokenIntrospectionResult {
  TokenIntrospectionResult({
    required this.active,
    this.scope,
    this.clientId,
    this.username,
    this.tokenType,
    this.expiresAt,
    this.issuedAt,
    this.notBefore,
    this.subject,
    this.audience,
    this.issuer,
    this.jti,
    this.extensions = const {},
  });

  /// Whether the token is currently active
  final bool active;

  /// Space-separated list of scopes
  final String? scope;

  /// Client identifier
  final String? clientId;

  /// Human-readable identifier for the resource owner
  final String? username;

  /// Type of token (e.g., 'Bearer')
  final String? tokenType;

  /// Expiration timestamp (seconds since epoch)
  final int? expiresAt;

  /// Issued at timestamp (seconds since epoch)
  final int? issuedAt;

  /// Not before timestamp (seconds since epoch)
  final int? notBefore;

  /// Subject of the token
  final String? subject;

  /// Intended audience
  final dynamic audience; // Can be String or List<String>

  /// Issuer
  final String? issuer;

  /// JWT ID
  final String? jti;

  /// Additional extension fields
  final Map<String, dynamic> extensions;

  /// Check if token is expired
  bool get isExpired {
    if (expiresAt == null) return false;
    final exp = DateTime.fromMillisecondsSinceEpoch(expiresAt! * 1000);
    return DateTime.now().isAfter(exp);
  }

  /// Check if token is not yet valid
  bool get isNotYetValid {
    if (notBefore == null) return false;
    final nbf = DateTime.fromMillisecondsSinceEpoch(notBefore! * 1000);
    return DateTime.now().isBefore(nbf);
  }

  /// Get expiration as DateTime
  DateTime? get expirationTime => expiresAt != null
      ? DateTime.fromMillisecondsSinceEpoch(expiresAt! * 1000)
      : null;

  /// Get issued at as DateTime
  DateTime? get issuedAtTime => issuedAt != null
      ? DateTime.fromMillisecondsSinceEpoch(issuedAt! * 1000)
      : null;

  /// Parse scopes into list
  List<String> get scopesList {
    if (scope == null || scope!.isEmpty) return <String>[];
    return scope!.split(' ');
  }

  /// Create from JSON response
  factory TokenIntrospectionResult.fromJson(Map<String, dynamic> json) {
    // Extract standard fields
    final standardFields = {
      'active',
      'scope',
      'client_id',
      'username',
      'token_type',
      'exp',
      'iat',
      'nbf',
      'sub',
      'aud',
      'iss',
      'jti',
    };

    return TokenIntrospectionResult(
      active: json['active'] as bool? ?? false,
      scope: json['scope'] as String?,
      clientId: json['client_id'] as String?,
      username: json['username'] as String?,
      tokenType: json['token_type'] as String?,
      expiresAt: json['exp'] as int?,
      issuedAt: json['iat'] as int?,
      notBefore: json['nbf'] as int?,
      subject: json['sub'] as String?,
      audience: json['aud'],
      issuer: json['iss'] as String?,
      jti: json['jti'] as String?,
      extensions: Map<String, dynamic>.from(json)
        ..removeWhere((key, _) => standardFields.contains(key)),
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'active': active,
      if (scope != null) 'scope': scope,
      if (clientId != null) 'client_id': clientId,
      if (username != null) 'username': username,
      if (tokenType != null) 'token_type': tokenType,
      if (expiresAt != null) 'exp': expiresAt,
      if (issuedAt != null) 'iat': issuedAt,
      if (notBefore != null) 'nbf': notBefore,
      if (subject != null) 'sub': subject,
      if (audience != null) 'aud': audience,
      if (issuer != null) 'iss': issuer,
      if (jti != null) 'jti': jti,
      ...extensions,
    };
  }

  @override
  String toString() =>
      'TokenIntrospectionResult(active: $active, clientId: $clientId, '
      'expiresAt: ${expirationTime?.toIso8601String()})';
}

/// Client for token introspection (RFC 7662)
class TokenIntrospector {
  TokenIntrospector({
    required this.introspectionEndpoint,
    required this.clientId,
    this.clientSecret,
    this.useBasicAuth = true,
    http.Client? httpClient,
    Logger? logger,
  })  : _httpClient = httpClient ?? http.Client(),
        _logger = logger ?? Logger('TokenIntrospector');

  /// Token introspection endpoint URL
  final Uri introspectionEndpoint;

  /// OAuth client ID
  final String clientId;

  /// OAuth client secret (for confidential clients)
  final String? clientSecret;

  /// Use HTTP Basic auth for client credentials
  final bool useBasicAuth;

  final http.Client _httpClient;
  final Logger _logger;

  /// Introspect a token to check its status
  Future<TokenIntrospectionResult> introspect(
    String token, {
    String? tokenTypeHint,
    Map<String, String>? additionalParameters,
  }) async {
    _logger.fine('Introspecting token');

    try {
      // Build request body
      final body = <String, String>{
        'token': token,
        if (tokenTypeHint != null) 'token_type_hint': tokenTypeHint,
        if (additionalParameters != null) ...additionalParameters,
      };

      // Build headers
      final headers = <String, String>{
        HttpHeaders.contentType: ContentTypes.formUrlEncoded,
        HttpHeaders.accept: ContentTypes.json,
      };

      // Add client credentials
      if (useBasicAuth && clientSecret != null) {
        // Use HTTP Basic authentication
        final credentials =
            base64Encode(utf8.encode('$clientId:$clientSecret'));
        headers[HttpHeaders.authorization] = 'Basic $credentials';
      } else {
        // Add client credentials to body
        body[OAuthParameters.clientId] = clientId;
        if (clientSecret != null) {
          body[OAuthParameters.clientSecret] = clientSecret!;
        }
      }

      // Make introspection request
      final response = await _httpClient.post(
        introspectionEndpoint,
        headers: headers,
        body: body,
      );

      if (response.statusCode != 200) {
        _logger.severe('Token introspection failed: ${response.statusCode}');

        // Try to parse error response
        try {
          final error = jsonDecode(response.body) as Map<String, dynamic>;
          throw AuthorizationException(
            'Token introspection failed',
            statusCode: response.statusCode,
            errorCode: error[OAuthParameters.error] as String?,
            errorDescription:
                error[OAuthParameters.errorDescription] as String?,
            details: response.body,
          );
        } catch (e) {
          if (e is AuthorizationException) rethrow;
          throw NetworkException(
            'Token introspection failed',
            statusCode: response.statusCode,
            details: response.body,
          );
        }
      }

      // Parse response
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      final result = TokenIntrospectionResult.fromJson(responseData);

      _logger.fine('Token introspection completed: active=${result.active}');
      return result;
    } catch (e, stackTrace) {
      _logger.severe('Token introspection error', e, stackTrace);
      rethrow;
    }
  }

  /// Check if a token is active (convenience method)
  Future<bool> isTokenActive(String token) async {
    try {
      final result = await introspect(token);
      return result.active && !result.isExpired && !result.isNotYetValid;
    } catch (e) {
      _logger.warning('Failed to check token status', e);
      return false;
    }
  }

  /// Introspect an access token
  Future<TokenIntrospectionResult> introspectAccessToken(String token) {
    return introspect(token, tokenTypeHint: 'access_token');
  }

  /// Introspect a refresh token
  Future<TokenIntrospectionResult> introspectRefreshToken(String token) {
    return introspect(token, tokenTypeHint: 'refresh_token');
  }

  /// Clean up resources
  void dispose() {
    _httpClient.close();
  }
}
