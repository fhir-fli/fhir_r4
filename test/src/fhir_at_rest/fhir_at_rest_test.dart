import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
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
        id: FhirString(input: '12345'),
        entry: [
          BundleEntry(
            request: BundleRequest(
              method: HTTPVerb.DELETE,
              url: FhirUri(input: 'Patient/123'),
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
        r'http://hapi.fhir.org/baseR4/$everything?_format=json&start=2020-01-01&end=2020-08-01',
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
        r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?_format=json&start=2020-01-01&end=2020-08-01',
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
      final searchParams = SearchPatient().id(FhirString(input: '12345'));
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
        FhirString(input: '123 Main St'),
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
        'http://hapi.fhir.org/baseR4/Patient?eqaddress=123%20Main%20St&_format=json',
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
        'http://hapi.fhir.org/baseR4/Patient?gebirthdate=2010-01-01&lebirthdate=2011-12-31&_format=json',
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
          .family(FhirString(input: 'Smith'))
          .given(FhirString(input: 'John'))
          .gender(FhirString(input: 'male'));
      final request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchParams,
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient?_family=Smith&_given=John&_gender=male&_format=json',
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
}
