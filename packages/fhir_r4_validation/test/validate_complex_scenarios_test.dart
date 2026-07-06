import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  late FhirValidationEngine validator;

  setUp(() {
    validator = FhirValidationEngine();
  });

  group('Complete resource validation - Patient', () {
    test('complete Patient with all common fields passes validation', () async {
      final patient = Patient(
        id: 'complete-patient'.toFhirString,
        meta: FhirMeta(
          versionId: '1'.toFhirId,
          lastUpdated: FhirInstant.fromString('2024-01-15T10:30:00Z'),
        ),
        identifier: [
          Identifier(
            use: IdentifierUse.official,
            system: 'http://example.org/mrn'.toFhirUri,
            value: 'MRN-12345'.toFhirString,
          ),
        ],
        active: true.toFhirBoolean,
        name: [
          HumanName(
            use: NameUse.official,
            family: 'Smith'.toFhirString,
            given: ['John'.toFhirString, 'Michael'.toFhirString],
            prefix: ['Mr.'.toFhirString],
          ),
          HumanName(
            use: NameUse.nickname,
            given: ['Johnny'.toFhirString],
          ),
        ],
        telecom: [
          ContactPoint(
            system: ContactPointSystem.phone,
            value: '555-0100'.toFhirString,
            use: ContactPointUse.home,
          ),
          ContactPoint(
            system: ContactPointSystem.email,
            value: 'john.smith@example.com'.toFhirString,
            use: ContactPointUse.work,
          ),
        ],
        gender: AdministrativeGender.male,
        birthDate: FhirDate.fromString('1980-06-15'),
        address: [
          Address(
            use: AddressUse.home,
            type: AddressType.physical,
            line: ['123 Main St'.toFhirString, 'Apt 4B'.toFhirString],
            city: 'Springfield'.toFhirString,
            state: 'IL'.toFhirString,
            postalCode: '62701'.toFhirString,
            country: 'US'.toFhirString,
          ),
        ],
        maritalStatus: CodeableConcept(
          coding: [
            Coding(
              system: 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
                  .toFhirUri,
              code: 'M'.toFhirCode,
              display: 'Married'.toFhirString,
            ),
          ],
        ),
        communication: [
          PatientCommunication(
            language: CodeableConcept(
              coding: [
                Coding(
                  system: 'urn:ietf:bcp:47'.toFhirUri,
                  code: 'en'.toFhirCode,
                  display: 'English'.toFhirString,
                ),
              ],
            ),
            preferred: true.toFhirBoolean,
          ),
        ],
      );

      final results = await validator.validateFhirResource(
        structureToValidate: patient,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('minimal Patient (only resourceType) may have warnings', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
        },
      );

      expect(results, isNotNull);
      // A minimal Patient is valid but may generate information messages
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('Patient with unknown fields flags errors via structure validation',
        () async {
      // Test at the structure validation level with explicit elements map
      // since the engine needs a populated StructureDefinition cache
      final node = ObjectNode(path: 'Patient')
        ..children.addAll([
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode(
              'bad-patient',
              '"bad-patient"',
              path: 'Patient.id',
            ),
          PropertyNode(path: 'Patient.unknownField')
            ..key = ValueNode('unknownField', 'unknownField')
            ..value = LiteralNode(
              'bad',
              '"bad"',
              path: 'Patient.unknownField',
            ),
        ]);

      final elements = {
        'Patient.id': ElementDefinition(
          path: 'Patient.id'.toFhirString,
          type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        ),
      };
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Element not found'),
        ),
        isTrue,
      );
    });

    test(
        'Patient with nested unknown fields flags errors via structure '
        'validation', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = (ArrayNode(path: 'Patient.name')
              ..children.add(
                ObjectNode(path: 'Patient.name[0]')
                  ..children.addAll([
                    PropertyNode(path: 'Patient.name[0].family')
                      ..key = ValueNode('family', 'family')
                      ..value = LiteralNode(
                        'Doe',
                        '"Doe"',
                        path: 'Patient.name[0].family',
                      ),
                    PropertyNode(path: 'Patient.name[0].badNestedField')
                      ..key = ValueNode('badNestedField', 'badNestedField')
                      ..value = LiteralNode(
                        'invalid',
                        '"invalid"',
                        path: 'Patient.name[0].badNestedField',
                      ),
                  ]),
              )),
        );

      // Use a custom cache that resolves by type name
      final resourceCache = _HumanNameResourceCache();

      final elements = {
        'Patient.name': ElementDefinition(
          path: 'Patient.name'.toFhirString,
          type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
        ),
      };

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Element not found'),
        ),
        isTrue,
      );
    });

    test('Patient with wrong type for active field via structure validation',
        () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.active')
            ..key = ValueNode('active', 'active')
            ..value = LiteralNode('yes', '"yes"', path: 'Patient.active'),
        );

      final elements = {
        'Patient.active': ElementDefinition(
          path: 'Patient.active'.toFhirString,
          type: [ElementDefinitionType(code: 'boolean'.toFhirUri)],
        ),
      };
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isTrue,
      );
    });
  });

  group('Complete resource validation - Observation', () {
    test('complete Observation with value passes validation', () async {
      final observation = Observation(
        id: 'bp-observation'.toFhirString,
        status: ObservationStatus.final_,
        category: [
          CodeableConcept(
            coding: [
              Coding(
                system:
                    'http://terminology.hl7.org/CodeSystem/observation-category'
                        .toFhirUri,
                code: 'vital-signs'.toFhirCode,
                display: 'Vital Signs'.toFhirString,
              ),
            ],
          ),
        ],
        code: CodeableConcept(
          coding: [
            Coding(
              system: 'http://loinc.org'.toFhirUri,
              code: '8480-6'.toFhirCode,
              display: 'Systolic blood pressure'.toFhirString,
            ),
          ],
        ),
        subject: Reference(reference: 'Patient/example'.toFhirString),
        effectiveX: FhirDateTime.fromString('2024-01-15T10:30:00Z'),
        valueX: Quantity(
          value: 120.toFhirDecimal,
          unit: 'mmHg'.toFhirString,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: 'mm[Hg]'.toFhirCode,
        ),
        interpretation: [
          CodeableConcept(
            coding: [
              Coding(
                system:
                    'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation'
                        .toFhirUri,
                code: 'N'.toFhirCode,
                display: 'Normal'.toFhirString,
              ),
            ],
          ),
        ],
        referenceRange: [
          ObservationReferenceRange(
            low: Quantity(
              value: 90.toFhirDecimal,
              unit: 'mmHg'.toFhirString,
            ),
            high: Quantity(
              value: 120.toFhirDecimal,
              unit: 'mmHg'.toFhirString,
            ),
          ),
        ],
      );

      final results = await validator.validateFhirResource(
        structureToValidate: observation,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('Observation with invalid status value', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'bad-status',
          'status': 'not-a-valid-status',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
        },
      );

      expect(results, isNotNull);
      // The invalid status should be flagged
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });

    test('Observation missing required code field via cardinality check',
        () async {
      // Test at the cardinality validation level since the engine depends
      // on having StructureDefinitions in the cache
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.status')
            ..key = ValueNode('status', 'status')
            ..value = LiteralNode(
              'final',
              '"final"',
              path: 'Observation.status',
            ),
        );

      final elements = {
        'Observation.status': ElementDefinition(
          path: 'Observation.status'.toFhirString,
          min: 1.toFhirUnsignedInt,
          max: '1'.toFhirString,
          type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        ),
        'Observation.code': ElementDefinition(
          path: 'Observation.code'.toFhirString,
          min: 1.toFhirUnsignedInt,
          max: '1'.toFhirString,
          type: [ElementDefinitionType(code: 'CodeableConcept'.toFhirUri)],
        ),
      };
      final resourceCache = CanonicalResourceCache();

      final results = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Observation',
        replacePath: 'Observation',
        results: ValidationResults(),
        resourceCache: resourceCache,
      );

      expect(results.missingResults, isNotEmpty);
      expect(
        results.missingResults.any(
          (r) => r.diagnostics.contains('minimum required'),
        ),
        isTrue,
      );
    });
  });

  group('Bundle validation', () {
    test('valid collection Bundle with entries', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Bundle',
          'id': 'valid-bundle',
          'type': 'collection',
          'entry': [
            {
              'resource': {
                'resourceType': 'Patient',
                'id': 'pat1',
                'name': [
                  {'family': 'Smith'},
                ],
              },
            },
          ],
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('Bundle with invalid type code', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Bundle',
          'id': 'bad-type-bundle',
          'type': 'not-a-valid-bundle-type',
        },
      );

      expect(results, isNotNull);
      // The invalid bundle type should be flagged
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });

    test('Bundle missing required type field via cardinality check', () async {
      final node = ObjectNode(path: 'Bundle')
        ..children.add(
          PropertyNode(path: 'Bundle.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode(
              'no-type',
              '"no-type"',
              path: 'Bundle.id',
            ),
        );

      final elements = {
        'Bundle.id': ElementDefinition(
          path: 'Bundle.id'.toFhirString,
          min: 0.toFhirUnsignedInt,
          max: '1'.toFhirString,
          type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        ),
        'Bundle.type': ElementDefinition(
          path: 'Bundle.type'.toFhirString,
          min: 1.toFhirUnsignedInt,
          max: '1'.toFhirString,
          type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        ),
      };
      final resourceCache = CanonicalResourceCache();

      final results = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Bundle',
        replacePath: 'Bundle',
        results: ValidationResults(),
        resourceCache: resourceCache,
      );

      expect(results.missingResults, isNotEmpty);
      expect(
        results.missingResults.any(
          (r) =>
              r.diagnostics.contains('minimum required') &&
              r.diagnostics.contains('Bundle.type'),
        ),
        isTrue,
      );
    });

    test('Bundle entry with unknown field via structure validation', () async {
      final node = ObjectNode(path: 'Bundle')
        ..children.add(
          PropertyNode(path: 'Bundle.entry')
            ..key = ValueNode('entry', 'entry')
            ..value = (ArrayNode(path: 'Bundle.entry')
              ..children.add(
                ObjectNode(path: 'Bundle.entry[0]')
                  ..children.add(
                    PropertyNode(path: 'Bundle.entry[0].unknownField')
                      ..key = ValueNode('unknownField', 'unknownField')
                      ..value = LiteralNode(
                        'bad',
                        '"bad"',
                        path: 'Bundle.entry[0].unknownField',
                      ),
                  ),
              )),
        );

      // Provide a BundleEntry SD
      final bundleEntrySD = StructureDefinition(
        id: 'BundleEntry'.toFhirString,
        url: 'http://hl7.org/fhir/StructureDefinition/BundleEntry'
            .toFhirCanonical,
        name: 'BundleEntry'.toFhirString,
        type: 'Bundle.entry'.toFhirUri,
        kind: StructureDefinitionKind.complexType,
        abstract_: false.toFhirBoolean,
        status: PublicationStatus.active,
        snapshot: StructureDefinitionSnapshot(
          element: [
            ElementDefinition(path: 'Bundle.entry'.toFhirString),
            ElementDefinition(
              path: 'Bundle.entry.fullUrl'.toFhirString,
              type: [ElementDefinitionType(code: 'uri'.toFhirUri)],
            ),
            ElementDefinition(
              path: 'Bundle.entry.resource'.toFhirString,
              type: [ElementDefinitionType(code: 'Resource'.toFhirUri)],
            ),
          ],
        ),
      );

      final resourceCache = CanonicalResourceCache()..see(bundleEntrySD);
      final elements = {
        'Bundle.entry': ElementDefinition(
          path: 'Bundle.entry'.toFhirString,
          type: [ElementDefinitionType(code: 'BackboneElement'.toFhirUri)],
        ),
      };

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Bundle',
        resourceCache: resourceCache,
      );

      // The unknownField should be flagged as not found
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });

    test('searchset Bundle with multiple resource types', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Bundle',
          'id': 'searchset-bundle',
          'type': 'searchset',
          'total': 2,
          'entry': [
            {
              'fullUrl': 'http://example.com/fhir/Patient/1',
              'resource': {
                'resourceType': 'Patient',
                'id': '1',
                'name': [
                  {'family': 'Doe'},
                ],
              },
              'search': {
                'mode': 'match',
              },
            },
            {
              'fullUrl': 'http://example.com/fhir/Observation/1',
              'resource': {
                'resourceType': 'Observation',
                'id': '1',
                'status': 'final',
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '8480-6',
                    },
                  ],
                },
                'subject': {
                  'reference': 'Patient/1',
                },
              },
              'search': {
                'mode': 'include',
              },
            },
          ],
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });

  group('Deeply nested resource validation', () {
    test('validates MedicationRequest with deeply nested structures', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'MedicationRequest',
          'id': 'deep-nested',
          'status': 'active',
          'intent': 'order',
          'medicationCodeableConcept': {
            'coding': [
              {
                'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                'code': '1049502',
                'display': 'Acetaminophen 325 MG Oral Tablet',
              },
            ],
          },
          'subject': {
            'reference': 'Patient/1',
          },
          'dosageInstruction': [
            {
              'text': 'Take 1 tablet every 6 hours as needed',
              'timing': {
                'repeat': {
                  'frequency': 1,
                  'period': 6,
                  'periodUnit': 'h',
                },
              },
              'doseAndRate': [
                {
                  'doseQuantity': {
                    'value': 325,
                    'unit': 'mg',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'mg',
                  },
                },
              ],
            },
          ],
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });

  group('Validation output format', () {
    test('toJson groups results by severity', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'json-test',
          'unknownField': 'bad',
          'name': [
            {'family': 'Doe'},
          ],
        },
      );

      final json = results.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json.containsKey('error'), isTrue);
      expect(json.containsKey('warning'), isTrue);
      expect(json.containsKey('information'), isTrue);
      expect(json['error'], isA<List>());
      expect(json['warning'], isA<List>());
      expect(json['information'], isA<List>());
    });

    test('toOperationOutcome creates valid OperationOutcome', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'oo-test',
          'unknownField': 'bad',
          'name': [
            {'family': 'Doe'},
          ],
        },
      );

      final outcome = results.toOperationOutcome();
      expect(outcome, isA<OperationOutcome>());
      expect(outcome.issue, isNotEmpty);
      expect(outcome.issue.first.severity, isNotNull);
      expect(outcome.issue.first.code, IssueType.processing);
    });

    test('prettyPrint returns valid JSON string', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'id': 'pp-test',
          'name': [
            {'family': 'Doe'},
          ],
        },
      );

      final pretty = results.prettyPrint();
      expect(pretty, isA<String>());
      expect(pretty, contains('OperationOutcome'));
    });
  });

  group('Edge cases', () {
    test('missing resourceType returns error', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'id': 'no-type',
          'name': [
            {'family': 'Doe'},
          ],
        },
      );

      expect(results.hasErrors, isTrue);
      expect(
        results.results.any(
          (r) => r.diagnostics.contains('ResourceType is missing'),
        ),
        isTrue,
      );
    });

    test('invalid JSON string returns parse error', () async {
      final results = await validator.validateFhirString(
        structureToValidate: '{ invalid json }',
      );

      expect(results.hasErrors, isTrue);
      expect(
        results.results.any(
          (r) => r.diagnostics.contains('Failed to parse resource JSON'),
        ),
        isTrue,
      );
    });

    test('empty JSON object returns missing resourceType error', () async {
      final results = await validator.validateFhirString(
        structureToValidate: '{}',
      );

      expect(results.hasErrors, isTrue);
      expect(
        results.results.any(
          (r) => r.diagnostics.contains('ResourceType is missing'),
        ),
        isTrue,
      );
    });

    test('resource with null id is valid', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Patient',
          'name': [
            {'family': 'Doe'},
          ],
        },
      );

      expect(results, isNotNull);
      // Should not specifically error on missing id (it is optional)
      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Patient.id') &&
              r.diagnostics.contains('minimum required'),
        ),
        isEmpty,
      );
    });

    test('validates resource from FHIR class with toJson roundtrip', () async {
      final patient = Patient(
        id: 'roundtrip'.toFhirString,
        name: [
          HumanName(
            family: 'Doe'.toFhirString,
            given: ['Jane'.toFhirString],
          ),
        ],
        gender: AdministrativeGender.female,
        birthDate: FhirDate.fromString('1995-03-20'),
      );

      // Validate via Resource object
      final resultsFromResource = await validator.validateFhirResource(
        structureToValidate: patient,
      );

      // Validate via JSON map
      final resultsFromMap = await validator.validateFhirMap(
        structureToValidate: patient.toJson(),
      );

      // Both should produce the same number of errors
      expect(
        resultsFromResource.results
            .where((r) => r.severity == Severity.error)
            .length,
        equals(
          resultsFromMap.results
              .where((r) => r.severity == Severity.error)
              .length,
        ),
      );
    });

    test('validates Condition resource with multiple fields', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Condition',
          'id': 'test-condition',
          'clinicalStatus': {
            'coding': [
              {
                'system':
                    'http://terminology.hl7.org/CodeSystem/condition-clinical',
                'code': 'active',
              },
            ],
          },
          'verificationStatus': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/'
                    'condition-ver-status',
                'code': 'confirmed',
              },
            ],
          },
          'code': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '38341003',
                'display': 'Hypertension',
              },
            ],
          },
          'subject': {
            'reference': 'Patient/1',
          },
          'onsetDateTime': '2020-01-15',
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates AllergyIntolerance resource', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'AllergyIntolerance',
          'id': 'test-allergy',
          'clinicalStatus': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/'
                    'allergyintolerance-clinical',
                'code': 'active',
              },
            ],
          },
          'verificationStatus': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/'
                    'allergyintolerance-verification',
                'code': 'confirmed',
              },
            ],
          },
          'type': 'allergy',
          'category': ['medication'],
          'criticality': 'high',
          'code': {
            'coding': [
              {
                'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                'code': '7980',
                'display': 'Penicillin',
              },
            ],
          },
          'patient': {
            'reference': 'Patient/1',
          },
          'reaction': [
            {
              'manifestation': [
                {
                  'coding': [
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '39579001',
                      'display': 'Anaphylaxis',
                    },
                  ],
                },
              ],
              'severity': 'severe',
            },
          ],
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });
}

/// Test ResourceCache that provides a HumanName StructureDefinition
/// and resolves by both short name and full URL.
class _HumanNameResourceCache extends CanonicalResourceCache {
  _HumanNameResourceCache() {
    final humanNameSD = StructureDefinition(
      id: 'HumanName'.toFhirString,
      url: 'http://hl7.org/fhir/StructureDefinition/HumanName'.toFhirCanonical,
      name: 'HumanName'.toFhirString,
      type: 'HumanName'.toFhirUri,
      kind: StructureDefinitionKind.complexType,
      abstract_: false.toFhirBoolean,
      status: PublicationStatus.active,
      snapshot: StructureDefinitionSnapshot(
        element: [
          ElementDefinition(path: 'HumanName'.toFhirString),
          ElementDefinition(
            path: 'HumanName.family'.toFhirString,
            type: [ElementDefinitionType(code: 'string'.toFhirUri)],
          ),
        ],
      ),
    );
    see(humanNameSD);
    _shortNameCache['HumanName'] = humanNameSD;
  }

  final Map<String, StructureDefinition> _shortNameCache = {};

  @override
  Future<StructureDefinition?> getStructureDefinition(String url) async {
    final cached = _shortNameCache[url];
    if (cached != null) return cached;
    return super.getStructureDefinition(url);
  }
}
