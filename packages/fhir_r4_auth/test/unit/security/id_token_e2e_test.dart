/// End-to-end id_token verification against a real RSA signature.
///
/// A genuine RSA key signs an OpenID Connect id_token; a mock token endpoint
/// returns it and a mock JWKS endpoint publishes the matching public key. The
/// full [OAuthFlow] path (authorization response -> code exchange -> JWKS
/// signature verification -> iss/aud/nonce/at_hash checks) is exercised. The
/// negative cases (tampered signature, wrong nonce/aud/iss, alg:none, a key not
/// in the JWKS) are what prove the verification actually rejects bad tokens —
/// a positive-only test could pass even if verification were a no-op.
library;

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:jose/jose.dart';
import 'package:test/test.dart';

const _clientId = 'client-abc';
const _issuer = 'https://auth.example.com';
const _accessToken = 'the-access-token-xyz';
const _nonce = 'nonce-abc';
const _state = 'state-abc';
const _kid = 'test-key-1';

String _b64u(List<int> bytes) => base64Url.encode(bytes).replaceAll('=', '');

/// OIDC at_hash: base64url(leftmost 128 bits of SHA-256(access_token)).
String _atHash(String accessToken) =>
    _b64u(sha256.convert(utf8.encode(accessToken)).bytes.sublist(0, 16));

String _sign(JsonWebKey key, Map<String, dynamic> claims, {String kid = _kid}) {
  final jws = (JsonWebSignatureBuilder()
        ..setProtectedHeader('typ', 'JWT')
        ..setProtectedHeader('kid', kid)
        ..jsonContent = claims
        ..addRecipient(key, algorithm: 'RS256'))
      .build();
  return jws.toCompactSerialization();
}

void main() {
  late JsonWebKey key;
  late Map<String, dynamic> publicJwk;

  setUpAll(() {
    key = JsonWebKey.generate('RS256', keyBitLength: 2048);
    publicJwk = Map<String, dynamic>.from(key.toJson())
      ..removeWhere(
        (k, _) => const ['d', 'p', 'q', 'dp', 'dq', 'qi'].contains(k),
      )
      ..['kid'] = _kid
      ..['alg'] = 'RS256'
      ..['use'] = 'sig';
  });

  Map<String, dynamic> baseClaims() => <String, dynamic>{
        'iss': _issuer,
        'sub': 'user-1',
        'aud': _clientId,
        'exp': DateTime.now()
                .add(const Duration(hours: 1))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'nonce': _nonce,
        'at_hash': _atHash(_accessToken),
      };

  // Drive the full flow with a given id_token string.
  Future<SmartTokenResponse> exchange(String idToken) {
    final mock = MockClient((req) async {
      final path = req.url.path;
      if (path.endsWith('/token')) {
        return http.Response(
          jsonEncode({
            'access_token': _accessToken,
            'id_token': idToken,
            'token_type': 'Bearer',
            'expires_in': 3600,
            'scope': 'openid fhirUser',
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      }
      if (path.endsWith('/jwks')) {
        return http.Response(
          jsonEncode({
            'keys': [publicJwk],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      }
      return http.Response('{}', 404);
    });

    // The validator must use the same mock so its JWKS fetch is served here
    // rather than hitting the real network (an internally-created validator
    // would build its own http.Client and every verification would fail).
    final validator = JwtValidator(
      issuer: _issuer,
      audience: _clientId,
      httpClient: mock,
    );
    final flow = OAuthFlow(
      clientId: _clientId,
      authorizationEndpoint: Uri.parse('$_issuer/authorize'),
      tokenEndpoint: Uri.parse('$_issuer/token'),
      redirectUri: Uri.parse('https://app.example.com/cb'),
      jwksUri: '$_issuer/jwks',
      expectedIssuer: _issuer,
      jwtValidator: validator,
      httpClient: mock,
    );
    // Pin state+nonce so the returned id_token can carry the matching nonce.
    return (flow..buildAuthorizationUrl(state: _state, nonce: _nonce))
        .handleAuthorizationResponse({'state': _state, 'code': 'code-1'});
  }

  test('accepts a correctly signed id_token', () async {
    final tokens = await exchange(_sign(key, baseClaims()));
    expect(tokens.accessToken, equals(_accessToken));
    expect(tokens.idToken, isNotNull);
  });

  test('rejects a tampered signature', () {
    final valid = _sign(key, baseClaims());
    // Flip the last character of the signature segment.
    final tampered = valid.substring(0, valid.length - 1) +
        (valid.endsWith('A') ? 'B' : 'A');
    expect(exchange(tampered), throwsA(isA<SecurityException>()));
  });

  test('rejects a token signed by a key not in the JWKS', () {
    final otherKey = JsonWebKey.generate('RS256', keyBitLength: 2048);
    expect(
      exchange(_sign(otherKey, baseClaims())),
      throwsA(isA<SecurityException>()),
    );
  });

  test('rejects a wrong nonce', () {
    final claims = baseClaims()..['nonce'] = 'not-the-nonce';
    expect(exchange(_sign(key, claims)), throwsA(isA<SecurityException>()));
  });

  test('rejects a wrong audience', () {
    final claims = baseClaims()..['aud'] = 'some-other-client';
    expect(exchange(_sign(key, claims)), throwsA(isA<SecurityException>()));
  });

  test('rejects a wrong issuer', () {
    final claims = baseClaims()..['iss'] = 'https://evil.example.com';
    expect(exchange(_sign(key, claims)), throwsA(isA<SecurityException>()));
  });

  test('rejects a mismatched at_hash', () {
    final claims = baseClaims()..['at_hash'] = _atHash('a-different-token');
    expect(exchange(_sign(key, claims)), throwsA(isA<SecurityException>()));
  });

  test('rejects an alg:none token', () {
    String seg(Map<String, dynamic> m) => _b64u(utf8.encode(jsonEncode(m)));
    final none = '${seg({'alg': 'none', 'typ': 'JWT'})}.${seg(baseClaims())}.';
    expect(exchange(none), throwsA(isA<SecurityException>()));
  });
}
