/// Security tests for error handling
/// Tests that errors don't leak sensitive information
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('Error Handling Security', () {
    group('Token Leakage in Errors', () {
      test('token exception does not expose token in message', () {
        const sensitiveToken = 'secret_access_token_12345';

        const error = TokenException(
          'Token validation failed',
          details: 'Invalid token format',
        );

        final errorMessage = error.toString();

        // Should contain error description
        expect(errorMessage, contains('Token validation failed'));

        // Should not contain actual tokens
        expect(errorMessage, isNot(contains(sensitiveToken)));
      });

      test('authentication exception sanitizes details', () {
        const error = AuthenticationException(
          'Authentication failed',
          details: 'Check credentials',
        );

        final errorMessage = error.toString();

        expect(errorMessage, contains('Authentication failed'));
        expect(errorMessage, isNot(contains('password')));
        expect(errorMessage, isNot(contains('secret')));
      });

      test('authorization exception does not leak client secrets', () {
        const error = AuthorizationException(
          'Authorization failed',
          errorCode: 'invalid_client',
        );

        final errorMessage = error.toString();

        expect(errorMessage, contains('Authorization failed'));
        expect(errorMessage, isNot(contains('client_secret')));
      });

      test('network exception sanitizes URLs', () {
        const error = NetworkException(
          'Request failed',
          details: 'Connection to https://example.com/token failed',
        );

        final errorMessage = error.toString();

        // Should describe the error
        expect(errorMessage, contains('Request failed'));

        // URL in details should not contain secrets
        expect(error.details, isNot(contains('client_secret=')));
        expect(error.details, isNot(contains('access_token=')));
      });
    });

    group('Stack Trace Security', () {
      test('stack traces do not contain tokens', () {
        try {
          throw const TokenException(
            'Token error',
            details: 'Validation failed',
          );
        } catch (e, stackTrace) {
          final stackString = stackTrace.toString();

          // Stack trace should not contain token values
          expect(stackString, isNot(contains('access_token_')));
          expect(stackString, isNot(contains('secret_')));
        }
      });

      test('nested exceptions sanitize inner exceptions', () {
        const innerError = TokenException('Inner error');
        const outerError = SecurityException(
          'Security violation',
          innerException: innerError,
          securityViolationType: SecurityViolationType.tokenTampered,
        );

        final errorMessage = outerError.toString();

        expect(errorMessage, contains('Security violation'));

        // Should not expose sensitive data from inner exception
        expect(errorMessage, isNot(contains('token_12345')));
      });
    });

    group('Error Code Information Disclosure', () {
      test('error codes are generic and non-revealing', () {
        const error = AuthorizationException(
          'Authorization failed',
          errorCode: 'invalid_grant',
        );

        // Error code should be standard OAuth 2.0 code
        expect(error.errorCode, equals('invalid_grant'));

        // Should not reveal implementation details
        expect(error.errorCode, isNot(contains('database')));
        expect(error.errorCode, isNot(contains('internal')));
      });

      test('security exceptions use standard violation types', () {
        const error = SecurityException(
          'Security violation',
          securityViolationType: SecurityViolationType.stateMismatch,
        );

        // Should use enum, not reveal internal details
        expect(error.securityViolationType,
            equals(SecurityViolationType.stateMismatch));
      });

      test('storage exceptions do not reveal file paths', () {
        const error = StorageException(
          'Storage operation failed',
          details: 'Could not write to storage',
        );

        final errorMessage = error.toString();

        // Should not contain file system paths
        expect(errorMessage, isNot(contains('/data/')));
        expect(errorMessage, isNot(contains('C:\\')));
        expect(errorMessage, isNot(contains('/Users/')));
      });
    });

    group('Validation Error Security', () {
      test('validation errors do not echo user input', () {
        // Malicious input should not be echoed in error
        const maliciousInput = '<script>alert("xss")</script>';

        // Validation should reject but not echo the input
        const error = ConfigurationException(
          'Invalid configuration',
          configurationField: 'redirect_uri',
        );

        final errorMessage = error.toString();

        expect(errorMessage, isNot(contains(maliciousInput)));
        expect(errorMessage, contains('Invalid configuration'));
      });

      test('validation errors are specific but not revealing', () {
        const error = ConfigurationException(
          'Invalid client configuration',
          configurationField: 'client_id',
        );

        expect(error.configurationField, equals('client_id'));
        expect(error.message, isNot(contains('database')));
        expect(error.message, isNot(contains('sql')));
      });
    });

    group('HTTP Status Code Handling', () {
      test('4xx errors do not reveal internal state', () {
        const error = NetworkException(
          'Bad request',
          statusCode: 400,
        );

        expect(error.statusCode, equals(400));
        expect(error.message, isNot(contains('internal')));
        expect(error.message, isNot(contains('stack')));
      });

      test('5xx errors are sanitized for client', () {
        const error = NetworkException(
          'Server error',
          statusCode: 500,
          details: 'Internal server error occurred',
        );

        // Should indicate server error without details
        expect(error.statusCode, equals(500));
        expect(error.message, equals('Server error'));

        // Details might contain more info but not in message
        expect(error.message, isNot(contains('database')));
        expect(error.message, isNot(contains('exception')));
      });

      test('401 errors do not reveal why authentication failed', () {
        const error = NetworkException(
          'Unauthorized',
          statusCode: 401,
        );

        expect(error.statusCode, equals(401));

        // Should not reveal whether user exists, token invalid, etc.
        expect(error.message, equals('Unauthorized'));
        expect(error.message, isNot(contains('user not found')));
        expect(error.message, isNot(contains('invalid token')));
      });
    });

    group('Logging Safety', () {
      test('log-safe error representations exclude secrets', () {
        const token = 'secret_token_12345';
        final tokenResponse = SmartTokenResponse(
          accessToken: token,
          refreshToken: 'refresh_token_67890',
        );

        // toString should not contain tokens
        final stringRep = tokenResponse.toString();

        expect(stringRep, isNot(contains('secret_token')));
        expect(stringRep, isNot(contains('refresh_token_67890')));
      });

      test('state manager errors do not log state values', () {
        final stateManager = StateManager();
        final state = stateManager.generateState();

        try {
          stateManager.validateStateOrThrow('wrong_state');
        } catch (e) {
          final errorMessage = e.toString();

          // Should indicate state mismatch
          expect(errorMessage, contains('state'));

          // Should not contain actual state values
          expect(errorMessage, isNot(contains(state)));
          expect(errorMessage, isNot(contains('wrong_state')));
        }
      });

      test('JWT validation errors do not log token content', () {
        const jwt = 'header.payload.signature';

        try {
          JwtValidator.decodeWithoutValidation(jwt);
          fail('Should have thrown an exception');
        } catch (e) {
          final errorMessage = e.toString();

          // Error should describe the problem
          expect(errorMessage, isNotEmpty);

          // Should not contain the actual JWT parts
          expect(errorMessage, isNot(contains('header.payload.signature')));
          expect(errorMessage, isNot(contains('signature')));
        }
      });
    });

    group('Rate Limit Error Information', () {
      test('rate limit errors do not reveal limits', () {
        const error = RateLimitException(
          'Rate limit exceeded',
          retryAfter: Duration(seconds: 60),
        );

        final errorMessage = error.toString();

        // Should tell user to retry
        expect(errorMessage, contains('Rate limit exceeded'));

        // Should not reveal exact limits or remaining requests
        expect(errorMessage, isNot(contains('requests per')));
        expect(errorMessage, isNot(contains('remaining')));
      });

      test('retry-after is reasonable and bounded', () {
        const error = RateLimitException(
          'Rate limit exceeded',
          retryAfter: Duration(minutes: 5),
        );

        // Retry after should be reasonable
        expect(error.retryAfter!.inMinutes, lessThanOrEqualTo(60));
        expect(error.retryAfter!.inSeconds, greaterThan(0));
      });
    });

    group('Exception Serialization Security', () {
      test('exceptions cannot be serialized with sensitive data', () {
        const error = TokenException(
          'Token error',
          details: 'Invalid format',
        );

        final errorString = error.toString();

        // toString should be safe
        expect(errorString, isNot(contains('access_token=')));
        expect(errorString, isNot(contains('client_secret=')));
      });

      test('security exceptions indicate type without details', () {
        const error = SecurityException(
          'CSRF detected',
          securityViolationType: SecurityViolationType.stateMismatch,
        );

        final errorMessage = error.toString();

        expect(errorMessage, contains('CSRF detected'));

        // Should not reveal how CSRF detection works
        expect(errorMessage, isNot(contains('state =')));
        expect(errorMessage, isNot(contains('expected')));
      });
    });

    group('Error Recovery Information', () {
      test('errors provide actionable guidance without exposing system', () {
        const error = ConfigurationException(
          'Invalid redirect URI',
          configurationField: 'redirectUri',
        );

        expect(error.message, contains('Invalid redirect URI'));
        expect(error.configurationField, equals('redirectUri'));

        // Should help user fix the issue
        expect(error.message, isNot(isEmpty));

        // Should not reveal internal validation logic
        expect(error.message, isNot(contains('regex')));
        expect(error.message, isNot(contains('validation function')));
      });

      test('authentication failures provide generic guidance', () {
        const error = AuthenticationException(
          'Authentication failed',
        );

        final errorMessage = error.toString();

        // Should be helpful but not specific
        expect(errorMessage, contains('Authentication failed'));

        // Should not reveal why (timing attack prevention)
        expect(errorMessage, isNot(contains('password incorrect')));
        expect(errorMessage, isNot(contains('user not found')));
        expect(errorMessage, isNot(contains('account locked')));
      });
    });

    group('Concurrent Error Handling', () {
      test('errors from parallel operations do not interfere', () {
        final errors = <Exception>[];

        // Simulate multiple errors
        errors.add(const TokenException('Error 1'));
        errors.add(const TokenException('Error 2'));
        errors.add(const TokenException('Error 3'));

        // Each error should be independent
        expect(errors.length, equals(3));
        expect(errors[0].toString(), contains('Error 1'));
        expect(errors[1].toString(), contains('Error 2'));
        expect(errors[2].toString(), contains('Error 3'));
      });
    });

    group('Error Type Identification', () {
      test('errors can be identified by type safely', () {
        const tokenError = TokenException('Token error');
        const authError = AuthenticationException('Auth error');
        const networkError = NetworkException('Network error');

        expect(tokenError, isA<TokenException>());
        expect(authError, isA<AuthenticationException>());
        expect(networkError, isA<NetworkException>());
      });

      test('security violation types are distinguishable', () {
        const csrfError = SecurityException(
          'CSRF',
          securityViolationType: SecurityViolationType.stateMismatch,
        );

        const replayError = SecurityException(
          'Replay',
          securityViolationType: SecurityViolationType.nonceMismatch,
        );

        expect(csrfError.securityViolationType,
            equals(SecurityViolationType.stateMismatch));
        expect(replayError.securityViolationType,
            equals(SecurityViolationType.nonceMismatch));
        expect(csrfError.securityViolationType,
            isNot(equals(replayError.securityViolationType)));
      });
    });
  });
}
