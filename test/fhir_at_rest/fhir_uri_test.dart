// Package imports:
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

Future<void> main() async {
  const String mimeType = 'json';

  group('FHIR URI - READ:', () {
    test('get patient', () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=false',
      );
    });

    test('get patient with pretty', () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: true,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=true',
      );
    });

    test('get patient with pretty and summary true', () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: true,
        summary: Summary.true_,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=true&_summary=true',
      );
    });

    test('get patient with summary count', () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        summary: Summary.count,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=false&_summary=count',
      );
    });

    test('get patient  with pretty, only want to return name', () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '1227442',
        pretty: true,
        elements: <String>['name'],
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_format=$mimeType&_pretty=true&_elements=name',
      );
    });

    test('get patient with pretty, only want to return name and gender',
        () async {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '1227442',
        pretty: true,
        elements: <String>['name', 'gender'],
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_format=$mimeType&_pretty=true&_elements=name,gender',
      );
    });
  }, tags: <String>['uri', 'read']);

  group('FHIR URI - VREAD:', () {
    test('get patient version', () async {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        vid: FhirId('6789'),
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=$mimeType&_pretty=false',
      );
    });

    test('get patient version with pretty', () async {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        vid: FhirId('6789'),
        pretty: true,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=$mimeType&_pretty=true',
      );
    });

    test('get patient version with pretty and summary true', () async {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        vid: FhirId('6789'),
        pretty: true,
        summary: Summary.true_,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=$mimeType&_pretty=true&_summary=true',
      );
    });

    test('get patient version with summary count', () async {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        vid: FhirId('6789'),
        summary: Summary.count,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=$mimeType&_pretty=false&_summary=count',
      );
    });
  }, tags: <String>['uri', 'vread']);

  group('FHIR URI - TRANSACTION:', () {
    test('transaction/batch', () async {
      final Bundle bundle = Bundle(id: '12345');
      final FhirRequest request = FhirRequest.transaction(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4?_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'transaction']);

  group('FHIR URI - HISTORY:', () {
    test('observation history by type and id', () async {
      final FhirRequest request = FhirRequest.history(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        id: '12345',
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Observation/12345/_history?_format=$mimeType&_pretty=false',
      );
    });

    test('observation history by type', () async {
      final FhirRequest request = FhirRequest.historyType(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Observation/_history?_format=$mimeType&_pretty=false',
      );
    });

    test('history for everything', () async {
      final FhirRequest request = FhirRequest.historyAll(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/_history?_format=$mimeType&_pretty=false',
      );
    });

    test('history resource by type and id, count of 10, after a specified date',
        () async {
      final List<String> parameters = <String>[
        '_count=10',
        '_since=2020-10-08T16:58:07.241117Z',
      ];
      final FhirRequest request = FhirRequest.history(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        id: '12345',
        pretty: false,
        parameters: parameters,
      );

      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation/12345/_history'
        '?_format=$mimeType&_pretty=false&_count=10&_since=2020-10-08T16:58:07.241117Z',
      );
    });
  }, tags: <String>['uri', 'history']);

  group('FHIR URI - UPDATE:', () {
    test('update patient by id', () async {
      final Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.update(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'update']);

  group('FHIR URI - PATCH:', () {
    test('patch patient by id', () async {
      final Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.patch(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'patch']);

  group('FHIR URI - DELETE:', () {
    test('delete patient', () async {
      final FhirRequest request = FhirRequest.delete(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'delete']);

  group('FHIR URI - CREATE:', () {
    test('create patient', () async {
      final Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.create(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient?_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'create']);

  group('FHIR URI - CAPABILITIES:', () {
    test('capabilities with mode normative', () async {
      final FhirRequest request = FhirRequest.capabilities(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        mode: Mode.normative,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/metadata'
        '?mode=normative&_format=$mimeType&_pretty=false',
      );
    });
  }, tags: <String>['uri', 'capabilities']);

  group('FHIR URI - OPERATION:', () {
    test(r'$everything operation', () async {
      final List<String> parameters = <String>[
        'start=2020-01-01',
        'end=2020-08-01'
      ];
      final FhirRequest request = FhirRequest.operation(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        operation: 'everything',
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        r'http://hapi.fhir.org/baseR4/$everything'
        '?_format=$mimeType&_pretty=false&start=2020-01-01&end=2020-08-01',
      );
    });

    test(r'$everything operation for Patient 744742', () async {
      final List<String> parameters = <String>[
        'start=2020-01-01',
        'end=2020-08-01'
      ];
      final FhirRequest request = FhirRequest.operation(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '744742',
        pretty: false,
        operation: 'everything',
        parameters: parameters,
      );

      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?_format'
        '=$mimeType&_pretty=false&start=2020-01-01&end=2020-08-01',
      );
    });
  }, tags: <String>['uri', 'operation']);

  group('FHIR URI - SEARCH:', () {
    test('patient id search', () async {
      final List<String> parameters = <String>['_id=12345'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        pretty: false,
        parameters: <String>['_id=12345'],
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient?_format=$mimeType&_pretty=false&_id=12345',
      );
    });

    test('patient id search using post', () async {
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        pretty: false,
        restfulRequest: RestfulRequest.post_,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(),
        'http://hapi.fhir.org/baseR4/Patient/_search?_format=$mimeType&_pretty=false',
      );
    });

    test('observation time search', () async {
      final List<String> parameters = <String>['_lastUpdated=gt2010-10-01'];
      final FhirRequest request = FhirRequest.search(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          type: R4ResourceType.Observation,
          pretty: false,
          parameters: parameters);
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation'
        '?_format=$mimeType&_pretty=false&_lastUpdated=gt2010-10-01',
      );
    });

    test('condition search, code parameter (_tag)', () async {
      final List<String> parameters = <String>[
        '_tag=http://acme.org/codes|needs-review'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Condition,
        pretty: false,
        parameters: parameters,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Condition'
        '?_format=$mimeType&_pretty=false&_tag=http://acme.org/codes|needs-review',
      );
    });

    test('diagnostic report rearch, uri parameter (_profile)', () async {
      final List<String> parameters = <String>[
        '_profile=http://acme.org/codes'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.DiagnosticReport,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/DiagnosticReport'
        '?_format=$mimeType&_pretty=false&_profile=http://acme.org/codes',
      );
    });

    test('patient search if gender present', () async {
      final List<String> parameters = <String>['gender:missing=true'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&gender:missing=true',
      );
    });

    test('patient search if gender present', () async {
      final List<String> parameters = <String>['gender:missing=false'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&gender:missing=false',
      );
    });

    test('patient search for exact text match', () async {
      final List<String> parameters = <String>['_text:exact=Stark'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&_text:exact=Stark',
      );
    });

    test('observation search "le"', () async {
      final List<String> parameters = <String>['_lastUpdated=le2010-10-01'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation?_format=$mimeType&_pretty=false&_lastUpdated=le2010-10-01',
      );
    });

    test('risk assessment search, probability > 0.8', () async {
      final List<String> parameters = <String>['probability=gt0.8'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.RiskAssessment,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/RiskAssessment?_format=$mimeType&_pretty=false&probability=gt0.8',
      );
    });

    test('patient search for birthday between two dates', () async {
      final List<String> parameters = <String>[
        'birthdate=ge2010-01-01',
        'birthdate=le2011-12-31',
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&birthdate=ge2010-01-01&birthdate=le2011-12-31',
      );
    });

    test('patient search given name with parameters', () async {
      final List<String> parameters = <String>[
        'given=eve',
        'given:contains=eve',
        'given:exact=eve',
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&given=eve&given:contains=eve&given:exact=eve',
      );
    });

    test('patient search given name with parameters', () async {
      final List<String> parameters = <String>[
        '_type=Patient',
        'given=eve',
        'given:contains=eve',
        'given:exact=eve',
      ];
      final FhirRequest request = FhirRequest.searchAll(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4'
        '?_format=$mimeType&_pretty=false&_type=Patient&given=eve&given:contains=eve&given:exact=eve',
      );
    });

    test('patient search with identifier', () async {
      final List<String> parameters = <String>[
        'identifier=http://acme.org/patient|2345'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&identifier=http://acme.org/patient|2345',
      );
    });

    test('composition search section code', () async {
      final List<String> parameters = <String>['section:not=48765-2'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Composition,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Composition'
        '?_format=$mimeType&_pretty=false&section:not=48765-2',
      );
    });

    test('condition search via snomed code', () async {
      final List<String> parameters = <String>[
        'code:in=http://snomed.info/sct?fhir_vs=isa/126851005'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Condition,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Condition'
        '?_format=$mimeType&_pretty=false&code:in=http://snomed.info/sct?fhir_vs=isa/126851005',
      );
    });

    test('patient search by mr code', () async {
      final List<String> parameters = <String>[
        'identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|MR|446053'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Patient'
        '?_format=$mimeType&_pretty=false&identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|MR|446053',
      );
    });

    test('observation search by quantity, with prefix', () async {
      final List<String> parameters = <String>[
        'value-quantity=ap5.4|http://unitsofmeasure.org|mg'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation'
        '?_format=$mimeType&_pretty=false&value-quantity=ap5.4|http://unitsofmeasure.org|mg',
      );
    });

    test('observation search by quantity, without prefix', () async {
      final List<String> parameters = <String>[
        'value-quantity=5.4|http://unitsofmeasure.org|mg'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation'
        '?_format=$mimeType&_pretty=false&value-quantity=5.4|http://unitsofmeasure.org|mg',
      );
    });

    test('observation search by quantity, testing number parsing', () async {
      final List<String> parameters = <String>[
        'value-quantity=0.0054|http://unitsofmeasure.org|g'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation'
        '?_format=$mimeType&_pretty=false&value-quantity=0.0054|http://unitsofmeasure.org|g',
      );
    });

    test('observation search by reference, using url', () async {
      final List<String> parameters = <String>['subject=Patient/123'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      expect(request, FhirRequest.fromJson(request.toJson()));
      expect(request.runtimeType,
          FhirRequest.fromJson(request.toJson()).runtimeType);
      expect(
        request.uri(parameters: parameters),
        'http://hapi.fhir.org/baseR4/Observation'
        '?_format=$mimeType&_pretty=false&subject=Patient/123',
      );
    });
  }, tags: <String>['uri', 'search']);
}
