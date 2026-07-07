// Validate a FHIR R4 resource with fhir_r4_validation.
//
// The engine validates a resource against a StructureDefinition — checking
// structure, cardinality, value-set bindings, extensions and invariants —
// and returns results you can render as an OperationOutcome.
//
// The engine validates against the StructureDefinition(s) you give it: pass
// one via `structureDefinition:`, or preload a CanonicalResourceCache with
// the official spec profiles. This example supplies a tiny inline profile so
// it is fully self-contained and runnable — it declares that Patient.gender
// is required (min = 1), then validates a Patient that omits it, so the
// validator surfaces exactly one cardinality error.
//
// Run: dart run example/main.dart
// ignore_for_file: avoid_print
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';

Future<void> main() async {
  // A Patient that omits the (profile-)required gender element.
  const patient = Patient();

  // Minimal profile: Patient.gender is required. In real use you would pass
  // the official Patient StructureDefinition, or preload the full spec
  // profiles into a CanonicalResourceCache.
  final profile = StructureDefinition(
    id: 'Patient'.toFhirString,
    url: 'http://hl7.org/fhir/StructureDefinition/Patient'.toFhirCanonical,
    name: 'Patient'.toFhirString,
    type: 'Patient'.toFhirUri,
    kind: StructureDefinitionKind.resource,
    abstract_: false.toFhirBoolean,
    status: PublicationStatus.active,
    snapshot: StructureDefinitionSnapshot(
      element: [
        ElementDefinition(path: 'Patient'.toFhirString),
        ElementDefinition(
          path: 'Patient.gender'.toFhirString,
          min: 1.toFhirUnsignedInt,
          max: '1'.toFhirString,
          type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        ),
      ],
    ),
  );

  final engine = FhirValidationEngine();
  final results = await engine.validateFhirResource(
    structureToValidate: patient,
    structureDefinition: profile,
  );

  // Render as a FHIR OperationOutcome (issues grouped error/warning/info).
  print(results.prettyPrint());
  print('\n${results.results.length} validation diagnostic(s).');
}
