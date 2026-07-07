// Query FHIR R4 resources with FHIRPath using fhir_r4_path.
//
// fhir_r4_path is the R4 binding over the model-independent `fhirpath`
// engine: build a FHIRPathEngine (model-aware via WorkerContext), parse an
// expression once, then evaluate it against any resource. Each evaluation
// returns a List<FhirBase> — FHIRPath always yields a collection.
//
// Run: dart run example/main.dart
// ignore_for_file: avoid_print
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

Future<void> main() async {
  // Create the engine once; parse-once / evaluate-many is the intended use.
  final engine = await FHIRPathEngine.create(WorkerContext());

  final patient = Patient(
    id: 'example'.toFhirString,
    active: true.toFhirBoolean,
    name: [
      HumanName(
        family: 'Rossi'.toFhirString,
        given: ['Mario'.toFhirString],
      ),
    ],
    telecom: [
      ContactPoint(
        system: ContactPointSystem.email,
        use: ContactPointUse.mobile,
        rank: FhirPositiveInt(3),
      ),
    ],
  );

  // Evaluate a handful of expressions against the patient.
  for (final expression in <String>[
    'Patient.active',
    'name.given.first()',
    "name.family = 'Rossi'",
    'telecom.rank > 1',
    "'abcdefg'.endsWith('efg')",
  ]) {
    final result = await engine.evaluate(patient, engine.parse(expression));
    print('$expression  =>  $result');
  }
}
