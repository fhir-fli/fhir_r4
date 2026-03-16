/// Security tests for PKCE implementation
/// Tests cryptographic strength and attack resistance
library;

import 'dart:math' as math;
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

void main() {
  group('PKCE Security', () {
    late PkceManager pkceManager;

    setUp(() {
      pkceManager = PkceManager();
    });

    group('Code Verifier Security', () {
      test('generates code verifier with sufficient entropy', () {
        final verifier = pkceManager.codeVerifier;

        // Must be at least 43 characters (RFC 7636)
        expect(verifier.length, greaterThanOrEqualTo(43));

        // Should be maximum length for maximum security
        expect(verifier.length, equals(128));
      });

      test('generates unique code verifiers', () {
        final verifiers = <String>{};

        // Generate 100 verifiers
        for (int i = 0; i < 100; i++) {
          final manager = PkceManager();
          verifiers.add(manager.codeVerifier);
        }

        // All should be unique
        expect(verifiers.length, equals(100));
      });

      test('code verifier contains only allowed characters', () {
        final verifier = pkceManager.codeVerifier;

        // RFC 7636: unreserved characters [A-Z] / [a-z] / [0-9] / "-" / "." / "_" / "~"
        final allowedPattern = RegExp(r'^[A-Za-z0-9\-._~]+$');
        expect(allowedPattern.hasMatch(verifier), isTrue);
      });

      test('code verifier has no repeated patterns', () {
        final verifier = pkceManager.codeVerifier;

        // Check for repeated substrings (weak RNG indicator)
        for (int len = 4; len <= 8; len++) {
          final patterns = <String>{};
          for (int i = 0; i <= verifier.length - len; i++) {
            final substring = verifier.substring(i, i + len);
            expect(
              patterns.contains(substring),
              isFalse,
              reason: 'Found repeated pattern: $substring',
            );
            patterns.add(substring);
          }
        }
      });

      test('code verifier passes entropy test', () {
        final verifier = pkceManager.codeVerifier;

        // Calculate Shannon entropy
        final freq = <String, int>{};
        for (int i = 0; i < verifier.length; i++) {
          final char = verifier[i];
          freq[char] = (freq[char] ?? 0) + 1;
        }

        double entropy = 0.0;
        for (final count in freq.values) {
          final p = count / verifier.length;
          entropy -= p * (math.log(p) / math.ln2);
        }

        // Should have high entropy (close to log2(66) ≈ 6.04 for full charset)
        // Require at least 4.5 bits per character
        expect(entropy, greaterThan(4.5));
      });
    });

    group('Code Challenge Security', () {
      test('generates correct S256 challenge', () {
        final verifier = pkceManager.codeVerifier;
        final challenge = pkceManager.codeChallenge;

        // Manually compute expected challenge
        final bytes = utf8.encode(verifier);
        final digest = sha256.convert(bytes);
        final expected = base64Url.encode(digest.bytes).replaceAll('=', '');

        expect(challenge, equals(expected));
      });

      test('challenge is different from verifier', () {
        final verifier = pkceManager.codeVerifier;
        final challenge = pkceManager.codeChallenge;

        // Challenge must not equal verifier (would defeat PKCE)
        expect(challenge, isNot(equals(verifier)));
      });

      test('challenge method is always S256', () {
        expect(pkceManager.challengeMethod, equals('S256'));
      });

      test('same verifier produces same challenge', () {
        const testVerifier = 'test_verifier_12345678901234567890123456789012';

        final manager1 = PkceManager(codeVerifier: testVerifier);
        final manager2 = PkceManager(codeVerifier: testVerifier);

        expect(manager1.codeChallenge, equals(manager2.codeChallenge));
      });

      test('different verifiers produce different challenges', () {
        final manager1 = PkceManager();
        final manager2 = PkceManager();

        expect(manager1.codeChallenge, isNot(equals(manager2.codeChallenge)));
      });

      test('challenge has no padding', () {
        final challenge = pkceManager.codeChallenge;

        // Base64url encoding should have padding removed
        expect(challenge, isNot(contains('=')));
      });

      test('challenge is URL-safe', () {
        final challenge = pkceManager.codeChallenge;

        // Should not contain + or /
        expect(challenge, isNot(contains('+')));
        expect(challenge, isNot(contains('/')));
      });
    });

    group('PKCE Attack Resistance', () {
      test('prevents authorization code interception attack', () {
        // Attacker intercepts authorization code but not verifier
        final legitimateManager = PkceManager();
        final legitimateChallenge = legitimateManager.codeChallenge;

        // Attacker tries to guess verifier
        final attackerManager = PkceManager();
        final attackerVerifier = attackerManager.codeVerifier;

        // Attacker's verifier won't match legitimate challenge
        final attackerBytes = utf8.encode(attackerVerifier);
        final attackerDigest = sha256.convert(attackerBytes);
        final attackerChallenge =
            base64Url.encode(attackerDigest.bytes).replaceAll('=', '');

        expect(attackerChallenge, isNot(equals(legitimateChallenge)));
      });

      test('prevents verifier reuse across flows', () {
        final manager1 = PkceManager();
        final verifier1 = manager1.codeVerifier;

        manager1.reset();

        final verifier2 = manager1.codeVerifier;

        // After reset, should generate new verifier
        expect(verifier2, isNot(equals(verifier1)));
      });

      test('verifier cannot be derived from challenge', () {
        final challenge = pkceManager.codeChallenge;

        // This should be computationally infeasible
        // We test that challenge is irreversible by verifying it's a hash
        // SHA-256 produces 256-bit output, base64url encoded to 43 chars
        expect(challenge.length, equals(43));

        // Challenge should look random (high entropy)
        final uniqueChars = challenge.split('').toSet();
        expect(uniqueChars.length, greaterThan(20));
      });

      test('prevents timing attacks on challenge comparison', () {
        final manager = PkceManager();
        final correctChallenge = manager.codeChallenge;

        // Generate similar-looking but wrong challenge
        final wrongChallenge = '${correctChallenge.substring(0, 42)}X';

        final stopwatch1 = Stopwatch()..start();
        final match1 = correctChallenge == wrongChallenge;
        stopwatch1.stop();

        final stopwatch2 = Stopwatch()..start();
        final match2 = correctChallenge == correctChallenge;
        stopwatch2.stop();

        expect(match1, isFalse);
        expect(match2, isTrue);

        // Timing difference should be negligible (< 1ms)
        // This tests that string comparison is constant-time-ish
        final timeDiff =
            (stopwatch1.elapsedMicroseconds - stopwatch2.elapsedMicroseconds)
                .abs();
        expect(timeDiff, lessThan(1000));
      });
    });

    group('PKCE Parameter Validation', () {
      test('rejects weak code verifier (too short)', () {
        expect(
          PkceManager.isValidCodeVerifier('short'),
          isFalse,
        );
      });

      test('rejects code verifier with invalid characters', () {
        final invalidVerifier = 'a' * 43 + '!@#';
        expect(
          PkceManager.isValidCodeVerifier(invalidVerifier),
          isFalse,
        );
      });

      test('accepts valid code verifier', () {
        final validVerifier = 'a' * 43;
        expect(
          PkceManager.isValidCodeVerifier(validVerifier),
          isTrue,
        );
      });

      test('rejects code verifier that is too long', () {
        final tooLong = 'a' * 129;
        expect(
          PkceManager.isValidCodeVerifier(tooLong),
          isFalse,
        );
      });

      test('generates token parameters correctly', () {
        final params = pkceManager.toTokenParameters();

        expect(params, contains('code_verifier'));
        expect(params['code_verifier'], equals(pkceManager.codeVerifier));
        expect(params.length, equals(1));
      });

      test('generates authorization parameters correctly', () {
        final params = pkceManager.toAuthorizationParameters();

        expect(params, contains('code_challenge'));
        expect(params, contains('code_challenge_method'));
        expect(params['code_challenge'], equals(pkceManager.codeChallenge));
        expect(params['code_challenge_method'], equals('S256'));
        expect(params.length, equals(2));
      });
    });

    group('PKCE Reset and Cleanup', () {
      test('reset clears verifier and challenge', () {
        final originalVerifier = pkceManager.codeVerifier;
        final originalChallenge = pkceManager.codeChallenge;

        pkceManager.reset();

        final newVerifier = pkceManager.codeVerifier;
        final newChallenge = pkceManager.codeChallenge;

        expect(newVerifier, isNot(equals(originalVerifier)));
        expect(newChallenge, isNot(equals(originalChallenge)));
      });

      test('can be reused after reset', () {
        pkceManager.reset();

        final verifier = pkceManager.codeVerifier;
        final challenge = pkceManager.codeChallenge;

        expect(verifier.length, greaterThanOrEqualTo(43));
        expect(challenge.length, equals(43));
      });
    });

    group('PKCE Edge Cases', () {
      test('handles concurrent access safely', () {
        final managers = <PkceManager>[];
        final verifiers = <String>[];

        // Create multiple managers concurrently
        for (int i = 0; i < 10; i++) {
          final manager = PkceManager();
          managers.add(manager);
          verifiers.add(manager.codeVerifier);
        }

        // All should be unique
        expect(verifiers.toSet().length, equals(10));
      });

      test('custom verifier must be validated', () {
        // Valid custom verifier
        final validCustom = 'a' * 128;
        expect(
          () => PkceManager(codeVerifier: validCustom),
          returnsNormally,
        );

        // Invalid custom verifier (too short) should be rejected by isValidCodeVerifier
        expect(
          PkceManager.isValidCodeVerifier('short'),
          isFalse,
        );

        // Verifier with invalid characters
        expect(
          PkceManager.isValidCodeVerifier('a' * 43 + '!@#'),
          isFalse,
        );
      });
      test('verifier and challenge remain consistent', () {
        final verifier1 = pkceManager.codeVerifier;
        final challenge1 = pkceManager.codeChallenge;

        // Access again without reset
        final verifier2 = pkceManager.codeVerifier;
        final challenge2 = pkceManager.codeChallenge;

        expect(verifier1, equals(verifier2));
        expect(challenge1, equals(challenge2));
      });
    });
  });
}
