/// Tests for OAuth flow
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import '../../test_helpers/test_data.dart';

void main() {
  group('OAuthFlow', () {
    late OAuthFlow oauthFlow;

    setUp(() {
      oauthFlow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        scopes: <String>['patient/*.read', 'user/Practitioner.read'],
      );
    });

    tearDown(() {
      oauthFlow.dispose();
    });

    test('creates with required parameters', () {
      expect(oauthFlow.clientId, equals('test-client'));
      expect(oauthFlow.authorizationEndpoint.toString(),
          equals('https://example.com/authorize'));
      expect(oauthFlow.tokenEndpoint.toString(),
          equals('https://example.com/token'));
      expect(oauthFlow.redirectUri.toString(),
          equals('https://app.example.com/callback'));
    });

    test('builds authorization URL', () {
      final url = oauthFlow.buildAuthorizationUrl();

      expect(url.queryParameters['response_type'], equals('code'));
      expect(url.queryParameters['client_id'], equals('test-client'));
      expect(url.queryParameters['redirect_uri'],
          equals('https://app.example.com/callback'));
      expect(url.queryParameters['scope'],
          equals('patient/*.read user/Practitioner.read'));
      expect(url.queryParameters['state'], isNotEmpty);
      expect(url.queryParameters['code_challenge'], isNotEmpty);
      expect(url.queryParameters['code_challenge_method'], equals('S256'));
    });

    test('builds authorization URL with custom state and nonce', () {
      final url = oauthFlow.buildAuthorizationUrl(
        state: 'custom-state',
        nonce: 'custom-nonce',
      );

      expect(url.queryParameters['state'], equals('custom-state'));
      expect(url.queryParameters['nonce'], equals('custom-nonce'));
    });

    test('builds authorization URL with extra parameters', () {
      final url = oauthFlow.buildAuthorizationUrl(
        extraParameters: <String, String>{
          'launch': 'abc123',
          'aud': 'https://fhir.example.com',
        },
      );

      expect(url.queryParameters['launch'], equals('abc123'));
      expect(url.queryParameters['aud'], equals('https://fhir.example.com'));
    });

    test('builds authorization URL with token response type', () {
      final url = oauthFlow.buildAuthorizationUrl(
        responseType: ResponseType.token,
      );

      expect(url.queryParameters['response_type'], equals('token'));
    });

    test('handles authorization response successfully', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), equals('https://example.com/token'));
        expect(request.method, equals('POST'));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
      );

      // Build URL to get state
      final authUrl = flow.buildAuthorizationUrl();
      final state = authUrl.queryParameters['state']!;

      final tokenResponse =
          await flow.handleAuthorizationResponse(<String, String>{
        'code': 'auth-code-123',
        'state': state,
      });

      expect(tokenResponse.accessToken, equals(TestTokens.accessToken));
      expect(tokenResponse.refreshToken, equals(TestTokens.refreshToken));

      flow.dispose();
    });

    test('throws on missing authorization code', () async {
      final authUrl = oauthFlow.buildAuthorizationUrl();
      final state = authUrl.queryParameters['state']!;

      expect(
        () => oauthFlow.handleAuthorizationResponse(<String, String>{
          'state': state,
        }),
        throwsA(isA<AuthorizationException>()),
      );
    });

    test('throws on missing state', () async {
      expect(
        () => oauthFlow.handleAuthorizationResponse(<String, String>{
          'code': 'auth-code-123',
        }),
        throwsA(isA<SecurityException>()),
      );
    });

    test('throws on state mismatch', () async {
      oauthFlow.buildAuthorizationUrl();

      expect(
        () => oauthFlow.handleAuthorizationResponse(<String, String>{
          'code': 'auth-code-123',
          'state': 'wrong-state',
        }),
        throwsA(isA<SecurityException>()),
      );
    });

    test('throws on error response', () async {
      expect(
        () => oauthFlow.handleAuthorizationResponse(<String, String>{
          'error': 'access_denied',
          'error_description': 'User denied access',
        }),
        throwsA(isA<AuthorizationException>()),
      );
    });

    test('exchanges code for token with rate limiting', () async {
      int callCount = 0;

      final mockClient = MockClient((request) async {
        callCount++;
        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
        rateLimiter: RateLimiter(
          config: const RateLimitConfig(
            maxRequests: 2,
            window: Duration(seconds: 10),
          ),
        ),
      );

      // First two should succeed
      await flow.exchangeCodeForToken('code1');
      await flow.exchangeCodeForToken('code2');

      expect(callCount, equals(2));

      // Third should be rate limited
      expect(
        () => flow.exchangeCodeForToken('code3'),
        throwsA(isA<RateLimitException>()),
      );

      flow.dispose();
    });

    test('includes PKCE verifier in token request', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('code_verifier='));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
      );

      await flow.exchangeCodeForToken('code123');

      flow.dispose();
    });

    test('uses HTTP Basic auth for token request', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Authorization'], startsWith('Basic '));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        clientSecret: 'secret123',
        useBasicAuth: true,
        httpClient: mockClient,
      );

      await flow.exchangeCodeForToken('code123');

      flow.dispose();
    });

    test('uses POST body auth for token request', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('client_id=test-client'));
        expect(body, contains('client_secret=secret123'));
        expect(request.headers['Authorization'], isNull);

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        clientSecret: 'secret123',
        useBasicAuth: false,
        httpClient: mockClient,
      );

      await flow.exchangeCodeForToken('code123');

      flow.dispose();
    });

    test('refreshes access token', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), equals('https://example.com/token'));
        final body = request.body;
        expect(body, contains('grant_type=refresh_token'));
        expect(body, contains('refresh_token=refresh_token_123'));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
      );

      final tokenResponse = await flow.refreshAccessToken('refresh_token_123');

      expect(tokenResponse.accessToken, isNotEmpty);

      flow.dispose();
    });

    test('refresh token includes scopes', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body,
            contains('scope=patient%2F%2A.read+user%2FPractitioner.read'));

        return http.Response(
          jsonEncode(TestTokens.sampleTokenResponse),
          200,
        );
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        scopes: <String>['patient/*.read', 'user/Practitioner.read'],
        httpClient: mockClient,
      );

      await flow.refreshAccessToken('refresh_token_123');

      flow.dispose();
    });

    test('revokes token', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), equals('https://example.com/revoke'));
        final body = request.body;
        expect(body, contains('token=token_to_revoke'));
        expect(body, contains('token_type_hint=refresh_token'));

        return http.Response('', 200);
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
      );

      await flow.revokeToken(
        'token_to_revoke',
        revocationEndpoint: Uri.parse('https://example.com/revoke'),
        tokenTypeHint: 'refresh_token',
      );

      flow.dispose();
    });

    test('handles revocation failure gracefully', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Error', 500);
      });

      final flow = OAuthFlow(
        clientId: 'test-client',
        authorizationEndpoint: Uri.parse('https://example.com/authorize'),
        tokenEndpoint: Uri.parse('https://example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/callback'),
        httpClient: mockClient,
      );

      // Should not throw
      await flow.revokeToken(
        'token_to_revoke',
        revocationEndpoint: Uri.parse('https://example.com/revoke'),
      );

      flow.dispose();
    });

    test('provides rate limit statistics', () {
      final stats = oauthFlow.getRateLimitStats();

      expect(stats, isA<Map<String, dynamic>>());
      expect(stats, contains('tracked_keys'));
      expect(stats, contains('total_requests'));
    });

    test('resets flow state', () {
      final url1 = oauthFlow.buildAuthorizationUrl();
      final state1 = url1.queryParameters['state'];

      oauthFlow.reset();

      final url2 = oauthFlow.buildAuthorizationUrl();
      final state2 = url2.queryParameters['state'];

      expect(state1, isNot(equals(state2)));
    });
  });
}
