import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

/// The engine looks every canonical up in a [ResourceCache]. Until this seam
/// existed it built its own empty [CanonicalResourceCache] per call and there
/// was no way to give it one, so `validateFhirMap` on any resource answered
/// "No StructureDefinition found for resourceType: X" and a resource with a
/// bound element threw "Resource not found at `<url>`". A caller with its own
/// store of canonicals can now supply it.
void main() {
  final patientDefinition = StructureDefinition.fromJson({
    'resourceType': 'StructureDefinition',
    'id': 'Patient',
    'url': 'http://hl7.org/fhir/StructureDefinition/Patient',
    'name': 'Patient',
    'status': 'active',
    'kind': 'resource',
    'abstract': false,
    'type': 'Patient',
    'baseDefinition': 'http://hl7.org/fhir/StructureDefinition/DomainResource',
    'derivation': 'specialization',
    'snapshot': {
      'element': [
        {'id': 'Patient', 'path': 'Patient', 'min': 0, 'max': '*'},
        {
          'id': 'Patient.id',
          'path': 'Patient.id',
          'min': 0,
          'max': '1',
          'type': [
            {'code': 'http://hl7.org/fhirpath/System.String'},
          ],
        },
      ],
    },
  });

  test('the default cache resolves nothing, and says so', () async {
    final results = await FhirValidationEngine().validateFhirMap(
      structureToValidate: {'resourceType': 'Patient', 'id': 'p1'},
    );

    expect(
      results.results.map((r) => r.diagnostics),
      contains(contains('No StructureDefinition found for resourceType')),
    );
  });

  test('a supplied cache is what the type is looked up in', () async {
    final cache = CanonicalResourceCache()..see(patientDefinition);

    final results = await FhirValidationEngine().validateFhirMap(
      structureToValidate: {'resourceType': 'Patient', 'id': 'p1'},
      resourceCache: cache,
    );

    expect(
      results.results.map((r) => r.diagnostics),
      isNot(contains(contains('No StructureDefinition found'))),
    );
  });

  test('validateFhirString passes the cache through', () async {
    final cache = CanonicalResourceCache()..see(patientDefinition);

    final results = await FhirValidationEngine().validateFhirString(
      structureToValidate: '{"resourceType":"Patient","id":"p1"}',
      resourceCache: cache,
    );

    expect(
      results.results.map((r) => r.diagnostics),
      isNot(contains(contains('No StructureDefinition found'))),
    );
  });

  test('validateFhirResource passes the cache through', () async {
    final cache = CanonicalResourceCache()..see(patientDefinition);

    final results = await FhirValidationEngine().validateFhirResource(
      structureToValidate: Patient(id: 'p1'.toFhirString),
      resourceCache: cache,
    );

    expect(
      results.results.map((r) => r.diagnostics),
      isNot(contains(contains('No StructureDefinition found'))),
    );
  });
}
