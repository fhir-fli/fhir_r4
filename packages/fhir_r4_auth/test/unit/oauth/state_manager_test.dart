/// Tests for state and nonce management
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('StateManager', () {
    late StateManager stateManager;

    setUp(() {
      stateManager = StateManager();
    });

    test('generates valid state parameter', () {
      final state = stateManager.generateState();

      // State should be at least 32 characters
      expect(state.length, greaterThanOrEqualTo(32));

      // Should be base64url safe
      expect(state, isNot(contains('+')));
      expect(state, isNot(contains('/')));
    });

    test('generates valid nonce parameter', () {
      final nonce = stateManager.generateNonce();

      // Nonce should be at least 32 characters
      expect(nonce.length, greaterThanOrEqualTo(32));

      // Should be base64url safe
      expect(nonce, isNot(contains('+')));
      expect(nonce, isNot(contains('/')));
    });

    test('generates unique state values', () {
      final state1 = stateManager.generateState();
      final state2 = stateManager.generateState();

      expect(state1, isNot(equals(state2)));
    });

    test('generates unique nonce values', () {
      final nonce1 = stateManager.generateNonce();
      final nonce2 = stateManager.generateNonce();

      expect(nonce1, isNot(equals(nonce2)));
    });

    test('validates correct state', () {
      final state = stateManager.generateState();

      expect(() => stateManager.validateStateOrThrow(state), returnsNormally);
    });

    test('throws on invalid state', () {
      stateManager.generateState(); // Generate a valid state
      const invalidState = 'invalid_state_value';

      expect(
        () => stateManager.validateStateOrThrow(invalidState),
        throwsA(isA<SecurityException>()),
      );
    });

    test('throws on expired state', () {
      final state = stateManager.generateState();

      // Clear the state to simulate expiration
      stateManager.clear();

      expect(
        () => stateManager.validateStateOrThrow(state),
        throwsA(isA<SecurityException>()),
      );
    });

    test('clears all states', () {
      final state = stateManager.generateState();
      stateManager.clear();

      expect(
        () => stateManager.validateStateOrThrow(state),
        throwsA(isA<SecurityException>()),
      );
    });

    test('stores multiple states', () {
      final state1 = stateManager.generateState();
      final state2 = stateManager.generateState();

      expect(() => stateManager.validateStateOrThrow(state1), returnsNormally);
      expect(() => stateManager.validateStateOrThrow(state2), returnsNormally);
    });

    test('state is case-sensitive', () {
      final state = stateManager.generateState();
      final upperState = state.toUpperCase();

      // Original state should be valid
      expect(() => stateManager.validateStateOrThrow(state), returnsNormally);

      // Uppercase version should be invalid (if different)
      if (state != upperState) {
        expect(
          () => stateManager.validateStateOrThrow(upperState),
          throwsA(isA<SecurityException>()),
        );
      }
    });

    test('nonce is independent of state', () {
      final state = stateManager.generateState();
      final nonce = stateManager.generateNonce();

      // State and nonce should be different
      expect(state, isNot(equals(nonce)));
    });

    test('security exception has correct violation type', () {
      stateManager.generateState();
      const invalidState = 'invalid_state_value';

      try {
        stateManager.validateStateOrThrow(invalidState);
        fail('Should have thrown SecurityException');
      } on SecurityException catch (e) {
        expect(
          e.securityViolationType,
          equals(SecurityViolationType.stateMismatch),
        );
      }
    });
  });

  group('StateManager - edge cases', () {
    test('handles rapid generation', () {
      final stateManager = StateManager();
      final states = <String>{};

      // Generate 100 states rapidly
      for (int i = 0; i < 100; i++) {
        states.add(stateManager.generateState());
      }

      // All should be unique
      expect(states.length, equals(100));
    });

    test('handles empty validation', () {
      final stateManager = StateManager();

      expect(
        () => stateManager.validateStateOrThrow(''),
        throwsA(isA<SecurityException>()),
      );
    });

    test('handles whitespace in state', () {
      final stateManager = StateManager();
      stateManager.generateState();

      expect(
        () => stateManager.validateStateOrThrow('  invalid  '),
        throwsA(isA<SecurityException>()),
      );
    });
  });
}
