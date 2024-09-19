// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';

import 'request.dart';
import 'scopes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'Demo', home: DemoPage(Uri.base.queryParameters));
}

class DemoPage extends StatelessWidget {
  const DemoPage(this.queryParameters, {super.key});

  final Map<String, String> queryParameters;
  @override
  Widget build(BuildContext context) {
    print('base: ${Uri.base}');
    if (queryParameters.isNotEmpty) {
      SmartFhirClient? client;
      if (queryParameters['iss']?.contains('epic') ?? false) {
        client = EpicFhirClient.fromLaunchParameters(
          base: Uri.base,
          queryParameters: queryParameters,
          scopes: epicUserScopes.scopesList(),
        );
      } else if (queryParameters['iss']?.contains('cerner') ?? false) {
        client = SmartFhirClient.fromLaunchParameters(
          Uri.base,
          queryParameters,
          scopes: cernerPatientScopes.scopesList(),
        );
      } else {
        client = SmartFhirClient.fromLaunchParameters(
          Uri.base,
          queryParameters,
          scopes: scopes.scopesList(),
        );
      }
      final result = request(client);

      return MaterialApp(
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: FutureBuilder<Resource?>(
              future: result,
              builder:
                  (BuildContext context, AsyncSnapshot<Resource?> snapshot) {
                List<Widget> children;
                if (snapshot.hasData && snapshot.data is Patient) {
                  children = <Widget>[
                    const Text('Request was successful'),
                    Text(
                        'Last Name: ${(snapshot.data as Patient).name?[0].family}'),
                    Text(
                        'Given Names: ${(snapshot.data as Patient).name?[0].given?.join(" ")}'),
                    Text('ID: ${(snapshot.data as Patient).id}'),
                    Text('ISS: ${client?.fhirUri}'),
                  ];
                } else {
                  children = [
                    const Center(
                      child: Text(
                        'App Has Not Yet Launched',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'While you wait, here\'s a picture of a tree',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    const Image(
                      image: AssetImage('assets/tree.jpg'),
                    ),
                  ];
                }
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  ),
                );
              },
            ),
          ),
        ),
      );
    } else {
      return const MaterialApp(
        home: Scaffold(
          body: Padding(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'App Has Not Yet Launched\n'
                      'While you wait, here\'s a picture of a tree',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 36),
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/tree.jpg'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
