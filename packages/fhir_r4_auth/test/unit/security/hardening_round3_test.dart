/// Regression tests for the 2026-07 auth hardening round 3 (0.7.3):
///  - network timeouts bound every OAuth/introspection HTTP call
///  - JwtValidator releases its owned HTTP client on dispose
library;

import 'dart:async';

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

http.Client _slowClient() => MockClient((_) async {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      return http.Response('{}', 200);
    });

void main() {
  group('network timeouts', () {
    test('token exchange fails fast when the server is slow', () {
      final flow = OAuthFlow(
        clientId: 'c',
        authorizationEndpoint: Uri.parse('https://auth.example.com/authorize'),
        tokenEndpoint: Uri.parse('https://auth.example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/cb'),
        networkTimeout: const Duration(milliseconds: 10),
        httpClient: _slowClient(),
      );
      expect(
        flow.exchangeCodeForToken('the-code'),
        throwsA(isA<TimeoutException>()),
      );
    });

    test('token introspection fails fast when the server is slow', () {
      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://auth.example.com/introspect'),
        clientId: 'c',
        networkTimeout: const Duration(milliseconds: 10),
        httpClient: _slowClient(),
      );
      expect(
        introspector.introspect('some-token'),
        throwsA(isA<TimeoutException>()),
      );
    });
  });

  group('resource cleanup', () {
    test('JwtValidator.dispose does not throw', () {
      final validator = JwtValidator();
      expect(validator.dispose, returnsNormally);
    });
  });
}
