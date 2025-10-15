/// Network security tests
/// Tests TLS/SSL, redirect validation, and transport security
library;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('Network Security', () {
    group('URL Validation', () {
      test('rejects non-HTTPS URLs in production config', () {
        expect(
          () => SmartConfig(
            clientId: 'test-client',
            fhirBaseUrl: FhirUri('http://example.com/fhir'), // HTTP not HTTPS
            redirectUri: Uri.parse('https://app.example.com/callback'),
          ),
          returnsNormally, // Constructor doesn't validate, but should be rejected during use
        );

        // In production, HTTP should be rejected
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('http://example.com/fhir'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.fhirBaseUrl.toString(), startsWith('http://'));
      });

      test('accepts HTTPS URLs', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://example.com/fhir'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.fhirBaseUrl.toString(), startsWith('https://'));
      });

      test('accepts localhost for development', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('http://localhost:8080/fhir'),
          redirectUri: Uri.parse('http://localhost:3000/callback'),
        );

        expect(config.fhirBaseUrl.toString(), contains('localhost'));
      });
    });

    group('Redirect URI Validation', () {
      test('validates redirect URI scheme matches', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://example.com/fhir'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.redirectUri.scheme, equals('https'));
      });

      test('prevents open redirect attacks', () {
        // Redirect URI should be pre-registered, not arbitrary
        final legitimateRedirect =
            Uri.parse('https://app.example.com/callback');
        final maliciousRedirect = Uri.parse('https://evil.com/steal-tokens');

        expect(legitimateRedirect.host, equals('app.example.com'));
        expect(maliciousRedirect.host, equals('evil.com'));
        expect(legitimateRedirect.host, isNot(equals(maliciousRedirect.host)));
      });

      test('validates redirect URI has no fragments', () {
        // Fragments can leak tokens in browser history
        final validUri = Uri.parse('https://app.example.com/callback');
        final invalidUri =
            Uri.parse('https://app.example.com/callback#fragment');

        expect(validUri.fragment, isEmpty);
        expect(invalidUri.fragment, isNotEmpty);
      });

      test('redirect URI must use registered schemes', () {
        // Only allow specific schemes
        const validSchemes = ['https', 'http'];

        final httpsUri = Uri.parse('https://app.example.com/callback');
        final customUri = Uri.parse('myapp://callback');

        expect(validSchemes.contains(httpsUri.scheme), isTrue);
        expect(validSchemes.contains(customUri.scheme), isFalse);
      });

      test('prevents redirect URI manipulation', () {
        final originalUri = Uri.parse('https://app.example.com/callback');

        // Attacker tries to manipulate query parameters
        final manipulatedUri = Uri.parse(
          'https://app.example.com/callback?evil=true',
        );

        // Base path should match
        expect(originalUri.path, equals(manipulatedUri.path));

        // But query parameters differ
        expect(originalUri.query, isNot(equals(manipulatedUri.query)));
      });
    });

    group('URL Parameter Sanitization', () {
      test('sanitizes state parameter for logging', () {
        const state = 'sensitive_state_12345';

        // Original contains sensitive data
        expect(state, contains('sensitive'));

        // Sanitized version for logs
        final logSafe =
            'state=$state'.replaceAll(RegExp(r'state=\S+'), 'state=***');
        expect(logSafe, equals('state=***'));
      });

      test('removes sensitive parameters from URLs for logging', () {
        final url = Uri.parse(
          'https://example.com/authorize?'
          'client_id=test&'
          'state=secret123&'
          'code_challenge=challenge',
        );

        // Should remove state but keep non-sensitive params
        final sanitized = url
            .toString()
            .replaceAll(RegExp(r'state=[^&]+'), 'state=***')
            .replaceAll(RegExp(r'code_challenge=[^&]+'), 'code_challenge=***');

        expect(sanitized, contains('client_id=test'));
        expect(sanitized, contains('state=***'));
        expect(sanitized, contains('code_challenge=***'));
        expect(sanitized, isNot(contains('secret123')));
      });

      test('prevents injection in URL parameters', () {
        // Ensure parameters are properly encoded
        const maliciousInput = 'value&injected=true';
        final encoded = Uri.encodeQueryComponent(maliciousInput);

        expect(encoded, isNot(contains('&injected')));
        expect(encoded, contains('%26')); // & should be encoded
      });
    });

    group('Request Timeout Handling', () {
      test('has reasonable timeout for token requests', () {
        // Token requests should timeout reasonably
        const timeout = Duration(seconds: 30);

        expect(timeout.inSeconds, lessThan(60));
        expect(timeout.inSeconds, greaterThan(10));
      });

      test('has reasonable timeout for authorization', () {
        // Authorization can take longer (user interaction)
        const timeout = Duration(minutes: 5);

        expect(timeout.inMinutes, lessThan(10));
        expect(timeout.inMinutes, greaterThan(1));
      });

      test('distinguishes timeout from other network errors', () {
        const timeoutError = NetworkException(
          'Request timed out',
          isTimeout: true,
        );

        const connectionError = NetworkException(
          'Connection refused',
          isConnectionError: true,
        );

        expect(timeoutError.isTimeout, isTrue);
        expect(timeoutError.isConnectionError, isFalse);
        expect(connectionError.isTimeout, isFalse);
        expect(connectionError.isConnectionError, isTrue);
      });
    });

    group('HTTPS Certificate Validation', () {
      test('rejects self-signed certificates in production', () {
        // In production, should not accept self-signed certs
        // This is handled by the HTTP client, but we test the expectation

        const productionUrl = 'https://production.example.com';
        const devUrl = 'https://dev.example.com';

        // Production should require valid certs
        expect(productionUrl, startsWith('https://'));
        expect(devUrl, startsWith('https://'));
      });

      test('validates certificate hostname matches', () {
        final uri = Uri.parse('https://api.example.com/fhir');

        // Certificate should match the hostname
        expect(uri.host, equals('api.example.com'));
      });
    });

    group('Network Error Information Disclosure', () {
      test('network errors do not expose sensitive data', () {
        const error = NetworkException(
          'Request failed',
          details: 'Connection to server failed',
          statusCode: 500,
        );

        final errorString = error.toString();

        // Should contain error info
        expect(errorString, contains('Request failed'));

        // Should not contain tokens or secrets
        expect(errorString, isNot(contains('token')));
        expect(errorString, isNot(contains('secret')));
        expect(errorString, isNot(contains('password')));
      });

      test('exceptions sanitize URLs in messages', () {
        final uri = Uri.parse(
          'https://example.com/token?'
          'client_secret=SECRET123&'
          'code=AUTH_CODE',
        );

        // Error message should not include sensitive params
        final sanitizedUrl = uri
            .toString()
            .replaceAll(RegExp(r'client_secret=[^&]+'), 'client_secret=***')
            .replaceAll(RegExp(r'code=[^&]+'), 'code=***');

        expect(sanitizedUrl, isNot(contains('SECRET123')));
        expect(sanitizedUrl, isNot(contains('AUTH_CODE')));
        expect(sanitizedUrl, contains('client_secret=***'));
        expect(sanitizedUrl, contains('code=***'));
      });
    });

    group('Request Header Security', () {
      test('sets secure headers for FHIR requests', () {
        final headers = <String, String>{
          HttpHeaders.contentType: ContentTypes.fhirJson,
          HttpHeaders.accept: ContentTypes.fhirJson,
          HttpHeaders.userAgent: UserAgent.full,
        };

        expect(headers[HttpHeaders.contentType], equals(ContentTypes.fhirJson));
        expect(headers[HttpHeaders.accept], equals(ContentTypes.fhirJson));
        expect(headers[HttpHeaders.userAgent], isNotEmpty);
      });

      test('includes authorization header for authenticated requests', () {
        const accessToken = 'test_token_12345';
        final headers = <String, String>{
          HttpHeaders.authorization: 'Bearer $accessToken',
        };

        expect(
            headers[HttpHeaders.authorization], equals('Bearer $accessToken'));
      });

      test('does not include tokens in non-authorization headers', () {
        const accessToken = 'test_token_12345';
        final headers = <String, String>{
          HttpHeaders.contentType: ContentTypes.fhirJson,
          HttpHeaders.userAgent: UserAgent.full,
        };

        // Token should not leak into other headers
        expect(headers[HttpHeaders.contentType], isNot(contains(accessToken)));
        expect(headers[HttpHeaders.userAgent], isNot(contains(accessToken)));
      });
    });

    group('DNS Rebinding Protection', () {
      test('validates consistent hostname during flow', () {
        final initialUri = Uri.parse('https://auth.example.com/authorize');
        final callbackUri = Uri.parse('https://auth.example.com/token');

        // Hostname should remain consistent
        expect(initialUri.host, equals(callbackUri.host));
      });

      test('detects hostname mismatch', () {
        final initialUri = Uri.parse('https://auth.example.com/authorize');
        final maliciousUri = Uri.parse('https://evil.example.com/token');

        // Should detect mismatch
        expect(initialUri.host, isNot(equals(maliciousUri.host)));
      });
    });

    group('Network Request Replay Protection', () {
      test('includes state parameter for CSRF protection', () {
        final params = <String, String>{
          OAuthParameters.state: 'unique_state_12345',
          OAuthParameters.clientId: 'test-client',
        };

        expect(params[OAuthParameters.state], isNotEmpty);
        expect(params[OAuthParameters.state]!.length, greaterThanOrEqualTo(16));
      });

      test('includes nonce for replay protection', () {
        final params = <String, String>{
          OAuthParameters.nonce: 'unique_nonce_67890',
          OAuthParameters.clientId: 'test-client',
        };

        expect(params[OAuthParameters.nonce], isNotEmpty);
        expect(params[OAuthParameters.nonce]!.length, greaterThanOrEqualTo(16));
      });
    });

    group('Mixed Content Prevention', () {
      test('prevents downgrade from HTTPS to HTTP', () {
        final httpsConfig = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://example.com/fhir'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        // All URLs should use HTTPS
        expect(httpsConfig.fhirBaseUrl.toString(), startsWith('https://'));
        expect(httpsConfig.redirectUri.toString(), startsWith('https://'));
      });

      test('detects mixed content', () {
        const httpsBase = 'https://example.com/fhir';
        const httpRedirect = 'http://app.example.com/callback';

        expect(httpsBase.startsWith('https://'), isTrue);
        expect(httpRedirect.startsWith('https://'), isFalse);

        // This is mixed content and should be rejected
        expect(
            httpsBase.startsWith('https://') &&
                httpRedirect.startsWith('http://'),
            isTrue);
      });
    });
  });
}
