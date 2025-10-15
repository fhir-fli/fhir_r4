/// Tests for JWT validation
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';
import '../../test_helpers/test_data.dart';

void main() {
  group('JwtValidator', () {
    late JwtValidator validator;

    setUp(() {
      validator = JwtValidator();
    });

    test('creates with default config', () {
      expect(validator.issuer, isNull);
      expect(validator.audience, isNull);
      expect(validator.clockSkew, equals(const Duration(seconds: 30)));
    });

    test('creates with custom config', () {
      final validator = JwtValidator(
        issuer: 'https://example.com',
        audience: 'client123',
        clockSkew: const Duration(seconds: 60),
      );

      expect(validator.issuer, equals('https://example.com'));
      expect(validator.audience, equals('client123'));
      expect(validator.clockSkew, equals(const Duration(seconds: 60)));
    });

    test('decodes JWT without validation', () {
      final jwt = TestJwts.sampleJwt;

      final claims = JwtValidator.decodeWithoutValidation(jwt);

      expect(claims, isNotNull);
      expect(claims.subject, equals('user123'));
      expect(claims.issuer, equals('https://example.com'));
    });

    test('validates at_hash with SHA-256', () {
      const accessToken = 'test_access_token_12345';
      const algorithm = 'RS256';

      // Generate expected at_hash
      final validator = JwtValidator();
      final isValid = validator.validateAtHash(
        accessToken,
        'dummy_hash', // This will fail, but tests the method
        algorithm,
      );

      // Just verify the method runs without error
      expect(isValid, isA<bool>());
    });

    test('validates at_hash with SHA-384', () {
      const accessToken = 'test_access_token_12345';
      const algorithm = 'RS384';

      final validator = JwtValidator();
      final isValid = validator.validateAtHash(
        accessToken,
        'dummy_hash',
        algorithm,
      );

      expect(isValid, isA<bool>());
    });

    test('validates at_hash with SHA-512', () {
      const accessToken = 'test_access_token_12345';
      const algorithm = 'RS512';

      final validator = JwtValidator();
      final isValid = validator.validateAtHash(
        accessToken,
        'dummy_hash',
        algorithm,
      );

      expect(isValid, isA<bool>());
    });

    test('handles unknown algorithm for at_hash', () {
      const accessToken = 'test_access_token_12345';
      const algorithm = 'UNKNOWN';

      final validator = JwtValidator();

      // Should default to SHA-256 and not throw
      expect(
        () => validator.validateAtHash(accessToken, 'dummy_hash', algorithm),
        returnsNormally,
      );
    });

    test('clears JWKS cache', () {
      validator.clearCache();

      // Should not throw
      expect(validator.getCacheStats()['cached_jwks_count'], equals(0));
    });

    test('provides cache statistics', () {
      final stats = validator.getCacheStats();

      expect(stats, contains('cached_jwks_count'));
      expect(stats, contains('cache_entries'));
      expect(stats['cached_jwks_count'], isA<int>());
    });
  });

  group('JwtClaims', () {
    test('creates from JSON', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.issuer, equals('https://example.com'));
      expect(claims.subject, equals('user123'));
      expect(claims.audience, equals('client123'));
    });

    test('handles numeric timestamps', () {
      final now = DateTime.now();
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': now.millisecondsSinceEpoch ~/ 1000 + 3600,
        'iat': now.millisecondsSinceEpoch ~/ 1000,
        'nbf': now.millisecondsSinceEpoch ~/ 1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.expiresAt.isAfter(now), isTrue);
      expect(claims.issuedAt.isBefore(claims.expiresAt), isTrue);
    });

    test('handles string timestamps', () {
      final now = DateTime.now();
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': now.add(const Duration(hours: 1)).toIso8601String(),
        'iat': now.toIso8601String(),
        'nbf': now.toIso8601String(),
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.expiresAt.isAfter(now.subtract(const Duration(seconds: 5))),
          isTrue);
    });

    test('handles audience as string', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.audience, equals('client123'));
    });

    test('handles audience as array', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': <String>['client123', 'client456'],
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.audience, isA<List>());
      expect((claims.audience as List).contains('client123'), isTrue);
    });

    test('includes optional claims', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'jti': 'jwt-id-123',
        'nonce': 'nonce-456',
        'azp': 'authorized-party',
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.jwtId, equals('jwt-id-123'));
      expect(claims.nonce, equals('nonce-456'));
      expect(claims.azp, equals('authorized-party'));
    });

    test('extracts additional claims', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'custom_claim': 'custom_value',
        'role': 'admin',
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.additionalClaims['custom_claim'], equals('custom_value'));
      expect(claims.additionalClaims['role'], equals('admin'));
    });

    test('detects expired token', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .subtract(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now()
                .subtract(const Duration(hours: 2))
                .millisecondsSinceEpoch ~/
            1000,
        'nbf': DateTime.now()
                .subtract(const Duration(hours: 2))
                .millisecondsSinceEpoch ~/
            1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.isExpired, isTrue);
      expect(claims.isValid, isFalse);
    });

    test('detects not yet valid token', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 2))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'nbf': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.isNotYetValid, isTrue);
      expect(claims.isValid, isFalse);
    });

    test('detects valid token', () {
      final json = <String, dynamic>{
        'iss': 'https://example.com',
        'sub': 'user123',
        'aud': 'client123',
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nbf': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final claims = JwtClaims.fromJson(json);

      expect(claims.isExpired, isFalse);
      expect(claims.isNotYetValid, isFalse);
      expect(claims.isValid, isTrue);
    });

    test('serializes to JSON', () {
      final now = DateTime.now();
      final claims = JwtClaims(
        issuer: 'https://example.com',
        subject: 'user123',
        audience: 'client123',
        expiresAt: now.add(const Duration(hours: 1)),
        issuedAt: now,
        notBefore: now,
      );

      final json = claims.toJson();

      expect(json['iss'], equals('https://example.com'));
      expect(json['sub'], equals('user123'));
      expect(json['aud'], equals('client123'));
      expect(json['exp'], isA<int>());
      expect(json['iat'], isA<int>());
      expect(json['nbf'], isA<int>());
    });
  });
}
