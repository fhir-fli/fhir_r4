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
    final currentUri = Uri.base;
    final fhirCallback = Uri(
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
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: Image.asset('assets/hapi.png'),
                  onPressed: () async => await hapiRequest()),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: Image.asset('assets/meld.png'),
                  onPressed: () async => await meldRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: const Text(
                    'Epic Patient',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async =>
                      await epicPatientRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: const Text(
                    'Epic Clinician',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async =>
                      await epicClinicianRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: Column(
                    children: [
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
                  onPressed: () async =>
                      await cernerPatientRequest(fhirCallback)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.black)),
                  ),
                  child: Image.asset('assets/gcp.png'),
                  onPressed: () async => await gcsRequest(fhirCallback)),
            ],
          ),
        ),
      ),
    );
  }
}
