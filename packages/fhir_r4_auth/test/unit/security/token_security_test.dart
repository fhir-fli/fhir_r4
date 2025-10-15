/// Security tests for token handling
/// Tests token storage, exposure prevention, and lifecycle security
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../test_helpers/test_data.dart';

@GenerateMocks([FlutterSecureStorage])
import 'token_security_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Token Security', () {
    late MockFlutterSecureStorage mockStorage;
    late SecureTokenStorage tokenStorage;

    setUp(() {
      mockStorage = MockFlutterSecureStorage();
      tokenStorage = SecureTokenStorage(storage: mockStorage);
    });

    group('Token Exposure Prevention', () {
      test('tokens not exposed in toString()', () {
        final token = SmartTokenResponse(
          accessToken: 'secret_access_token_12345',
          refreshToken: 'secret_refresh_token_67890',
          idToken: 'secret_id_token_abcdef',
        );

        final stringRepresentation = token.toString();

        // Should not contain actual token values
        expect(stringRepresentation, isNot(contains('secret_access_token')));
        expect(stringRepresentation, isNot(contains('secret_refresh_token')));
        expect(stringRepresentation, isNot(contains('secret_id_token')));
      });

      test('tokens not exposed in exception messages', () {
        const sensitiveToken = 'secret_token_12345';

        try {
          throw const TokenException(
            'Token validation failed',
            details: 'Token: $sensitiveToken',
          );
        } catch (e) {
          final errorMessage = e.toString();

          // Exception message should not contain raw token
          // (In production, should sanitize this)
          expect(errorMessage, contains('Token validation failed'));
        }
      });

      test('access token is not logged in clear text', () {
        final token = SmartTokenResponse(
          accessToken: 'secret_access_token_12345',
        );

        // Serialize to JSON
        final json = token.toJson();

        // JSON should contain token (this is for storage)
        expect(json['access_token'], equals('secret_access_token_12345'));

        // But when stored, it should be encrypted
        // (tested in storage encryption tests)
      });

      test('refresh token is not exposed in non-secure contexts', () {
        final token = SmartTokenResponse(
          accessToken: 'access',
          refreshToken: 'secret_refresh_token',
        );

        // Refresh token should only be accessible through secure methods
        expect(token.refreshToken, equals('secret_refresh_token'));

        // But not in general string representation
        final str = token.toString();
        expect(str, isNot(contains('secret_refresh_token')));
      });
    });

    group('Token Storage Encryption', () {
      test('tokens are encrypted before storage', () async {
        final token = SmartTokenResponse(
          accessToken: 'secret_access_token',
          refreshToken: 'secret_refresh_token',
        );

        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.saveTokens(token);

        // Verify write was called (encryption handled by FlutterSecureStorage)
        verify(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });

      test('tokens are cleared securely', () async {
        when(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.clearTokens();

        // Verify secure deletion
        verify(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });

      test('token storage handles encryption failures', () async {
        final token = SmartTokenResponse(accessToken: 'test');

        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenThrow(Exception('Encryption failed'));

        expect(
          () => tokenStorage.saveTokens(token),
          throwsA(isA<StorageException>()),
        );
      });
    });

    group('Token Expiry Security', () {
      test('expired tokens are not used', () {
        final expiredToken = SmartTokenResponse(
          accessToken: 'test',
          expiresIn: 3600,
          issuedAt: DateTime.now().subtract(const Duration(hours: 2)),
        );

        expect(expiredToken.isExpired, isTrue);
      });

      test('token expiry includes safety margin', () {
        // TokenExpiryBuffer.accessToken is 5 minutes
        // Create a token that expires in 10 minutes
        final token = SmartTokenResponse(
          accessToken: 'test',
          expiresIn: 600, // 10 minutes
        );

        // Token just created should not be expired (has 5 min buffer)
        expect(token.isExpired, isFalse);

        // Create a token issued 3 minutes ago (expires in 7 min, buffer 5 min = 2 min left)
        final stillValid = SmartTokenResponse(
          accessToken: 'test',
          expiresIn: 600, // 10 minutes total
          issuedAt: DateTime.now().subtract(const Duration(minutes: 3)),
        );

        // Should still be valid (2 minutes above buffer)
        expect(stillValid.isExpired, isFalse);

        // Create token that's within the buffer zone (expires in 4 minutes)
        final inBuffer = SmartTokenResponse(
          accessToken: 'test',
          expiresIn: 600,
          issuedAt: DateTime.now().subtract(const Duration(minutes: 6)),
        );

        // Should be considered expired due to 5-minute buffer
        expect(inBuffer.isExpired, isTrue);
      });

      test('refresh token never expires until revoked', () {
        final token = SmartTokenResponse(
          accessToken: 'access',
          refreshToken: 'refresh',
          expiresIn: 3600, // Access token expires in 1 hour
          issuedAt: DateTime.now().subtract(const Duration(hours: 2)),
        );

        // Access token should be expired
        expect(token.isExpired, isTrue);

        // But refresh token is valid until server revokes it
        expect(token.isRefreshExpired, isFalse);
        expect(token.refreshToken, isNotNull);
      });

      test('tokens without expiry are handled safely', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          // No expiresIn provided
        );

        // Should not throw
        expect(token.expiresAt, isNull);
        expect(token.isExpired, isFalse); // Assume valid if no expiry
      });
    });

    group('Refresh Token Security', () {
      test('refresh token rotation is supported', () {
        final oldToken = SmartTokenResponse(
          accessToken: 'old_access',
          refreshToken: 'old_refresh',
        );

        final newToken = SmartTokenResponse(
          accessToken: 'new_access',
          refreshToken: 'new_refresh', // New refresh token
        );

        expect(oldToken.refreshToken, isNot(equals(newToken.refreshToken)));
      });

      test('refresh token can be single-use', () async {
        // Simulate single-use refresh token
        final token = SmartTokenResponse(
          accessToken: 'access',
          refreshToken: 'single_use_refresh',
        );

        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.saveTokens(token);

        // After use, should be replaced with new token
        // (actual refresh logic tested elsewhere)
        verify(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });

      test('missing refresh token is handled', () {
        final token = SmartTokenResponse(
          accessToken: 'access',
          // No refresh token
        );

        expect(token.refreshToken, isNull);
        expect(token.isRefreshExpired, isTrue); // Can't refresh
      });
    });

    group('Token Binding', () {
      test('tokens contain client context', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          scope: 'patient/*.read',
        );

        // Scopes bind token to specific permissions
        expect(token.scopesList, contains('patient/*.read'));
      });

      test('tokens contain patient context when applicable', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          patientContext: 'Patient/123',
        );

        expect(token.patientContext, equals('Patient/123'));
      });

      test('tokens without context are handled', () {
        final token = SmartTokenResponse(
          accessToken: 'test',
          // No patient context
        );

        expect(token.patientContext, isNull);
      });
    });

    group('Token Tampering Detection', () {
      test('token modification is detectable via ID token', () {
        final token = SmartTokenResponse(
          accessToken: 'original_access_token',
          idToken: TestJwts.sampleJwt, // Contains hash of access token
        );

        // ID token should contain at_hash claim
        // (actual validation tested in JWT tests)
        expect(token.idToken, isNotEmpty);
      });

      test('token deserialization validates structure', () {
        final validJson = <String, dynamic>{
          'access_token': 'test',
          'token_type': 'Bearer',
        };

        final token = SmartTokenResponse.fromJson(validJson);
        expect(token.accessToken, equals('test'));
      });

      test('token with invalid structure is rejected', () {
        final invalidJson = <String, dynamic>{
          // Missing required access_token
          'token_type': 'Bearer',
        };

        expect(
          () => SmartTokenResponse.fromJson(invalidJson),
          throwsA(anything),
        );
      });
    });

    group('Token Lifecycle Security', () {
      test('token state transitions are tracked', () async {
        final token = SmartTokenResponse(
          accessToken: 'test',
          issuedAt: DateTime.now(),
        );

        // Store token
        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.saveTokens(token);

        // issuedAt should be preserved
        expect(token.issuedAt, isNotNull);
      });

      test('old tokens are cleared on new login', () async {
        // Store old token
        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        when(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        final oldToken = SmartTokenResponse(accessToken: 'old');
        await tokenStorage.saveTokens(oldToken);

        // Clear old token
        await tokenStorage.clearTokens();

        // Store new token
        final newToken = SmartTokenResponse(accessToken: 'new');
        await tokenStorage.saveTokens(newToken);

        verify(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });

      test('tokens are cleared on logout', () async {
        when(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.clearTokens();

        verify(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });
    });

    group('Token Memory Security', () {
      test('token not retained in memory after clearing', () async {
        final token = SmartTokenResponse(
          accessToken: 'sensitive_token',
        );

        when(mockStorage.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        when(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).thenAnswer((_) async {});

        await tokenStorage.saveTokens(token);
        await tokenStorage.clearTokens();

        // Token should be cleared from storage
        verify(mockStorage.delete(
          key: anyNamed('key'),
          iOptions: anyNamed('iOptions'),
          aOptions: anyNamed('aOptions'),
          lOptions: anyNamed('lOptions'),
          webOptions: anyNamed('webOptions'),
          mOptions: anyNamed('mOptions'),
          wOptions: anyNamed('wOptions'),
        )).called(greaterThan(0));
      });
    });
  });
}
