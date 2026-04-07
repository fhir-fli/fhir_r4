import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

Observation _makeObservation({String? id}) => Observation(
      id: id?.toFhirString,
      status: ObservationStatus.final_,
      code: CodeableConcept(
        coding: <Coding>[
          Coding(
            system: 'http://loinc.org'.toFhirUri,
            code: '12345-6'.toFhirCode,
          ),
        ],
      ),
    );

void main() {
  group('parseRequestResult', () {
    test('single resource is returned in resources list', () {
      final patient = Patient(id: '123'.toFhirString);
      final result = parseRequestResult(patient);

      expect(result.resources, hasLength(1));
      expect(result.resources.first, isA<Patient>());
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, isEmpty);
    });

    test('informational OperationOutcome goes to informational list', () {
      final oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.information,
            code: IssueType.informational,
            diagnostics: 'All good'.toFhirString,
          ),
        ],
      );
      final result = parseRequestResult(oo);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
      expect(result.errorOperationOutcomes, isEmpty);
    });

    test('error OperationOutcome goes to error list', () {
      final oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.notFound,
            diagnostics: 'Resource not found'.toFhirString,
          ),
        ],
      );
      final result = parseRequestResult(oo);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, hasLength(1));
    });

    test('OperationOutcome with empty issues goes to error list', () {
      const oo = OperationOutcome(issue: <OperationOutcomeIssue>[]);
      final result = parseRequestResult(oo);

      // isInformational requires isNotEmpty, so empty issues => error
      expect(result.errorOperationOutcomes, hasLength(1));
      expect(result.informationOperationOutcomes, isEmpty);
    });
  });

  group('parseBundle', () {
    test('transaction-response with resource entries extracts resources', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(resource: Patient(id: '1'.toFhirString)),
          BundleEntry(resource: _makeObservation(id: '2')),
        ],
      );
      final result = parseBundle(bundle);

      expect(result.resources, hasLength(2));
      expect(result.resources[0], isA<Patient>());
      expect(result.resources[1], isA<Observation>());
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, isEmpty);
    });

    test('transaction-response with OperationOutcome entries sorts them', () {
      const infoOo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.information,
            code: IssueType.informational,
          ),
        ],
      );
      const errorOo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.exception,
          ),
        ],
      );
      const bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(resource: infoOo),
          BundleEntry(resource: errorOo),
        ],
      );
      final result = parseBundle(bundle);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
      expect(result.errorOperationOutcomes, hasLength(1));
    });

    test('transaction-response entries with only response status create '
        'informational OperationOutcomes', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(
              status: '201 Created'.toFhirString,
              location: 'Patient/123/_history/1'.toFhirUri,
            ),
          ),
        ],
      );
      final result = parseBundle(bundle);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
      final oo = result.informationOperationOutcomes.first;
      expect(oo.issue.first.diagnostics.toString(), contains('201 Created'));
      expect(oo.issue.first.diagnostics.toString(),
          contains('Patient/123/_history/1'),);
    });

    test('transaction-response with response outcome extracts resources', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(
              status: '200 OK'.toFhirString,
              outcome: Patient(id: '456'.toFhirString),
            ),
          ),
        ],
      );
      final result = parseBundle(bundle);

      expect(result.resources, hasLength(1));
      expect(result.resources.first, isA<Patient>());
    });

    test('transaction-response with response outcome as OperationOutcome', () {
      const errorOo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.notFound,
          ),
        ],
      );
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(
              status: '404 Not Found'.toFhirString,
              outcome: errorOo,
            ),
          ),
        ],
      );
      final result = parseBundle(bundle);

      expect(result.resources, isEmpty);
      expect(result.errorOperationOutcomes, hasLength(1));
    });

    test('non-transaction-response bundle returns empty results', () {
      final bundle = Bundle(
        type: BundleType.searchset,
        entry: <BundleEntry>[
          BundleEntry(resource: Patient(id: '1'.toFhirString)),
        ],
      );
      final result = parseBundle(bundle);

      // Only transaction-response bundles are parsed
      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, isEmpty);
    });

    test('bundle with no entries returns empty results', () {
      const bundle = Bundle(type: BundleType.transactionResponse);
      final result = parseBundle(bundle);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, isEmpty);
    });
  });

  group('parseRequestResultForType', () {
    test('returns typed resource when result matches type', () {
      final patient = Patient(id: '123'.toFhirString);
      final result = parseRequestResultForType<Patient>(patient);

      expect(result.resources, hasLength(1));
      expect(result.resources.first, isA<Patient>());
    });

    test('returns error when result does not match type and is not Bundle', () {
      final observation = _makeObservation(id: '123');
      final result = parseRequestResultForType<Patient>(observation);

      expect(result.resources, isEmpty);
      expect(result.errorOperationOutcomes, hasLength(1));
      expect(
        result.errorOperationOutcomes.first.contained,
        isNotNull,
      );
    });

    test('informational OperationOutcome goes to informational list', () {
      const oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.information,
            code: IssueType.informational,
          ),
        ],
      );
      final result = parseRequestResultForType<Patient>(oo);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
      expect(result.errorOperationOutcomes, isEmpty);
    });

    test('error OperationOutcome goes to error list', () {
      const oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.notFound,
          ),
        ],
      );
      final result = parseRequestResultForType<Patient>(oo);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, isEmpty);
      expect(result.errorOperationOutcomes, hasLength(1));
    });
  });

  group('parseBundleForType', () {
    test('extracts only matching type from transaction-response', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(resource: Patient(id: '1'.toFhirString)),
          BundleEntry(resource: _makeObservation(id: '2')),
          BundleEntry(resource: Patient(id: '3'.toFhirString)),
        ],
      );
      final result = parseBundleForType<Patient>(bundle);

      expect(result.resources, hasLength(2));
      // Non-matching resource type goes to errorOperationOutcomes
      expect(result.errorOperationOutcomes, hasLength(1));
      expect(result.errorOperationOutcomes.first.contained, isNotNull);
    });

    test('OperationOutcome entries are classified correctly', () {
      const infoOo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.information,
            code: IssueType.informational,
          ),
        ],
      );
      const bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(resource: infoOo),
        ],
      );
      final result = parseBundleForType<Patient>(bundle);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
    });

    test('entries with response outcomes of matching type are extracted', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(
              status: '200 OK'.toFhirString,
              outcome: Patient(id: '789'.toFhirString),
            ),
          ),
        ],
      );
      final result = parseBundleForType<Patient>(bundle);

      expect(result.resources, hasLength(1));
    });

    test('entries with response outcomes of wrong type go to errors', () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(
              status: '200 OK'.toFhirString,
              outcome: _makeObservation(id: '789'),
            ),
          ),
        ],
      );
      final result = parseBundleForType<Patient>(bundle);

      expect(result.resources, isEmpty);
      expect(result.errorOperationOutcomes, hasLength(1));
    });

    test('entries with no resource and no outcome create informational OO',
        () {
      final bundle = Bundle(
        type: BundleType.transactionResponse,
        entry: <BundleEntry>[
          BundleEntry(
            response: BundleResponse(status: '204 No Content'.toFhirString),
          ),
        ],
      );
      final result = parseBundleForType<Patient>(bundle);

      expect(result.resources, isEmpty);
      expect(result.informationOperationOutcomes, hasLength(1));
    });
  });

  group('isInformational', () {
    test('returns true for informational code', () {
      const oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.information,
            code: IssueType.informational,
          ),
        ],
      );
      expect(isInformational(oo), isTrue);
    });

    test('returns false for error code', () {
      const oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.notFound,
          ),
        ],
      );
      expect(isInformational(oo), isFalse);
    });

    test('returns false for empty issues', () {
      const oo = OperationOutcome(issue: <OperationOutcomeIssue>[]);
      expect(isInformational(oo), isFalse);
    });
  });

  group('incorrectResultType', () {
    test('creates OperationOutcome with contained resource', () {
      final patient = Patient(id: '123'.toFhirString);
      final result = incorrectResultType<Observation>(patient);

      expect(result, isA<OperationOutcome>());
      expect(result.contained, isNotNull);
      expect(result.contained, hasLength(1));
      expect(result.contained!.first, isA<Patient>());
      expect(result.issue.first.severity, IssueSeverity.error);
      expect(result.issue.first.code, IssueType.structure);
      expect(
        result.issue.first.diagnostics.toString(),
        contains('Observation'),
      );
      expect(
        result.issue.first.diagnostics.toString(),
        contains('Patient'),
      );
    });
  });

  group('ReturnResults', () {
    test('default constructor initializes empty lists', () {
      final results = ReturnResults<Patient>();

      expect(results.resources, isEmpty);
      expect(results.otherResources, isEmpty);
      expect(results.informationOperationOutcomes, isEmpty);
      expect(results.errorOperationOutcomes, isEmpty);
    });

    test('constructor accepts initial values', () {
      final patient = Patient(id: '1'.toFhirString);
      const oo = OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.notFound,
          ),
        ],
      );

      final results = ReturnResults<Patient>(
        resources: <Patient>[patient],
        errorOperationOutcomes: <OperationOutcome>[oo],
      );

      expect(results.resources, hasLength(1));
      expect(results.errorOperationOutcomes, hasLength(1));
      expect(results.otherResources, isEmpty);
      expect(results.informationOperationOutcomes, isEmpty);
    });
  });
}
