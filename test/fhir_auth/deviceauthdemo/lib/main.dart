import 'package:flutter/material.dart';

import 'gcs_request.dart';
import 'hapi_request.dart';
import 'meld_request.dart';

Future<dynamic> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SizedBox(
              width: 300,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: <Widget>[
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        side: MaterialStateProperty.all(const BorderSide()),
                      ),
                      child: Image.asset('assets/hapi.png'),
                      onPressed: () async => hapiRequest()),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        side: MaterialStateProperty.all(const BorderSide()),
                      ),
                      child: Image.asset('assets/meld.png'),
                      onPressed: () async => meldRequest()),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        side: MaterialStateProperty.all(const BorderSide()),
                      ),
                      child: Image.asset('assets/gcp.png'),
                      onPressed: () async => gcsRequest()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
