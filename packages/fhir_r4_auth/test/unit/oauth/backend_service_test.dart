/// Tests for backend service (client credentials) OAuth flow
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import '../../test_helpers/test_data.dart';

void main() {
  group('OAuthFlow - Client Credentials Grant', () {
    test('performs client credentials grant successfully', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), equals('https://example.com/token'));
        expect(request.method, equals('POST'));

        // Verify required parameters
        final body = Uri.splitQueryString(request.body);
        expect(body['grant_type'], equals('client_credentials'));
        expect(
          body['client_assertion_type'],
          equals('urn:ietf:params:oauth:client-assertion-type:jwt-bearer'),
        );
        expect(body['client_assertion'], isNotEmpty);
        expect(body['scope'], equals('system/*.read'));

        return http.Response(
          jsonEncode(<String, dynamic>{
            'access_token': 'backend_access_token',
            'token_type': 'Bearer',
            'expires_in': 300,
            'scope': 'system/*.read',
          }),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      final tokens = await flow.performClientCredentialsGrant(
        clientAssertion: 'signed.jwt.token',
        scopes: <String>['system/*.read'],
      );

      expect(tokens.accessToken, equals('backend_access_token'));
      expect(tokens.tokenType, equals('Bearer'));
      expect(tokens.expiresIn, equals(300));
      expect(tokens.refreshToken, isNull);

      flow.dispose();
    });

    test('sends no Basic auth header', () async {
      final mockClient = MockClient((request) async {
        // Verify no Authorization header is sent
        expect(request.headers['Authorization'], isNull);

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      await flow.performClientCredentialsGrant(
        clientAssertion: 'signed.jwt.token',
      );

      flow.dispose();
    });

    test('sends correct content type header', () async {
      final mockClient = MockClient((request) async {
        expect(
          request.headers['Content-Type'],
          contains('application/x-www-form-urlencoded'),
        );
        expect(request.headers['Accept'], equals('application/json'));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      await flow.performClientCredentialsGrant(
        clientAssertion: 'signed.jwt.token',
      );

      flow.dispose();
    });

    test('omits scope when not provided', () async {
      final mockClient = MockClient((request) async {
        final body = Uri.splitQueryString(request.body);
        expect(body.containsKey('scope'), isFalse);

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      await flow.performClientCredentialsGrant(
        clientAssertion: 'signed.jwt.token',
      );

      flow.dispose();
    });

    test('throws AuthorizationException on 400 error with JSON body', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'error': 'invalid_client',
            'error_description': 'Client authentication failed',
          }),
          400,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      expect(
        () => flow.performClientCredentialsGrant(
          clientAssertion: 'bad.jwt.token',
        ),
        throwsA(
          isA<AuthorizationException>().having(
            (e) => e.errorCode,
            'errorCode',
            equals('invalid_client'),
          ),
        ),
      );

      flow.dispose();
    });

    test('throws AuthorizationException on 401 error', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'error': 'unauthorized_client',
            'error_description': 'The client is not authorized',
          }),
          401,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      expect(
        () => flow.performClientCredentialsGrant(
          clientAssertion: 'signed.jwt.token',
        ),
        throwsA(isA<AuthorizationException>()),
      );

      flow.dispose();
    });

    test('throws NetworkException on 500 error with non-JSON body', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Internal Server Error', 500);
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      expect(
        () => flow.performClientCredentialsGrant(
          clientAssertion: 'signed.jwt.token',
        ),
        throwsA(isA<NetworkException>()),
      );

      flow.dispose();
    });

    test('respects rate limiting', () async {
      int callCount = 0;

      final mockClient = MockClient((request) async {
        callCount++;
        return http.Response(
          jsonEncode(<String, dynamic>{
            'access_token': 'token_$callCount',
            'token_type': 'Bearer',
            'expires_in': 300,
          }),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
        rateLimiter: RateLimiter(
          config: const RateLimitConfig(
            maxRequests: 2,
            window: Duration(seconds: 10),
          ),
        ),
      );

      // First two should succeed
      await flow.performClientCredentialsGrant(
        clientAssertion: 'jwt1',
      );
      await flow.performClientCredentialsGrant(
        clientAssertion: 'jwt2',
      );

      expect(callCount, equals(2));

      // Third should be rate limited
      expect(
        () => flow.performClientCredentialsGrant(
          clientAssertion: 'jwt3',
        ),
        throwsA(isA<RateLimitException>()),
      );

      flow.dispose();
    });

    test('handles multiple scopes', () async {
      final mockClient = MockClient((request) async {
        final body = Uri.splitQueryString(request.body);
        expect(
          body['scope'],
          equals('system/Patient.read system/Observation.read'),
        );

        return http.Response(
          jsonEncode(<String, dynamic>{
            'access_token': 'multi_scope_token',
            'token_type': 'Bearer',
            'expires_in': 300,
            'scope': 'system/Patient.read system/Observation.read',
          }),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'backend-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
        httpClient: mockClient,
      );

      final tokens = await flow.performClientCredentialsGrant(
        clientAssertion: 'signed.jwt.token',
        scopes: <String>['system/Patient.read', 'system/Observation.read'],
      );

      expect(tokens.scopesList, contains('system/Patient.read'));
      expect(tokens.scopesList, contains('system/Observation.read'));

      flow.dispose();
    });
  });
}
