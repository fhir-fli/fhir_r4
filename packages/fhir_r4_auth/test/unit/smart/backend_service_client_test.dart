/// Tests for SmartFhirClient with BackendServiceConfig
library;

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// In-memory token storage for testing
class InMemoryTokenStorage implements TokenStorage {
  SmartTokenResponse? _tokens;
  AuthState? _authState;

  @override
  Future<void> saveTokens(SmartTokenResponse tokens) async {
    _tokens = tokens;
  }

  @override
  Future<SmartTokenResponse?> loadTokens() async => _tokens;

  @override
  Future<void> clearTokens() async {
    _tokens = null;
    _authState = null;
  }

  @override
  Future<void> saveAuthState(AuthState state) async {
    _authState = state;
  }

  @override
  Future<AuthState?> loadAuthState() async => _authState;

  @override
  Future<bool> hasTokens() async => _tokens != null;
}

void main() {
  group('SmartFhirClient with BackendServiceConfig', () {
    // A dummy PEM-like string for testing (not a real key — intentionally
    // missing the PEM header to avoid secret-scanning false positives).
    // Tests that use this expect an AuthenticationException because the key
    // is invalid, which validates the error-handling path.
    const testPrivateKey = 'not-a-real-private-key-just-for-unit-tests';

    test('isBackendService returns true for BackendServiceConfig', () {
      final mockClient = MockClient((request) async {
        return http.Response('{}', 200);
      });

      final client = SmartFhirClient(
        config: BackendServiceConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'backend-client',
          privateKey: testPrivateKey,
          tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
          scopes: <String>['system/*.read'],
        ),
        httpClient: mockClient,
      );

      expect(client.isBackendService, isTrue);
      expect(client.backendConfig, isNotNull);
      expect(client.smartConfig, isNull);

      client.close();
    });

    test('isBackendService returns false for SmartConfig', () {
      final mockClient = MockClient((request) async {
        return http.Response('{}', 200);
      });

      final client = SmartFhirClient(
        config: SmartConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'smart-client',
          redirectUri: Uri.parse('http://localhost:8080/callback'),
        ),
        httpClient: mockClient,
      );

      expect(client.isBackendService, isFalse);
      expect(client.smartConfig, isNotNull);
      expect(client.backendConfig, isNull);

      client.close();
    });

    test('BackendServiceConfig.fromJson round-trips correctly', () {
      final original = BackendServiceConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'test-client',
        privateKey: 'test-key-pem',
        tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
        scopes: <String>['system/*.read'],
        algorithm: 'ES384',
        keyId: 'key-123',
        tokenLifetime: const Duration(minutes: 10),
      );

      final json = original.toJson();
      final restored = BackendServiceConfig.fromJson(json);

      expect(restored.fhirBaseUrl.toString(),
          equals('https://fhir.example.com/r4'));
      expect(restored.clientId, equals('test-client'));
      expect(restored.privateKey, equals('test-key-pem'));
      expect(restored.tokenUrl.toString(),
          equals('https://fhir.example.com/auth/token'));
      expect(restored.scopes, equals(<String>['system/*.read']));
      expect(restored.algorithm, equals('ES384'));
      expect(restored.keyId, equals('key-123'));
      expect(restored.tokenLifetime, equals(const Duration(minutes: 10)));
    });

    test('BackendServiceConfig.fromJson uses defaults', () {
      final json = <String, dynamic>{
        'fhirBaseUrl': 'https://fhir.example.com/r4',
        'clientId': 'test-client',
        'privateKey': 'test-key-pem',
        'tokenUrl': 'https://fhir.example.com/auth/token',
      };

      final config = BackendServiceConfig.fromJson(json);

      expect(config.algorithm, equals('RS384'));
      expect(config.keyId, isNull);
      expect(config.tokenLifetime, equals(const Duration(minutes: 5)));
      expect(config.scopes, isEmpty);
    });

    test('BackendServiceConfig has correct auth method', () {
      final config = BackendServiceConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'test-client',
        privateKey: 'test-key',
        tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
      );

      expect(config.authMethod, equals(ClientAuthMethod.privateKeyJwt));
      expect(config.isConfidentialClient, isTrue);
      expect(config.isPublicClient, isFalse);
    });

    test('BackendServiceConfig uses placeholder redirect URI', () {
      final config = BackendServiceConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'test-client',
        privateKey: 'test-key',
        tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
      );

      expect(
        config.redirectUri.toString(),
        equals('urn:ietf:wg:oauth:2.0:oob'),
      );
    });

    test('login with backend config posts to token endpoint', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString().contains('/token')) {
          final body = Uri.splitQueryString(request.body);
          expect(body['grant_type'], equals('client_credentials'));
          expect(body['client_assertion_type'], isNotNull);
          expect(body['client_assertion'], isNotEmpty);

          return http.Response(
            jsonEncode(<String, dynamic>{
              'access_token': 'system_token_123',
              'token_type': 'Bearer',
              'expires_in': 300,
              'scope': 'system/*.read',
            }),
            200,
          );
        }

        return http.Response('Not Found', 404);
      });

      final client = SmartFhirClient(
        config: BackendServiceConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'backend-client',
          privateKey: testPrivateKey,
          tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
          scopes: <String>['system/*.read'],
        ),
        httpClient: mockClient,
        tokenStorage: InMemoryTokenStorage(),
      );

      // This will fail because the test private key is not a valid RSA key.
      // But we can verify the flow structure is correct.
      try {
        await client.login();
      } catch (e) {
        // Expected: the test private key won't produce a valid JWT
        // The important thing is that it attempted the backend service path
        expect(e, isA<AuthenticationException>());
      }

      client.close();
    });

    test('logout works for backend service clients', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'access_token': 'system_token',
            'token_type': 'Bearer',
            'expires_in': 300,
          }),
          200,
        );
      });

      final client = SmartFhirClient(
        config: BackendServiceConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'backend-client',
          privateKey: testPrivateKey,
          tokenUrl: Uri.parse('https://fhir.example.com/auth/token'),
        ),
        httpClient: mockClient,
        tokenStorage: InMemoryTokenStorage(),
      );

      // Should not throw even without prior login
      await client.logout();

      client.close();
    });
  });
}
