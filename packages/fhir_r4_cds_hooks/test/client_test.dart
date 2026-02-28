import 'dart:convert';

import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('CdsClient', () {
    test('discover() calls GET /cds-services', () async {
      final mockClient = MockClient((request) async {
        expect(request.method, 'GET');
        expect(request.url.path, '/cds-services');
        return http.Response(
          jsonEncode({
            'services': [
              {
                'hook': 'patient-view',
                'title': 'Test Service',
                'description': 'A test',
                'id': 'test-svc',
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
      expect(response.services.length, 1);
      expect(response.services.first.id, 'test-svc');
    });

    test('invoke() calls POST /cds-services/{id}', () async {
      final mockClient = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/cds-services/my-svc');
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['hook'], 'patient-view');

        return http.Response(
          jsonEncode({
            'cards': [
              {
                'summary': 'Hello',
                'indicator': 'info',
                'source': {'label': 'Test'},
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
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
      );
      final response = await client.invoke('my-svc', request);
      expect(response.cards.length, 1);
      expect(response.cards.first.summary, 'Hello');
    });

    test('sendFeedback() calls POST /cds-services/{id}/feedback', () async {
      final mockClient = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/cds-services/my-svc/feedback');
        return http.Response('', 200);
      });

      final client = CdsClient(
        baseUrl: 'http://localhost',
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

    test('throws CdsClientException on non-2xx', () async {
      final mockClient = MockClient((_) async {
        return http.Response('Not Found', 404);
      });

      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
      );
      expect(
        client.discover,
        throwsA(isA<CdsClientException>()),
      );
    });

    test('custom headers are sent', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['X-Custom'], 'value');
        return http.Response(
          jsonEncode({'services': <dynamic>[]}),
          200,
        );
      });

      final client = CdsClient(
        baseUrl: 'http://localhost',
        client: mockClient,
        headers: {'X-Custom': 'value'},
      );
      await client.discover();
    });
  });
}
