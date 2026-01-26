/// Test data and constants for testing
library;

/// Test server configurations
class TestServers {
  /// HAPI FHIR - open test server
  static const hapiBaseUrl = 'https://hapi.fhir.org/baseR4';

  /// MELD test server
  static const meldBaseUrl = 'https://meld.interop.community/Demo/data';
  static const meldClientId = '0eae5157-61bc-4d4b-a663-1b0bfdea3c16';

  /// Epic sandbox
  static const epicBaseUrl = 'https://fhir.epic.com/interconnect-fhir-oauth/';
  static const epicClientId = '5a13c447-56c0-4ebf-9788-7dd5374c9813';
  static const epicPatientClientId = '5a13c447-56c0-4ebf-9788-7dd5374c9813';

  /// Epic test credentials
  static const epicPatientUsername = 'fhircamila';
  static const epicPatientPassword = 'epicepic1';
  static const epicPractitionerUsername = 'FHIRTWO';
  static const epicPractitionerPassword = 'EpicFhir11!';

  /// Cerner test credentials
  static const cernerPatientUsername = 'nancysmart';
  static const cernerPatientPassword = 'Cerner01';

  /// Test redirect URI
  static const testRedirectUri = 'http://localhost:8888/redirect.html';
}

/// Sample JWT tokens for testing
class TestJwts {
  /// Valid JWT token (for testing structure only - not cryptographically valid)
  static const sampleJwtHeader = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9';

  /// Sample JWT payload
  static const sampleJwtPayload =
      'eyJpc3MiOiJodHRwczovL2V4YW1wbGUuY29tIiwic3ViIjoidXNlcjEyMyIsImF1ZCI6ImNsaWVudDEyMyIsImV4cCI6MTcwMDAwMDAwMCwiaWF0IjoxNjk5OTk2NDAwLCJub25jZSI6InRlc3Qtbm9uY2UifQ';

  /// Sample JWT signature (valid base64, but not a real signature)
  static const sampleJwtSignature = 'c2lnbmF0dXJl';

  /// Full sample JWT
  static String get sampleJwt =>
      '$sampleJwtHeader.$sampleJwtPayload.$sampleJwtSignature';
}

/// Sample SMART token responses
class TestTokens {
  /// Sample access token
  static const accessToken = 'sample_access_token_12345';

  /// Sample refresh token
  static const refreshToken = 'sample_refresh_token_67890';

  /// Sample ID token
  static final idToken = TestJwts.sampleJwt;

  /// Sample token response JSON (without ID token for most tests)
  static Map<String, dynamic> get sampleTokenResponse => <String, dynamic>{
        'access_token': accessToken,
        'token_type': 'Bearer',
        'expires_in': 3600,
        'refresh_token': refreshToken,
        'scope': 'patient/*.read user/Practitioner.read',
        'patient': 'Patient/123',
      };

  /// Sample token response WITH ID token (for tests that specifically need it)
  static Map<String, dynamic> get sampleTokenResponseWithIdToken =>
      <String, dynamic>{
        'access_token': accessToken,
        'token_type': 'Bearer',
        'expires_in': 3600,
        'refresh_token': refreshToken,
        'scope': 'patient/*.read user/Practitioner.read',
        'patient': 'Patient/123',
        'id_token': idToken,
      };
}

/// Sample JWKS for testing
class TestJwks {
  /// Sample RSA public key (for testing only)
  static const rsaPublicKeyPem = '''
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4f5wg5l2hKsTeNem/V41
fGnJm6gOdrj8ym3rFkEU/wT8RDtnSgFEZOQpHEgQ7JL38xUfU0Y3g6aYw9QT0hJ7
mCpz9Er5qLaMXJwZxzHzAahlfA0icqabvJOMvQtzD6uQv6wPEyZtDTWiQi9AXwBp
HssPnpYGIn20ZZuNlX2BrClciHqFXf2p5yljMwWfD0NFzd1VqFcQGgkL1ztXXnH1
4zfKJMJhLfGYuK1OWYjGiHXkMJvEZtLXiqMJqLv5ELbGLj3Qzt7KGJhExL/VPwFG
7zLLCYnYzvXlDjrj9aLXTuqCNs1hTWXt6RpHsWVV6ERZDsxC6GEwVw5fYcK7Hb4p
QQIDAQAB
-----END PUBLIC KEY-----
''';

  /// Sample JWKS JSON
  static Map<String, dynamic> get sampleJwks => <String, dynamic>{
        'keys': <Map<String, dynamic>>[
          <String, dynamic>{
            'kty': 'RSA',
            'use': 'sig',
            'kid': 'test-key-1',
            'n':
                '4f5wg5l2hKsTeNem_V41fGnJm6gOdrj8ym3rFkEU_wT8RDtnSgFEZOQpHEgQ7JL38xUfU0Y3g6aYw9QT0hJ7mCpz9Er5qLaMXJwZxzHzAahlfA0icqabvJOMvQtzD6uQv6wPEyZtDTWiQi9AXwBpHssPnpYGIn20ZZuNlX2BrClciHqFXf2p5yljMwWfD0NFzd1VqFcQGgkL1ztXXnH14zfKJMJhLfGYuK1OWYjGiHXkMJvEZtLXiqMJqLv5ELbGLj3Qzt7KGJhExL_VPwFG7zLLCYnYzvXlDjrj9aLXTuqCNs1hTWXt6RpHsWVV6ERZDsxC6GEwVw5fYcK7Hb4pQQ',
            'e': 'AQAB',
          },
        ],
      };
}
