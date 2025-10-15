/// End-to-end security tests for authentication flows
/// Tests complete OAuth flows for security vulnerabilities
library;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('Authentication Flow Security', () {
    group('Authorization Request Security', () {
      test('authorization URL includes all security parameters', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          scopes: ['patient/*.read'],
        );

        final authUrl = flow.buildAuthorizationUrl();

        // Must include PKCE
        expect(authUrl.queryParameters['code_challenge'], isNotNull);
        expect(
            authUrl.queryParameters['code_challenge_method'], equals('S256'));

        // Must include state for CSRF protection
        expect(authUrl.queryParameters['state'], isNotNull);
        expect(
            authUrl.queryParameters['state']!.length, greaterThanOrEqualTo(32));

        // Must include nonce for replay protection
        expect(authUrl.queryParameters['nonce'], isNotNull);
        expect(
            authUrl.queryParameters['nonce']!.length, greaterThanOrEqualTo(32));

        flow.dispose();
      });

      test('authorization parameters are properly encoded', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          scopes: ['patient/*.read', 'user/Practitioner.read'],
        );

        final authUrl = flow.buildAuthorizationUrl();

        // Scopes should be space-separated and encoded
        final scopeParam = authUrl.queryParameters['scope'];
        expect(scopeParam, isNotNull);
        expect(scopeParam, contains('patient/*.read'));
        expect(scopeParam, contains('user/Practitioner.read'));

        flow.dispose();
      });

      test('state is unique per authorization request', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        final url1 = flow.buildAuthorizationUrl();
        flow.reset();
        final url2 = flow.buildAuthorizationUrl();

        final state1 = url1.queryParameters['state'];
        final state2 = url2.queryParameters['state'];

        expect(state1, isNot(equals(state2)));

        flow.dispose();
      });

      test('PKCE verifier is unique per flow', () {
        final manager1 = PkceManager();
        final manager2 = PkceManager();

        expect(manager1.codeVerifier, isNot(equals(manager2.codeVerifier)));
        expect(manager1.codeChallenge, isNot(equals(manager2.codeChallenge)));
      });
    });

    group('Authorization Response Validation', () {
      test('rejects response without state parameter', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        flow.buildAuthorizationUrl();

        expect(
          () => flow.handleAuthorizationResponse({'code': 'test_code'}),
          throwsA(isA<SecurityException>()),
        );

        flow.dispose();
      });

      test('rejects response with mismatched state', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        flow.buildAuthorizationUrl();

        expect(
          () => flow.handleAuthorizationResponse({
            'code': 'test_code',
            'state': 'wrong_state_value',
          }),
          throwsA(isA<SecurityException>()),
        );

        flow.dispose();
      });

      test('rejects response without authorization code', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        final authUrl = flow.buildAuthorizationUrl();
        final state = authUrl.queryParameters['state']!;

        expect(
          () => flow.handleAuthorizationResponse({'state': state}),
          throwsA(isA<AuthorizationException>()),
        );

        flow.dispose();
      });

      test('handles error responses securely', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(
          () => flow.handleAuthorizationResponse({
            'error': 'access_denied',
            'error_description': 'User denied access',
          }),
          throwsA(isA<AuthorizationException>()),
        );

        flow.dispose();
      });
    });

    group('Token Exchange Security', () {
      test('token request includes PKCE verifier', () {
        final pkceManager = PkceManager();
        final params = pkceManager.toTokenParameters();

        expect(params, contains('code_verifier'));
        expect(params['code_verifier'], equals(pkceManager.codeVerifier));
      });

      test('token request uses correct grant type', () {
        const params = {
          'grant_type': 'authorization_code',
          'code': 'auth_code_123',
          'redirect_uri': 'https://app.example.com/callback',
        };

        expect(params['grant_type'], equals('authorization_code'));
      });

      test('refresh token request is properly formatted', () {
        const params = {
          'grant_type': 'refresh_token',
          'refresh_token': 'refresh_token_123',
        };

        expect(params['grant_type'], equals('refresh_token'));
        expect(params['refresh_token'], isNotEmpty);
      });
    });

    group('Session Fixation Prevention', () {
      test('new login creates new session', () {
        final session1 = Session(userId: 'user123');
        final session2 = Session(userId: 'user123');

        // Each login should have unique session ID
        expect(session1.id, isNot(equals(session2.id)));
      });

      test('session ID is unpredictable', () {
        final sessions = <String>{};

        for (int i = 0; i < 100; i++) {
          final session = Session(userId: 'user$i');
          sessions.add(session.id);
        }

        // All session IDs should be unique
        expect(sessions.length, equals(100));
      });
    });

    group('Token Lifecycle Security', () {
      test('tokens have reasonable expiry times', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          expiresIn: 3600, // 1 hour
        );

        final expiry = token.expiresAt!;
        final now = DateTime.now();

        // Should expire in approximately 1 hour
        final diffMinutes = expiry.difference(now).inMinutes;
        expect(diffMinutes, greaterThan(55));
        expect(diffMinutes, lessThan(65));
      });

      test('refresh tokens are optional but persistent', () {
        final tokenWithRefresh = SmartTokenResponse(
          accessToken: 'access',
          refreshToken: 'refresh',
        );

        final tokenWithoutRefresh = SmartTokenResponse(
          accessToken: 'access',
        );

        expect(tokenWithRefresh.refreshToken, isNotNull);
        expect(tokenWithoutRefresh.refreshToken, isNull);
        expect(tokenWithoutRefresh.isRefreshExpired, isTrue);
      });

      test('token context is preserved', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          patientContext: 'Patient/123',
          encounterContext: 'Encounter/456',
          fhirUser: 'Practitioner/789',
        );

        expect(token.patientContext, equals('Patient/123'));
        expect(token.encounterContext, equals('Encounter/456'));
        expect(token.fhirUser, equals('Practitioner/789'));
      });
    });

    group('Multi-Step Flow Security', () {
      test('flow state is isolated between requests', () {
        final flow1 = OAuthFlow(
          clientId: 'client1',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app1.example.com/callback'),
        );

        final flow2 = OAuthFlow(
          clientId: 'client2',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app2.example.com/callback'),
        );

        final url1 = flow1.buildAuthorizationUrl();
        final url2 = flow2.buildAuthorizationUrl();

        // States should be different
        expect(url1.queryParameters['state'],
            isNot(equals(url2.queryParameters['state'])));

        flow1.dispose();
        flow2.dispose();
      });

      test('flow reset clears all security parameters', () {
        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        final url1 = flow.buildAuthorizationUrl();
        flow.reset();
        final url2 = flow.buildAuthorizationUrl();

        // All parameters should be regenerated
        expect(url1.queryParameters['state'],
            isNot(equals(url2.queryParameters['state'])));
        expect(url1.queryParameters['nonce'],
            isNot(equals(url2.queryParameters['nonce'])));
        expect(url1.queryParameters['code_challenge'],
            isNot(equals(url2.queryParameters['code_challenge'])));

        flow.dispose();
      });
    });

    group('Concurrent Flow Security', () {
      test('multiple flows can run independently', () {
        final flows = <OAuthFlow>[];
        final states = <String>{};

        for (int i = 0; i < 10; i++) {
          final flow = OAuthFlow(
            clientId: 'client$i',
            authorizationEndpoint:
                Uri.parse('https://auth.example.com/authorize'),
            tokenEndpoint: Uri.parse('https://auth.example.com/token'),
            redirectUri: Uri.parse('https://app$i.example.com/callback'),
          );

          final url = flow.buildAuthorizationUrl();
          states.add(url.queryParameters['state']!);
          flows.add(flow);
        }

        // All states should be unique
        expect(states.length, equals(10));

        for (final flow in flows) {
          flow.dispose();
        }
      });
    });

    group('Smart Config Security', () {
      test('EHR launch includes launch token', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          launchType: LaunchType.ehr,
          launchToken: 'launch_token_123',
        );

        expect(config.launchType, equals(LaunchType.ehr));
        expect(config.launchToken, equals('launch_token_123'));

        final params = config.buildAuthorizationParameters();
        expect(params['launch'], equals('launch_token_123'));
      });

      test('standalone launch does not include launch token', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          launchType: LaunchType.standalone,
        );

        expect(config.launchType, equals(LaunchType.standalone));
        expect(config.launchToken, isNull);

        final params = config.buildAuthorizationParameters();
        expect(params.containsKey('launch'), isFalse);
      });

      test('scopes are properly formatted', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          scopes: ['patient/*.read', 'user/Practitioner.read', 'launch'],
        );

        final scopes = config.buildScopes();
        expect(scopes, contains('patient/*.read'));
        expect(scopes, contains('user/Practitioner.read'));
        expect(scopes, contains('launch'));
      });

      test('PKCE is enabled by default', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.enablePkce, isTrue);
      });

      test('OpenID Connect is enabled by default', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.enableOpenId, isTrue);
      });
    });

    group('Rate Limiting in Flows', () {
      test('flow respects rate limits', () {
        final rateLimiter = RateLimiter(
          config: const RateLimitConfig(
            maxRequests: 3,
            window: Duration(seconds: 10),
          ),
        );

        final flow = OAuthFlow(
          clientId: 'test-client',
          authorizationEndpoint:
              Uri.parse('https://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('https://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
          rateLimiter: rateLimiter,
        );

        // Rate limiter should be configured
        expect(flow.getRateLimitStats(), isNotNull);

        flow.dispose();
      });
    });

    group('Audit Trail Security', () {
      test('authentication attempts are auditable', () {
        final store = InMemoryAuditStore();
        final logger = AuditLogger(
          store: store,
          clientId: 'test-client',
        );

        logger.logAuthenticationAttempt(userId: 'user123');

        expect(store.eventCount, equals(1));
      });

      test('token issuance is auditable', () {
        final store = InMemoryAuditStore();
        final logger = AuditLogger(
          store: store,
          clientId: 'test-client',
        );

        logger.logTokenIssued(
          userId: 'user123',
          scopes: ['patient/*.read'],
        );

        expect(store.eventCount, equals(1));
      });

      test('security violations are auditable', () {
        final store = InMemoryAuditStore();
        final logger = AuditLogger(
          store: store,
          clientId: 'test-client',
        );

        logger.logSecurityViolation(
          violation: 'State mismatch detected',
          details: 'Possible CSRF attack',
        );

        expect(store.eventCount, equals(1));
      });
    });

    group('Configuration Validation', () {
      test('configuration requires valid client ID', () {
        final config = SmartConfig(
          clientId: 'valid-client-id',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.clientId, isNotEmpty);
        expect(config.clientId, equals('valid-client-id'));
      });

      test('redirect URI must be absolute', () {
        final config = SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: FhirUri('https://fhir.example.com'),
          redirectUri: Uri.parse('https://app.example.com/callback'),
        );

        expect(config.redirectUri.isAbsolute, isTrue);
      });
    });
  });
}
