// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';

import 'ids.dart';
import 'scopes.dart';

Future<void> epicPatientRequest(Uri fhirCallback) async {
  final EpicFhirClient client = EpicFhirClient(
    fhirUri: FhirUri(Api.epicUrl),
    clientId: Api.epicPatientClientId,
    redirectUri: FhirUri(fhirCallback),
    scopes: scopes.scopesList(),
  );

  print('created client');

  await client.login();

  print('logged in');

  if (client.fhirUri.value != null && client.patientId != null) {
    final FhirRequest request = FhirRequest.read(
      base: client.fhirUri.value ?? Uri.parse('127.0.0.1'),
      type: R4ResourceType.Patient,
      id: client.patientId!.toString(),
      client: client,
    );
    try {
      final Resource response = await request.request();
      print(jsonEncode(response.toJson()));
      print('Response from read:\n${response.toJson()}');
    } catch (e) {
      print(e);
    }
  }
}
