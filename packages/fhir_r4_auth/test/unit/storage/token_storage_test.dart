/// Tests for token storage
library;

import 'dart:convert';

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../test_helpers/test_data.dart';

@GenerateMocks([FlutterSecureStorage])
import 'token_storage_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SmartTokenResponse', () {
    test('creates with required fields', () {
      final token = SmartTokenResponse(
        accessToken: 'access_token_123',
        tokenType: 'Bearer',
      );

      expect(token.accessToken, equals('access_token_123'));
      expect(token.tokenType, equals('Bearer'));
      expect(token.issuedAt, isNotNull);
    });

    test('creates with all fields', () {
      final token = SmartTokenResponse(
        accessToken: 'access_token_123',
        refreshToken: 'refresh_token_456',
        idToken: 'id_token_789',
        tokenType: 'Bearer',
        expiresIn: 3600,
        scope: 'patient/*.read user/Practitioner.read',
        patientContext: 'Patient/123',
        encounterContext: 'Encounter/456',
        fhirUser: 'Practitioner/789',
        needPatientBanner: true,
        smartStyleUrl: 'https://example.com/style',
        intent: 'client-ui',
        tenant: 'tenant123',
      );

      expect(token.refreshToken, equals('refresh_token_456'));
      expect(token.idToken, equals('id_token_789'));
      expect(token.expiresIn, equals(3600));
      expect(token.scope, equals('patient/*.read user/Practitioner.read'));
      expect(token.patientContext, equals('Patient/123'));
      expect(token.encounterContext, equals('Encounter/456'));
      expect(token.fhirUser, equals('Practitioner/789'));
      expect(token.needPatientBanner, isTrue);
      expect(token.smartStyleUrl, equals('https://example.com/style'));
      expect(token.intent, equals('client-ui'));
      expect(token.tenant, equals('tenant123'));
    });

    test('calculates expiry time', () {
      final now = DateTime.now();
      final token = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
        issuedAt: now,
      );

      final expectedExpiry = now.add(const Duration(seconds: 3600));
      final actualExpiry = token.expiresAt!;

      expect(
        actualExpiry.difference(expectedExpiry).inSeconds.abs(),
        lessThan(2),
      );
    });

    test('returns null expiry when no expiresIn', () {
      final token = SmartTokenResponse(accessToken: 'test');

      expect(token.expiresAt, isNull);
    });

    test('detects expired token', () {
      final pastTime = DateTime.now().subtract(const Duration(hours: 2));
      final token = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
        issuedAt: pastTime,
      );

      expect(token.isExpired, isTrue);
    });

    test('detects non-expired token', () {
      final token = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
      );

      expect(token.isExpired, isFalse);
    });

    test('parses scopes list', () {
      final token = SmartTokenResponse(
        accessToken: 'test',
        scope: 'patient/*.read user/Practitioner.read launch',
      );

      final scopes = token.scopesList;

      expect(scopes.length, equals(3));
      expect(scopes, contains('patient/*.read'));
      expect(scopes, contains('user/Practitioner.read'));
      expect(scopes, contains('launch'));
    });

    test('handles empty scope', () {
      final token = SmartTokenResponse(
        accessToken: 'test',
        scope: '',
      );

      expect(token.scopesList, isEmpty);
    });

    test('handles null scope', () {
      final token = SmartTokenResponse(accessToken: 'test');

      expect(token.scopesList, isEmpty);
    });

    test('serializes to JSON', () {
      final token = SmartTokenResponse(
        accessToken: 'access_token_123',
        refreshToken: 'refresh_token_456',
        idToken: 'id_token_789',
        tokenType: 'Bearer',
        expiresIn: 3600,
        scope: 'patient/*.read',
        patientContext: 'Patient/123',
      );

      final json = token.toJson();

      expect(json['access_token'], equals('access_token_123'));
      expect(json['refresh_token'], equals('refresh_token_456'));
      expect(json['id_token'], equals('id_token_789'));
      expect(json['token_type'], equals('Bearer'));
      expect(json['expires_in'], equals(3600));
      expect(json['scope'], equals('patient/*.read'));
      expect(json['patient'], equals('Patient/123'));
      expect(json['issuedAt'], isA<String>());
    });

    test('deserializes from JSON', () {
      final json = TestTokens.sampleTokenResponse;

      final token = SmartTokenResponse.fromJson(json);

      expect(token.accessToken, equals(TestTokens.accessToken));
      expect(token.refreshToken, equals(TestTokens.refreshToken));
      expect(token.tokenType, equals('Bearer'));
      expect(token.expiresIn, equals(3600));
    });

    test('stores additional claims', () {
      final json = <String, dynamic>{
        'access_token': 'test',
        'token_type': 'Bearer',
        'custom_claim': 'custom_value',
        'extra_data': 12345,
      };

      final token = SmartTokenResponse.fromJson(json);

      expect(token.additionalClaims['custom_claim'], equals('custom_value'));
      expect(token.additionalClaims['extra_data'], equals(12345));
    });

    test('serializes and deserializes stored JSON', () {
      final token1 = SmartTokenResponse(
        accessToken: 'access_token_123',
        refreshToken: 'refresh_token_456',
        expiresIn: 3600,
      );

      final jsonString = token1.toStoredJson();
      final token2 = SmartTokenResponse.fromStoredJson(jsonString);

      expect(token2.accessToken, equals(token1.accessToken));
      expect(token2.refreshToken, equals(token1.refreshToken));
      expect(token2.expiresIn, equals(token1.expiresIn));
    });

    test('creates copy with updated fields', () {
      final token1 = SmartTokenResponse(
        accessToken: 'access_token_123',
        refreshToken: 'refresh_token_456',
      );

      final token2 = token1.copyWith(
        accessToken: 'new_access_token',
      );

      expect(token2.accessToken, equals('new_access_token'));
      expect(token2.refreshToken, equals('refresh_token_456'));
    });
  });

  group('AuthState', () {
    test('creates with token response', () {
      final tokenResponse = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
      );

      final state = AuthState(
        tokenResponse: tokenResponse,
        lastAuthenticated: DateTime.now(),
        authMethod: ClientAuthMethod.clientSecretBasic,
      );

      expect(state.tokenResponse, equals(tokenResponse));
      expect(state.lastAuthenticated, isNotNull);
      expect(state.authMethod, equals(ClientAuthMethod.clientSecretBasic));
    });

    test('detects authenticated state', () {
      final tokenResponse = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
      );

      final state = AuthState(tokenResponse: tokenResponse);

      expect(state.isAuthenticated, isTrue);
    });

    test('detects unauthenticated state', () {
      final state = AuthState();

      expect(state.isAuthenticated, isFalse);
    });

    test('detects refresh capability', () {
      final tokenResponse = SmartTokenResponse(
        accessToken: 'test',
        refreshToken: 'refresh',
        expiresIn: 3600,
      );

      final state = AuthState(tokenResponse: tokenResponse);

      expect(state.canRefresh, isTrue);
    });

    test('detects no refresh capability', () {
      final tokenResponse = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
      );

      final state = AuthState(tokenResponse: tokenResponse);

      expect(state.canRefresh, isFalse);
    });

    test('serializes to JSON', () {
      final tokenResponse = SmartTokenResponse(
        accessToken: 'test',
        expiresIn: 3600,
      );

      final state = AuthState(
        tokenResponse: tokenResponse,
        lastAuthenticated: DateTime.now(),
        authMethod: ClientAuthMethod.clientSecretBasic,
        sessionId: 'session123',
      );

      final json = state.toJson();

      expect(json['tokenResponse'], isA<Map>());
      expect(json['lastAuthenticated'], isA<String>());
      expect(json['authMethod'], equals('clientSecretBasic'));
      expect(json['sessionId'], equals('session123'));
    });

    test('deserializes from JSON', () {
      final json = <String, dynamic>{
        'tokenResponse': TestTokens.sampleTokenResponse,
        'lastAuthenticated': DateTime.now().toIso8601String(),
        'authMethod': 'clientSecretBasic',
        'sessionId': 'session123',
      };

      final state = AuthState.fromJson(json);

      expect(state.tokenResponse, isNotNull);
      expect(state.lastAuthenticated, isNotNull);
      expect(state.authMethod, equals(ClientAuthMethod.clientSecretBasic));
      expect(state.sessionId, equals('session123'));
    });
  });

  group('SecureTokenStorage', () {
    late MockFlutterSecureStorage mockStorage;
    late SecureTokenStorage tokenStorage;

    setUp(() {
      mockStorage = MockFlutterSecureStorage();
      tokenStorage = SecureTokenStorage(storage: mockStorage);
    });

    test('saves tokens', () async {
      final tokens = SmartTokenResponse(
        accessToken: 'access_token_123',
        refreshToken: 'refresh_token_456',
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

      await tokenStorage.saveTokens(tokens);

      verify(mockStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });

    test('loads tokens', () async {
      final tokenJson = TestTokens.sampleTokenResponse;
      final storedJson = SmartTokenResponse.fromJson(tokenJson).toStoredJson();

      when(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).thenAnswer((_) async => storedJson);

      final tokens = await tokenStorage.loadTokens();

      expect(tokens, isNotNull);
      expect(tokens!.accessToken, equals(TestTokens.accessToken));

      verify(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });

    test('returns null when no tokens stored', () async {
      when(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).thenAnswer((_) async => null);

      final tokens = await tokenStorage.loadTokens();

      expect(tokens, isNull);
    });

    test('clears tokens', () async {
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
      )).called(2);
    });

    test('saves auth state', () async {
      final tokens = SmartTokenResponse(accessToken: 'test');
      final state = AuthState(
        tokenResponse: tokens,
        authMethod: ClientAuthMethod.clientSecretBasic,
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

      await tokenStorage.saveAuthState(state);

      verify(mockStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });

    test('loads auth state', () async {
      final tokens = SmartTokenResponse(accessToken: 'test');
      final state = AuthState(
        tokenResponse: tokens,
        authMethod: ClientAuthMethod.clientSecretBasic,
      );

      when(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).thenAnswer((_) async => jsonEncode(state.toJson()));

      final loadedState = await tokenStorage.loadAuthState();

      expect(loadedState, isNotNull);

      verify(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });

    test('checks if tokens exist', () async {
      when(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).thenAnswer((_) async => 'some_value');

      final hasTokens = await tokenStorage.hasTokens();

      expect(hasTokens, isTrue);

      verify(mockStorage.read(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });

    test('handles storage errors gracefully', () async {
      when(mockStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).thenThrow(Exception('Storage error'));

      final tokens = SmartTokenResponse(accessToken: 'test');

      expect(
        () => tokenStorage.saveTokens(tokens),
        throwsA(isA<StorageException>()),
      );
    });

    test('uses custom key prefix', () async {
      final customStorage = SecureTokenStorage(
        storage: mockStorage,
        keyPrefix: 'custom_',
      );

      final tokens = SmartTokenResponse(accessToken: 'test');

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

      await customStorage.saveTokens(tokens);

      verify(mockStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
        lOptions: anyNamed('lOptions'),
        webOptions: anyNamed('webOptions'),
        mOptions: anyNamed('mOptions'),
        wOptions: anyNamed('wOptions'),
      )).called(1);
    });
  });
}
