// Epic Sandbox Standalone Launch Demo
//
// This example demonstrates standalone launch with multiple audience types:
// - Patient: Patient-facing app with patient/*.read scopes
// - Clinician: Provider-facing app with user/*.read scopes
// - System: Backend service with system/*.read scopes
//
// Setup:
// 1. Register THREE separate apps at https://fhir.epic.com/:
//    a) Patient app (Patients audience) → get client ID
//    b) Clinician app (Clinicians audience) → get client ID
//    c) System app (Backend Systems audience) → get client ID + secret
//
// 2. For each app, add redirect URI: http://localhost:8080/callback.html
//
// 3. Patient app scopes: patient/*.read, launch/patient, openid, fhirUser
//    Clinician app scopes: user/*.read, launch, openid, fhirUser
//    System app scopes: system/*.read
//
// Test Credentials:
// - Patient: fhircamila / epicepic1
// - Clinician: fhirjason / epicepic1
// - System: Uses client credentials (no user login)
//
// ignore_for_file: avoid_print

library;

import 'package:flutter/material.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:fhir_r4/fhir_r4.dart';

void main() {
  runApp(const EpicStandaloneDemoApp());
}

class EpicStandaloneDemoApp extends StatelessWidget {
  const EpicStandaloneDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epic SMART Standalone Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const EpicStandaloneHomePage(),
    );
  }
}

/// Launch modes corresponding to Epic's audience types
enum LaunchMode {
  patient('Patient', 'Patient-facing app', Icons.person),
  clinician('Clinician', 'Provider-facing app', Icons.medical_services),
  system('System', 'Backend service', Icons.computer);

  const LaunchMode(this.label, this.description, this.icon);
  final String label;
  final String description;
  final IconData icon;
}

class EpicStandaloneHomePage extends StatefulWidget {
  const EpicStandaloneHomePage({super.key});

  @override
  State<EpicStandaloneHomePage> createState() => _EpicStandaloneHomePageState();
}

class _EpicStandaloneHomePageState extends State<EpicStandaloneHomePage> {
  SmartFhirClient? _client;
  LaunchMode _selectedMode = LaunchMode.patient;

  // Data state
  Patient? _patient;
  List<Observation>? _observations;
  Practitioner? _practitioner;
  Map<String, dynamic>? _systemData;
  bool _isLoading = false;
  String? _error;
  String? _contextId; // patientId, practitionerId, etc.

  // Epic Sandbox Configuration
  static const String epicBaseUrl =
      'https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4';
  static const String redirectUri = 'http://localhost:8080/callback.html';

  // TODO: Replace with your actual client IDs from Epic sandbox registration
  static const Map<LaunchMode, String> clientIds = {
    LaunchMode.patient: 'a1ea50fd-fb23-4822-96c7-ada7267325d2',
    LaunchMode.clinician: 'YOUR-CLINICIAN-CLIENT-ID-HERE',
    LaunchMode.system: 'YOUR-SYSTEM-CLIENT-ID-HERE',
  };

  // TODO: For system mode, add your client secret
  static const String systemClientSecret = 'YOUR-CLIENT-SECRET-HERE';

  static const Map<LaunchMode, List<String>> scopes = {
    LaunchMode.patient: [
      'patient/*.read',
      'launch/patient',
      'openid',
      'fhirUser',
      'offline_access', // For refresh tokens
    ],
    LaunchMode.clinician: [
      'user/*.read',
      'launch',
      'openid',
      'fhirUser',
      'online_access', // For EHR launch sessions
    ],
    LaunchMode.system: ['system/*.read'],
  };

  @override
  void initState() {
    super.initState();
    _initializeClient();
  }

  void _initializeClient() {
    final clientId = clientIds[_selectedMode];

    if (clientId == null || clientId.contains('YOUR-')) {
      print('⚠️  Client ID not configured for ${_selectedMode.label} mode');
      print('   Please register an app at https://fhir.epic.com/');
      return;
    }

    if (_selectedMode == LaunchMode.system) {
      // Backend service uses client credentials flow
      _client = SmartFhirClient(
        config: SmartConfig(
          clientId: clientId,
          clientSecret: systemClientSecret.contains('YOUR-')
              ? null
              : systemClientSecret,
          fhirBaseUrl: epicBaseUrl.toFhirUri,
          launchType: LaunchType.backend,
          scopes: scopes[_selectedMode]!,
          enablePkce: false, // Backend services don't use PKCE
          enableOpenId: false,
          // Backend services typically use JWT assertion or client secret
          // for production, use JWT assertion with private key
        ),
      );
    } else {
      // Patient and Clinician use authorization code flow
      _client = SmartFhirClient(
        config: SmartConfig(
          clientId: clientId,
          fhirBaseUrl: epicBaseUrl.toFhirUri,
          redirectUri: Uri.parse(redirectUri),
          launchType: LaunchType.standalone,
          scopes: scopes[_selectedMode]!,
          enablePkce: true,
          enableOpenId: true,
        ),
      );
    }

    print('✓ Epic FHIR Client initialized (${_selectedMode.label} mode)');
    print('  Base URL: $epicBaseUrl');
    print('  Client ID: $clientId');
    if (_selectedMode != LaunchMode.system) {
      print('  Redirect: $redirectUri');
    }
  }

  Future<void> _login() async {
    if (_client == null) {
      setState(() {
        _error = 'Client not configured. Please add your client ID.';
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
      print('\n🔐 Starting Epic authentication (${_selectedMode.label})...');

      // Step 1: Authenticate
      await _client!.login();
      print('✓ Authentication successful!');

      // Step 2: Fetch data based on mode
      await _fetchModeSpecificData();

      setState(() {
        _isLoading = false;
      });

      print('\n✅ Demo completed successfully!');
    } on AuthenticationException catch (e) {
      print('❌ Authentication error: ${e.message}');
      setState(() {
        _error = 'Authentication failed: ${e.message}';
        _isLoading = false;
      });
    } on NetworkException catch (e) {
      print('❌ Network error: ${e.statusCode} - ${e.message}');
      setState(() {
        _error = 'Network error: ${e.message}';
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      print('❌ Unexpected error: $e');
      print('Stack trace:\n$stackTrace');
      setState(() {
        _error = 'Error: $e';
        _isLoading = false;
      });
    }
  }

  Future<void> _fetchModeSpecificData() async {
    switch (_selectedMode) {
      case LaunchMode.patient:
        await _fetchPatientData();
        break;
      case LaunchMode.clinician:
        await _fetchClinicianData();
        break;
      case LaunchMode.system:
        await _fetchSystemData();
        break;
    }
  }

  Future<void> _fetchPatientData() async {
    // Get patient ID from token context
    _contextId = _client!.patientContext;
    print('✓ Patient ID from token: $_contextId');

    if (_contextId == null) {
      throw Exception('No patient ID in token response');
    }

    // Fetch patient demographics
    print('\n📊 Fetching patient data...');
    final patientResponse = await _client!.get(
      Uri.parse('$epicBaseUrl/Patient/$_contextId'),
    );

    if (patientResponse.statusCode == 200) {
      _patient = Patient.fromJsonString(patientResponse.body);
      print('✓ Patient loaded: ${_patient!.name?.first.text?.valueString}');
    } else {
      throw Exception('Failed to load patient: ${patientResponse.statusCode}');
    }

    // Fetch observations
    print('\n🩺 Fetching observations...');
    final obsResponse = await _client!.get(
      Uri.parse(
        '$epicBaseUrl/Observation?'
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
      print('✓ Loaded ${_observations!.length} observations');
    }
  }

  Future<void> _fetchClinicianData() async {
    // Get practitioner/user ID from token context
    _contextId = _client!.userContext ?? _client!.practitionerContext;
    print('✓ User ID from token: $_contextId');

    if (_contextId == null) {
      // Some EHRs provide this in fhirUser claim
      final fhirUser = _client!.fhirUser;
      if (fhirUser != null) {
        print('✓ FHIR User: $fhirUser');
        // Extract ID from reference like "Practitioner/123"
        if (fhirUser.contains('/')) {
          _contextId = fhirUser.split('/').last;
        }
      }
    }

    if (_contextId != null) {
      // Fetch practitioner info
      print('\n👨‍⚕️ Fetching practitioner data...');
      final practResponse = await _client!.get(
        Uri.parse('$epicBaseUrl/Practitioner/$_contextId'),
      );

      if (practResponse.statusCode == 200) {
        _practitioner = Practitioner.fromJsonString(practResponse.body);
        print(
          '✓ Practitioner loaded: ${_practitioner!.name?.first.text?.valueString}',
        );
      }
    }

    // Clinician can search for patients (demonstrate user-level access)
    print('\n📋 Fetching recent patients (user-level access)...');
    final patientResponse = await _client!.get(
      Uri.parse(
        '$epicBaseUrl/Patient?'
        '_count=5&'
        '_sort=-_lastUpdated',
      ),
    );

    if (patientResponse.statusCode == 200) {
      final bundle = Bundle.fromJsonString(patientResponse.body);
      final patients =
          bundle.entry?.map((e) => e.resource).whereType<Patient>().toList() ??
          [];
      print('✓ Loaded ${patients.length} recent patients');

      // Store first patient for display
      if (patients.isNotEmpty) {
        _patient = patients.first;
      }
    }
  }

  Future<void> _fetchSystemData() async {
    // Backend service has system-level access
    print('\n🖥️  Fetching system-level data...');

    // Example: Get capability statement
    final capabilityResponse = await _client!.get(
      Uri.parse('$epicBaseUrl/metadata'),
    );

    if (capabilityResponse.statusCode == 200) {
      print('✓ CapabilityStatement loaded');
    }

    // Example: Search across all patients (within permissions)
    final patientResponse = await _client!.get(
      Uri.parse(
        '$epicBaseUrl/Patient?'
        '_count=10&'
        '_sort=-_lastUpdated',
      ),
    );

    if (patientResponse.statusCode == 200) {
      final bundle = Bundle.fromJsonString(patientResponse.body);
      final totalPatients = bundle.total?.value;
      print('✓ System can access $totalPatients patients');

      _systemData = {
        'totalPatients': totalPatients,
        'searchResults': bundle.entry?.length ?? 0,
      };
    }

    // Get statistics
    print('\n📊 System-level statistics...');
    final obsResponse = await _client!.get(
      Uri.parse(
        '$epicBaseUrl/Observation?'
        '_summary=count',
      ),
    );

    if (obsResponse.statusCode == 200) {
      final bundle = Bundle.fromJsonString(obsResponse.body);
      final totalObs = bundle.total?.value;
      print('✓ Total observations in system: $totalObs');

      _systemData?['totalObservations'] = totalObs;
    }
  }

  Future<void> _logout() async {
    try {
      print('\n👋 Logging out...');
      await _client?.logout();
      print('✓ Logged out successfully');

      setState(() {
        _patient = null;
        _practitioner = null;
        _observations = null;
        _systemData = null;
        _contextId = null;
      });
    } catch (e) {
      print('❌ Logout error: $e');
    }
  }

  void _changeMode(LaunchMode newMode) {
    setState(() {
      _selectedMode = newMode;
      _patient = null;
      _practitioner = null;
      _observations = null;
      _systemData = null;
      _contextId = null;
      _error = null;
      _initializeClient();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Epic SMART Standalone Demo'),
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
            Text('Authenticating with Epic (${_selectedMode.label})...'),
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
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Epic Logo
            Image.network(
              'https://fhir.epic.com/Content/Images/epic-logo.svg',
              height: 80,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.local_hospital, size: 80),
            ),
            const SizedBox(height: 32),

            // Title
            const Text(
              'Epic SMART Standalone Demo',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Test standalone launch with different audience types',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48),

            // Mode Selection
            const Text(
              'Select Launch Mode:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            SegmentedButton<LaunchMode>(
              segments: LaunchMode.values.map((mode) {
                return ButtonSegment(
                  value: mode,
                  label: Text(mode.label),
                  icon: Icon(mode.icon),
                );
              }).toList(),
              selected: {_selectedMode},
              onSelectionChanged: (Set<LaunchMode> newSelection) {
                _changeMode(newSelection.first);
              },
            ),

            const SizedBox(height: 16),

            // Mode description
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(_selectedMode.icon, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text(
                          _selectedMode.label,
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
                      'Scopes: ${scopes[_selectedMode]!.join(", ")}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Login button
            ElevatedButton.icon(
              onPressed: _login,
              icon: const Icon(Icons.login),
              label: Text('Connect as ${_selectedMode.label}'),
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

            const SizedBox(height: 24),

            // Setup instructions
            _buildSetupInstructions(),
          ],
        ),
      ),
    );
  }

  Widget _buildTestCredentials() {
    switch (_selectedMode) {
      case LaunchMode.patient:
        return const Column(
          children: [
            Text(
              'Test Patient Credentials:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Username: fhircamila'),
            Text('Password: epicepic1'),
          ],
        );
      case LaunchMode.clinician:
        return const Column(
          children: [
            Text(
              'Test Clinician Credentials:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Username: fhirjason'),
            Text('Password: epicepic1'),
          ],
        );
      case LaunchMode.system:
        return const Column(
          children: [
            Text('System Mode:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'Uses client credentials flow',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            Text(
              'No user login required',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        );
    }
  }

  Widget _buildSetupInstructions() {
    final clientId = clientIds[_selectedMode];
    final needsSetup = clientId == null || clientId.contains('YOUR-');

    if (!needsSetup) {
      return const SizedBox.shrink();
    }

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
              'To test ${_selectedMode.label} mode:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text('1. Register at https://fhir.epic.com/'),
            Text('2. Create a "${_selectedMode.label}" audience app'),
            const Text('3. Add your client ID to the code'),
            if (_selectedMode == LaunchMode.system)
              const Text('4. Add your client secret'),
          ],
        ),
      ),
    );
  }

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
        // Mode indicator
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
                        '${_selectedMode.label} Mode Active',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'Successfully authenticated with Epic FHIR API',
                        style: TextStyle(color: Colors.green),
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
      // Patient Demographics Card
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

      // Observations Card
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
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
      // Practitioner Info Card
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

      // User-level access demo
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.people, size: 32, color: Colors.blue),
                  SizedBox(width: 16),
                  Text(
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
      // System-level access card
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.computer, size: 32, color: Colors.purple),
                  SizedBox(width: 16),
                  Text(
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

      // System statistics
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
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _client?.close();
    super.dispose();
  }
}
