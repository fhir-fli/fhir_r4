import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('CdsResponseBuilder', () {
    test('builds response with cards', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(
          summary: 'Info message',
          sourceLabel: 'Test',
        )
        ..addWarningCard(
          summary: 'Warning message',
          sourceLabel: 'Test',
        )
        ..addCriticalCard(
          summary: 'Critical message',
          sourceLabel: 'Test',
        );
      final response = builder.build();
      expect(response.cards.length, 3);
      expect(response.cards[0].indicator, CdsIndicator.info);
      expect(response.cards[1].indicator, CdsIndicator.warning);
      expect(response.cards[2].indicator, CdsIndicator.critical);
      expect(response.systemActions, isNull);
    });

    test('builds response with system actions', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(summary: 'Test', sourceLabel: 'Src')
        ..addSystemAction(
          CdsAction(
            type: CdsActionType.update,
            resource: Patient(id: 'p1'.toFhirString),
          ),
        );
      final response = builder.build();
      expect(response.systemActions!.length, 1);
      expect(response.systemActions!.first.type, CdsActionType.update);
    });

    test('addCard with full options', () {
      final builder = CdsResponseBuilder()
        ..addCard(
          summary: 'Full card',
          indicator: CdsIndicator.warning,
          source: CdsSource(label: 'Full'),
          uuid: 'card-uuid',
          detail: 'Details here',
          suggestions: [CdsSuggestion(label: 'Do something')],
          selectionBehavior: CdsSelectionBehavior.atMostOne,
          overrideReasons: [
            CdsCoding(code: 'r1', system: 'http://example.com'),
          ],
          links: [
            CdsResponseBuilder.absoluteLink(
              label: 'More',
              url: 'http://example.com',
            ),
          ],
        );
      final response = builder.build();
      final card = response.cards.first;
      expect(card.uuid, 'card-uuid');
      expect(card.selectionBehavior, CdsSelectionBehavior.atMostOne);
      expect(card.overrideReasons!.length, 1);
      expect(card.links!.first.type, CdsLinkType.absolute);
    });

    test('static convenience methods', () {
      final suggestion = CdsResponseBuilder.createSuggestion(
        label: 'Test suggestion',
        uuid: 'sug-1',
        isRecommended: true,
        action: CdsAction(type: CdsActionType.create),
      );
      expect(suggestion.label, 'Test suggestion');
      expect(suggestion.actions!.length, 1);

      final smartLink = CdsResponseBuilder.smartLink(
        label: 'Launch',
        url: 'http://example.com',
        appContext: 'ctx',
      );
      expect(smartLink.type, CdsLinkType.smart);
      expect(smartLink.appContext, 'ctx');

      final createAction = CdsResponseBuilder.createAction(
        resource: Patient(id: 'p1'.toFhirString),
        description: 'Create patient',
      );
      expect(createAction.type, CdsActionType.create);

      final deleteAction = CdsResponseBuilder.deleteAction(
        resourceId: 'Patient/p1',
        description: 'Remove patient',
      );
      expect(deleteAction.type, CdsActionType.delete);
      expect(deleteAction.resourceId, 'Patient/p1');
    });

    test('built response serializes to valid JSON', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(summary: 'Test', sourceLabel: 'Src');
      final response = builder.build();
      final json = response.toJson();
      final encoded = jsonEncode(json);
      final decoded = CdsResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.cards.first.summary, 'Test');
    });
  });

  group('PrefetchResolver', () {
    test('resolves templates and fetches resources', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path == '/Patient/p1') {
          return http.Response(
            jsonEncode({
              'resourceType': 'Patient',
              'id': 'p1',
            }),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok123',
        client: mockClient,
      );

      final results = await resolver.resolve(
        {'patient': 'Patient/{{context.patientId}}'},
        {'patientId': 'p1'},
      );

      expect(results['patient'], isA<Patient>());
    });

    test('returns null for failed fetches', () async {
      final mockClient = MockClient((_) async {
        return http.Response('Server Error', 500);
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
        client: mockClient,
      );

      final results = await resolver.resolve(
        {'patient': 'Patient/{{context.patientId}}'},
        {'patientId': 'p1'},
      );

      expect(results['patient'], isNull);
    });

    test('throws on missing context value', () {
      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
      );

      expect(
        () => resolver.resolve(
          {'patient': 'Patient/{{context.patientId}}'},
          {},
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('sends authorization header', () async {
      final mockClient = MockClient((request) async {
        expect(request.headers['Authorization'], 'Bearer my-token');
        expect(request.headers['Accept'], 'application/fhir+json');
        return http.Response(
          jsonEncode({'resourceType': 'Patient', 'id': 'p1'}),
          200,
        );
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer my-token',
        client: mockClient,
      );

      await resolver.resolve(
        {'patient': 'Patient/{{context.patientId}}'},
        {'patientId': 'p1'},
      );
    });
  });
}
