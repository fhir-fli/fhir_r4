import 'package:fhir_r4/fhir_r4.dart';

import 'ids.dart';
import 'create_new_patient.dart';

Future gcsRequest() async {
  final client = GcpFhirClient(
    fhirUri: FhirUri(Api.gcsUrl),
  );

  await client.login();

  final newPatient = createNewPatient();
  print('Patient to be uploaded: ${newPatient.toJson()}');
  if (client.fhirUri.value != null) {
    final request1 = FhirRequest.create(
      base: client.fhirUri.value!,
      resource: newPatient,
      client: client,
    );

    FhirId? newId;
    try {
      final response = await request1.request(headers: {});
      newId = response.id;
      print('Response from upload: ${response.toJson()}');
    } catch (e) {
      print(e);
    }

    if (newId is! FhirId) {
      print(newId);
    } else {
      final request2 = FhirRequest.read(
        base: client.fhirUri.value!,
        type: R5ResourceType.Patient,
        id: newId,
        client: client,
      );
      try {
        final response2 = await request2.request(headers: {});
        print('Response from read:\n${response2.toJson()}');
      } catch (e) {
        print(e);
      }
    }
  }
}
