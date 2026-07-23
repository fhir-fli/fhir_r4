/// Regression tests for the 2026-07 auth hardening round 2 (0.7.2):
///  1  concurrent refreshes are coalesced into one
///  2  SMART discovery is TLS-enforced
///  3  refresh preserves the refresh token when the server omits it
///  4  token introspection endpoint is TLS-enforced
///  5  bearer token is only sent to the configured FHIR origin
///  6  EHR-launch iss is validated against an allowlist
///  8  JWT header allowlist (no alg:none / embedded keys / unknown alg)
///  9  PKCE cannot be disabled for a public client
/// 10  constant-time comparison helper
library;

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

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

/// Minimal concrete client that counts refresh calls and returns a
/// server response that omits the refresh token.
class _CountingAuthClient extends FhirAuthClient {
  _CountingAuthClient({required super.config, super.tokenStorage});

  int refreshCalls = 0;

  @override
  Future<void> login() async {}

  @override
  Future<SmartTokenResponse> performTokenRefresh(String refreshToken) async {
    refreshCalls++;
    await Future<void>.delayed(const Duration(milliseconds: 20));
    // Note: no refreshToken in the response (server did not rotate).
    return SmartTokenResponse(accessToken: 'new-access', expiresIn: 3600);
  }
}

String _unsignedJwt(Map<String, dynamic> header) {
  String seg(Map<String, dynamic> m) =>
      base64Url.encode(utf8.encode(jsonEncode(m))).replaceAll('=', '');
  final payload = {
    'sub': 'user123',
    'exp':
        DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
            1000,
    'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
  };
  return '${seg(header)}.${seg(payload)}.c2ln';
}

void main() {
  // A reusable https config built lazily (FhirUri/Uri are not const).
  AuthConfig httpsConfig() => AuthConfig(
        fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
        clientId: 'client-abc',
        redirectUri: Uri.parse('https://app.example.com/cb'),
      );

  group('Fix 1 + 3: refresh coalescing and refresh-token preservation', () {
    test('concurrent refreshes trigger exactly one token exchange', () async {
      final storage = _InMemoryTokenStorage();
      final client = _CountingAuthClient(
        config: httpsConfig(),
        tokenStorage: storage,
      );
      await client.storeTokens(
        SmartTokenResponse(
          accessToken: 'old',
          refreshToken: 'orig-refresh',
          expiresIn: 3600,
        ),
      );

      await Future.wait<void>([
        client.refreshToken(),
        client.refreshToken(),
        client.refreshToken(),
      ]);

      expect(client.refreshCalls, equals(1));
    });

    test('refresh keeps the old refresh token when the server omits it',
        () async {
      final storage = _InMemoryTokenStorage();
      final client = _CountingAuthClient(
        config: httpsConfig(),
        tokenStorage: storage,
      );
      await client.storeTokens(
        SmartTokenResponse(
          accessToken: 'old',
          refreshToken: 'orig-refresh',
          expiresIn: 3600,
        ),
      );

      await client.refreshToken();

      final stored = await storage.loadTokens();
      expect(stored!.accessToken, equals('new-access'));
      expect(stored.refreshToken, equals('orig-refresh'));
    });
  });

  group('Fix 2: SMART discovery is TLS-enforced', () {
    test('discovery over non-loopback http throws', () {
      final client = SmartFhirClient(
        config: SmartConfig(
          fhirBaseUrl: FhirUri('http://fhir.example.com/r4'),
          clientId: 'c',
          redirectUri: Uri.parse('https://app.example.com/cb'),
        ),
        httpClient: MockClient((_) async => http.Response('{}', 200)),
      );
      expect(client.getServerCapabilities(), throwsA(isA<SecurityException>()));
      client.close();
    });
  });

  group('Fix 4: introspection endpoint is TLS-enforced', () {
    test('constructing an introspector with http throws', () {
      expect(
        () => TokenIntrospector(
          introspectionEndpoint: Uri.parse('http://introspect.example.com'),
          clientId: 'c',
        ),
        throwsA(isA<SecurityException>()),
      );
    });
  });

  group('Fix 5: bearer token is origin-bound', () {
    test('token is attached only for the configured FHIR origin', () async {
      final headersSeen = <String, String?>{};
      final mock = MockClient((request) async {
        headersSeen[request.url.host] = request.headers['Authorization'];
        return http.Response('{}', 200);
      });
      final client = SmartFhirClient(
        config: httpsConfig(),
        httpClient: mock,
        tokenStorage: _InMemoryTokenStorage(),
      );
      await client.storeTokens(
        SmartTokenResponse(accessToken: 'secret-token', expiresIn: 3600),
      );

      await client.get(Uri.parse('https://fhir.example.com/r4/Patient'));
      await client.get(Uri.parse('https://evil.example.com/steal'));

      expect(headersSeen['fhir.example.com'], equals('Bearer secret-token'));
      expect(headersSeen['evil.example.com'], isNull);
      client.close();
    });
  });

  group('Fix 6: EHR-launch iss allowlist', () {
    test('rejects an issuer that is not allowlisted', () {
      expect(
        () => SmartConfig.fromLaunchParameters(
          parameters: {'iss': 'https://evil.example.com/fhir', 'launch': 'x'},
          currentUrl: Uri.parse('https://app.example.com'),
          clientId: 'c',
          allowedIssuers: {'https://good.example.com/fhir'},
        ),
        throwsA(isA<SecurityException>()),
      );
    });

    test('accepts an allowlisted issuer', () {
      final config = SmartConfig.fromLaunchParameters(
        parameters: {'iss': 'https://good.example.com/fhir', 'launch': 'x'},
        currentUrl: Uri.parse('https://app.example.com'),
        clientId: 'c',
        allowedIssuers: {'https://good.example.com/fhir'},
      );
      expect(config.iss, equals('https://good.example.com/fhir'));
    });
  });

  group('Fix 8: JWT header allowlist', () {
    final validator = JwtValidator();

    test('rejects alg:none', () {
      expect(
        () => validator.validateToken(
          _unsignedJwt({'alg': 'none', 'typ': 'JWT'}),
          allowUnverified: true,
        ),
        throwsA(isA<SecurityException>()),
      );
    });

    test('rejects an embedded jwk header', () {
      expect(
        () => validator.validateToken(
          _unsignedJwt({'alg': 'RS256', 'jwk': <String, dynamic>{}}),
          allowUnverified: true,
        ),
        throwsA(isA<SecurityException>()),
      );
    });

    test('rejects an unknown algorithm', () {
      expect(
        () => validator.validateToken(
          _unsignedJwt({'alg': 'FOO'}),
          allowUnverified: true,
        ),
        throwsA(isA<SecurityException>()),
      );
    });
  });

  group('Fix 9: PKCE required for public clients', () {
    test('login on a public client with PKCE disabled throws', () {
      final client = SmartFhirClient(
        config: SmartConfig(
          fhirBaseUrl: FhirUri('https://fhir.example.com/r4'),
          clientId: 'public-client',
          redirectUri: Uri.parse('https://app.example.com/cb'),
          authorizeUrl: Uri.parse('https://auth.example.com/authorize'),
          tokenUrl: Uri.parse('https://auth.example.com/token'),
          enablePkce: false,
        ),
        httpClient: MockClient((_) async => http.Response('{}', 200)),
      );
      expect(client.login(), throwsA(isA<AuthenticationException>()));
      client.close();
    });
  });

  group('Fix 10: constant-time compare', () {
    test('behaves like equality', () {
      expect(constantTimeEquals('abc123', 'abc123'), isTrue);
      expect(constantTimeEquals('abc123', 'abc124'), isFalse);
      expect(constantTimeEquals('abc', 'abcd'), isFalse);
      expect(constantTimeEquals('', ''), isTrue);
    });
  });
}
