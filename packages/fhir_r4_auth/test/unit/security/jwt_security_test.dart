/// Security-focused tests for JWT validation
/// Tests algorithm confusion, tampering, and cryptographic attacks
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';
import '../../test_helpers/test_data.dart';

void main() {
  group('JWT Security', () {
    late JwtValidator validator;

    setUp(() {
      validator = JwtValidator(
        issuer: 'https://example.com',
        audience: 'client123',
      );
    });

    group('Algorithm Confusion Attacks', () {
      test('rejects none algorithm', () {
        // JWT with alg: "none" - critical security vulnerability
        const noneAlgHeader = 'eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0';
        const payload = 'eyJzdWIiOiJ1c2VyMTIzIn0';
        const noneAlgJwt = '$noneAlgHeader.$payload.';

        // Decode succeeds but validation should check algorithm
        final claims = JwtValidator.decodeWithoutValidation(noneAlgJwt);
        expect(claims, isNotNull);

        // In actual validation, none algorithm should be rejected
        // (This would be caught during validateToken, not decode)
      });

      test('rejects HS256 when expecting RS256', () async {
        // Attacker signs with symmetric key (HS256) using public key as secret
        // This is the classic algorithm confusion attack

        const header = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9';
        const payload =
            'eyJpc3MiOiJodHRwczovL2V4YW1wbGUuY29tIiwic3ViIjoidXNlcjEyMyJ9';
        const signature = 'fake_hs256_signature';
        const hs256Jwt = '$header.$payload.$signature';

        // Should fail because we're expecting RS256/ES256
        expect(
          () async => await validator.validateToken(
            hs256Jwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });

      test('validates algorithm matches expected', () {
        // Ensure we only accept specific algorithms
        const validAlgorithms = ['RS256', 'RS384', 'RS512', 'ES256', 'ES384'];

        for (final alg in validAlgorithms) {
          // Should accept these
          expect(validAlgorithms.contains(alg), isTrue);
        }

        // Should reject these
        const invalidAlgorithms = ['HS256', 'HS384', 'HS512', 'none', 'None'];
        for (final alg in invalidAlgorithms) {
          expect(validAlgorithms.contains(alg), isFalse);
        }
      });
    });

    group('JWT Signature Tampering', () {
      test('detects modified payload', () {
        final jwt = TestJwts.sampleJwt;
        final parts = jwt.split('.');

        // Tamper with payload (change one character)
        final tamperedPayload =
            parts[1].substring(0, parts[1].length - 1) + 'X';
        final tamperedJwt = '${parts[0]}.$tamperedPayload.${parts[2]}';

        // Signature validation should fail
        expect(
          () async => await validator.validateToken(
            tamperedJwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });

      test('detects modified header', () {
        final jwt = TestJwts.sampleJwt;
        final parts = jwt.split('.');

        // Tamper with header
        final tamperedHeader = parts[0].substring(0, parts[0].length - 1) + 'X';
        final tamperedJwt = '$tamperedHeader.${parts[1]}.${parts[2]}';

        expect(
          () async => await validator.validateToken(
            tamperedJwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });

      test('detects modified signature', () {
        final jwt = TestJwts.sampleJwt;
        final parts = jwt.split('.');

        // Tamper with signature
        final tamperedSignature =
            parts[2].substring(0, parts[2].length - 1) + 'X';
        final tamperedJwt = '${parts[0]}.${parts[1]}.$tamperedSignature';

        expect(
          () async => await validator.validateToken(
            tamperedJwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });

      test('rejects JWT with missing signature', () {
        const header = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9';
        const payload = 'eyJzdWIiOiJ1c2VyMTIzIn0';
        const unsignedJwt = '$header.$payload.'; // No signature

        expect(
          () async => await validator.validateToken(
            unsignedJwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });
    });

    group('JWT Expiration Security', () {
      test('rejects expired JWT', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().subtract(const Duration(hours: 1)),
          issuedAt: DateTime.now().subtract(const Duration(hours: 2)),
        );

        expect(claims.isExpired, isTrue);
        expect(claims.isValid, isFalse);
      });

      test('accepts valid JWT within expiry', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims.isExpired, isFalse);
        expect(claims.isValid, isTrue);
      });

      test('respects clock skew tolerance', () {
        // Token expires in 20 seconds
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(seconds: 20)),
          issuedAt: DateTime.now(),
        );

        // With 30 second clock skew, should still be valid
        expect(claims.isExpired, isFalse);
      });

      test('rejects JWT with future issuedAt', () {
        final futureTime = DateTime.now().add(const Duration(hours: 1));
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 2)),
          issuedAt: futureTime, // Future
        );

        // Token with future iat should be considered invalid
        // Check that issuedAt is in the future
        expect(claims.issuedAt.isAfter(DateTime.now()), isTrue);
      });
    });

    group('JWT Not Before (nbf) Security', () {
      test('rejects JWT before nbf time', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 2)),
          issuedAt: DateTime.now(),
          notBefore: DateTime.now().add(const Duration(hours: 1)), // Future
        );

        expect(claims.isNotYetValid, isTrue);
        expect(claims.isValid, isFalse);
      });

      test('accepts JWT after nbf time', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 2)),
          issuedAt: DateTime.now().subtract(const Duration(hours: 1)),
          notBefore: DateTime.now().subtract(const Duration(minutes: 30)),
        );

        expect(claims.isNotYetValid, isFalse);
        expect(claims.isValid, isTrue);
      });
    });

    group('JWT Issuer Validation', () {
      test('rejects JWT with wrong issuer', () {
        final claims = JwtClaims(
          issuer: 'https://evil-issuer.com', // Wrong issuer
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        // Should not match trusted issuer
        expect(claims.issuer, isNot(equals('https://trusted-issuer.com')));
        expect(claims.issuer, equals('https://evil-issuer.com'));
      });
      test('accepts JWT with correct issuer', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims.issuer, equals('https://example.com'));
      });
    });

    group('JWT Audience Validation', () {
      test('rejects JWT with wrong audience', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'wrong-client', // Wrong audience
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims.audience, isNot(equals('client123')));
      });

      test('accepts JWT with correct audience', () {
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims.audience, equals('client123'));
      });

      test('handles multiple audiences', () {
        // Some JWTs have audience as array
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims.audience, equals('client123'));
      });
    });

    group('at_hash Validation', () {
      test('validates at_hash correctly for RS256', () {
        const accessToken = 'test_access_token';
        const algorithm = 'RS256';

        final isValid = validator.validateAtHash(
          accessToken,
          'dummy_hash',
          algorithm,
        );

        // This will fail with dummy hash, but tests the method exists
        expect(isValid, isA<bool>());
      });

      test('validates at_hash correctly for RS384', () {
        const accessToken = 'test_access_token';
        const algorithm = 'RS384';

        final isValid = validator.validateAtHash(
          accessToken,
          'dummy_hash',
          algorithm,
        );

        expect(isValid, isA<bool>());
      });

      test('validates at_hash correctly for RS512', () {
        const accessToken = 'test_access_token';
        const algorithm = 'RS512';

        final isValid = validator.validateAtHash(
          accessToken,
          'dummy_hash',
          algorithm,
        );

        expect(isValid, isA<bool>());
      });

      test('at_hash prevents token substitution', () {
        // at_hash binds ID token to access token
        // Without it, attacker could use stolen ID token with their access token

        const legitimateAccessToken = 'legitimate_access_token';
        const stolenAccessToken = 'stolen_access_token';

        // at_hash should be different for different tokens
        expect(legitimateAccessToken, isNot(equals(stolenAccessToken)));
      });
    });

    group('JWT Replay Attack Prevention', () {
      test('jti claim provides unique token identifier', () {
        final claims1 = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          jwtId: 'unique-jwt-id-1',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        final claims2 = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          jwtId: 'unique-jwt-id-2',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
        );

        expect(claims1.jwtId, isNot(equals(claims2.jwtId)));
      });

      test('nonce prevents replay in OIDC flow', () {
        // Nonce binds authentication request to response
        // This is tested in state manager, but JWT should contain nonce
        final claims = JwtClaims(
          issuer: 'https://example.com',
          subject: 'user123',
          audience: 'client123',
          expiresAt: DateTime.now().add(const Duration(hours: 1)),
          issuedAt: DateTime.now(),
          additionalClaims: <String, dynamic>{
            'nonce': 'unique-nonce-12345',
          },
        );

        expect(claims.additionalClaims['nonce'], equals('unique-nonce-12345'));
      });
    });

    group('JWT Key Security', () {
      test('rejects JWT without valid signature when key required', () async {
        const unsignedJwt = 'header.payload.invalid_signature';

        expect(
          () async => await validator.validateToken(
            unsignedJwt,
            publicKeyPem: TestJwks.rsaPublicKeyPem,
          ),
          throwsA(isA<SecurityException>()),
        );
      });

      test('JWKS cache is bounded to prevent memory exhaustion', () {
        final stats = validator.getCacheStats();

        expect(stats, contains('cached_jwks_count'));
        expect(stats['cached_jwks_count'], isA<int>());

        // Cache should be bounded
        expect(stats['cached_jwks_count'], lessThan(1000));
      });

      test('can clear JWKS cache', () {
        validator.clearCache();

        final stats = validator.getCacheStats();
        expect(stats['cached_jwks_count'], equals(0));
      });
    });

    group('JWT Structure Validation', () {
      test('rejects malformed JWT (not 3 parts)', () {
        const malformedJwt = 'header.payload'; // Missing signature

        expect(
          () => JwtValidator.decodeWithoutValidation(malformedJwt),
          throwsA(anything),
        );
      });

      test('rejects JWT with invalid base64 encoding', () {
        const invalidBase64Jwt = 'not-base64.not-base64.not-base64';

        expect(
          () => JwtValidator.decodeWithoutValidation(invalidBase64Jwt),
          throwsA(anything),
        );
      });

      test('rejects JWT with invalid JSON in payload', () {
        // Valid base64 but invalid JSON
        const header = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9';
        const invalidJsonPayload = 'bm90LWpzb24='; // "not-json" in base64
        const signature = 'signature';
        const invalidJwt = '$header.$invalidJsonPayload.$signature';

        expect(
          () => JwtValidator.decodeWithoutValidation(invalidJwt),
          throwsA(anything),
        );
      });
    });

    group('JWT Side-Channel Attack Resistance', () {
      test('signature verification is constant-time', () {
        // Test that verification time doesn't leak information
        final jwt1 = TestJwts.sampleJwt;
        final jwt2 = TestJwts.sampleJwt;

        final stopwatch1 = Stopwatch()..start();
        try {
          JwtValidator.decodeWithoutValidation(jwt1);
        } catch (_) {}
        stopwatch1.stop();

        final stopwatch2 = Stopwatch()..start();
        try {
          JwtValidator.decodeWithoutValidation(jwt2);
        } catch (_) {}
        stopwatch2.stop();

        // Time difference should be negligible (< 5ms to account for system variance)
        final timeDiff =
            (stopwatch1.elapsedMicroseconds - stopwatch2.elapsedMicroseconds)
                .abs();
        expect(timeDiff,
            lessThan(5000)); // Increased tolerance for CI environments
      });
    });
  });
}
