import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

void main() {
  group('FhirRequest - READ:', () {
    test('get patient', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters().requestPretty(),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_pretty=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty and summary true', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters:
            RestfulParameters().requestPretty().requestSummary(Summary.true_),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_pretty=true&_summary=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with summary count', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters().requestSummary(Summary.count),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_summary=count&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty, only want to return name', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        parameters:
            RestfulParameters().requestPretty().add('_elements', 'name'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty, only want to return name and gender', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        parameters:
            RestfulParameters().requestPretty().add('_elements', 'name,gender'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name,gender&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - VREAD:', () {
    test('get patient version', () {
      final request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient version with pretty', () {
      final request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        parameters: RestfulParameters().requestPretty(),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_pretty=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient version with pretty and summary true', () {
      final request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        parameters:
            RestfulParameters().requestPretty().requestSummary(Summary.true_),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_pretty=true&_summary=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient version with summary count', () {
      final request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        parameters: RestfulParameters().requestSummary(Summary.count),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_summary=count&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - TRANSACTION:', () {
    test('transaction with bundle', () {
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
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(jsonDecode(request.buildBody()), bundle.toJson());
    });
  });

  group('FhirRequest - HISTORY:', () {
    test('observation history by type and id', () {
      final request = FhirHistoryRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        id: '12345',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Observation/12345/_history?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('observation history by type', () {
      final request = FhirHistoryRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        id: '12345',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Observation/12345/_history?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('history for all resources', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/_history?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('history with parameters', () {
      final request = FhirHistoryRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        id: '12345',
        parameters: RestfulParameters()
          ..add('_count', '10')
          ..add('_since', '2020-10-08T16:58:07.241117Z'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Observation/12345/_history?_count=10&_since=2020-10-08T16:58:07.241117Z&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('history for everything with parameters', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        parameters: RestfulParameters()
          ..add('_list', 'List/12345')
          ..add('_count', '10')
          ..add('_since', '2020-10-08'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/_history?_list=List/12345&_count=10&_since=2020-10-08&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - UPDATE:', () {
    test('update patient by id', () {
      final request = FhirUpdateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        resource: {
          'resourceType': 'Patient',
          'id': '12345',
          'name': [
            {
              'given': ['John'],
              'family': 'Doe',
            },
          ],
        },
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"resourceType":"Patient","id":"12345","name":[{"given":["John"],'
        '"family":"Doe"}]}',
      );
    });

    test('update patient with parameters', () {
      final request = FhirUpdateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        resource: {
          'resourceType': 'Patient',
          'id': '12345',
          'name': [
            {
              'given': ['John'],
              'family': 'Doe',
            },
          ],
        },
        parameters: RestfulParameters().add('_summary', 'true'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"resourceType":"Patient","id":"12345","name":[{"given":["John"],'
        '"family":"Doe"}]}',
      );
    });
  });
  group('FhirRequest - PATCH:', () {
    test('patch patient by id', () {
      final patchBody = PatchBody()
        ..addOperation(
          PatchOps.replace,
          '/name/0/family',
          value: 'Smith',
        );

      final request = FhirPatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        patchBody: patchBody,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/json-patch+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '[{"op":"replace","path":"/name/0/family","value":"Smith"}]',
      );
    });

    test('patch patient with parameters', () {
      final patchBody = PatchBody()
        ..addOperation(
          PatchOps.replace,
          '/name/0/family',
          value: 'Smith',
        );

      final request = FhirPatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        patchBody: patchBody,
        parameters: RestfulParameters().add('_elements', 'name'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_elements=name&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/json-patch+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '[{"op":"replace","path":"/name/0/family","value":"Smith"}]',
      );
    });
  });

  group('FhirRequest - DELETE:', () {
    test('delete patient', () {
      final request = FhirDeleteRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('delete patient with parameters', () {
      final request = FhirDeleteRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters().add('_cascade', 'true'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_cascade=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - CREATE:', () {
    test('create patient', () {
      final patient = {
        'resourceType': 'Patient',
        'id': '12345',
        'name': [
          {
            'use': 'official',
            'family': 'Doe',
            'given': ['John'],
          },
        ],
      };

      final request = FhirCreateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        resource: patient,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"resourceType":"Patient","id":"12345","name":[{"use":"official",'
        '"family":"Doe","given":["John"]}]}',
      );
    });

    test('create patient with parameters', () {
      final patient = {
        'resourceType': 'Patient',
        'id': '12345',
        'name': [
          {
            'use': 'official',
            'family': 'Doe',
            'given': ['John'],
          },
        ],
      };

      final request = FhirCreateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        resource: patient,
        parameters: RestfulParameters().requestPretty(),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_pretty=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"resourceType":"Patient","id":"12345","name":[{"use":"official",'
        '"family":"Doe","given":["John"]}]}',
      );
    });
  });

  group('FhirRequest - CAPABILITIES:', () {
    test('capabilities without parameters', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/metadata?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('capabilities with mode normative', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        mode: Mode.normative,
        parameters: RestfulParameters().requestPretty(),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/metadata?_pretty=true&mode=normative&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - OPERATION:', () {
    test(r'$everything operation', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        parameters: RestfulParameters()
            .add('start', '2020-01-01')
            .add('end', '2020-08-01'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/$everything?start=2020-01-01&end=2020-08-01&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test(r'$everything operation for Patient 744742', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        id: '744742',
        resourceType: 'Patient',
        parameters: RestfulParameters()
            .add('start', '2020-01-01')
            .add('end', '2020-08-01'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?start=2020-01-01&end=2020-08-01&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - SEARCH:', () {
    test('search for patient by id', () {
      final searchParams = SearchPatient().id(FhirString('12345'));
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchParams,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_id=12345&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search patient by address with modifier', () {
      final searchParams = SearchPatient().address(
        FhirString('123 Main St'),
        modifier: SearchModifier.eq,
      );
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchParams,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?address=eq123%20Main%20St&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search patient by birthdate with range modifiers', () {
      final searchParams = SearchPatient()
          .birthdate(
            FhirDateTime.fromString('2010-01-01'),
            modifier: SearchModifier.ge,
          )
          .birthdate(
            FhirDateTime.fromString('2011-12-31'),
            modifier: SearchModifier.le,
          );
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchParams,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?birthdate=ge2010-01-01&lebirthdate=2011-12-31&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search patient by multiple parameters', () {
      final searchParams = SearchPatient()
          .family(FhirString('Smith'))
          .given(FhirString('John'))
          .gender(FhirString('male'));
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchParams,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?family=Smith&given=John&gender=male&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - BATCH:', () {
    test('batch with multiple requests', () {
      final bundle = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': [
          {
            'request': {
              'method': 'POST',
              'url': 'Patient',
            },
            'resource': {
              'resourceType': 'Patient',
              'id': '123',
              'name': [
                {
                  'family': 'Doe',
                  'given': ['John'],
                },
              ],
            },
          },
          {
            'request': {
              'method': 'GET',
              'url': 'Patient?_id=123',
            },
          },
        ],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(jsonDecode(request.buildBody()), bundle);
    });

    test('batch with error in request structure', () {
      final invalidBundle = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': [
          {
            'request': {
              'method': 'POST',
            },
          },
        ],
      };

      try {
        FhirBatchRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          bundle: invalidBundle,
          headers: {'test': 'headers'},
        ).buildBody();
        fail('Expected exception not thrown');
      } catch (e) {
        expect(e, isA<FormatException>());
        expect(
          e.toString(),
          const FormatException(
            'Each request in a bundle entry must include a "url".',
          ).toString(),
        );
      }
    });

    test('batch with parameters', () {
      final bundle = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': [
          {
            'request': {
              'method': 'GET',
              'url': 'Patient?_id=123',
            },
          },
        ],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        parameters: RestfulParameters().add('_summary', 'true'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_summary=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(jsonDecode(request.buildBody()), bundle);
    });
  });
  group('FhirRequest - SEARCH:', () {
    test('search patient by id', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchResource()
          ..parameters.addAll({
            '_id': '12345',
          }),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_id=12345&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search patient by name and gender', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchResource()
          ..parameters.addAll({
            'name': 'John',
            'gender': 'male',
          }),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?name=John&gender=male&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search patient using POST with a complex query', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchResource()
          ..parameters.addAll({
            'birthdate': 'ge2010-01-01',
            '_count': '10',
          }),
        usePost: true,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/_search?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"birthdate":"ge2010-01-01","_count":"10"}',
      );
    });

    test('search patient with missing gender', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: SearchResource()
          ..parameters.addAll({
            'gender:missing': 'true',
          }),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?gender:missing=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('search all resources for a specific type', () {
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'All',
        search: SearchResource()
          ..parameters.addAll({
            '_type': 'Patient',
            'name': 'John',
          }),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_type=Patient&name=John&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });

  group('FhirRequest - TRANSACTION:', () {
    test('transaction request with valid bundle', () {
      final bundle = {
        'resourceType': 'Bundle',
        'type': 'transaction',
        'entry': [
          {
            'request': {
              'method': 'POST',
              'url': 'Patient',
            },
            'resource': {
              'resourceType': 'Patient',
              'id': '12345',
              'name': [
                {
                  'use': 'official',
                  'family': 'Doe',
                  'given': ['John'],
                },
              ],
            },
          },
        ],
      };

      final request = FhirTransactionRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        jsonDecode(request.buildBody()),
        bundle,
      );
    });

    test('transaction request with invalid bundle', () {
      final invalidBundle = {
        'resourceType': 'Bundle',
        'type': 'invalid-type', // Invalid bundle type
        'entry': <dynamic>[],
      };

      final request = FhirTransactionRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: invalidBundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildBody,
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Bundle type must be one of transaction, batch.',
          ),
        ),
      );
    });

    test('transaction request with missing fields', () {
      final bundleWithMissingFields = {
        'resourceType': 'Bundle',
        'type': 'transaction',
        'entry': [
          {
            // Missing 'request' field
            'resource': {
              'resourceType': 'Patient',
              'id': '12345',
              'name': [
                {
                  'use': 'official',
                  'family': 'Doe',
                  'given': ['John'],
                },
              ],
            },
          },
        ],
      };

      final request = FhirTransactionRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundleWithMissingFields,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildBody,
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Each bundle entry must include a "request".',
          ),
        ),
      );
    });
  });

  group('FhirRequest - BATCH:', () {
    test('batch request with valid bundle', () {
      final bundle = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': [
          {
            'request': {
              'method': 'GET',
              'url': 'Patient/12345',
            },
          },
          {
            'request': {
              'method': 'POST',
              'url': 'Observation',
            },
            'resource': {
              'resourceType': 'Observation',
              'status': 'final',
              'code': {
                'coding': [
                  {'system': 'http://loinc.org', 'code': '12345-6'},
                ],
              },
            },
          },
        ],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        jsonDecode(request.buildBody()),
        bundle,
      );
    });

    test('batch request with invalid bundle type', () {
      final invalidBundle = {
        'resourceType': 'Bundle',
        'type': 'invalid-type',
        'entry': [
          {
            'request': {
              'method': 'GET',
              'url': 'Patient/12345',
            },
          },
        ],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: invalidBundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildBody,
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Bundle type must be one of transaction, batch.',
          ),
        ),
      );
    });

    test('batch request with missing request fields', () {
      final bundleWithMissingFields = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': [
          {
            // Missing 'method' in request
            'request': {'url': 'Patient/12345'},
          },
        ],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundleWithMissingFields,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildBody,
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Each request in a bundle entry must include a "method".',
          ),
        ),
      );
    });

    test('batch request with missing entries', () {
      final emptyBundle = {
        'resourceType': 'Bundle',
        'type': 'batch',
        'entry': <dynamic>[],
      };

      final request = FhirBatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: emptyBundle,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildBody,
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Bundle must contain an "entry" array with items.',
          ),
        ),
      );
    });
  });

  group('FhirRequest - OPERATION:', () {
    test('operation without parameters', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/$everything?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('operation for a specific resource type', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        operation: 'everything',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/Patient/$everything?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('operation for a specific resource instance', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        operation: 'everything',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/Patient/12345/$everything?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('operation with parameters (GET)', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        parameters: RestfulParameters()
          ..add('start', '2020-01-01')
          ..add('end', '2020-08-01'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/$everything?start=2020-01-01&end=2020-08-01&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('operation with parameters (POST)', () {
      final request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        usePost: true,
        parameters: RestfulParameters()
          ..add('start', '2020-01-01')
          ..add('end', '2020-08-01'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        r'http://hapi.fhir.org/baseR4/$everything?start=2020-01-01&end=2020-08-01&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(
        request.buildBody(),
        '{"start":"2020-01-01","end":"2020-08-01"}',
      );
    });
  });
}
