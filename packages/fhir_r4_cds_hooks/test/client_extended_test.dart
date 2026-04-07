import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('CdsClient error handling', () {
    test('throws CdsClientException on 400 Bad Request', () async {
      final mockClient = MockClient((_) async {
        return http.Response('{"error": "Bad Request"}', 400);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      expect(client.discover, throwsA(isA<CdsClientException>()));
    });

    test('throws CdsClientException on 500 Internal Server Error', () async {
      final mockClient = MockClient((_) async {
        return http.Response('Internal Server Error', 500);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      expect(client.discover, throwsA(isA<CdsClientException>()));
    });

    test('throws CdsClientException on 503 Service Unavailable', () async {
      final mockClient = MockClient((_) async {
        return http.Response('Service Unavailable', 503);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      expect(client.discover, throwsA(isA<CdsClientException>()));
    });

    test('invoke throws CdsClientException on non-2xx', () async {
      final mockClient = MockClient((_) async {
        return http.Response('{"error": "Service error"}', 422);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
      );
      expect(
        () => client.invoke('svc-1', request),
        throwsA(isA<CdsClientException>()),
      );
    });

    test('sendFeedback throws CdsClientException on non-2xx', () async {
      final mockClient = MockClient((_) async {
        return http.Response('Forbidden', 403);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      expect(
        () => client.sendFeedback(
          'svc-1',
          CdsFeedbackRequest(
            feedback: [
              CdsFeedback(
                card: 'card-1',
                outcome: CdsFeedbackOutcome.accepted,
              ),
            ],
          ),
        ),
        throwsA(isA<CdsClientException>()),
      );
    });

    test('CdsClientException contains status code and body', () async {
      final mockClient = MockClient((_) async {
        return http.Response('{"error": "Not Found"}', 404);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      try {
        await client.discover();
        fail('Expected CdsClientException');
      } on CdsClientException catch (e) {
        expect(e.statusCode, 404);
        expect(e.body, '{"error": "Not Found"}');
        expect(e.toString(), contains('404'));
        expect(e.toString(), contains('Not Found'));
      }
    });
  });

  group('CdsClient headers', () {
    test('sends Content-Type and Accept headers on discover', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Content-Type'], 'application/json');
        expect(request.headers['Accept'], 'application/json');
        return http.Response(
          jsonEncode({'services': <dynamic>[]}),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      await client.discover();
    });

    test('sends Content-Type and Accept headers on invoke', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Content-Type'], 'application/json');
        expect(request.headers['Accept'], 'application/json');
        return http.Response(
          jsonEncode({
            'cards': <dynamic>[],
          }),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      await client.invoke(
        'svc-1',
        CdsRequest(
          hook: 'patient-view',
          hookInstance: 'inst-1',
          context: {'patientId': 'p1'},
        ),
      );
    });

    test('custom headers override defaults', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Authorization'], 'Bearer my-token');
        expect(request.headers['X-Request-Id'], 'req-123');
        return http.Response(
          jsonEncode({'services': <dynamic>[]}),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
        headers: {
          'Authorization': 'Bearer my-token',
          'X-Request-Id': 'req-123',
        },
      );
      await client.discover();
    });
  });

  group('CdsClient URL construction', () {
    test('discover uses correct URL', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), 'http://cds.example.com/cds-services');
        return http.Response(
          jsonEncode({'services': <dynamic>[]}),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://cds.example.com',
        client: mockClient,
      );
      await client.discover();
    });

    test('invoke uses correct URL with service ID', () async {
      final mockClient = MockClient((request) async {
        expect(
          request.url.toString(),
          'http://cds.example.com/cds-services/drug-interaction-check',
        );
        return http.Response(
          jsonEncode({'cards': <dynamic>[]}),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://cds.example.com',
        client: mockClient,
      );
      await client.invoke(
        'drug-interaction-check',
        CdsRequest(
          hook: 'order-sign',
          hookInstance: 'inst-1',
          context: {'patientId': 'p1'},
        ),
      );
    });

    test('sendFeedback uses correct URL with service ID', () async {
      final mockClient = MockClient((request) async {
        expect(
          request.url.toString(),
          'http://cds.example.com/cds-services/my-svc/feedback',
        );
        return http.Response('', 200);
      });
      final client = CdsClient(
        baseUrl: 'http://cds.example.com',
        client: mockClient,
      );
      await client.sendFeedback(
        'my-svc',
        CdsFeedbackRequest(
          feedback: [
            CdsFeedback(
              card: 'card-1',
              outcome: CdsFeedbackOutcome.accepted,
            ),
          ],
        ),
      );
    });
  });

  group('CdsClient request body', () {
    test('invoke sends correct JSON body', () async {
      final mockClient = MockClient((request) async {
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['hook'], 'order-sign');
        expect(body['hookInstance'], 'inst-abc');
        expect(
          (body['context'] as Map<String, dynamic>)['patientId'],
          'p1',
        );
        expect(body['fhirServer'], 'http://fhir.example.com');
        expect(
          (body['fhirAuthorization']
              as Map<String, dynamic>)['access_token'],
          'my-tok',
        );
        expect(body.containsKey('prefetch'), isTrue);
        expect(
          ((body['prefetch'] as Map<String, dynamic>)['patient']
              as Map<String, dynamic>)['resourceType'],
          'Patient',
        );
        return http.Response(
          jsonEncode({'cards': <dynamic>[]}),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      await client.invoke(
        'svc-1',
        CdsRequest(
          hook: 'order-sign',
          hookInstance: 'inst-abc',
          context: {'patientId': 'p1'},
          fhirServer: 'http://fhir.example.com',
          fhirAuthorization: CdsFhirAuthorization(
            accessToken: 'my-tok',
            tokenType: 'Bearer',
            expiresIn: 3600,
            scope: 'patient/*.read',
            subject: 'user1',
          ),
          prefetch: {
            'patient': Patient(id: 'p1'.toFhirString),
          },
        ),
      );
    });

    test('sendFeedback sends correct JSON body', () async {
      final mockClient = MockClient((request) async {
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        final feedbackList = body['feedback'] as List<dynamic>;
        expect(feedbackList.length, 2);
        expect(
          (feedbackList[0] as Map<String, dynamic>)['outcome'],
          'accepted',
        );
        expect(
          (feedbackList[1] as Map<String, dynamic>)['outcome'],
          'overridden',
        );
        return http.Response('', 200);
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      await client.sendFeedback(
        'svc-1',
        CdsFeedbackRequest(
          feedback: [
            CdsFeedback(
              card: 'card-1',
              outcome: CdsFeedbackOutcome.accepted,
            ),
            CdsFeedback(
              card: 'card-2',
              outcome: CdsFeedbackOutcome.overridden,
            ),
          ],
        ),
      );
    });
  });

  group('CdsClient response parsing', () {
    test('discover parses multiple services', () async {
      final mockClient = MockClient((_) async {
        return http.Response(
          jsonEncode({
            'services': [
              {
                'hook': 'patient-view',
                'title': 'Alert Service',
                'description': 'Shows alerts',
                'id': 'alert-svc',
                'prefetch': {
                  'patient': 'Patient/{{context.patientId}}',
                },
              },
              {
                'hook': 'order-sign',
                'title': 'Drug Check',
                'description': 'Checks drugs',
                'id': 'drug-check',
              },
            ],
          }),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      final response = await client.discover();
      expect(response.services.length, 2);
      expect(response.services[0].id, 'alert-svc');
      expect(response.services[0].prefetch!['patient'],
          'Patient/{{context.patientId}}',);
      expect(response.services[1].id, 'drug-check');
      expect(response.services[1].prefetch, isNull);
    });

    test('invoke parses response with cards and system actions', () async {
      final mockClient = MockClient((_) async {
        return http.Response(
          jsonEncode({
            'cards': [
              {
                'summary': 'Drug interaction alert',
                'indicator': 'critical',
                'source': {'label': 'Drug DB'},
                'detail': 'Aspirin interacts with Warfarin',
                'suggestions': [
                  {
                    'label': 'Remove Aspirin',
                    'uuid': 'sug-1',
                    'isRecommended': true,
                    'actions': [
                      {
                        'type': 'delete',
                        'resourceId': 'MedicationRequest/mr-1',
                        'description': 'Remove Aspirin order',
                      },
                    ],
                  },
                ],
              },
            ],
            'systemActions': [
              {
                'type': 'create',
                'resource': {
                  'resourceType': 'Patient',
                  'id': 'p1',
                },
              },
            ],
          }),
          200,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      final response = await client.invoke(
        'drug-check',
        CdsRequest(
          hook: 'order-sign',
          hookInstance: 'inst-1',
          context: {'patientId': 'p1'},
        ),
      );
      expect(response.cards.length, 1);
      expect(response.cards.first.indicator, CdsIndicator.critical);
      expect(response.cards.first.suggestions!.first.uuid, 'sug-1');
      expect(response.systemActions!.length, 1);
      expect(response.systemActions!.first.type, CdsActionType.create);
    });

    test('accepts 201 as successful response', () async {
      final mockClient = MockClient((_) async {
        return http.Response(
          jsonEncode({'services': <dynamic>[]}),
          201,
        );
      });
      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      final response = await client.discover();
      expect(response.services.isEmpty, isTrue);
    });
  });
}
