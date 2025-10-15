/// Tests for token introspection
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('TokenIntrospectionResult', () {
    test('creates from JSON', () {
      final json = <String, dynamic>{
        'active': true,
        'scope': 'patient/*.read user/Practitioner.read',
        'client_id': 'client123',
        'username': 'user@example.com',
        'token_type': 'Bearer',
        'exp': 1700000000,
        'iat': 1699996400,
        'sub': 'user123',
        'aud': 'client123',
        'iss': 'https://example.com',
      };

      final result = TokenIntrospectionResult.fromJson(json);

      expect(result.active, isTrue);
      expect(result.scope, equals('patient/*.read user/Practitioner.read'));
      expect(result.clientId, equals('client123'));
      expect(result.username, equals('user@example.com'));
      expect(result.tokenType, equals('Bearer'));
      expect(result.expiresAt, equals(1700000000));
      expect(result.issuedAt, equals(1699996400));
      expect(result.subject, equals('user123'));
      expect(result.audience, equals('client123'));
      expect(result.issuer, equals('https://example.com'));
    });

    test('handles inactive token', () {
      final json = <String, dynamic>{
        'active': false,
      };

      final result = TokenIntrospectionResult.fromJson(json);

      expect(result.active, isFalse);
    });

    test('handles missing optional fields', () {
      final json = <String, dynamic>{
        'active': true,
      };

      final result = TokenIntrospectionResult.fromJson(json);

      expect(result.active, isTrue);
      expect(result.scope, isNull);
      expect(result.clientId, isNull);
      expect(result.username, isNull);
    });

    test('includes extension fields', () {
      final json = <String, dynamic>{
        'active': true,
        'custom_field': 'custom_value',
        'extra_data': 12345,
      };

      final result = TokenIntrospectionResult.fromJson(json);

      expect(result.extensions['custom_field'], equals('custom_value'));
      expect(result.extensions['extra_data'], equals(12345));
    });

    test('parses scopes list', () {
      final result = TokenIntrospectionResult(
        active: true,
        scope: 'patient/*.read user/Practitioner.read launch',
      );

      final scopes = result.scopesList;

      expect(scopes.length, equals(3));
      expect(scopes, contains('patient/*.read'));
      expect(scopes, contains('user/Practitioner.read'));
      expect(scopes, contains('launch'));
    });

    test('handles empty scope', () {
      final result = TokenIntrospectionResult(
        active: true,
        scope: '',
      );

      expect(result.scopesList, isEmpty);
    });

    test('handles null scope', () {
      final result = TokenIntrospectionResult(
        active: true,
      );

      expect(result.scopesList, isEmpty);
    });

    test('detects expired token', () {
      final pastTime = DateTime.now()
              .subtract(const Duration(hours: 1))
              .millisecondsSinceEpoch ~/
          1000;

      final result = TokenIntrospectionResult(
        active: true,
        expiresAt: pastTime,
      );

      expect(result.isExpired, isTrue);
    });

    test('detects non-expired token', () {
      final futureTime =
          DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
              1000;

      final result = TokenIntrospectionResult(
        active: true,
        expiresAt: futureTime,
      );

      expect(result.isExpired, isFalse);
    });

    test('detects not yet valid token', () {
      final futureTime =
          DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
              1000;

      final result = TokenIntrospectionResult(
        active: true,
        notBefore: futureTime,
      );

      expect(result.isNotYetValid, isTrue);
    });

    test('converts expiration to DateTime', () {
      final result = TokenIntrospectionResult(
        active: true,
        expiresAt: 1700000000,
      );

      final expirationTime = result.expirationTime;

      expect(expirationTime, isNotNull);
      expect(expirationTime, isA<DateTime>());
    });

    test('converts issued at to DateTime', () {
      final result = TokenIntrospectionResult(
        active: true,
        issuedAt: 1699996400,
      );

      final issuedAtTime = result.issuedAtTime;

      expect(issuedAtTime, isNotNull);
      expect(issuedAtTime, isA<DateTime>());
    });

    test('serializes to JSON', () {
      final result = TokenIntrospectionResult(
        active: true,
        scope: 'patient/*.read',
        clientId: 'client123',
        username: 'user@example.com',
        tokenType: 'Bearer',
        expiresAt: 1700000000,
        issuedAt: 1699996400,
        subject: 'user123',
        audience: 'client123',
        issuer: 'https://example.com',
      );

      final json = result.toJson();

      expect(json['active'], isTrue);
      expect(json['scope'], equals('patient/*.read'));
      expect(json['client_id'], equals('client123'));
      expect(json['username'], equals('user@example.com'));
      expect(json['token_type'], equals('Bearer'));
      expect(json['exp'], equals(1700000000));
      expect(json['iat'], equals(1699996400));
      expect(json['sub'], equals('user123'));
      expect(json['aud'], equals('client123'));
      expect(json['iss'], equals('https://example.com'));
    });

    test('has string representation', () {
      final result = TokenIntrospectionResult(
        active: true,
        clientId: 'client123',
        expiresAt: 1700000000,
      );

      final str = result.toString();

      expect(str, contains('TokenIntrospectionResult'));
      expect(str, contains('active: true'));
      expect(str, contains('client123'));
    });
  });

  group('TokenIntrospector', () {
    test('creates with required parameters', () {
      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
      );

      expect(introspector.introspectionEndpoint.toString(),
          equals('https://example.com/introspect'));
      expect(introspector.clientId, equals('client123'));
    });

    test('introspects token successfully', () async {
      final mockClient = MockClient((request) async {
        expect(
            request.url.toString(), equals('https://example.com/introspect'));
        expect(request.method, equals('POST'));
        expect(request.headers['content-type'],
            startsWith('application/x-www-form-urlencoded'));

        final body = request.body;
        expect(body, contains('token='));
        expect(body, contains('client_id='));

        return http.Response(
          jsonEncode(<String, dynamic>{
            'active': true,
            'scope': 'patient/*.read',
            'client_id': 'client123',
            'exp': DateTime.now()
                    .add(const Duration(hours: 1))
                    .millisecondsSinceEpoch ~/
                1000,
          }),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      final result = await introspector.introspect('test_token');

      expect(result.active, isTrue);
      expect(result.scope, equals('patient/*.read'));
    });

    test('includes token type hint', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('token=test_token'));
        expect(body, contains('token_type_hint=access_token'));

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      await introspector.introspect(
        'test_token',
        tokenTypeHint: 'access_token',
      );
    });

    test('uses HTTP Basic auth when configured', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Authorization'], startsWith('Basic '));

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        clientSecret: 'secret456',
        useBasicAuth: true,
        httpClient: mockClient,
      );

      await introspector.introspect('test_token');
    });

    test('uses POST body auth when configured', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('client_id=client123'));
        expect(body, contains('client_secret=secret456'));
        expect(request.headers['Authorization'], isNull);

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        clientSecret: 'secret456',
        useBasicAuth: false,
        httpClient: mockClient,
      );

      await introspector.introspect('test_token');
    });

    test('includes additional parameters', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('custom_param=custom_value'));

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      await introspector.introspect(
        'test_token',
        additionalParameters: <String, String>{'custom_param': 'custom_value'},
      );
    });

    test('handles network error', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Internal Server Error', 500);
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      expect(
        () => introspector.introspect('test_token'),
        throwsA(isA<NetworkException>()),
      );
    });

    test('handles authorization error', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'error': 'invalid_token',
            'error_description': 'Token is invalid',
          }),
          400,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      expect(
        () => introspector.introspect('test_token'),
        throwsA(isA<AuthorizationException>()),
      );
    });

    test('checks if token is active', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'active': true,
            'exp': DateTime.now()
                    .add(const Duration(hours: 1))
                    .millisecondsSinceEpoch ~/
                1000,
          }),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      final isActive = await introspector.isTokenActive('test_token');

      expect(isActive, isTrue);
    });

    test('detects inactive token', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{'active': false}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      final isActive = await introspector.isTokenActive('test_token');

      expect(isActive, isFalse);
    });

    test('detects expired token', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode(<String, dynamic>{
            'active': true,
            'exp': DateTime.now()
                    .subtract(const Duration(hours: 1))
                    .millisecondsSinceEpoch ~/
                1000,
          }),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      final isActive = await introspector.isTokenActive('test_token');

      expect(isActive, isFalse);
    });

    test('handles check error gracefully', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Error', 500);
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      final isActive = await introspector.isTokenActive('test_token');

      expect(isActive, isFalse);
    });

    test('convenience method for access token', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('token_type_hint=access_token'));

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      await introspector.introspectAccessToken('test_token');
    });

    test('convenience method for refresh token', () async {
      final mockClient = MockClient((request) async {
        final body = request.body;
        expect(body, contains('token_type_hint=refresh_token'));

        return http.Response(
          jsonEncode(<String, dynamic>{'active': true}),
          200,
        );
      });

      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
        httpClient: mockClient,
      );

      await introspector.introspectRefreshToken('test_token');
    });

    test('disposes HTTP client', () {
      final introspector = TokenIntrospector(
        introspectionEndpoint: Uri.parse('https://example.com/introspect'),
        clientId: 'client123',
      );

      // Should not throw
      introspector.dispose();
    });
  });
}
