/// JWT validation and verification with full JWK/JWKS support
/// Implements proper signature verification for security
library;

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:jose/jose.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        JwtClaims,
        SecurityException,
        JwtAlgorithm,
        SecurityViolationType,
        NetworkException;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// JWT validator for secure token verification with JWK/JWKS support
class JwtValidator {
  JwtValidator({
    this.issuer,
    this.audience,
    this.clockSkew = const Duration(seconds: 30),
    http.Client? httpClient,
    Logger? logger,
  })  : _httpClient = httpClient ?? http.Client(),
        _logger = logger ?? Logger('JwtValidator');

  /// Expected issuer
  final String? issuer;

  /// Expected audience
  final String? audience;

  /// Clock skew tolerance for time-based claims
  final Duration clockSkew;

  final http.Client _httpClient;
  final Logger _logger;

  /// Cache for JWKS keysets
  final Map<String, JsonWebKeyStore> _jwksCache = {};

  /// Cache expiry times
  final Map<String, DateTime> _jwksCacheExpiry = {};

  /// Validate and decode a JWT token
  Future<JwtClaims> validateToken(
    String token, {
    String? publicKeyPem,
    String? secretKey,
    String? jwksUri,
    String? expectedNonce,
    String? accessToken,
    bool validateExpiry = true,
    bool validateNotBefore = true,
    bool validateAtHash = true,
  }) async {
    try {
      _logger.fine('Validating JWT token');

      JsonWebToken jwt;

      // Verify signature based on what's provided
      if (secretKey != null) {
        // HMAC signature verification
        jwt = await _verifyWithSecret(token, secretKey);
      } else if (publicKeyPem != null) {
        // RSA/EC signature verification with PEM key
        jwt = await _verifyWithPemKey(token, publicKeyPem);
      } else if (jwksUri != null) {
        // Fetch and verify with JWKS
        jwt = await _verifyWithJwks(token, jwksUri);
      } else {
        // Decode without verification (NOT RECOMMENDED for production)
        _logger.warning('Decoding JWT without signature verification');
        jwt = JsonWebToken.unverified(token);
      }

      // Parse claims
      final claims = _parseJwtClaims(jwt.claims);

      // Validate claims
      _validateClaims(
        claims,
        expectedNonce: expectedNonce,
        validateExpiry: validateExpiry,
        validateNotBefore: validateNotBefore,
      );

      // Validate at_hash if access token provided and at_hash exists
      if (validateAtHash && accessToken != null) {
        final atHash = claims.additionalClaims['at_hash'] as String?;
        if (atHash != null) {
          // Get algorithm from token header
          final algorithm = _getAlgorithmFromToken(token);
          if (!this.validateAtHash(accessToken, atHash, algorithm)) {
            throw const SecurityException(
              'Invalid at_hash - access token hash mismatch',
              details: 'at_hash validation failed',
              securityViolationType: SecurityViolationType.tokenTampered,
            );
          }
        }
      }

      _logger.fine('JWT validation successful');
      return claims;
    } on JoseException catch (e) {
      _logger.severe('JWT validation failed: ${e.message}');
      throw SecurityException(
        'Invalid JWT token: ${e.message}',
        details: e.toString(),
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    } catch (e, stackTrace) {
      _logger.severe('JWT validation error', e, stackTrace);
      throw SecurityException(
        'Failed to validate JWT token',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    }
  }

  /// Verify JWT with HMAC secret
  Future<JsonWebToken> _verifyWithSecret(String token, String secret) async {
    _logger.fine('Verifying JWT with HMAC secret');

    final keyStore = JsonWebKeyStore()
      ..addKey(JsonWebKey.fromJson({
        'kty': 'oct',
        'k': base64Url.encode(utf8.encode(secret)),
      }));

    return await JsonWebToken.decodeAndVerify(token, keyStore);
  }

  /// Verify JWT with PEM-encoded public key
  Future<JsonWebToken> _verifyWithPemKey(
      String token, String publicKeyPem) async {
    _logger.fine('Verifying JWT with PEM public key');

    final jwk = JsonWebKey.fromPem(publicKeyPem);
    final keyStore = JsonWebKeyStore()..addKey(jwk);

    return await JsonWebToken.decodeAndVerify(token, keyStore);
  }

  /// Verify JWT using JWKS endpoint
  Future<JsonWebToken> _verifyWithJwks(String token, String jwksUri) async {
    _logger.fine('Verifying JWT with JWKS from $jwksUri');

    // Get JWKS keystore (from cache or fetch)
    final keyStore = await _getJwksKeyStore(jwksUri);

    // Decode and verify
    return await JsonWebToken.decodeAndVerify(token, keyStore);
  }

  /// Fetch or retrieve cached JWKS as JsonWebKeyStore
  Future<JsonWebKeyStore> _getJwksKeyStore(String jwksUri) async {
    // Check cache first
    final now = DateTime.now();
    if (_jwksCache.containsKey(jwksUri)) {
      final expiry = _jwksCacheExpiry[jwksUri];
      if (expiry != null && now.isBefore(expiry)) {
        _logger.fine('Using cached JWKS for $jwksUri');
        return _jwksCache[jwksUri]!;
      } else {
        // Expired, remove from cache
        _jwksCache.remove(jwksUri);
        _jwksCacheExpiry.remove(jwksUri);
      }
    }

    // Fetch JWKS
    _logger.fine('Fetching JWKS from $jwksUri');
    final response = await _httpClient.get(Uri.parse(jwksUri));

    if (response.statusCode != 200) {
      throw NetworkException(
        'Failed to fetch JWKS',
        statusCode: response.statusCode,
        details: response.body,
      );
    }

    final jwksJson = jsonDecode(response.body) as Map<String, dynamic>;

    // Create JsonWebKeyStore from JWKS
    final keyStore = JsonWebKeyStore();
    final keys = jwksJson['keys'] as List<dynamic>;

    for (final keyJson in keys) {
      try {
        final jwk = JsonWebKey.fromJson(keyJson as Map<String, dynamic>);
        keyStore.addKey(jwk);
      } catch (e) {
        _logger.warning('Failed to parse JWK: $e');
        // Continue with other keys
      }
    }

    // Cache for 1 hour
    _jwksCache[jwksUri] = keyStore;
    _jwksCacheExpiry[jwksUri] = now.add(const Duration(hours: 1));

    _logger.fine('JWKS cached successfully with ${keys.length} keys');
    return keyStore;
  }

  /// Parse JsonWebTokenClaims to our JwtClaims model
  JwtClaims _parseJwtClaims(JsonWebTokenClaims joseClaims) {
    // Convert jose package claims to our model
    return JwtClaims(
      issuer: joseClaims.issuer?.toString() ?? '',
      subject: joseClaims.subject ?? '',
      audience: joseClaims.audience ?? <String>[],
      expiresAt: joseClaims.expiry ?? DateTime.now(),
      issuedAt: joseClaims.issuedAt ?? DateTime.now(),
      notBefore: joseClaims.notBefore ?? joseClaims.issuedAt ?? DateTime.now(),
      jwtId: joseClaims.jwtId,
      nonce: joseClaims['nonce'] as String?,
      azp: joseClaims['azp'] as String?,
      additionalClaims: Map<String, dynamic>.from(joseClaims.toJson())
        ..removeWhere((key, _) => [
              'iss',
              'sub',
              'aud',
              'exp',
              'nbf',
              'iat',
              'jti',
              'nonce',
              'azp'
            ].contains(key)),
    );
  }

  /// Get algorithm from JWT header
  String _getAlgorithmFromToken(String token) {
    try {
      final parts = token.split('.');
      if (parts.length < 2) return 'RS256'; // Default

      final headerJson =
          utf8.decode(base64Url.decode(base64Url.normalize(parts[0])));
      final header = jsonDecode(headerJson) as Map<String, dynamic>;
      return header['alg'] as String? ?? 'RS256';
    } catch (e) {
      _logger.warning('Failed to extract algorithm from token header: $e');
      return 'RS256'; // Default
    }
  }

  /// Validate JWT claims
  void _validateClaims(
    JwtClaims claims, {
    String? expectedNonce,
    bool validateExpiry = true,
    bool validateNotBefore = true,
  }) {
    final now = DateTime.now();

    // Validate expiry
    if (validateExpiry) {
      if (claims.expiresAt.add(clockSkew).isBefore(now)) {
        throw SecurityException(
          'JWT token has expired',
          details: 'Token expired at ${claims.expiresAt}',
          securityViolationType: SecurityViolationType.jwtExpired,
        );
      }
    }

    // Validate not before
    if (validateNotBefore) {
      if (claims.notBefore?.subtract(clockSkew).isAfter(now) ?? false) {
        throw SecurityException(
          'JWT token not yet valid',
          details: 'Token not valid until ${claims.notBefore}',
          securityViolationType: SecurityViolationType.invalidJwtSignature,
        );
      }
    }

    // Validate issuer
    if (issuer != null && claims.issuer != issuer) {
      throw SecurityException(
        'Invalid JWT issuer',
        details: 'Expected $issuer, got ${claims.issuer}',
        securityViolationType: SecurityViolationType.invalidIssuer,
      );
    }

    // Validate audience
    if (audience != null) {
      final aud = claims.audience;
      final valid = (aud is String && aud == audience) ||
          (aud is List && aud.contains(audience));

      if (!valid) {
        throw SecurityException(
          'Invalid JWT audience',
          details: 'Expected $audience, got $aud',
          securityViolationType: SecurityViolationType.invalidAudience,
        );
      }
    }

    // Validate nonce
    if (expectedNonce != null) {
      if (claims.nonce != expectedNonce) {
        throw const SecurityException(
          'Invalid nonce - possible replay attack',
          details: 'Nonce mismatch',
          securityViolationType: SecurityViolationType.nonceMismatch,
        );
      }
    }
  }

  /// Validate at_hash claim (access token hash)
  /// Required by OpenID Connect for implicit and hybrid flows
  /// Per OpenID Connect Core 1.0 Section 3.1.3.3 and 3.2.2.9
  bool validateAtHash(String accessToken, String atHash, String algorithm) {
    try {
      _logger.fine('Validating at_hash with algorithm $algorithm');

      // Determine hash function and length based on JWT algorithm
      List<int> hashBytes;
      int leftmostBits;

      if (algorithm.contains('256')) {
        // SHA-256 - use leftmost 128 bits
        hashBytes = sha256.convert(utf8.encode(accessToken)).bytes;
        leftmostBits = 128;
      } else if (algorithm.contains('384')) {
        // SHA-384 - use leftmost 192 bits
        hashBytes = sha384.convert(utf8.encode(accessToken)).bytes;
        leftmostBits = 192;
      } else if (algorithm.contains('512')) {
        // SHA-512 - use leftmost 256 bits
        hashBytes = sha512.convert(utf8.encode(accessToken)).bytes;
        leftmostBits = 256;
      } else {
        _logger.warning(
            'Unknown algorithm for at_hash validation: $algorithm, defaulting to SHA-256');
        hashBytes = sha256.convert(utf8.encode(accessToken)).bytes;
        leftmostBits = 128;
      }

      // Take leftmost half of the hash
      final leftmostBytes = hashBytes.sublist(0, leftmostBits ~/ 8);

      // Base64url encode (without padding)
      final expectedHash = base64Url.encode(leftmostBytes).replaceAll('=', '');

      final isValid = expectedHash == atHash;

      if (!isValid) {
        _logger.warning(
            'at_hash validation failed. Expected: $expectedHash, Got: $atHash');
      } else {
        _logger.fine('at_hash validation successful');
      }

      return isValid;
    } catch (e, stackTrace) {
      _logger.severe('Error validating at_hash', e, stackTrace);
      return false;
    }
  }

  /// Create a signed JWT for client assertion (SMART Backend Services)
  static Future<String> createSignedJwt({
    required String clientId,
    required String audience,
    required String privateKeyPem,
    Duration validity = const Duration(minutes: 5),
    JwtAlgorithm algorithm = JwtAlgorithm.rs384,
    String? jwtId,
    String? keyId,
  }) async {
    final now = DateTime.now();
    final exp = now.add(validity);

    // Create claims
    final claimsSet = JsonWebTokenClaims.fromJson({
      'iss': clientId,
      'sub': clientId,
      'aud': audience,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
      'jti': jwtId ?? DateTime.now().millisecondsSinceEpoch.toString(),
    });

    // Create key from PEM
    final jwk = JsonWebKey.fromPem(privateKeyPem, keyId: keyId);

    // Create and sign JWT
    final builder = JsonWebSignatureBuilder()
      ..jsonContent = claimsSet.toJson()
      ..addRecipient(jwk, algorithm: algorithm.value);

    final jws = builder.build();
    return jws.toCompactSerialization();
  }

  /// Decode JWT without validation (for debugging only - NOT for production use)
  static JwtClaims decodeWithoutValidation(String token) {
    final jwt = JsonWebToken.unverified(token);
    final validator = JwtValidator();
    return validator._parseJwtClaims(jwt.claims);
  }

  /// Clear JWKS cache
  void clearCache() {
    _jwksCache.clear();
    _jwksCacheExpiry.clear();
    _logger.fine('JWKS cache cleared');
  }

  /// Get cache statistics (for monitoring)
  Map<String, int> getCacheStats() {
    return {
      'cached_jwks_count': _jwksCache.length,
      'cache_entries': _jwksCacheExpiry.length,
    };
  }
}
