// SMART on FHIR EHR Launch Demo
//
// This example demonstrates the EHR launch flow where an EHR system
// launches the app by passing `iss` and `launch` as URL query parameters.
//
// EHR Launch Flow:
// 1. EHR opens app URL with ?iss=<fhir-base-url>&launch=<token>
// 2. App parses those parameters
// 3. App discovers OAuth endpoints from `iss`
// 4. App redirects to authorization endpoint with the `launch` token
// 5. User authenticates in the EHR (if not already)
// 6. EHR redirects back with authorization code
// 7. App exchanges code for tokens (which include patient/encounter context)
// 8. App displays patient data from the EHR-provided context
//
// When no launch parameters are present, the app shows a simulation screen
// to configure and test the EHR launch flow manually.
//
// Setup:
// 1. Register an app at the EHR vendor portal (e.g., https://fhir.epic.com/)
// 2. Add redirect URI: http://localhost:8080/callback.html
// 3. Configure appropriate scopes for EHR launch
//
// ignore_for_file: avoid_print

library;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:fhir_r4/fhir_r4.dart';

void main() {
  runApp(const SmartEhrLaunchDemoApp());
}

class SmartEhrLaunchDemoApp extends StatelessWidget {
  const SmartEhrLaunchDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMART on FHIR EHR Launch Demo',
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const SmartEhrLaunchHomePage(),
    );
  }
}

/// Supported EHR vendors for simulation mode
enum EhrVendor {
  epic('Epic', 'https://fhir.epic.com/'),
  cerner('Cerner', 'https://code.cerner.com/'),
  smartSandbox('SMART Sandbox', 'https://launch.smarthealthit.org/');

  const EhrVendor(this.label, this.portalUrl);
  final String label;
  final String portalUrl;
}

/// Vendor-specific EHR launch configuration
class EhrVendorConfig {
  const EhrVendorConfig({
    required this.fhirBaseUrl,
    required this.clientId,
    required this.scopes,
    required this.testCredentials,
  });

  final String fhirBaseUrl;
  final String clientId;
  final List<String> scopes;
  final TestCredentials testCredentials;
}

class TestCredentials {
  const TestCredentials({this.username, this.password, this.note});
  final String? username;
  final String? password;
  final String? note;
}

class SmartEhrLaunchHomePage extends StatefulWidget {
  const SmartEhrLaunchHomePage({super.key});

  @override
  State<SmartEhrLaunchHomePage> createState() => _SmartEhrLaunchHomePageState();
}

class _SmartEhrLaunchHomePageState extends State<SmartEhrLaunchHomePage> {
  SmartFhirClient? _client;
  EhrVendor _selectedVendor = EhrVendor.epic;

  // EHR launch parameters (detected from URL or entered manually)
  String? _detectedIss;
  String? _detectedLaunch;
  bool _ehrLaunchDetected = false;

  // Simulation mode text controllers
  final _issController = TextEditingController();
  final _launchController = TextEditingController();

  // Data state
  Patient? _patient;
  List<Observation>? _observations;
  String? _patientId;
  String? _encounterId;
  String? _fhirUser;
  bool _isLoading = false;
  String? _error;
  String _statusMessage = '';

  // Redirect URI - platform-aware
  // Android uses a custom URL scheme (registered via appAuthRedirectScheme in build.gradle.kts)
  // Web and desktop use http://localhost:8080 (registered with the OAuth provider)
  static String get redirectUri {
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      return 'com.example.ehr-launch-demo://callback';
    }
    return 'http://localhost:8080/callback.html';
  }

  // ============================================================
  // VENDOR CONFIGURATIONS
  // ============================================================

  static const Map<EhrVendor, EhrVendorConfig> vendorConfigs = {
    // ========== EPIC CONFIGURATION ==========
    EhrVendor.epic: EhrVendorConfig(
      fhirBaseUrl: 'https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4',
      // Register at: https://fhir.epic.com/
      // Non-Production Client ID for fhir_r4_auth_test_clinician app
      clientId: '2a12e18b-6dd7-4383-8faf-5ba904a072c3',
      scopes: ['launch'],
      testCredentials: TestCredentials(
        username: 'fhircamila',
        password: 'epicepic1',
        note:
            'Use the Epic Launch Simulator at https://fhir.epic.com/Documentation?docId=launching',
      ),
    ),

    // ========== CERNER CONFIGURATION ==========
    EhrVendor.cerner: EhrVendorConfig(
      fhirBaseUrl:
          'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d',
      // Register at: https://code.cerner.com/
      // TODO: Replace with your Cerner EHR launch client ID
      clientId: 'YOUR-CERNER-EHR-LAUNCH-CLIENT-ID',
      scopes: [
        'launch',
        'patient/Patient.read',
        'patient/Observation.read',
        'openid',
        'fhirUser',
      ],
      testCredentials: TestCredentials(
        username: 'portal',
        password: 'Portal1!',
        note: 'Use the Cerner Code Console to simulate an EHR launch',
      ),
    ),

    // ========== SMART HEALTH IT SANDBOX ==========
    EhrVendor.smartSandbox: EhrVendorConfig(
      fhirBaseUrl: 'https://launch.smarthealthit.org/v/r4/fhir',
      // SMART Sandbox auto-generates client IDs — use any non-empty value
      clientId: 'fhir_r4_auth_demo',
      scopes: [
        'launch',
        'patient/Patient.read',
        'patient/Observation.read',
        'openid',
        'fhirUser',
      ],
      testCredentials: TestCredentials(
        note:
            'Use the SMART App Launcher at https://launch.smarthealthit.org/ '
            'to simulate an EHR launch. Point it to http://localhost:8080',
      ),
    ),
  };

  EhrVendorConfig get _currentConfig => vendorConfigs[_selectedVendor]!;

  @override
  void initState() {
    super.initState();
    _detectLaunchParameters();
  }

  @override
  void dispose() {
    _issController.dispose();
    _launchController.dispose();
    _client?.close();
    super.dispose();
  }

  /// Detect EHR launch parameters from the current URL
  void _detectLaunchParameters() {
    final uri = Uri.base;
    final params = uri.queryParameters;

    final iss = params['iss'];
    final launch = params['launch'];

    if (iss != null && launch != null) {
      print('EHR Launch detected!');
      print('  iss: $iss');
      print('  launch: $launch');

      setState(() {
        _detectedIss = iss;
        _detectedLaunch = launch;
        _ehrLaunchDetected = true;
        _statusMessage = 'EHR launch parameters detected — auto-connecting...';
      });

      // Auto-connect immediately to avoid launch token expiry
      // Epic launch tokens are short-lived
      Future.microtask(() => _startEhrLaunch(iss: iss, launchToken: launch));
    } else {
      print('No EHR launch parameters detected - showing simulation mode');
      // Pre-fill simulation fields with Epic defaults
      _issController.text = _currentConfig.fhirBaseUrl;
    }
  }

  /// Initialize SMART client for EHR launch
  void _initializeEhrClient({
    required String iss,
    required String launchToken,
  }) {
    final config = _currentConfig;
    final clientId = config.clientId;

    if (clientId.startsWith('YOUR-')) {
      print(
        '\u26a0\ufe0f  Client ID not configured for ${_selectedVendor.label}',
      );
      _client = null;
      return;
    }

    final isSmartSandbox = _selectedVendor == EhrVendor.smartSandbox;
    _client = SmartFhirClient(
      config: SmartConfig(
        clientId: clientId,
        fhirBaseUrl: iss.toFhirUri,
        redirectUri: Uri.parse(redirectUri),
        launchType: LaunchType.ehr,
        launchToken: launchToken,
        iss: iss,
        scopes: config.scopes,
        // SMART Sandbox supports PKCE and OpenID; Epic does not
        enablePkce: isSmartSandbox,
        enableOpenId: isSmartSandbox,
      ),
    );

    print('\u2713 EHR Launch client initialized');
    print('  ISS: $iss');
    print('  Launch Token: $launchToken');
    print('  Client ID: $clientId');
    print('  Scopes: ${config.scopes.join(", ")}');
  }

  /// Start the EHR launch OAuth flow
  Future<void> _startEhrLaunch({
    required String iss,
    required String launchToken,
  }) async {
    setState(() {
      _isLoading = true;
      _error = null;
      _patient = null;
      _observations = null;
      _patientId = null;
      _encounterId = null;
      _fhirUser = null;
      _statusMessage = 'Initializing EHR launch...';
    });

    try {
      _initializeEhrClient(iss: iss, launchToken: launchToken);

      if (_client == null) {
        throw Exception(
          'Client not configured. Please add your client ID for '
          '${_selectedVendor.label}.',
        );
      }

      setState(() {
        _statusMessage = 'Discovering OAuth endpoints...';
      });

      print('\n\ud83d\udd10 Starting EHR launch authentication...');
      await _client!.login();
      print('\u2713 Authentication successful!');

      // Extract context from token response
      _patientId = _client!.patientContext;
      _encounterId = _client!.encounterContext;
      _fhirUser = _client!.fhirUser;

      print('\u2713 Patient context: $_patientId');
      print('\u2713 Encounter context: $_encounterId');
      print('\u2713 FHIR User: $_fhirUser');

      setState(() {
        _statusMessage = 'Fetching patient data...';
      });

      await _fetchPatientData(iss);

      setState(() {
        _isLoading = false;
        _statusMessage = 'EHR launch completed successfully!';
      });

      print('\n\u2705 EHR launch demo completed successfully!');
    } on AuthenticationException catch (e, stackTrace) {
      print('\u274c Authentication error: ${e.message}');
      print('  Details: ${e.details}');
      print('  Inner exception: ${e.innerException}');
      print('  Stack trace:\n$stackTrace');
      setState(() {
        _error =
            'Authentication failed: ${e.message}'
            '${e.details != null ? '\nDetails: ${e.details}' : ''}'
            '${e.innerException != null ? '\nInner: ${e.innerException}' : ''}';
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

  Future<void> _fetchPatientData(String baseUrl) async {
    if (_patientId == null) {
      print('\u26a0\ufe0f  No patient ID in token response');
      return;
    }

    print('\n\ud83d\udcca Fetching patient data...');
    final patientResponse = await _client!.get(
      Uri.parse('$baseUrl/Patient/$_patientId'),
    );

    if (patientResponse.statusCode == 200) {
      _patient = Patient.fromJsonString(patientResponse.body);
      print(
        '\u2713 Patient loaded: ${_patient!.name?.first.text?.valueString}',
      );
    } else {
      print(
        '\u26a0\ufe0f  Failed to load patient: ${patientResponse.statusCode}',
      );
    }

    print('\n\ud83e\ude7a Fetching recent observations...');
    final obsResponse = await _client!.get(
      Uri.parse(
        '$baseUrl/Observation?'
        'patient=$_patientId&'
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

  Future<void> _logout() async {
    try {
      print('\n\ud83d\udc4b Logging out...');
      await _client?.logout();
      print('\u2713 Logged out successfully');

      setState(() {
        _patient = null;
        _observations = null;
        _patientId = null;
        _encounterId = null;
        _fhirUser = null;
        _statusMessage = '';
      });
    } catch (e) {
      print('\u274c Logout error: $e');
    }
  }

  void _changeVendor(EhrVendor newVendor) {
    setState(() {
      _selectedVendor = newVendor;
      _patient = null;
      _observations = null;
      _patientId = null;
      _encounterId = null;
      _fhirUser = null;
      _error = null;
      // Update ISS field with new vendor's URL
      _issController.text = vendorConfigs[newVendor]!.fhirBaseUrl;
    });
  }

  /// Simulate an EHR launch by navigating with query parameters
  void _simulateLaunch() {
    final iss = _issController.text.trim();
    final launch = _launchController.text.trim();

    if (iss.isEmpty) {
      setState(() {
        _error = 'Please enter an ISS (FHIR server URL)';
      });
      return;
    }

    if (launch.isEmpty) {
      setState(() {
        _error = 'Please enter a launch token';
      });
      return;
    }

    // Start the EHR launch flow directly with the entered parameters
    setState(() {
      _detectedIss = iss;
      _detectedLaunch = launch;
      _ehrLaunchDetected = true;
    });

    _startEhrLaunch(iss: iss, launchToken: launch);
  }

  bool get _isAuthenticated => _patient != null || _patientId != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMART on FHIR EHR Launch Demo'),
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

  Widget _buildBody() {
    if (_isLoading) {
      return _buildLoadingScreen();
    }

    if (_error != null && !_isAuthenticated) {
      return _buildErrorScreen();
    }

    if (_isAuthenticated) {
      return _buildDataScreen();
    }

    if (_ehrLaunchDetected) {
      return _buildEhrLaunchScreen();
    }

    return _buildSimulationScreen();
  }

  // ============================================================
  // LOADING SCREEN
  // ============================================================

  Widget _buildLoadingScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(_statusMessage),
          if (_detectedIss != null) ...[
            const SizedBox(height: 8),
            Text(
              'ISS: $_detectedIss',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ],
      ),
    );
  }

  // ============================================================
  // EHR LAUNCH DETECTED SCREEN
  // ============================================================

  Widget _buildEhrLaunchScreen() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.local_hospital, size: 64, color: Colors.teal),
            const SizedBox(height: 24),
            const Text(
              'EHR Launch Detected',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'This app was launched from an EHR system',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            // Launch parameters card
            Card(
              color: Colors.teal.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.launch, color: Colors.teal),
                        SizedBox(width: 8),
                        Text(
                          'Launch Parameters',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 24),
                    _buildParamRow('iss', _detectedIss ?? 'Not provided'),
                    const SizedBox(height: 8),
                    _buildParamRow('launch', _detectedLaunch ?? 'Not provided'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () => _startEhrLaunch(
                iss: _detectedIss!,
                launchToken: _detectedLaunch!,
              ),
              icon: const Icon(Icons.login),
              label: const Text('Connect to EHR'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SIMULATION SCREEN (no launch params detected)
  // ============================================================

  Widget _buildSimulationScreen() {
    final config = _currentConfig;
    final needsSetup = config.clientId.startsWith('YOUR-');

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.science, size: 64, color: Colors.teal),
            const SizedBox(height: 24),

            const Text(
              'SMART on FHIR EHR Launch Demo',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Simulate an EHR launch or use a launch simulator tool',
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
              onSelectionChanged: (Set<EhrVendor> newSelection) {
                _changeVendor(newSelection.first);
              },
            ),

            const SizedBox(height: 24),

            // How it works
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'How EHR Launch Works',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _buildBullet(
                      'The EHR opens this app\'s URL with '
                      '?iss=<fhir-url>&launch=<token>',
                    ),
                    _buildBullet(
                      'The app uses those parameters to initiate OAuth',
                    ),
                    _buildBullet(
                      'The "launch" scope tells the server to include '
                      'patient/encounter context',
                    ),
                    _buildBullet(
                      'After auth, the app receives the EHR-selected '
                      'patient and encounter',
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Scopes: launch, patient/*.read, openid, fhirUser',
                      style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Launch Simulator links
            _buildSimulatorLinks(),

            const SizedBox(height: 24),

            // Manual parameter entry
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.edit, color: Colors.teal),
                        SizedBox(width: 8),
                        Text(
                          'Manual EHR Launch Simulation',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Enter launch parameters to simulate an EHR launch:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _issController,
                      decoration: const InputDecoration(
                        labelText: 'ISS (FHIR Server URL)',
                        hintText: 'https://fhir.example.com/r4',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.link),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _launchController,
                      decoration: const InputDecoration(
                        labelText: 'Launch Token',
                        hintText: 'Opaque launch token from EHR',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.key),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: needsSetup ? null : _simulateLaunch,
                        icon: const Icon(Icons.rocket_launch),
                        label: Text(
                          'Launch with Parameters '
                          '(${_selectedVendor.label})',
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Setup warning if needed
            if (needsSetup) _buildSetupInstructions(),

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),

            // Test credentials
            _buildTestCredentials(),
          ],
        ),
      ),
    );
  }

  Widget _buildSimulatorLinks() {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.open_in_new, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'EHR Launch Simulators',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Use these tools to simulate an EHR launching your app. '
              'Point the simulator to this app\'s URL:',
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const SelectableText(
                'http://localhost:8080',
                style: TextStyle(fontFamily: 'monospace', fontSize: 14),
              ),
            ),
            const SizedBox(height: 12),
            _buildBullet(
              'Epic Launch Simulator: https://fhir.epic.com/Documentation?docId=launching',
            ),
            _buildBullet('Cerner Code Console: https://code.cerner.com/'),
            _buildBullet(
              'SMART App Launcher: https://launch.smarthealthit.org/',
            ),
          ],
        ),
      ),
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
              'To test ${_selectedVendor.label} EHR launch:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text('1. Register at ${_selectedVendor.portalUrl}'),
            const Text('2. Create an EHR Launch app'),
            const Text(
              '3. Add redirect URI: http://localhost:8080/callback.html',
            ),
            const Text('4. Add your client ID to the code (main.dart)'),
          ],
        ),
      ),
    );
  }

  Widget _buildTestCredentials() {
    final creds = _currentConfig.testCredentials;

    return Column(
      children: [
        Text(
          '${_selectedVendor.label} Test Credentials:',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        if (creds.username != null) Text('Username: ${creds.username}'),
        if (creds.password != null) Text('Password: ${creds.password}'),
        if (creds.note != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              creds.note!,
              style: const TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }

  // ============================================================
  // ERROR SCREEN
  // ============================================================

  Widget _buildErrorScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            const Text(
              'EHR Launch Failed',
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
                if (_detectedIss != null && _detectedLaunch != null)
                  ElevatedButton.icon(
                    onPressed: () => _startEhrLaunch(
                      iss: _detectedIss!,
                      launchToken: _detectedLaunch!,
                    ),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),
                const SizedBox(width: 16),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _error = null;
                      _ehrLaunchDetected = false;
                      _detectedIss = null;
                      _detectedLaunch = null;
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

  // ============================================================
  // DATA SCREEN (after successful auth)
  // ============================================================

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
                const Icon(Icons.check_circle, color: Colors.green, size: 32),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'EHR Launch Successful',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Connected via EHR launch flow',
                        style: TextStyle(color: Colors.green.shade700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // EHR Context card
        _buildContextCard(),

        const SizedBox(height: 16),

        // Patient data
        if (_patient != null) _buildPatientCard(),

        if (_patient != null) const SizedBox(height: 16),

        // Observations
        if (_observations != null && _observations!.isNotEmpty)
          _buildObservationsCard(),
      ],
    );
  }

  Widget _buildContextCard() {
    return Card(
      color: Colors.teal.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.launch, color: Colors.teal, size: 28),
                SizedBox(width: 12),
                Text(
                  'EHR-Provided Context',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 24),
            const Text(
              'These values were provided by the EHR via the '
              'token response after authentication:',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 12),
            _buildInfoRow('Patient ID', _patientId ?? 'Not provided'),
            _buildInfoRow('Encounter ID', _encounterId ?? 'Not provided'),
            _buildInfoRow('FHIR User', _fhirUser ?? 'Not provided'),
            if (_detectedIss != null) _buildInfoRow('ISS', _detectedIss!),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientCard() {
    return Card(
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
                        'Patient ID: $_patientId',
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
    );
  }

  Widget _buildObservationsCard() {
    return Card(
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  obs.valueQuantity?.value?.valueDouble?.toString() ?? 'N/A';
              final unit = obs.valueQuantity?.unit?.valueString ?? '';
              final date = obs.effectiveDateTime?.valueString ?? 'Unknown date';

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
                            style: const TextStyle(fontWeight: FontWeight.bold),
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SHARED WIDGETS
  // ============================================================

  Widget _buildParamRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 70,
          child: Text(
            '$label:',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: SelectableText(
            value,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
            ),
          ),
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
}
