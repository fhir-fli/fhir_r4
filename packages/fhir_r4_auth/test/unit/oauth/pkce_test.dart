/// Tests for PKCE implementation
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('PkceManager', () {
    late PkceManager pkceManager;

    setUp(() {
      pkceManager = PkceManager();
    });

    test('generates valid code verifier', () {
      final verifier = pkceManager.codeVerifier;

      // Check length (43-128 characters per RFC 7636)
      expect(verifier.length, greaterThanOrEqualTo(43));
      expect(verifier.length, lessThanOrEqualTo(128));

      // Check allowed characters
      final regex = RegExp(r'^[A-Za-z0-9\-._~]+$');
      expect(regex.hasMatch(verifier), isTrue);
    });

    test('generates code challenge from verifier', () {
      final challenge = pkceManager.codeChallenge;

      // Challenge should be base64url encoded (no padding)
      expect(challenge, isNot(contains('=')));
      expect(challenge.length, greaterThan(0));
    });

    test('uses S256 challenge method', () {
      expect(pkceManager.challengeMethod, equals('S256'));
    });

    test('generates consistent challenge for same verifier', () {
      final challenge1 = pkceManager.codeChallenge;
      final challenge2 = pkceManager.codeChallenge;

      expect(challenge1, equals(challenge2));
    });

    test('generates different verifiers on reset', () {
      final verifier1 = pkceManager.codeVerifier;
      pkceManager.reset();
      final verifier2 = pkceManager.codeVerifier;

      expect(verifier1, isNot(equals(verifier2)));
    });

    test('creates authorization parameters', () {
      final params = pkceManager.toAuthorizationParameters();

      expect(params, contains('code_challenge'));
      expect(params, contains('code_challenge_method'));
      expect(params['code_challenge_method'], equals('S256'));
    });

    test('creates token parameters', () {
      final params = pkceManager.toTokenParameters();

      expect(params, contains('code_verifier'));
      expect(params['code_verifier'], equals(pkceManager.codeVerifier));
    });

    test('validates correct code verifier', () {
      expect(PkceManager.isValidCodeVerifier(pkceManager.codeVerifier), isTrue);
    });

    test('rejects too short code verifier', () {
      const tooShort = 'abc123'; // Less than 43 characters
      expect(PkceManager.isValidCodeVerifier(tooShort), isFalse);
    });

    test('rejects too long code verifier', () {
      final tooLong = 'a' * 129; // More than 128 characters
      expect(PkceManager.isValidCodeVerifier(tooLong), isFalse);
    });

    test('rejects invalid characters', () {
      final invalid = 'a' * 43 + '!@#\$%'; // Invalid characters
      expect(PkceManager.isValidCodeVerifier(invalid), isFalse);
    });

    test('verifies challenge matches verifier', () {
      final verifier = pkceManager.codeVerifier;
      final challenge = pkceManager.codeChallenge;

      expect(
        PkceManager.verifyChallenge(
          verifier: verifier,
          challenge: challenge,
          method: CodeChallengeMethod.s256,
        ),
        isTrue,
      );
    });

    test('rejects mismatched challenge and verifier', () {
      final verifier = pkceManager.codeVerifier;
      const wrongChallenge = 'wrong_challenge_value';

      expect(
        PkceManager.verifyChallenge(
          verifier: verifier,
          challenge: wrongChallenge,
          method: CodeChallengeMethod.s256,
        ),
        isFalse,
      );
    });

    test('rejects plain challenge method', () {
      final verifier = pkceManager.codeVerifier;
      final challenge = pkceManager.codeChallenge;

      expect(
        PkceManager.verifyChallenge(
          verifier: verifier,
          challenge: challenge,
          method: CodeChallengeMethod.plain,
        ),
        isFalse,
      );
    });
  });

  group('PkceParameters', () {
    late PkceManager pkceManager;

    setUp(() {
      pkceManager = PkceManager();
    });

    test('creates from manager', () {
      final params = PkceParameters.fromManager(pkceManager);

      expect(params.codeVerifier, equals(pkceManager.codeVerifier));
      expect(params.codeChallenge, equals(pkceManager.codeChallenge));
      expect(params.challengeMethod, equals(CodeChallengeMethod.s256));
    });

    test('validates correct parameters', () {
      final params = PkceParameters.fromManager(pkceManager);

      expect(params.isValid, isTrue);
    });

    test('serializes to JSON', () {
      final params = PkceParameters.fromManager(pkceManager);
      final json = params.toJson();

      expect(json, contains('codeVerifier'));
      expect(json, contains('codeChallenge'));
      expect(json, contains('challengeMethod'));
    });

    test('deserializes from JSON', () {
      final params1 = PkceParameters.fromManager(pkceManager);
      final json = params1.toJson();
      final params2 = PkceParameters.fromJson(json);

      expect(params2.codeVerifier, equals(params1.codeVerifier));
      expect(params2.codeChallenge, equals(params1.codeChallenge));
      expect(params2.challengeMethod, equals(params1.challengeMethod));
    });
  });
}
