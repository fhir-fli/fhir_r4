import 'package:fhir_r4/fhir_r4.dart';

import 'create_new_patient.dart';
import 'ids.dart';
import 'scopes.dart';

Future hapiRequest() async {
  final FhirClient client = FhirClient(
    fhirUri: FhirUri(Uri.encodeFull(Api.hapiUrl)),
    scopes: scopes.scopesList(),
  );

  try {
    if (client.fhirUri.value != null) {
      final Patient newPatient = createNewPatient();
      print('Patient to be uploaded:\n${newPatient.toJson()}');
      final FhirRequest request1 = FhirRequest.create(
        base: client.fhirUri.value!,
        //?? Uri.parse('127.0.0.1'),
        resource: newPatient,
        client: client,
      );

      FhirId? newId;
      try {
        final Resource response =
            await request1.request(headers: <String, String>{});
        print('Response from upload:\n${response.toJson()}');
        newId = response.id == null ? null : FhirId(response.id!);
      } catch (e) {
        print(e);
      }
      if (newId is! FhirId) {
        print(newId);
      } else {
        final FhirRequest request2 = FhirRequest.read(
          base: client.fhirUri.value ?? Uri.parse('127.0.0.1'),
          type: R4ResourceType.Patient,
          id: newId.toString(),
          client: client,
        );
        try {
          final Resource response =
              await request2.request(headers: <String, String>{});
          print('Response from read:\n${response.toJson()}');
        } catch (e) {
          print(e);
        }
      }
    }
  } catch (e, stack) {
    print('Error $e');
    print('Stack $stack');
  }
}
