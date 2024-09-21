// ignore_for_file: avoid_print

import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';
import 'create_new_patient.dart';

import 'ids.dart';
import 'scopes.dart';

Future<void> epicClinicianRequest(Uri fhirCallback) async {
  final EpicFhirClient client = EpicFhirClient(
    fhirUri: FhirUri(Api.epicUrl),
    clientId: Api.epicClinicianClientId,
    redirectUri: FhirUri(fhirCallback),
    scopes: scopes.scopesList(),
  );

  print('created client');

  await client.login();

  print('logged in');

  if (client.fhirUri.value != null) {
    final Patient patientToUpload = createNewPatient();
    print('Patient to be uploaded:\n${patientToUpload.toJson()}');
    final FhirRequest request1 = FhirRequest.create(
      base: client.fhirUri.value!,
      resource: patientToUpload,
      client: client,
    );

    final Resource response = await request1.request();
    print('Response from upload:\n${response.toJson()}');
    // String? newId = response.id;
  }
}

String generateRandomString(int len) {
  final Random r = Random();
  const String chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List<String>.generate(
      len, (int index) => chars[r.nextInt(chars.length)]).join();
}
