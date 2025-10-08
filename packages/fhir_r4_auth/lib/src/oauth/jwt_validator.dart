/// JWT validation and verification using dart_jsonwebtoken
/// Implements proper signature verification for security
library;

import 'dart:convert';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show
        JwtClaims,
        SecurityException,
        JwtAlgorithm,
        SecurityViolationType,
        NetworkException;
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// JWT validator for secure token verification
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

  /// Cache for JWKS keys
  final Map<String, Map<String, dynamic>> _jwksCache = {};

  /// Validate and decode a JWT token
  Future<JwtClaims> validateToken(
    String token, {
    String? publicKeyOrSecret,
    String? jwksUri,
    String? expectedNonce,
    bool validateExpiry = true,
    bool validateNotBefore = true,
  }) async {
    try {
      _logger.fine('Validating JWT token');

      JWT jwt;

      // Verify signature
      if (publicKeyOrSecret != null) {
        // Use provided key/secret
        jwt = _verifyWithKey(token, publicKeyOrSecret);
      } else if (jwksUri != null) {
        // Fetch and verify with JWKS
        jwt = await _verifyWithJwks(token, jwksUri);
      } else {
        // Decode without verification (NOT RECOMMENDED)
        _logger.warning('Decoding JWT without signature verification');
        jwt = JWT.decode(token);
      }

      // Parse claims
      final claims = JwtClaims.fromJson(jwt.payload);

      // Validate claims
      _validateClaims(
        claims,
        expectedNonce: expectedNonce,
        validateExpiry: validateExpiry,
        validateNotBefore: validateNotBefore,
      );

      _logger.fine('JWT validation successful');
      return claims;
    } on JWTException catch (e) {
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

  /// Verify JWT with a known key/secret
  JWT _verifyWithKey(String token, String keyOrSecret) {
    try {
      // Try as secret key first (HS256)
      return JWT.verify(token, SecretKey(keyOrSecret));
    } on JWTException {
      // Try as RSA public key
      try {
        return JWT.verify(token, RSAPublicKey(keyOrSecret));
      } on JWTException {
        // Try as EC public key
        return JWT.verify(token, ECPublicKey(keyOrSecret));
      }
    }
  }

  /// Verify JWT using JWKS endpoint
  Future<JWT> _verifyWithJwks(String token, String jwksUri) async {
    // Decode header to get kid
    final parts = token.split('.');
    if (parts.length != 3) {
      throw const FormatException('Invalid JWT format');
    }

    final headerJson =
        utf8.decode(base64Url.decode(base64Url.normalize(parts[0])));
    final header = jsonDecode(headerJson) as Map<String, dynamic>;
    final kid = header['kid'] as String?;
    final alg = header['alg'] as String?;

    if (kid == null) {
      throw const SecurityException(
        'JWT missing kid in header',
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    }

    // Fetch JWKS
    final jwks = await _fetchJwks(jwksUri);

    // Find matching key
    final keys = jwks['keys'] as List<dynamic>;
    final jwk = keys.firstWhere(
      (k) => k['kid'] == kid,
      orElse: () => throw SecurityException(
        'No matching key found in JWKS for kid: $kid',
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      ),
    ) as Map<String, dynamic>;

    // Verify based on algorithm
    if (alg?.startsWith('RS') == true) {
      // RSA key - need to construct from JWK parameters
      final modulus = jwk['n'] as String?;
      final exponent = jwk['e'] as String?;
      if (modulus == null || exponent == null) {
        throw const SecurityException(
          'Invalid RSA JWK: missing n or e',
          securityViolationType: SecurityViolationType.invalidJwtSignature,
        );
      }
      // This would require converting n and e from base64url to RSA key components
      // Since dart_jsonwebtoken doesn't have direct JWK support, we need to:
      // 1. Convert base64url n and e to bytes
      // 2. Construct RSA public key from those components
      // For now, throwing an error as this requires additional implementation
      throw const SecurityException(
        'JWK RSA key verification not yet implemented',
        details: 'Need to implement JWK to RSA key conversion',
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    } else if (alg?.startsWith('ES') == true) {
      // EC key - need to construct from JWK parameters
      final x = jwk['x'] as String?;
      final y = jwk['y'] as String?;
      if (x == null || y == null) {
        throw const SecurityException(
          'Invalid EC JWK: missing x or y',
          securityViolationType: SecurityViolationType.invalidJwtSignature,
        );
      }
      // Similar issue - need to convert x and y coordinates to EC key
      throw const SecurityException(
        'JWK EC key verification not yet implemented',
        details: 'Need to implement JWK to EC key conversion',
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    } else {
      throw SecurityException(
        'Unsupported algorithm: $alg',
        securityViolationType: SecurityViolationType.invalidJwtSignature,
      );
    }
  }

  /// Fetch JWKS from endpoint
  Future<Map<String, dynamic>> _fetchJwks(String jwksUri) async {
    // Check cache first
    if (_jwksCache.containsKey(jwksUri)) {
      _logger.fine('Using cached JWKS for $jwksUri');
      return _jwksCache[jwksUri]!;
    }

    _logger.fine('Fetching JWKS from $jwksUri');

    final response = await _httpClient.get(Uri.parse(jwksUri));

    if (response.statusCode != 200) {
      throw NetworkException(
        'Failed to fetch JWKS',
        statusCode: response.statusCode,
        details: response.body,
      );
    }

    final jwks = jsonDecode(response.body) as Map<String, dynamic>;

    // Cache for 1 hour
    _jwksCache[jwksUri] = jwks;
    Future.delayed(const Duration(hours: 1), () {
      _jwksCache.remove(jwksUri);
    });

    return jwks;
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
      if (claims.notBefore.subtract(clockSkew).isAfter(now)) {
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

  /// Create a signed JWT for client assertion
  static String createSignedJwt({
    required String clientId,
    required String audience,
    required String privateKey,
    Duration validity = const Duration(minutes: 5),
    JwtAlgorithm algorithm = JwtAlgorithm.rs384,
    String? jwtId,
  }) {
    final now = DateTime.now();
    final exp = now.add(validity);

    final jwt = JWT(
      {
        'iss': clientId,
        'sub': clientId,
        'aud': audience,
        'iat': now.millisecondsSinceEpoch ~/ 1000,
        'exp': exp.millisecondsSinceEpoch ~/ 1000,
        'jti': jwtId ?? DateTime.now().millisecondsSinceEpoch.toString(),
      },
      header: {
        'alg': algorithm.value,
        'typ': 'JWT',
      },
    );

    // Sign based on algorithm
    switch (algorithm) {
      case JwtAlgorithm.rs256:
      case JwtAlgorithm.rs384:
        return jwt.sign(RSAPrivateKey(privateKey));
      case JwtAlgorithm.es256:
      case JwtAlgorithm.es384:
        return jwt.sign(ECPrivateKey(privateKey));
      case JwtAlgorithm.hs256:
        return jwt.sign(SecretKey(privateKey));
    }
  }

  /// Decode JWT without validation (for debugging only)
  static JwtClaims decodeWithoutValidation(String token) {
    final jwt = JWT.decode(token);
    return JwtClaims.fromJson(jwt.payload);
  }
}
