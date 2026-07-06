// SMART on FHIR Standalone Launch Demo
//
// This example demonstrates standalone launch with multiple EHR vendors
// and audience types:
// - Patient: Patient-facing app with patient/*.read scopes
// - Clinician: Provider-facing app with user/*.read scopes
// - System: Backend service with system/*.read scopes
//
// Supported EHR Vendors:
// - Epic (https://fhir.epic.com/)
// - Cerner (https://code.cerner.com/)
//
// Setup:
// 1. Register apps at the respective vendor portal
// 2. Add redirect URI: http://localhost:8080/callback.html
// 3. Configure appropriate scopes for your audience type
//
// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Encode SMART Health IT Sandbox launch configuration into a base64url string.
///
/// The SMART Sandbox expects a URL of the form:
///   `https://launch.smarthealthit.org/v/r4/sim/<encoded>/fhir`
///
/// The encoded segment is a base64url-encoded JSON array with 17 positions.
/// See https://github.com/smart-on-fhir/smart-launcher-v2 for the codec spec.
String encodeSandboxLaunchConfig({
  required int launchType,
  String patient = '',
  String provider = '',
  String encounter = 'AUTO',
  bool skipLogin = true,
  bool skipAuth = true,
  bool simEhr = false,
  String scope = '',
  String redirectUris = '',
  String clientId = '',
  String clientSecret = '',
  String authError = '',
  String jwksUrl = '',
  String jwks = '',
  int clientType = 0,
  int pkce = 1,
  String fhirServer = '',
}) {
  // Launch types: 0=provider-ehr, 1=patient-portal, 2=provider-standalone,
  //               3=patient-standalone, 4=backend-service
  // Client types: 0=public, 1=confidential-symmetric, 2=confidential-asymmetric,
  //               3=backend-service
  // PKCE: 0=none, 1=auto, 2=always
  final params = <dynamic>[
    launchType,
    patient,
    provider,
    encounter,
    if (skipLogin) 1 else 0,
    if (skipAuth) 1 else 0,
    if (simEhr) 1 else 0,
    scope,
    redirectUris,
    clientId,
    clientSecret,
    authError,
    jwksUrl,
    jwks,
    clientType,
    pkce,
    fhirServer,
  ];
  final jsonStr = jsonEncode(params);
  // base64url encode without padding
  return base64Url.encode(utf8.encode(jsonStr)).replaceAll('=', '');
}

/// Test RSA private key for SMART Sandbox backend service testing.
/// This key is only used against the open sandbox and has no access to real data.
const _sandboxTestKey = '''
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCukwaeYYKrgWDE
ZQRXtz/RbUag3wRhajM0sjEIDh5GWtQ37cBkTIpclIGLZmToYdIGNwp6quiLP8ob
VFyxWJ9yFcXzFLXrOx/GaY4xiLCAV2P+fgLsW1LywfnWdxjqyZvMRDpz4gbUhYLW
SVsRmQXalBmvaouoRsS8aieZtJlxLED5XeRk2UhHj1XUpr/sPQOxi2cVTi51jHxb
cPG3EBvonl6H9rBJBotjccSOdH24gNe7VchduoK2eJ5f6lGpGvqibhHAny2wlqFT
tSOPwgv7WedfpH2b2lK5SL2e28E0Yj3nFwJGrwtl+0GuvdNqemvm+2871E3ptx7/
bP+oXiZjAgMBAAECggEALs61I5o5kwqpi38aXvp/XgPSwCeL4SK8gBCXHPXMIEkS
Rby1rS7omlInOd1GiRhRW+E+Kg3RNCTyZ8mC4PpGJiy4Wqje7id4KZb7zUQ9Luw/
n2jiF8WUxApGlr5wK+PKpkZU9eVQt4Lkxdf9VwaUjzrOeD41G/V9opdD7u6BhdpK
MWeTvSFRHPxbXhHr6ZtFFuCu9uglX0GFpJgZIN1mrPefgmjpMcd963tdjevq0SF6
ZzVbiGDVfn6aadskaX4cTlgbxhXDTfk7Z0/94YYBpBxVJ6AAKH349lR+ebcVyOcS
268mwRQHlhV6kXYtbuvLiJ3iNzeyrmGBkXRIiWWPIQKBgQDgQW+T6s6VJmw6rzhR
8yJC4MsadiECEuDM3Ekv7pxjSgop1smJJpu2ym8+PP0cElV+CmV3ZxNjXfE7nfO1
NbgvjI32mpyckMZNKmFlWWRbnJjW6FhRj8v/pbqT2w2U7+n88utMzk/MdHkeKsuy
KQQ1B/Z0ErTZZ0s/+YwtglM03wKBgQDHST3mlOQW3KSlKch+PRCED+UaGo583wtq
4HLKGiyiCF86MtTBlL3vL5KQcHJq11lHCIdh1nrdY4qT4FwmjVbv93M353WFtNBd
8ZE0i71jTOS1u7HsK8jXEFQ5/cQKWhO70IklS7F2KCeDKMspDGn/y7W+p9eTMJno
p0WMbYPa/QKBgHnn2GnGWOqHaoo0Oh+CVfuZC4+k66ie7okurrJZubXXx9Kaqg/e
ZwNk5DgnG0ipRsQvjpzr8YQwyzQnVxYIz8k5VOrbfYs2wDWudieMApwycntQ7sHX
s4OTaet6RtXR3Zbdzr9/3607G6Qki3qcBWd2nqjWim0sU6HBXExY7jZtAoGASwXn
p8all3W5BfSU5fFXJmBVf15ABgJx6epVTIBODTHZp687KSU127WtF3M9n7sygOtV
DCASYQX4RXNRPbI36F7foUwhkhRf3P30DDQPODLaZxAiCybwlQYwryQ5iSwgAbSf
7MpyJGk5dscEtI9X2FR4Ny44mdDSICPYquUPnoECgYEAjn+tW7c+l4LAKeEwxAIE
vfWsVFus1swpsxRcmC+Po43XT1tnPiIbVj+pmiv+NRprQu/5rOLnma6bb3c9Puq2
WVzs5xcPeGUBm2IB7uRNlpP/MJ1YcTg8vEXNHuxDN9TuNTI45CiBX35ciWHptKOA
fJvPmE+1Ypa2tJymz49ZzvA=
-----END PRIVATE KEY-----
''';

void main() {
  runApp(const SmartStandaloneDemoApp());
}

class SmartStandaloneDemoApp extends StatelessWidget {
  const SmartStandaloneDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMART on FHIR Standalone Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SmartStandaloneHomePage(),
    );
  }
}

/// Supported EHR vendors
enum EhrVendor {
  epic('Epic', 'https://fhir.epic.com/'),
  cerner('Cerner', 'https://code.cerner.com/'),
  smartSandbox('SMART Sandbox', 'https://launch.smarthealthit.org/');

  const EhrVendor(this.label, this.portalUrl);
  final String label;
  final String portalUrl;
}

/// Launch modes corresponding to audience types
enum LaunchMode {
  patient('Patient', 'Patient-facing app', Icons.person),
  clinician('Clinician', 'Provider-facing app', Icons.medical_services),
  system('System', 'Backend service', Icons.computer);

  const LaunchMode(this.label, this.description, this.icon);
  final String label;
  final String description;
  final IconData icon;
}

/// Vendor-specific configuration
class VendorConfig {
  const VendorConfig({
    required this.baseUrl,
    required this.clientIds,
    required this.scopes,
    required this.testCredentials,
    this.systemClientSecret,
  });

  final String baseUrl;
  final Map<LaunchMode, String> clientIds;
  final Map<LaunchMode, List<String>> scopes;
  final Map<LaunchMode, TestCredentials> testCredentials;
  // Kept as a placeholder for users wiring backend-service flows.
  // ignore: unreachable_from_main
  final String? systemClientSecret;
}

class TestCredentials {
  const TestCredentials({this.username, this.password, this.note});
  final String? username;
  final String? password;
  final String? note;
}

class SmartStandaloneHomePage extends StatefulWidget {
  const SmartStandaloneHomePage({super.key});

  @override
  State<SmartStandaloneHomePage> createState() =>
      _SmartStandaloneHomePageState();
}

class _SmartStandaloneHomePageState extends State<SmartStandaloneHomePage> {
  SmartFhirClient? _client;
  EhrVendor _selectedVendor = EhrVendor.epic;
  LaunchMode _selectedMode = LaunchMode.patient;

  // Backend service private key input
  final _privateKeyController = TextEditingController();

  // Data state
  Patient? _patient;
  List<Observation>? _observations;
  Practitioner? _practitioner;
  Map<String, dynamic>? _systemData;
  bool _isLoading = false;
  String? _error;
  String? _contextId;

  // Redirect URI - platform-aware
  // Android uses a custom URL scheme (registered via appAuthRedirectScheme in build.gradle.kts)
  // Web and desktop use http://localhost:8080 (registered with the OAuth provider)
  static String get redirectUri {
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      return 'com.example.standalone-demo://callback';
    }
    return 'http://localhost:8080/callback.html';
  }

  // ============================================================
  // VENDOR CONFIGURATIONS
  // ============================================================

  static const Map<EhrVendor, VendorConfig> vendorConfigs = {
    // ========== EPIC CONFIGURATION ==========
    EhrVendor.epic: VendorConfig(
      baseUrl: 'https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4',
      clientIds: {
        // Register at: https://fhir.epic.com/
        // Non-Production Client ID for fhir_r4_auth_test_patient app
        LaunchMode.patient: '31a05c77-c602-4bf3-be24-1a7692802b3c',
        // Non-Production Client ID for fhir_r4_auth_test_clinician app
        LaunchMode.clinician: '2a12e18b-6dd7-4383-8faf-5ba904a072c3',
        // Non-Production Client ID for fhir_r4_auth_test_system app
        LaunchMode.system: '8a68b1bb-49ff-4c3e-aa44-d6a21cbaa55c',
      },
      scopes: {
        LaunchMode.patient: [
          'patient/*.read',
          'launch/patient',
          'openid',
          'fhirUser',
          'offline_access',
        ],
        LaunchMode.clinician: [
          'user/*.read',
          'launch',
          'openid',
          'fhirUser',
          'online_access',
        ],
        LaunchMode.system: ['system/Patient.read'],
      },
      testCredentials: {
        LaunchMode.patient: TestCredentials(
          username: 'fhircamila',
          password: 'epicepic1',
        ),
        LaunchMode.clinician: TestCredentials(
          username: 'FHIRTWO',
          password: 'EpicFhir11!',
        ),
        LaunchMode.system: TestCredentials(
          note: 'Uses client credentials - no user login required',
        ),
      },
      // JWKS URL: https://gist.githubusercontent.com/Dokotela/a2d902a2036a4030e68b0d76549147f4/raw/jwks.json
    ),

    // ========== CERNER CONFIGURATION ==========
    EhrVendor.cerner: VendorConfig(
      baseUrl:
          'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d',
      clientIds: {
        // Register at: https://code.cerner.com/
        // Patient app - TODO: Replace with your ID
        LaunchMode.patient: 'YOUR-CERNER-PATIENT-CLIENT-ID',
        // Clinician app - TODO: Replace with your ID
        LaunchMode.clinician: 'YOUR-CERNER-CLINICIAN-CLIENT-ID',
        // System app - TODO: Replace with your ID
        LaunchMode.system: 'YOUR-CERNER-SYSTEM-CLIENT-ID',
      },
      scopes: {
        LaunchMode.patient: [
          'patient/Patient.read',
          'patient/Observation.read',
          'launch/patient',
          'openid',
          'fhirUser',
          'offline_access',
        ],
        LaunchMode.clinician: [
          'user/Patient.read',
          'user/Observation.read',
          'user/Practitioner.read',
          'launch',
          'openid',
          'fhirUser',
          'online_access',
        ],
        LaunchMode.system: ['system/Patient.read', 'system/Observation.read'],
      },
      testCredentials: {
        LaunchMode.patient: TestCredentials(
          username: 'nancysmart',
          password: 'Cerner01',
        ),
        LaunchMode.clinician: TestCredentials(
          username: 'portal',
          password: 'Portal1!',
          note: 'Clinician test account',
        ),
        LaunchMode.system: TestCredentials(
          note: 'Uses client credentials - no user login required',
        ),
      },
      systemClientSecret: 'YOUR-CERNER-SYSTEM-CLIENT-SECRET',
    ),

    // ========== SMART HEALTH IT SANDBOX ==========
    EhrVendor.smartSandbox: VendorConfig(
      baseUrl: 'https://launch.smarthealthit.org/v/r4/fhir',
      clientIds: {
        // SMART Sandbox auto-generates client IDs — use any non-empty value
        // The sandbox does not require pre-registration
        LaunchMode.patient: 'fhir_r4_auth_demo',
        LaunchMode.clinician: 'fhir_r4_auth_demo',
        LaunchMode.system: 'fhir_r4_auth_demo',
      },
      scopes: {
        LaunchMode.patient: [
          'patient/*.read',
          'launch/patient',
          'openid',
          'fhirUser',
          'offline_access',
        ],
        LaunchMode.clinician: [
          'user/*.read',
          'launch',
          'openid',
          'fhirUser',
          'online_access',
        ],
        LaunchMode.system: ['system/*.read'],
      },
      testCredentials: {
        LaunchMode.patient: TestCredentials(
          note:
              'SMART Sandbox lets you pick any patient - no login required. '
              'Configure the sandbox at https://launch.smarthealthit.org/',
        ),
        LaunchMode.clinician: TestCredentials(
          note:
              'SMART Sandbox lets you pick any practitioner - no login required',
        ),
        LaunchMode.system: TestCredentials(
          note:
              'Backend service mode. '
              'Uses client credentials with JWT assertion.',
        ),
      },
    ),
  };

  VendorConfig get _currentConfig => vendorConfigs[_selectedVendor]!;

  /// Resolve token URL from base URL (for backend services that need it)
  Uri _resolveTokenUrl(String baseUrl) {
    // Known token endpoints per vendor
    switch (_selectedVendor) {
      case EhrVendor.epic:
        return Uri.parse(
          'https://fhir.epic.com/interconnect-fhir-oauth/oauth2/token',
        );
      case EhrVendor.cerner:
        return Uri.parse(
          'https://authorization.cerner.com/tenants/'
          'ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/'
          'smart-v1/token',
        );
      case EhrVendor.smartSandbox:
        // The baseUrl already contains the /sim/<encoded>/fhir path;
        // replace the trailing /fhir with /auth/token
        final base = baseUrl.endsWith('/fhir')
            ? baseUrl.substring(0, baseUrl.length - 5)
            : baseUrl;
        return Uri.parse('$base/auth/token');
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeClient();
  }

  /// Compute the effective FHIR base URL.
  ///
  /// For the SMART Health IT Sandbox the launch configuration must be encoded
  /// as a base64url segment in the URL path:
  ///   `https://launch.smarthealthit.org/v/r4/sim/<encoded>/fhir`
  String _effectiveBaseUrl() {
    final config = _currentConfig;
    if (_selectedVendor != EhrVendor.smartSandbox) {
      return config.baseUrl;
    }

    // Map LaunchMode → sandbox launch type index
    // 0=provider-ehr, 1=patient-portal, 2=provider-standalone,
    // 3=patient-standalone, 4=backend-service
    final int launchType;
    switch (_selectedMode) {
      case LaunchMode.patient:
        launchType = 3; // patient-standalone
      case LaunchMode.clinician:
        launchType = 2; // provider-standalone
      case LaunchMode.system:
        launchType = 4; // backend-service
    }

    final encoded = encodeSandboxLaunchConfig(
      launchType: launchType,
      // skip_login: false lets the sandbox show the patient/provider picker
      skipLogin: _selectedMode == LaunchMode.system,
      skipAuth: _selectedMode == LaunchMode.system,
      // Backend services need clientType=3 (backend-service)
      clientType: _selectedMode == LaunchMode.system ? 3 : 0,
    );

    return 'https://launch.smarthealthit.org/v/r4/sim/$encoded/fhir';
  }

  void _initializeClient() {
    final config = _currentConfig;
    final clientId = config.clientIds[_selectedMode];

    if (clientId == null || clientId.startsWith('YOUR-')) {
      print(
        '\u26a0\ufe0f  Client ID not configured for '
        '${_selectedVendor.label} ${_selectedMode.label} mode',
      );
      print('   Please register an app at ${_selectedVendor.portalUrl}');
      _client = null;
      return;
    }

    final baseUrl = _effectiveBaseUrl();

    if (_selectedMode == LaunchMode.system) {
      // Backend service uses client credentials flow with JWT assertion
      final tokenUrl = _resolveTokenUrl(baseUrl);
      var privateKey = _privateKeyController.text.isNotEmpty
          ? _privateKeyController.text
          : 'NOT_CONFIGURED';
      // Use built-in test key for SMART Sandbox and Epic if no key was entered
      // (the JWKS public key is registered at both sandboxes)
      if (privateKey == 'NOT_CONFIGURED' &&
          (_selectedVendor == EhrVendor.smartSandbox ||
              _selectedVendor == EhrVendor.epic)) {
        privateKey = _sandboxTestKey;
      }
      _client = SmartFhirClient(
        config: BackendServiceConfig(
          clientId: clientId,
          fhirBaseUrl: baseUrl.toFhirUri,
          privateKey: privateKey,
          tokenUrl: tokenUrl,
          scopes: config.scopes[_selectedMode]!,
          keyId: 'fhir-r4-auth-test-key-1',
        ),
      );
      print('  Token URL: $tokenUrl');
      print('  Private key length: ${privateKey.length}');
    } else {
      // Patient and Clinician use authorization code flow
      final isSmartSandbox = _selectedVendor == EhrVendor.smartSandbox;
      _client = SmartFhirClient(
        config: SmartConfig(
          clientId: clientId,
          fhirBaseUrl: baseUrl.toFhirUri,
          redirectUri: Uri.parse(redirectUri),
          scopes: config.scopes[_selectedMode]!,
          // SMART Sandbox supports PKCE and OpenID; Epic does not
          enablePkce: isSmartSandbox,
          enableOpenId: isSmartSandbox,
        ),
      );
    }

    print(
      '\u2713 FHIR Client initialized '
      '(${_selectedVendor.label} - ${_selectedMode.label})',
    );
    print('  Base URL: $baseUrl');
    print('  Client ID: $clientId');
    if (_selectedMode != LaunchMode.system) {
      print('  Redirect: $redirectUri');
    }
  }

  Future<void> _login() async {
    if (_client == null) {
      setState(() {
        _error =
            'Client not configured. Please add your client ID for '
            '${_selectedVendor.label} ${_selectedMode.label} mode.';
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
      _patient = null;
      _practitioner = null;
      _observations = null;
      _systemData = null;
      _contextId = null;
    });

    try {
      print(
        '\n\ud83d\udd10 Starting ${_selectedVendor.label} authentication '
        '(${_selectedMode.label})...',
      );
      await _client!.login();
      print('\u2713 Authentication successful!');

      await _fetchModeSpecificData();

      setState(() {
        _isLoading = false;
      });

      print('\n\u2705 Demo completed successfully!');
    } on AuthenticationException catch (e, stackTrace) {
      print('\u274c Authentication error: ${e.message}');
      print('  Details: ${e.details}');
      print('  Inner exception: ${e.innerException}');
      print('  Stack trace:\n$stackTrace');
      setState(() {
        final buf = StringBuffer('Authentication failed: ${e.message}');
        if (e.details != null) buf.write('\n\nDetails: ${e.details}');
        if (e.innerException != null) {
          buf.write('\n\nInner: ${e.innerException}');
          // If inner exception has its own details, show those too
          final inner = e.innerException;
          if (inner is AuthorizationException) {
            buf.write('\nStatus: ${inner.statusCode}');
            buf.write('\nError: ${inner.errorCode}');
            buf.write('\nDescription: ${inner.errorDescription}');
            buf.write('\nBody: ${inner.details}');
          }
        }
        _error = buf.toString();
        _isLoading = false;
      });
    } on NetworkException catch (e) {
      print('\u274c Network error: ${e.statusCode} - ${e.message}');
      setState(() {
        _error = 'Network error: ${e.message}';
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      print('\u274c Unexpected error: $e');
      print('Stack trace:\n$stackTrace');
      setState(() {
        _error = 'Error: $e';
        _isLoading = false;
      });
    }
  }

  Future<void> _fetchModeSpecificData() async {
    final baseUrl = _currentConfig.baseUrl;

    switch (_selectedMode) {
      case LaunchMode.patient:
        await _fetchPatientData(baseUrl);
      case LaunchMode.clinician:
        await _fetchClinicianData(baseUrl);
      case LaunchMode.system:
        await _fetchSystemData(baseUrl);
    }
  }

  Future<void> _fetchPatientData(String baseUrl) async {
    _contextId = _client!.patientContext;
    print('\u2713 Patient ID from token: $_contextId');

    if (_contextId == null) {
      throw Exception('No patient ID in token response');
    }

    print('\n\ud83d\udcca Fetching patient data...');
    final patientResponse = await _client!.get(
      Uri.parse('$baseUrl/Patient/$_contextId'),
    );

    if (patientResponse.statusCode == 200) {
      _patient = Patient.fromJsonString(patientResponse.body);
      print(
        '\u2713 Patient loaded: ${_patient!.name?.first.text?.valueString}',
      );
    } else {
      throw Exception('Failed to load patient: ${patientResponse.statusCode}');
    }

    print('\n\ud83e\ude7a Fetching observations...');
    final obsResponse = await _client!.get(
      Uri.parse(
        '$baseUrl/Observation?'
        'patient=$_contextId&'
        'category=vital-signs&'
        '_count=10&'
        '_sort=-date',
      ),
    );

    if (obsResponse.statusCode == 200) {
      final bundle = Bundle.fromJsonString(obsResponse.body);
      _observations =
          bundle.entry
              ?.map((e) => e.resource)
              .whereType<Observation>()
              .toList() ??
          [];
      print('\u2713 Loaded ${_observations!.length} observations');
    }
  }

  Future<void> _fetchClinicianData(String baseUrl) async {
    // Get practitioner/user ID from fhirUser claim
    final fhirUser = _client!.fhirUser;
    print('\u2713 FHIR User from token: $fhirUser');

    if (fhirUser != null && fhirUser.contains('/')) {
      // Extract ID from reference like "Practitioner/123"
      _contextId = fhirUser.split('/').last;
      print('\u2713 Practitioner ID: $_contextId');
    }

    if (_contextId != null) {
      print('\n\ud83d\udc68\u200d\u2695\ufe0f Fetching practitioner data...');
      final practResponse = await _client!.get(
        Uri.parse('$baseUrl/Practitioner/$_contextId'),
      );

      if (practResponse.statusCode == 200) {
        _practitioner = Practitioner.fromJsonString(practResponse.body);
        print(
          '\u2713 Practitioner loaded: '
          '${_practitioner!.name?.first.text?.valueString}',
        );
      }
    }

    // If a patient was selected during authorization, fetch that patient
    final patientId = _client!.patientContext;
    if (patientId != null) {
      print('\n\ud83d\udccb Fetching selected patient: $patientId');
      final patientResponse = await _client!.get(
        Uri.parse('$baseUrl/Patient/$patientId'),
      );
      if (patientResponse.statusCode == 200) {
        _patient = Patient.fromJsonString(patientResponse.body);
        print(
          '\u2713 Patient loaded: ${_patient!.name?.first.text?.valueString}',
        );
      }
    } else {
      // No patient context — fetch recent patients as a sample
      print('\n\ud83d\udccb Fetching recent patients (user-level access)...');
      final patientResponse = await _client!.get(
        Uri.parse('$baseUrl/Patient?_count=5&_sort=-_lastUpdated'),
      );

      if (patientResponse.statusCode == 200) {
        final bundle = Bundle.fromJsonString(patientResponse.body);
        final patients =
            bundle.entry
                ?.map((e) => e.resource)
                .whereType<Patient>()
                .toList() ??
            [];
        print('\u2713 Loaded ${patients.length} recent patients');

        if (patients.isNotEmpty) {
          _patient = patients.first;
        }
      }
    }
  }

  Future<void> _fetchSystemData(String baseUrl) async {
    print('\n\ud83d\udda5\ufe0f  Fetching system-level data...');
    _systemData = {};

    try {
      final capabilityResponse = await _client!.get(
        Uri.parse('$baseUrl/metadata'),
      );

      if (capabilityResponse.statusCode == 200) {
        print('\u2713 CapabilityStatement loaded');
        _systemData!['capabilityStatement'] = true;
      }
    } catch (e) {
      print('  CapabilityStatement fetch failed: $e');
    }

    try {
      final patientResponse = await _client!.get(
        Uri.parse('$baseUrl/Patient?_count=10&_sort=-_lastUpdated'),
      );

      if (patientResponse.statusCode == 200) {
        final bundle = Bundle.fromJsonString(patientResponse.body);
        final totalPatients = bundle.total?.valueNum;
        print('\u2713 System can access $totalPatients patients');

        _systemData!['totalPatients'] = totalPatients;
        _systemData!['searchResults'] = bundle.entry?.length ?? 0;
      } else {
        print('  Patient search returned ${patientResponse.statusCode}');
      }
    } catch (e) {
      print('  Patient search failed: $e');
    }

    print('\n\ud83d\udcca System-level statistics...');
    try {
      final obsResponse = await _client!.get(
        Uri.parse('$baseUrl/Observation?_summary=count'),
      );

      if (obsResponse.statusCode == 200) {
        final bundle = Bundle.fromJsonString(obsResponse.body);
        final totalObs = bundle.total?.valueNum;
        print('\u2713 Total observations in system: $totalObs');

        _systemData?['totalObservations'] = totalObs;
      } else {
        print('  Observation query returned ${obsResponse.statusCode}');
      }
    } catch (e) {
      print('  Observation query failed: $e');
    }
  }

  Future<void> _logout() async {
    try {
      print('\n\ud83d\udc4b Logging out...');
      await _client?.logout();
      print('\u2713 Logged out successfully');

      setState(() {
        _patient = null;
        _practitioner = null;
        _observations = null;
        _systemData = null;
        _contextId = null;
      });
    } catch (e) {
      print('\u274c Logout error: $e');
    }
  }

  void _changeVendor(EhrVendor newVendor) {
    setState(() {
      _selectedVendor = newVendor;
      _clearState();
      _initializeClient();
    });
  }

  void _changeMode(LaunchMode newMode) {
    setState(() {
      _selectedMode = newMode;
      _clearState();
      _initializeClient();
    });
  }

  void _clearState() {
    _patient = null;
    _practitioner = null;
    _observations = null;
    _systemData = null;
    _contextId = null;
    _error = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMART on FHIR Standalone Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: _isAuthenticated
            ? [
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: _logout,
                  tooltip: 'Logout',
                ),
              ]
            : null,
      ),
      body: _buildBody(),
    );
  }

  bool get _isAuthenticated =>
      _patient != null || _practitioner != null || _systemData != null;

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Authenticating with ${_selectedVendor.label} '
              '(${_selectedMode.label})...',
            ),
          ],
        ),
      );
    }

    if (_error != null) {
      return _buildErrorScreen();
    }

    if (!_isAuthenticated) {
      return _buildLoginScreen();
    }

    return _buildDataScreen();
  }

  Widget _buildLoginScreen() {
    final config = _currentConfig;
    final clientId = config.clientIds[_selectedMode];
    final needsSetup = clientId == null || clientId.startsWith('YOUR-');

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Vendor Logo
            _buildVendorLogo(),
            const SizedBox(height: 32),

            // Title
            const Text(
              'SMART on FHIR Standalone Demo',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Test standalone launch with different EHR vendors',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // Vendor Selection
            const Text(
              'Select EHR Vendor:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SegmentedButton<EhrVendor>(
              segments: EhrVendor.values.map((vendor) {
                return ButtonSegment(value: vendor, label: Text(vendor.label));
              }).toList(),
              selected: {_selectedVendor},
              onSelectionChanged: (newSelection) {
                _changeVendor(newSelection.first);
              },
            ),

            const SizedBox(height: 24),

            // Mode Selection
            const Text(
              'Select Launch Mode:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SegmentedButton<LaunchMode>(
              segments: LaunchMode.values.map((mode) {
                return ButtonSegment(
                  value: mode,
                  label: Text(mode.label),
                  icon: Icon(mode.icon),
                );
              }).toList(),
              selected: {_selectedMode},
              onSelectionChanged: (newSelection) {
                _changeMode(newSelection.first);
              },
            ),

            const SizedBox(height: 16),

            // Mode description
            _buildModeDescription(),

            const SizedBox(height: 24),

            // Private key input for system mode
            if (_selectedMode == LaunchMode.system) ...[
              _buildPrivateKeyInput(),
              const SizedBox(height: 24),
            ],

            // Setup warning if needed
            if (needsSetup) _buildSetupInstructions(),

            const SizedBox(height: 24),

            // Login button
            ElevatedButton.icon(
              onPressed: needsSetup ? null : _login,
              icon: const Icon(Icons.login),
              label: Text(
                'Connect to ${_selectedVendor.label} as ${_selectedMode.label}',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
            ),

            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),

            // Test credentials
            _buildTestCredentials(),
          ],
        ),
      ),
    );
  }

  Widget _buildVendorLogo() {
    switch (_selectedVendor) {
      case EhrVendor.epic:
        return Image.network(
          'https://fhir.epic.com/Content/Images/epic-logo.svg',
          height: 60,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.local_hospital,
            size: 60,
            color: Colors.deepPurple,
          ),
        );
      case EhrVendor.cerner:
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'Cerner',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        );
      case EhrVendor.smartSandbox:
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'SMART Health IT',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        );
    }
  }

  Widget _buildModeDescription() {
    final scopes = _currentConfig.scopes[_selectedMode]!;

    return Card(
      color: _getVendorColor().withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(_selectedMode.icon, color: _getVendorColor()),
                const SizedBox(width: 8),
                Text(
                  '${_selectedVendor.label} - ${_selectedMode.label}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(_selectedMode.description),
            const SizedBox(height: 8),
            Text(
              'Scopes: ${scopes.join(", ")}',
              style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }

  Color _getVendorColor() {
    switch (_selectedVendor) {
      case EhrVendor.epic:
        return Colors.deepPurple;
      case EhrVendor.cerner:
        return Colors.red;
      case EhrVendor.smartSandbox:
        return Colors.teal;
    }
  }

  Widget _buildPrivateKeyInput() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.key, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'Private Key (PEM)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Paste your RSA or EC private key in PEM format for JWT signing:',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _privateKeyController,
              maxLines: 6,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              decoration: const InputDecoration(
                hintText: 'Paste PEM-encoded private key here',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                // Re-initialize client when key changes
                _initializeClient();
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestCredentials() {
    final creds = _currentConfig.testCredentials[_selectedMode];
    if (creds == null) return const SizedBox.shrink();

    return Column(
      children: [
        Text(
          '${_selectedVendor.label} Test Credentials (${_selectedMode.label}):',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        if (creds.username != null) Text('Username: ${creds.username}'),
        if (creds.password != null) Text('Password: ${creds.password}'),
        if (creds.note != null)
          Text(
            creds.note!,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
      ],
    );
  }

  Widget _buildSetupInstructions() {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.warning, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'Setup Required',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'To test ${_selectedVendor.label} ${_selectedMode.label} mode:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text('1. Register at ${_selectedVendor.portalUrl}'),
            Text('2. Create a "${_selectedMode.label}" audience app'),
            const Text(
              '3. Add redirect URI: http://localhost:8080/callback.html',
            ),
            const Text('4. Add your client ID to the code (main.dart)'),
            if (_selectedMode == LaunchMode.system)
              const Text('5. Add your client secret'),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            const Text(
              'Authentication Failed',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              _error!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _login,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Try Again'),
                ),
                const SizedBox(width: 16),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _error = null;
                    });
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataScreen() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Success indicator
        Card(
          color: Colors.green.shade50,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(_selectedMode.icon, color: Colors.green, size: 32),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${_selectedVendor.label} - ${_selectedMode.label} Mode Active',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Successfully authenticated with '
                        '${_selectedVendor.label} FHIR API',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Display mode-specific data
        if (_selectedMode == LaunchMode.patient && _patient != null)
          ..._buildPatientCards(),
        if (_selectedMode == LaunchMode.clinician) ..._buildClinicianCards(),
        if (_selectedMode == LaunchMode.system && _systemData != null)
          ..._buildSystemCards(),
      ],
    );
  }

  List<Widget> _buildPatientCards() {
    return [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.person, size: 32),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _patient!.name?.first.text?.valueString ?? 'Unknown',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Patient ID: $_contextId',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(height: 32),
              if (_patient!.birthDate != null)
                _buildInfoRow(
                  'Date of Birth',
                  _patient!.birthDate!.valueString ?? 'Unknown',
                ),
              if (_patient!.gender != null)
                _buildInfoRow(
                  'Gender',
                  _patient!.gender!.valueString ?? 'Unknown',
                ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 16),
      if (_observations != null && _observations!.isNotEmpty)
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.favorite, size: 32, color: Colors.red),
                    SizedBox(width: 16),
                    Text(
                      'Recent Vital Signs',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 32),
                ..._observations!.take(5).map((obs) {
                  final code =
                      obs.code.text?.valueString ??
                      obs.code.coding?.first.display?.valueString ??
                      'Unknown';
                  final value =
                      obs.valueQuantity?.value?.valueDouble?.toString() ??
                      'N/A';
                  final unit = obs.valueQuantity?.unit?.valueString ?? '';
                  final date =
                      obs.effectiveDateTime?.valueString ?? 'Unknown date';

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                code,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                date,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '$value $unit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _getVendorColor(),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
    ];
  }

  List<Widget> _buildClinicianCards() {
    return [
      if (_practitioner != null)
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.medical_services, size: 32),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _practitioner!.name?.first.text?.valueString ??
                                'Unknown',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Practitioner ID: $_contextId',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      const SizedBox(height: 16),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.people, size: 32, color: _getVendorColor()),
                  const SizedBox(width: 16),
                  const Text(
                    'User-Level Access',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(height: 32),
              const Text(
                'As a clinician, you can:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _buildBullet('Search across all patients'),
              _buildBullet('Access patient data with user/*.read scopes'),
              _buildBullet('Perform clinical workflows'),
              if (_patient != null) ...[
                const SizedBox(height: 16),
                Text(
                  'Sample patient: ${_patient!.name?.first.text?.valueString}',
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildSystemCards() {
    return [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.computer, size: 32, color: _getVendorColor()),
                  const SizedBox(width: 16),
                  const Text(
                    'System-Level Access',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(height: 32),
              const Text(
                'Backend service capabilities:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _buildBullet('No user context required'),
              _buildBullet('System-level data access'),
              _buildBullet('Batch processing capabilities'),
              _buildBullet('Analytics and reporting'),
            ],
          ),
        ),
      ),
      const SizedBox(height: 16),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.analytics, size: 32, color: Colors.green),
                  SizedBox(width: 16),
                  Text(
                    'System Statistics',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(height: 32),
              if (_systemData!['totalPatients'] != null)
                _buildInfoRow(
                  'Total Patients',
                  _systemData!['totalPatients'].toString(),
                ),
              if (_systemData!['searchResults'] != null)
                _buildInfoRow(
                  'Search Results',
                  _systemData!['searchResults'].toString(),
                ),
              if (_systemData!['totalObservations'] != null)
                _buildInfoRow(
                  'Total Observations',
                  _systemData!['totalObservations'].toString(),
                ),
            ],
          ),
        ),
      ),
    ];
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('\u2022 ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _privateKeyController.dispose();
    _client?.close();
    super.dispose();
  }
}
