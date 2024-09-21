import 'package:flutter/material.dart';

// import 'cerner_clinician.dart';
import 'cerner_patient.dart';
import 'epic_clinician.dart';
import 'epic_patient.dart';
import 'gcs_request.dart';
import 'hapi_request.dart';
import 'meld_request.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Demo', home: DemoPage());
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri currentUri = Uri.base;
    final Uri fhirCallback = Uri(
      host: currentUri.host,
      scheme: currentUri.scheme,
      port: currentUri.port,
      path: '/redirect.html',
    );
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
          child: GridView.count(
            childAspectRatio: 1.5,
            crossAxisCount: 3,
            children: <Widget>[
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: Image.asset('assets/hapi.png'),
                  onPressed: () async => hapiRequest()),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: Image.asset('assets/meld.png'),
                  onPressed: () async => meldRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: const Text(
                    'Epic Patient',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async => epicPatientRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: const Text(
                    'Epic Clinician',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async => epicClinicianRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/cerner.png'),
                      const Text(
                        'Patient',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () async => cernerPatientRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(const BorderSide()),
                  ),
                  child: Image.asset('assets/gcp.png'),
                  onPressed: () async => gcsRequest(fhirCallback)),
            ],
          ),
        ),
      ),
    );
  }
}
