// ignore_for_file: avoid_print

// Package imports:
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void httpRequestTests() {
  group('FhirRequest - READ:', () {
    test('get patient', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});
      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient with pretty', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: true,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=true',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient with pretty and summary true', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: true,
        summary: Summary.true_,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=true&_summary=true',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient with summary count', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        summary: Summary.count,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=false&_summary=count',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient  with pretty, only want to return name', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '1227442',
        pretty: true,
        elements: <String>['name'],
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/1227442?_format=json&_pretty=true&_elements=name',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient with pretty, only want to return name and gender', () {
      final FhirRequest request = FhirRequest.read(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '1227442',
        pretty: true,
        elements: <String>['name', 'gender'],
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/1227442?_format=json&_pretty=true&_elements=name,gender',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'read']);

  group('FhirRequest - VREAD:', () {
    test('get patient version', () {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        vid: FhirId('6789'),
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient version with pretty', () {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        vid: FhirId('6789'),
        pretty: true,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=json&_pretty=true',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient version with pretty and summary true', () {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        vid: FhirId('6789'),
        pretty: true,
        summary: Summary.true_,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=json&_pretty=true&_summary=true',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('get patient version with summary count', () {
      final FhirRequest request = FhirRequest.vRead(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
        vid: FhirId('6789'),
        summary: Summary.count,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_format=json&_pretty=false&_summary=count',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'vread']);

  group('FhirRequest - TRANSACTION:', () {
    test('transaction/batch', () {
      final Bundle bundle = Bundle(
          type: FhirCode('transaction'),
          id: '12345',
          entry: <BundleEntry>[
            BundleEntry(
                request: BundleRequest(
              method: FhirCode('delete'),
            ))
          ]);
      final FhirRequest request = FhirRequest.transaction(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'POST',
        'url': 'http://hapi.fhir.org/baseR4?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
          'Content-Type': 'application/fhir+json',
        },
        'body': bundle.toJson(),
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('batch with error in bundle', () {
      final Bundle bundle = Bundle(
          type: FhirCode('batch'),
          id: '12345',
          entry: <BundleEntry>[const BundleEntry(request: BundleRequest())]);
      final FhirRequest request = FhirRequest.batch(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        pretty: false,
      );
      try {
        request.toFhirHttpRequest(headers: <String, String>{'test': 'header'});
      } catch (e) {
        expect(
            e,
            const FormatException(
                'Each bundle entry request needs a method type specified, but at least one entry in this bundle is missing a method'));
      }
    });
  }, tags: <String>['uri', 'transaction']);

  group('FhirRequest - HISTORY:', () {
    test('observation history by type and id', () {
      final FhirRequest request = FhirRequest.history(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        id: '12345',
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Observation/12345/_history?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation history by type', () {
      final FhirRequest request = FhirRequest.historyType(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Observation/_history?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('history for everything', () {
      final FhirRequest request = FhirRequest.historyAll(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/_history?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('history resource by type and id, count of 10, after a specified date',
        () {
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

      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation/12345/_history'
            '?_format=json&_pretty=false&_count=10&_since=2020-10-08T16:58:07.241117Z',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test(
        'search all history, count = 10, since 2020-10-08, and only '
        'those that are included in the List/12345', () {
      final FhirRequest request = FhirRequest.historyAll(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        reference: 'List/12345',
        pretty: false,
        parameters: <String>['_count=10', '_since=2020-10-08'],
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/_history?_format=json&_pretty=false'
            '&_list=List/12345&_count=10&_since=2020-10-08',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'history']);

  group('FhirRequest - UPDATE:', () {
    test('update patient by id', () {
      const Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.update(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'PUT',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
          'Content-Type': 'application/fhir+json',
        },
        'body': patient.toJson(),
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'update']);

  group('FhirRequest - PATCH:', () {
    test('patch patient by id', () {
      const Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.patch(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'PATCH',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
          'Content-Type': 'application/json-patch+json',
        },
        'body': patient.toJson(),
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'patch']);

  group('FhirRequest - DELETE:', () {
    test('delete patient', () {
      final FhirRequest request = FhirRequest.delete(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '12345',
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'DELETE',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/12345?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'delete']);

  group('FhirRequest - CREATE:', () {
    test('create patient', () {
      const Patient patient = Patient(id: '12345');
      final FhirRequest request = FhirRequest.create(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resource: patient,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'POST',
        'url': 'http://hapi.fhir.org/baseR4/Patient?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
          'Content-Type': 'application/fhir+json',
        },
        'body': patient.toJson(),
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'create']);

  group('FhirRequest - CAPABILITIES:', () {
    test('capabilities with mode normative', () {
      final FhirRequest request = FhirRequest.capabilities(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        mode: Mode.normative,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/metadata'
            '?mode=normative&_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'capabilities']);

  group('FhirRequest - OPERATION:', () {
    test(r'$everything operation', () {
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
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': r'http://hapi.fhir.org/baseR4/$everything'
            '?_format=json&_pretty=false&start=2020-01-01&end=2020-08-01',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test(r'$everything operation for Patient 744742', () {
      final List<String> parameters = <String>[
        'start=2020-01-01',
        'end=2020-08-01'
      ];
      final FhirRequest request = FhirRequest.operation(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        id: '744742',
        operation: 'everything',
        parameters: parameters,
        pretty: false,
      );

      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?_format'
            '=json&_pretty=false&start=2020-01-01&end=2020-08-01',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'operation']);

  group('FhirRequest - SEARCH:', () {
    test('patient id search', () {
      final List<String> parameters = <String>['_id=12345'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient?_format=json&_pretty=false&_id=12345',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient id search using post', () {
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        restfulRequest: RestfulRequest.post_,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Patient/_search?_format=json&_pretty=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation time search', () {
      final List<String> parameters = <String>['_lastUpdated=gt2010-10-01'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation'
            '?_format=json&_pretty=false&_lastUpdated=gt2010-10-01',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('condition search, code parameter (_tag)', () {
      final List<String> parameters = <String>[
        '_tag=http://acme.org/codes|needs-review'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Condition,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Condition'
            '?_format=json&_pretty=false&_tag=http://acme.org/codes|needs-review',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('diagnostic report rearch, uri parameter (_profile)', () {
      final List<String> parameters = <String>[
        '_profile=http://acme.org/codes'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.DiagnosticReport,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/DiagnosticReport'
            '?_format=json&_pretty=false&_profile=http://acme.org/codes',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search if gender present', () {
      final List<String> parameters = <String>['gender:missing=true'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&gender:missing=true',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search if gender present', () {
      final List<String> parameters = <String>['gender:missing=false'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&gender:missing=false',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search for exact text match', () {
      final List<String> parameters = <String>['_text:exact=Stark'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&_text:exact=Stark',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation search "le"', () {
      final List<String> parameters = <String>['_lastUpdated=le2010-10-01'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/Observation?_format=json&_pretty=false&_lastUpdated=le2010-10-01',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('risk assessment search, probability > 0.8', () {
      final List<String> parameters = <String>['probability=gt0.8'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.RiskAssessment,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url':
            'http://hapi.fhir.org/baseR4/RiskAssessment?_format=json&_pretty=false&probability=gt0.8',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search for birthday between two dates', () {
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
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&birthdate=ge2010-01-01&birthdate=le2011-12-31',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search given name with parameters', () {
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
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&given=eve&given:contains=eve&given:exact=eve',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search given name with parameters', () {
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
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4'
            '?_format=json&_pretty=false&_type=Patient&given=eve&given:contains=eve&given:exact=eve',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search with identifier', () {
      final List<String> parameters = <String>[
        'identifier=http://acme.org/patient|2345'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&identifier=http://acme.org/patient|2345',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('composition search section code', () {
      final List<String> parameters = <String>['section:not=48765-2'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Composition,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Composition'
            '?_format=json&_pretty=false&section:not=48765-2',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('condition search via snomed code', () {
      final List<String> parameters = <String>[
        'code:in=http://snomed.info/sct?fhir_vs=isa/126851005'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Condition,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Condition'
            '?_format=json&_pretty=false&code:in=http://snomed.info/sct?fhir_vs=isa/126851005',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('patient search by mr code', () {
      final List<String> parameters = <String>[
        'identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|MR|446053'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Patient,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Patient'
            '?_format=json&_pretty=false&identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|MR|446053',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation search by quantity, with prefix', () {
      final List<String> parameters = <String>[
        'value-quantity=ap5.4|http://unitsofmeasure.org|mg'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation'
            '?_format=json&_pretty=false&value-quantity=ap5.4|http://unitsofmeasure.org|mg',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation search by quantity, without prefix', () {
      final List<String> parameters = <String>[
        'value-quantity=5.4|http://unitsofmeasure.org|mg'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation'
            '?_format=json&_pretty=false&value-quantity=5.4|http://unitsofmeasure.org|mg',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation search by quantity, testing number parsing', () {
      final List<String> parameters = <String>[
        'value-quantity=0.0054|http://unitsofmeasure.org|g'
      ];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation'
            '?_format=json&_pretty=false&value-quantity=0.0054|http://unitsofmeasure.org|g',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });

    test('observation search by reference, using url', () {
      final List<String> parameters = <String>['subject=Patient/123'];
      final FhirRequest request = FhirRequest.search(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        type: R4ResourceType.Observation,
        parameters: parameters,
        pretty: false,
      );
      final FhirHttpRequest fhirHttpRequest = request
          .toFhirHttpRequest(headers: <String, String>{'test': 'headers'});

      final Map<String, dynamic> requestMap = <String, dynamic>{
        'type': 'GET',
        'url': 'http://hapi.fhir.org/baseR4/Observation'
            '?_format=json&_pretty=false&subject=Patient/123',
        'headers': <String, String>{
          'test': 'headers',
          'Accept': 'application/fhir+json',
        }
      };
      expect(fhirHttpRequest.toJson(), requestMap);
    });
  }, tags: <String>['uri', 'search']);
}
