// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';

Future<Resource?> request(SmartFhirClient client,
    [bool isPatient = true]) async {
  await client.login();

  if (client.fhirUri.value != null) {
    if (isPatient && client.patientId != null) {
      print('Patient launch context Id: ${client.patientId}');
      if (client.patientId != null) {
        final request2 = FhirRequest.read(
          base: client.fhirUri.value ?? Uri.parse('127.0.0.1'),
          type: R4ResourceType.Patient,
          id: client.patientId!.toString(),
          client: client,
        );

        final response = await request2.request();
        print('Response from read:\n${response.toJson()}');
        return response;
      }
    } else {
      print('Patient to be uploaded:\n${_newPatient.toJson()}');
      final request1 = FhirRequest.create(
        base: client.fhirUri.value!,
        resource: _newPatient,
        client: client,
      );

      FhirId? newId;

      final response = await request1.request();
      print('Response from upload:\n${response.toJson()}');
      newId = response.id == null ? null : FhirId(response.id!);

      if (newId != null) {
        final request2 = FhirRequest.read(
          base: client.fhirUri.value ?? Uri.parse('127.0.0.1'),
          type: R4ResourceType.Patient,
          id: newId.toString(),
          client: client,
        );

        final response = await request2.request();
        print('Response from read:\n${response.toJson()}');
      }
    }
  }
  return null;
}

final _newPatient = Patient.fromJson({
  "resourceType": "Patient",
  "identifier": [
    {
      "type": {
        "coding": [
          {"system": "http://hl7.org/fhir/sid/us-ssn", "code": "SB"}
        ]
      },
      "system": "urn:oid:2.16.840.1.113883.4.1",
      "value": "444114567"
    }
  ],
  "name": [
    {
      "use": "usual",
      "text": "Derrick Lin",
      "family": "Lin",
      "given": ["Derrick"]
    }
  ],
  "gender": "male",
  "birthDate": "1973-06-03",
});
