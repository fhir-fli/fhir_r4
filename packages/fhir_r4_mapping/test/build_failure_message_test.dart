import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:test/test.dart';

/// A map that never sets an element the target type requires. `build()` is
/// `Type.fromJson(toJson())`, which casts a required list (StructureMap's
/// `group`; most required scalars come through as null), so the failure
/// used to surface as a bare type error in the OperationOutcome, naming
/// neither the type nor what the map did set.
void main() {
  test('a target missing a required element is named, with what was set',
      () async {
    const mapText = '''
map "http://example.org/StructureMap/id-only" = "IdOnly"

uses "http://hl7.org/fhir/StructureDefinition/Patient" as source
uses "http://hl7.org/fhir/StructureDefinition/StructureMap" as target

group main(source src : Patient, target tgt : StructureMap) {
  src.id as id -> tgt.id = id;
}
''';
    final map = (await StructureMapParser.create()).parse(mapText, 'id-only');
    final result = await fhirMappingEngine(
      Patient(id: 'p1'.toFhirString).toBuilder,
      map,
      CanonicalResourceCache(),
      StructureMapBuilder.empty(),
    );
    expect(result, isA<OperationOutcome>());
    final diagnostics =
        (result! as OperationOutcome).issue.single.diagnostics?.valueString;
    expect(diagnostics, contains('did not produce a valid StructureMap'));
    // What the map set, so the author sees which required element is not
    // in the list (the empty builder carries its own defaults too).
    expect(diagnostics, contains('It set: '));
    expect(diagnostics, contains('id'));
    expect(diagnostics, contains('An element the type requires is missing'));
  });
}
