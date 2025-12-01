/// Helper functions for integration tests
library;
import 'package:http/http.dart' as http;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../test_helpers/test_data.dart';

/// Helper class for creating test clients
class IntegrationTestHelpers {
  /// Create a SmartFhirClient for patient standalone launch
  static SmartFhirClient createPatientStandaloneClient({
    required String serverBaseUrl,
    required String clientId,
    String? redirectUri,
    List<String>? scopes,
  }) {
    return SmartFhirClient(
      httpClient: http.Client(),
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: serverBaseUrl.toFhirUri,
        redirectUri: Uri.parse(redirectUri ?? TestServers.testRedirectUri),
        scopes: scopes ??
            [
              'patient/*.read',
              'launch/patient',
              'offline_access',
              'openid',
              'fhirUser',
            ],
        launchType: LaunchType.standalone,
        enablePkce: true,
        enableOpenId: true,
        offlineAccess: true,
      ),
    );
  }

  /// Create a SmartFhirClient for patient EHR launch
  static SmartFhirClient createPatientEhrClient({
    required String serverBaseUrl,
    required String clientId,
    required String launchToken,
    String? redirectUri,
    List<String>? scopes,
  }) {
    return SmartFhirClient(
      httpClient: http.Client(),
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: serverBaseUrl.toFhirUri,
        redirectUri: Uri.parse(redirectUri ?? TestServers.testRedirectUri),
        scopes: scopes ??
            [
              'patient/*.read',
              'launch',
              'offline_access',
              'openid',
              'fhirUser',
            ],
        launchType: LaunchType.ehr,
        launchToken: launchToken,
        enablePkce: true,
        enableOpenId: true,
        offlineAccess: true,
      ),
    );
  }

  /// Create a SmartFhirClient for practitioner standalone launch
  static SmartFhirClient createPractitionerStandaloneClient({
    required String serverBaseUrl,
    required String clientId,
    String? redirectUri,
    List<String>? scopes,
  }) {
    return SmartFhirClient(
      httpClient: http.Client(),
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: serverBaseUrl.toFhirUri,
        redirectUri: Uri.parse(redirectUri ?? TestServers.testRedirectUri),
        scopes: scopes ??
            [
              'user/*.read',
              'launch',
              'offline_access',
              'openid',
              'fhirUser',
            ],
        launchType: LaunchType.standalone,
        enablePkce: true,
        enableOpenId: true,
        offlineAccess: true,
      ),
    );
  }

  /// Create a SmartFhirClient for practitioner EHR launch
  static SmartFhirClient createPractitionerEhrClient({
    required String serverBaseUrl,
    required String clientId,
    required String launchToken,
    String? redirectUri,
    List<String>? scopes,
  }) {
    return SmartFhirClient(
      httpClient: http.Client(),
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: serverBaseUrl.toFhirUri,
        redirectUri: Uri.parse(redirectUri ?? TestServers.testRedirectUri),
        scopes: scopes ??
            [
              'user/*.read',
              'launch',
              'offline_access',
              'openid',
              'fhirUser',
            ],
        launchType: LaunchType.ehr,
        launchToken: launchToken,
        enablePkce: true,
        enableOpenId: true,
        offlineAccess: true,
      ),
    );
  }

  /// Create a SmartFhirClient for backend service launch
  static SmartFhirClient createBackendServiceClient({
    required String serverBaseUrl,
    required String clientId,
    String? clientSecret,
    List<String>? scopes,
  }) {
    return SmartFhirClient(
      httpClient: http.Client(),
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: serverBaseUrl.toFhirUri,
        redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'), // Not used for backend
        scopes: scopes ?? ['system/*.read'],
        launchType: LaunchType.backend,
        authMethod: clientSecret != null
            ? ClientAuthMethod.clientSecretPost
            : ClientAuthMethod.privateKeyJwt,
        clientSecret: clientSecret,
        enablePkce: false, // Not used for backend services
        enableOpenId: false, // Not used for backend services
      ),
    );
  }

  /// Verify that authentication was successful
  static Future<void> verifyAuthenticationSuccess(SmartFhirClient client) async {
    final isAuth = await client.isAuthenticated();
    expect(isAuth, isTrue, reason: 'Client should be authenticated');
    final accessToken = await client.getAccessToken();
    expect(accessToken, isNotNull, reason: 'Access token should be present');
    expect(accessToken, isNotEmpty, reason: 'Access token should not be empty');
  }

  /// Verify patient context
  static void verifyPatientContext(SmartFhirClient client) {
    expect(client.patientContext, isNotNull, reason: 'Patient context should be present');
    expect(client.patientContext, isNotEmpty, reason: 'Patient context should not be empty');
  }

  /// Verify practitioner context
  static void verifyPractitionerContext(SmartFhirClient client) {
    expect(client.fhirUser, isNotNull, reason: 'FHIR user should be present');
    // FHIR user should reference a Practitioner
    expect(
      client.fhirUser?.contains('Practitioner') ?? false,
      isTrue,
      reason: 'FHIR user should reference a Practitioner',
    );
  }

  /// Verify token refresh capability
  static Future<void> verifyTokenRefresh(SmartFhirClient client) async {
    final originalToken = await client.getAccessToken();
    expect(originalToken, isNotNull);

    // Attempt to refresh
    await client.refreshToken();

    // Token should still be valid (may be same or new)
    final newToken = await client.getAccessToken();
    expect(newToken, isNotNull);
    final isAuth = await client.isAuthenticated();
    expect(isAuth, isTrue);
  }

  /// Verify server capabilities discovery
  static Future<void> verifyServerCapabilities(SmartFhirClient client) async {
    final capabilities = await client.getServerCapabilities();
    expect(capabilities, isNotEmpty, reason: 'Should discover server capabilities');
  }

  /// Clean up test client
  static Future<void> cleanupClient(SmartFhirClient client) async {
    try {
      await client.logout();
    } catch (e) {
      // Ignore errors during cleanup
    }
    client.close();
  }
}

/// Test server configurations for integration tests
class IntegrationTestServers {
  /// Epic test server configuration
  static const epic = _EpicServer();

  /// Cerner test server configuration
  static const cerner = _CernerServer();

  /// Generic SMART server (MIHIN) configuration
  static const generic = _GenericServer();
}

class _EpicServer {
  const _EpicServer();

  String get baseUrl => TestServers.epicBaseUrl;
  String get clientId => TestServers.epicClientId;
  String get patientClientId => TestServers.epicPatientClientId;
  String get patientUsername => TestServers.epicPatientUsername;
  String get patientPassword => TestServers.epicPatientPassword;
  String get practitionerUsername => TestServers.epicPractitionerUsername;
  String get practitionerPassword => TestServers.epicPractitionerPassword;
}

class _CernerServer {
  const _CernerServer();

  String get baseUrl => 'https://fhir-ehr.cerner.com/r4'; // Example - update with actual
  String get clientId => 'test-client-id'; // Update with actual
  String get patientUsername => TestServers.cernerPatientUsername;
  String get patientPassword => TestServers.cernerPatientPassword;
}

class _GenericServer {
  const _GenericServer();

  String get baseUrl => TestServers.meldBaseUrl;
  String get clientId => TestServers.meldClientId;
}
