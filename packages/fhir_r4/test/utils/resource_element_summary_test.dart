import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

/// `resourceElementSummary` is generated from the StructureDefinitions in
/// profiles-resources.json. These pin it against the specification's own
/// element tables rather than against the generator's output.
void main() {
  test('every resource type has an entry', () {
    for (final type in R4ResourceType.values) {
      expect(
        resourceElementSummary.containsKey(type.toString()),
        isTrue,
        reason: type.toString(),
      );
    }
  });

  test('Observation: summary, mandatory and modifier per its definition', () {
    // Observation's StructureDefinition (profiles-resources.json, R4):
    // status and code are min 1 max 1; status isModifier; value[x] and
    // effective[x] isSummary, expanded here to their JSON names.
    final obs = resourceElementSummary['Observation']!;
    expect(obs.mandatory, {'status', 'code'});
    expect(obs.modifier, containsAll(['status', 'implicitRules']));
    expect(
      obs.summary,
      containsAll([
        'status',
        'code',
        'subject',
        'valueQuantity',
        'valueCodeableConcept',
        'valueString',
        'effectiveDateTime',
        'effectivePeriod',
        'component',
      ]),
    );
    // Not summary in the definition.
    expect(obs.summary, isNot(contains('text')));
    expect(obs.summary, isNot(contains('note')));
    expect(obs.summary, isNot(contains('referenceRange')));
    expect(obs.summary, isNot(contains('value[x]')));
  });

  test('Patient: no mandatory element; deceased[x] expanded', () {
    final patient = resourceElementSummary['Patient']!;
    expect(patient.mandatory, isEmpty);
    expect(
      patient.summary,
      containsAll([
        'identifier',
        'name',
        'deceasedBoolean',
        'deceasedDateTime',
      ]),
    );
    expect(patient.summary, isNot(contains('contact')));
    expect(patient.modifier, containsAll(['active', 'link']));
  });

  test('Bundle: type is mandatory; entry is summary', () {
    final bundle = resourceElementSummary['Bundle']!;
    expect(bundle.mandatory, {'type'});
    expect(bundle.summary, containsAll(['type', 'entry', 'link', 'total']));
  });
}
