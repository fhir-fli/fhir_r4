// ignore_for_file: invalid_annotation_target, always_specify_types

// Package imports:
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void requestTest() {
  group('FHIR Bulk Request Patient:', () {
    test('Basic Patient Bulk Request', () async {
      final BulkRequest request = BulkRequest.patient(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
      );
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/Patient/$export');
    });
    test('Patient Bulk Request with Allergies, Immunization, & Medication',
        () async {
      final request = BulkRequest.patient(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          types: [
            WhichResource(R4ResourceType.AllergyIntolerance, null),
            WhichResource(R4ResourceType.Medication, null),
            WhichResource(R4ResourceType.Immunization, null),
          ]);
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/Patient/$export?_type=AllergyIntolerance,Medication,Immunization');
    });

    test('Patient Bulk Request with Practioner & Organization Ids', () async {
      final request = BulkRequest.patient(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          types: [
            WhichResource(R4ResourceType.Practitioner, FhirId('abcdef')),
            WhichResource(R4ResourceType.Organization, FhirId('ghijkl')),
          ]);
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/Patient/$export?_type=Practitioner/abcdef,Organization/ghijkl');
    });
    test('Patient Bulk Request with Practioner & Organization Ids, since',
        () async {
      final request = BulkRequest.patient(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          since: FhirDateTime('2021-01-01'),
          types: [
            WhichResource(R4ResourceType.Practitioner, FhirId('abcdef')),
            WhichResource(R4ResourceType.Organization, FhirId('ghijkl')),
          ]);
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/Patient/$export?_since=2021-01-01&_type=Practitioner/abcdef,Organization/ghijkl');
    });
  });

  group('FHIR Bulk Request Group:', () {
    test('Basic Group Bulk Request', () async {
      final request = BulkRequest.group(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        id: FhirId('12345'),
      );
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/Group/12345/$export');
    });
  });

  group('FHIR Bulk Request Everything:', () {
    test('Basic System Bulk Request', () async {
      final request = BulkRequest.system(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
      );
      final response = await request.request(headers: {'test': 'header'});
      expect((response[0] as OperationOutcome?)?.issue[0].details?.text,
          r'http://hapi.fhir.org/baseR4/$export');
    });
  });
}
