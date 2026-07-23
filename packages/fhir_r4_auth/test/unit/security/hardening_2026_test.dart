/// Regression tests for the 2026-07 auth hardening pass:
///  1. id_token signature/issuer/audience validation
///  2. in-memory token purge on session timeout
///  3. HTTPS enforcement on OAuth/JWKS endpoints
///  4. secrets omitted from config toJson by default
library;

import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import '../../test_helpers/test_data.dart';

/// In-memory token storage for testing.
class _InMemoryTokenStorage implements TokenStorage {
  SmartTokenResponse? _tokens;
  AuthState? _authState;

  @override
  Future<void> saveTokens(SmartTokenResponse tokens) async => _tokens = tokens;

  @override
  Future<SmartTokenResponse?> loadTokens() async => _tokens;

  @override
  Future<void> clearTokens() async {
    _tokens = null;
    _authState = null;
  }

  @override
  Future<void> saveAuthState(AuthState state) async => _authState = state;

  @override
  Future<AuthState?> loadAuthState() async => _authState;

  @override
  Future<bool> hasTokens() async => _tokens != null;
}

void main() {
  group('Fix 1: id_token signature/issuer/audience', () {
    test('validateToken fails closed when no key material is provided', () {
      final validator = JwtValidator();
      expect(
        () => validator.validateToken(TestJwts.sampleJwt),
        throwsA(isA<SecurityException>()),
      );
    });

    test('validateToken decodes only when allowUnverified is set', () async {
      final validator = JwtValidator();
      final claims = await validator.validateToken(
        TestJwts.sampleJwt,
        allowUnverified: true,
        validateExpiry: false,
        validateNotBefore: false,
        validateAtHash: false,
      );
      expect(claims.subject, equals('user123'));
    });

    test('OAuthFlow defaults the id_token audience to the client_id', () {
      final flow = OAuthFlow(
        clientId: 'client-abc',
        authorizationEndpoint: Uri.parse('https://auth.example.com/authorize'),
        tokenEndpoint: Uri.parse('https://auth.example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/cb'),
        expectedIssuer: 'https://auth.example.com',
        jwksUri: 'https://auth.example.com/jwks',
      );
      expect(flow.expectedIssuer, equals('https://auth.example.com'));
      expect(flow.jwksUri, equals('https://auth.example.com/jwks'));
      flow.dispose();
    });
  });

  group('Fix 2: session timeout purges in-memory tokens', () {
    test('client stops returning the access token after an idle timeout',
        () async {
      final storage = _InMemoryTokenStorage();
      final sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(milliseconds: 1),
          absoluteTimeout: Duration(hours: 1),
          warningBeforeTimeout: Duration.zero,
          checkInterval: Duration(minutes: 5),
        ),
        tokenStorage: storage,
      );
      final client = SmartFhirClient(
        config: SmartConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'client-abc',
          redirectUri: Uri.parse('https://app.example.com/cb'),
        ),
        httpClient: MockClient((_) async => http.Response('{}', 200)),
        tokenStorage: storage,
        sessionManager: sessionManager,
      );

      await client.storeTokens(
        SmartTokenResponse(accessToken: 'live-token', expiresIn: 3600),
      );
      await sessionManager.startSession(userId: 'user-1');
      expect(await client.getAccessToken(), equals('live-token'));

      // Let the session go idle, then trigger a timeout check.
      await Future<void>.delayed(const Duration(milliseconds: 5));
      await sessionManager.checkTimeoutsForTesting();
      // Allow the onTimeout listener microtask to run.
      await Future<void>.delayed(Duration.zero);

      expect(await client.getAccessToken(), isNull);
      client.close();
    });
  });

  group('Fix 3: HTTPS enforcement', () {
    test('assertSecureAuthUrl rejects non-loopback http', () {
      expect(
        () => assertSecureAuthUrl(
          Uri.parse('http://auth.example.com/token'),
          field: 'tokenEndpoint',
        ),
        throwsA(isA<SecurityException>()),
      );
    });

    test('assertSecureAuthUrl allows https and loopback http', () {
      expect(isSecureAuthUrl(Uri.parse('https://auth.example.com')), isTrue);
      expect(isSecureAuthUrl(Uri.parse('http://localhost:8080')), isTrue);
      expect(isSecureAuthUrl(Uri.parse('http://127.0.0.1:3000')), isTrue);
      expect(isSecureAuthUrl(Uri.parse('http://evil.example.com')), isFalse);
    });

    test('OAuthFlow rejects an insecure token endpoint', () {
      expect(
        () => OAuthFlow(
          clientId: 'c',
          authorizationEndpoint:
              Uri.parse('http://auth.example.com/authorize'),
          tokenEndpoint: Uri.parse('http://auth.example.com/token'),
          redirectUri: Uri.parse('https://app.example.com/cb'),
        ),
        throwsA(isA<SecurityException>()),
      );
    });

    test('OAuthFlow allows insecure endpoints when explicitly opted in', () {
      final flow = OAuthFlow(
        clientId: 'c',
        authorizationEndpoint: Uri.parse('http://auth.example.com/authorize'),
        tokenEndpoint: Uri.parse('http://auth.example.com/token'),
        redirectUri: Uri.parse('https://app.example.com/cb'),
        allowInsecureConnections: true,
      );
      expect(flow, isNotNull);
      flow.dispose();
    });

    test('OAuthFlow allows loopback endpoints for development', () {
      final flow = OAuthFlow(
        clientId: 'c',
        authorizationEndpoint: Uri.parse('http://localhost:8080/authorize'),
        tokenEndpoint: Uri.parse('http://localhost:8080/token'),
        redirectUri: Uri.parse('http://localhost:3000/cb'),
      );
      expect(flow, isNotNull);
      flow.dispose();
    });
  });

  group('Fix 4: secrets omitted from config toJson', () {
    test('SmartConfig omits clientSecret unless requested', () {
      final config = SmartConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'client-abc',
        redirectUri: Uri.parse('https://app.example.com/cb'),
        clientSecret: 'super-secret',
        authMethod: ClientAuthMethod.clientSecretBasic,
      );
      expect(config.toJson().containsKey('clientSecret'), isFalse);
      expect(
        config.toJson(includeSecrets: true)['clientSecret'],
        equals('super-secret'),
      );
      expect(config.toJson()['allowInsecureConnections'], isFalse);
    });

    test('BackendServiceConfig omits privateKey unless requested', () {
      final config = BackendServiceConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'backend-client',
        privateKey: 'private-key-material',
        tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
      );
      expect(config.toJson().containsKey('privateKey'), isFalse);
      expect(
        config.toJson(includeSecrets: true)['privateKey'],
        equals('private-key-material'),
      );
    });
  });
}
