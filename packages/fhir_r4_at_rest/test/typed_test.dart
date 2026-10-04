import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

/// The R4B layer over fhir_at_rest: the model, the typed parse functions,
/// and the generated search builders as a request's parameters.
void main() {
  test('r4Rest parses and writes fhir_r4 resources and knows its types', () {
    expect(r4Rest.fhirVersion, '4.3.0');
    expect(r4Rest.resourceTypeNames.length, R4ResourceType.values.length);
    expect(r4Rest.resourceTypeNames, contains('Patient'));
    final p = r4Rest.fromJson({'resourceType': 'Patient', 'id': 'x'});
    expect(p, isA<Patient>());
    expect(r4Rest.toJson(p), {'resourceType': 'Patient', 'id': 'x'});
  });

  test('parseRequestResult and parseBundle give typed resources', () {
    final r = parseRequestResult(
      Bundle(
        type: BundleType.searchset,
        entry: [
          BundleEntry(resource: Patient(id: '1'.toFhirString)),
          const BundleEntry(
            resource: OperationOutcome(
              issue: [
                OperationOutcomeIssue(
                  severity: IssueSeverity.error,
                  code: IssueType.notFound,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    expect(r.resources.single, isA<Patient>());
    final oo = r.errorOperationOutcomes.single as OperationOutcome;
    expect(oo.issue.single.code, IssueType.notFound);
  });

  test('parseRequestResultForType keeps T and contains the rest', () {
    final r = parseRequestResultForType<Patient>(
      Bundle(
        type: BundleType.transactionResponse,
        entry: [
          BundleEntry(resource: Patient(id: '1'.toFhirString)),
          BundleEntry(
            resource: Observation(
              status: ObservationStatus.final_,
              code: CodeableConcept(text: 'x'.toFhirString),
            ),
          ),
          BundleEntry(
            response: BundleResponse(status: '201 Created'.toFhirString),
          ),
        ],
      ),
    );
    expect(r.resources.single, isA<Patient>());
    final wrong = r.errorOperationOutcomes.single as OperationOutcome;
    expect(wrong.contained?.single, isA<Observation>());
    expect(wrong.issue.single.code, IssueType.structure);
    final info = r.informationOperationOutcomes.single as OperationOutcome;
    expect(info.issue.single.diagnostics?.valueString, contains('201'));
    expect(
      incorrectResultType<Patient>(const Patient()),
      isA<OperationOutcome>(),
    );
  });

  test('parseResponse through the R4B model', () {
    final ok = parseResponse(
      http.Response(jsonEncode({'resourceType': 'Patient', 'id': 'p1'}), 200),
    );
    expect(ok.resources.single, isA<Patient>());

    // An unknown resourceType is an answer, not the model's UnsupportedError
    // (which the typed client let through, measured 2026-10-04).
    final unknown = parseResponse(
      http.Response('{"resourceType":"NotAType","id":"x"}', 200),
    );
    final oo = unknown.errorOperationOutcomes.single as OperationOutcome;
    expect(unknown.resources, isEmpty);
    expect(oo.issue.single.code, IssueType.structure);
    expect(oo.issue.single.details?.text?.valueString, contains('NotAType'));
  });

  group('FhirSearchRequest with the generated search builders', () {
    test('search for patient by id', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchPatient().id(FhirString('12345')),
        headers: {'test': 'headers'},
      );
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_id=12345&_format=json',
      );
      expect(request.buildBody(), isNull);
    });

    test('search patient by address', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchPatient().address(FhirString('123 Main St')),
      );
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?address=123%20Main%20St&_format=json',
      );
    });

    test('search patient by birthdate with range modifiers', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchPatient()
            .birthdate(
              FhirDateTime.fromString('2010-01-01'),
              modifier: SearchModifier.ge,
            )
            .birthdate(
              FhirDateTime.fromString('2011-12-31'),
              modifier: SearchModifier.le,
            ),
      );
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?birthdate=ge2010-01-01&birthdate=le2011-12-31&_format=json',
      );
    });

    test('search patient by multiple parameters', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchPatient()
            .family(FhirString('Smith'))
            .given(FhirString('John'))
            .gender(FhirString('male')),
      );
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?family=Smith&given=John&gender=male&_format=json',
      );
    });

    test('a transaction body from a typed Bundle', () {
      final bundle = Bundle(
        type: BundleType.transaction,
        id: FhirString('12345'),
        entry: [
          BundleEntry(
            request: BundleRequest(
              method: HTTPVerb.dELETE,
              url: FhirUri('Patient/123'),
            ),
          ),
        ],
      );
      final request = FhirTransactionRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle.toJson(),
      );
      expect(jsonDecode(request.buildBody()), bundle.toJson());
    });
  });
}
