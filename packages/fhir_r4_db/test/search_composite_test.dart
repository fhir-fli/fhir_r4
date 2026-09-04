import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Composite parameters, R4B §3.1.1.4.17, with the section's own examples.
/// The point of a composite is "find a combination of key/value, not an
/// intersection of separate matches on key and value": the parts must hold
/// of the SAME element.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
  });

  tearDown(() => db.close());

  Future<List<String>> find(
    R4ResourceType type,
    String key,
    String value, {
    int? count = 10,
  }) async {
    final found = await dao.search(
      resourceType: type,
      searchParameters: {
        key: [value],
      },
      count: count,
    );
    if (count != null) {
      expect(dao.lastSearchPagedInSql, isTrue, reason: '$key=$value');
    }
    return found.map((r) => r.id!.valueString!).toList()..sort();
  }

  test('evaluateComponentPath walks the subset the definitions use', () {
    final obs = Observation.fromJson({
      'resourceType': 'Observation',
      'id': 'x',
      'status': 'final',
      'code': {
        'coding': [
          {'system': 'http://loinc.org', 'code': '2823-3'},
        ],
      },
      'valueQuantity': {'value': 5.5, 'code': 'mmol/L'},
    });
    expect(evaluateComponentPath(obs, 'code').single, isA<CodeableConcept>());
    expect(
      evaluateComponentPath(obs, 'value.as(Quantity)').single,
      isA<Quantity>(),
    );
    expect(evaluateComponentPath(obs, 'value.as(Range)'), isEmpty);
    expect(
      evaluateComponentPath(
        obs,
        '(value as CodeableConcept) | (value as boolean)',
      ),
      isEmpty,
    );
    expect(
      evaluateComponentPath(obs, 'value.as(Quantity) | value.as(Range)').single,
      isA<Quantity>(),
    );
    final variant = obs;
    expect(
      evaluateComponentPath(variant, '%resource.code', root: obs).single,
      isA<CodeableConcept>(),
    );
    expect(evaluateComponentPath(variant, '%resource.code'), isEmpty);
  });

  test('the parts must hold of the same element: component-code-value-quantity',
      () async {
    // "GET [base]/Observation?component-code-value-quantity=
    // http://loinc.org|8480-6$lt60: Search for all the observations with a
    // systolic blood pressure < 60." Here the systolic is 120 and the
    // diastolic 55: the diastolic's 55 must not satisfy the systolic's code.
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'bp',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://loinc.org', 'code': '85354-9'},
          ],
        },
        'component': [
          {
            'code': {
              'coding': [
                {'system': 'http://loinc.org', 'code': '8480-6'},
              ],
            },
            'valueQuantity': {'value': 120, 'code': 'mm[Hg]'},
          },
          {
            'code': {
              'coding': [
                {'system': 'http://loinc.org', 'code': '8462-4'},
              ],
            },
            'valueQuantity': {'value': 55, 'code': 'mm[Hg]'},
          },
        ],
      }),
    );
    const key = 'component-code-value-quantity';
    const obs = R4ResourceType.Observation;
    expect(await find(obs, key, r'http://loinc.org|8480-6$lt60'), isEmpty);
    expect(await find(obs, key, r'http://loinc.org|8462-4$lt60'), ['bp']);
    expect(await find(obs, key, r'http://loinc.org|8480-6$gt100'), ['bp']);
    expect(await find(obs, key, r'8480-6$120'), ['bp']);
    // The general path agrees.
    expect(
      await find(obs, key, r'http://loinc.org|8480-6$lt60', count: null),
      isEmpty,
    );
    expect(
      await find(obs, key, r'http://loinc.org|8462-4$lt60', count: null),
      ['bp'],
    );
  });

  test('code-value-quantity on the resource itself, with units', () async {
    // "GET [base]/DiagnosticReport?result.code-value-quantity=
    // http://loinc.org|2823-3$gt5.4|http://unitsofmeasure.org|mmol/L:
    // Search for all diagnostic reports that contain on observation with a
    // potassium value of >5.4 mmol/L (UCUM)" — the observation half of
    // that, then through the chain.
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'k',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://loinc.org', 'code': '2823-3'},
          ],
        },
        'valueQuantity': {
          'value': 5.9,
          'system': 'http://unitsofmeasure.org',
          'code': 'mmol/L',
        },
      }),
    );
    await dao.saveResource(
      DiagnosticReport.fromJson({
        'resourceType': 'DiagnosticReport',
        'id': 'dr',
        'status': 'final',
        'code': {'text': 'Chem panel'},
        'result': [
          {'reference': 'Observation/k'},
        ],
      }),
    );
    const key = 'code-value-quantity';
    expect(
      await find(
        R4ResourceType.Observation,
        key,
        r'http://loinc.org|2823-3$gt5.4|http://unitsofmeasure.org|mmol/L',
      ),
      ['k'],
    );
    expect(
      await find(
        R4ResourceType.Observation,
        key,
        r'http://loinc.org|2823-3$gt5.4|http://unitsofmeasure.org|mg',
      ),
      isEmpty,
    );
    expect(
      await find(
        R4ResourceType.DiagnosticReport,
        'result.code-value-quantity',
        r'http://loinc.org|2823-3$gt5.4|http://unitsofmeasure.org|mmol/L',
      ),
      ['dr'],
    );
  });

  test(r'token$token: Group characteristic-value, with OR of sequences',
      () async {
    // "GET [base]/Group?characteristic-value=gender$mixed" and
    // "characteristic-value=gender$mixed,owner$Eve".
    await dao.saveResource(
      FhirGroup.fromJson({
        'resourceType': 'Group',
        'id': 'g',
        'type': 'person',
        'actual': true,
        'characteristic': [
          {
            'code': {
              'coding': [
                {'code': 'gender'},
              ],
            },
            'valueCodeableConcept': {
              'coding': [
                {'code': 'mixed'},
              ],
            },
            'exclude': false,
          },
          {
            'code': {
              'coding': [
                {'code': 'owner'},
              ],
            },
            'valueBoolean': true,
            'exclude': false,
          },
        ],
      }),
    );
    const group = R4ResourceType.FhirGroup;
    expect(await find(group, 'characteristic-value', r'gender$mixed'), ['g']);
    expect(await find(group, 'characteristic-value', r'gender$true'), isEmpty);
    expect(await find(group, 'characteristic-value', r'owner$true'), ['g']);
    expect(
      await find(group, 'characteristic-value', r'gender$female,owner$true'),
      ['g'],
    );
    expect(
      await find(group, 'characteristic-value', r'gender$female,owner$false'),
      isEmpty,
    );
  });

  test('context-type-value on a useContext', () async {
    // "GET [base]/Questionnaire?context-type-value=focus$http://snomed.info/
    // sct|408934002".
    await dao.saveResource(
      Questionnaire.fromJson({
        'resourceType': 'Questionnaire',
        'id': 'q',
        'status': 'active',
        'useContext': [
          {
            'code': {'code': 'focus'},
            'valueCodeableConcept': {
              'coding': [
                {'system': 'http://snomed.info/sct', 'code': '408934002'},
              ],
            },
          },
          {
            'code': {'code': 'age'},
            'valueRange': {
              'low': {'value': 18},
            },
          },
        ],
      }),
    );
    const q = R4ResourceType.Questionnaire;
    expect(
      await find(
        q,
        'context-type-value',
        r'focus$http://snomed.info/sct|408934002',
      ),
      ['q'],
    );
    expect(
      await find(
        q,
        'context-type-value',
        r'age$http://snomed.info/sct|408934002',
      ),
      isEmpty,
    );
    // A Range under context-type-quantity, open above.
    expect(await find(q, 'context-type-quantity', r'age$gt40'), ['q']);
    expect(await find(q, 'context-type-quantity', r'age$lt10'), isEmpty);
  });

  test('Location near: latitude|longitude|distance|units', () async {
    // The definition: "near to, or within a specified distance of, the
    // provided coordinates expressed as [latitude]|[longitude]|[distance]|
    // [units] … If the units are omitted, then kms should be assumed."
    // From Emory (33.7925, -84.3241) by the equirectangular formula the
    // condition uses: Decatur 3.24 km, Stone Mountain 16.57 km (10.29 mi),
    // Athens 91.2 km.
    for (final (id, lat, long) in [
      ('emory', 33.7925, -84.3241),
      ('decatur', 33.7748, -84.2963),
      ('stone', 33.8054, -84.1457),
      ('athens', 33.9519, -83.3576),
    ]) {
      await dao.saveResource(
        Location.fromJson({
          'resourceType': 'Location',
          'id': id,
          'position': {'latitude': lat, 'longitude': long},
        }),
      );
    }
    await dao.saveResource(
      Location.fromJson({'resourceType': 'Location', 'id': 'nowhere'}),
    );
    const loc = R4ResourceType.Location;
    expect(await find(loc, 'near', '33.7925|-84.3241|2|km'), ['emory']);
    expect(await find(loc, 'near', '33.7925|-84.3241|2000|m'), ['emory']);
    expect(
      await find(loc, 'near', '33.7925|-84.3241|5|km'),
      ['decatur', 'emory'],
    );
    expect(
      await find(loc, 'near', '33.7925|-84.3241|20|km'),
      ['decatur', 'emory', 'stone'],
    );
    expect(
      await find(loc, 'near', '33.7925|-84.3241|10|mi'),
      ['decatur', 'emory'],
    );
    expect(
      await find(loc, 'near', '33.7925|-84.3241|11|mi'),
      ['decatur', 'emory', 'stone'],
    );
    expect(
      await find(loc, 'near', '33.7925|-84.3241|100|km'),
      ['athens', 'decatur', 'emory', 'stone'],
    );
    // No distance: the server's discretion, 10 km here; no units: km.
    expect(await find(loc, 'near', '33.7925|-84.3241'), ['decatur', 'emory']);
    expect(
      await find(loc, 'near', '33.7925|-84.3241|20'),
      ['decatur', 'emory', 'stone'],
    );
    // The general path agrees.
    expect(
      await find(loc, 'near', '33.7925|-84.3241|5|km', count: null),
      ['decatur', 'emory'],
    );
    await expectLater(
      find(loc, 'near', '33.7925|-84.3241|5|furlongs'),
      throwsA(isA<InvalidSearchValue>()),
    );
    await expectLater(
      find(loc, 'near', 'here'),
      throwsA(isA<InvalidSearchValue>()),
    );
  });

  test(
      'a chain is evaluated inside contained resources; a plain search '
      'does not return them', () async {
    // R4B 3.1.1.5.5's example: "a MedicationRequest resource that has a
    // contained Medication resource specifying a custom formulation that
    // has ingredient with a itemCodeableConcept "abc" in
    // "http://acme.com./medications". In this case, a search:
    // MedicationRequest?medication.ingredient-code=abc will include the
    // MedicationRequest resource in the results. However, this search:
    // Medication?ingredient-code=abc will not include the contained
    // Medication resource in the results".
    await dao.saveResource(
      MedicationRequest.fromJson({
        'resourceType': 'MedicationRequest',
        'id': '23',
        'status': 'active',
        'intent': 'order',
        'subject': {'reference': 'Patient/p1'},
        'contained': [
          {
            'resourceType': 'Medication',
            'id': 'm1',
            'ingredient': [
              {
                'itemCodeableConcept': {
                  'coding': [
                    {'system': 'http://acme.com/medications', 'code': 'abc'},
                  ],
                },
              },
            ],
          },
        ],
        'medicationReference': {'reference': '#m1'},
      }),
    );
    await dao.saveResource(
      Medication.fromJson({
        'resourceType': 'Medication',
        'id': 'standalone',
        'ingredient': [
          {
            'itemCodeableConcept': {
              'coding': [
                {'system': 'http://acme.com/medications', 'code': 'xyz'},
              ],
            },
          },
        ],
      }),
    );
    expect(
      await find(
        R4ResourceType.MedicationRequest,
        'medication.ingredient-code',
        'abc',
      ),
      ['23'],
    );
    expect(
      await find(R4ResourceType.Medication, 'ingredient-code', 'abc'),
      isEmpty,
      reason: 'the contained Medication is not a search result of its own',
    );
    expect(
      await find(R4ResourceType.Medication, 'ingredient-code', 'xyz'),
      ['standalone'],
    );
    // Updating the container replaces the contained rows too.
    await dao.saveResource(
      MedicationRequest.fromJson({
        'resourceType': 'MedicationRequest',
        'id': '23',
        'status': 'active',
        'intent': 'order',
        'subject': {'reference': 'Patient/p1'},
        'contained': [
          {
            'resourceType': 'Medication',
            'id': 'm1',
            'ingredient': [
              {
                'itemCodeableConcept': {
                  'coding': [
                    {'system': 'http://acme.com/medications', 'code': 'def'},
                  ],
                },
              },
            ],
          },
        ],
        'medicationReference': {'reference': '#m1'},
      }),
    );
    expect(
      await find(
        R4ResourceType.MedicationRequest,
        'medication.ingredient-code',
        'abc',
      ),
      isEmpty,
    );
    expect(
      await find(
        R4ResourceType.MedicationRequest,
        'medication.ingredient-code',
        'def',
      ),
      ['23'],
    );
  });

  test('a value with the wrong number of parts is an error', () async {
    await expectLater(
      find(R4ResourceType.Observation, 'code-value-quantity', 'just-one'),
      throwsA(isA<InvalidSearchValue>()),
    );
    // "Modifiers are not used on composite parameters."
    await expectLater(
      find(R4ResourceType.Observation, 'code-value-quantity:missing', 'true'),
      throwsA(isA<UnsupportedSearchModifier>()),
    );
  });
}
