import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('CdsResponseBuilder extended', () {
    test('empty build produces response with no cards', () {
      final builder = CdsResponseBuilder();
      final response = builder.build();
      expect(response.cards.isEmpty, isTrue);
      expect(response.systemActions, isNull);
    });

    test('addWarningCard with suggestions', () {
      final builder = CdsResponseBuilder()
        ..addWarningCard(
          summary: 'Drug interaction detected',
          sourceLabel: 'PharmDB',
          detail: 'Aspirin may interact with Warfarin',
          suggestions: [
            CdsSuggestion(
              label: 'Remove Aspirin',
              uuid: 'sug-1',
              isRecommended: true,
              actions: [
                CdsAction(
                  type: CdsActionType.delete,
                  resourceId: 'MedicationRequest/mr-1',
                ),
              ],
            ),
          ],
        );
      final response = builder.build();
      expect(response.cards.length, 1);
      expect(response.cards.first.indicator, CdsIndicator.warning);
      expect(
        response.cards.first.detail,
        'Aspirin may interact with Warfarin',
      );
      expect(response.cards.first.suggestions!.length, 1);
      expect(response.cards.first.suggestions!.first.uuid, 'sug-1');
    });

    test('addCriticalCard with suggestions', () {
      final builder = CdsResponseBuilder()
        ..addCriticalCard(
          summary: 'Severe allergy alert',
          sourceLabel: 'AllergyDB',
          detail: 'Patient is allergic to Penicillin',
          suggestions: [
            CdsSuggestion(label: 'Cancel order'),
          ],
        );
      final response = builder.build();
      expect(response.cards.first.indicator, CdsIndicator.critical);
      expect(response.cards.first.suggestions!.first.label, 'Cancel order');
    });

    test('addInfoCard with detail', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(
          summary: 'Patient is due for flu shot',
          sourceLabel: 'Preventive Care',
          detail: '## Recommendation\nAnnual flu vaccination is recommended.',
        );
      final response = builder.build();
      expect(response.cards.first.detail, contains('## Recommendation'));
    });

    test('multiple system actions', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(summary: 'Test', sourceLabel: 'S')
        ..addSystemAction(
          CdsAction(
            type: CdsActionType.create,
            resource: Patient(id: 'new-p'.toFhirString),
          ),
        )
        ..addSystemAction(
          CdsAction(
            type: CdsActionType.delete,
            resourceId: 'MedicationRequest/old-mr',
          ),
        )
        ..addSystemAction(
          CdsAction(
            type: CdsActionType.update,
            resource: Patient(
              id: 'p1'.toFhirString,
              active: true.toFhirBoolean,
            ),
          ),
        );
      final response = builder.build();
      expect(response.systemActions!.length, 3);
      expect(response.systemActions![0].type, CdsActionType.create);
      expect(response.systemActions![1].type, CdsActionType.delete);
      expect(response.systemActions![2].type, CdsActionType.update);
    });

    test('built response cards list is unmodifiable', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(summary: 'Test', sourceLabel: 'S');
      final response = builder.build();
      expect(
        () => response.cards.add(
          CdsCard(
            summary: 'Extra',
            indicator: CdsIndicator.info,
            source: CdsSource(label: 'X'),
          ),
        ),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('built response systemActions list is unmodifiable', () {
      final builder = CdsResponseBuilder()
        ..addInfoCard(summary: 'Test', sourceLabel: 'S')
        ..addSystemAction(CdsAction(type: CdsActionType.create));
      final response = builder.build();
      expect(
        () => response.systemActions!.add(
          CdsAction(type: CdsActionType.delete),
        ),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('full builder output serializes correctly', () {
      final builder = CdsResponseBuilder()
        ..addCard(
          summary: 'Complex card',
          indicator: CdsIndicator.warning,
          source: CdsSource(
            label: 'CDS Service',
            url: 'http://cds.example.com',
            icon: 'http://cds.example.com/icon.png',
            topic: CdsCoding(
              code: 'drug-safety',
              system: 'http://example.com/topics',
              display: 'Drug Safety',
            ),
          ),
          uuid: 'card-uuid-1',
          detail: '## Alert\nDetails here',
          suggestions: [
            CdsResponseBuilder.createSuggestion(
              label: 'Accept recommendation',
              uuid: 'sug-1',
              isRecommended: true,
              action: CdsResponseBuilder.createAction(
                resource: Patient(
                  id: 'alternative-patient'.toFhirString,
                  active: true.toFhirBoolean,
                ),
                description: 'Create alternative prescription',
              ),
            ),
          ],
          selectionBehavior: CdsSelectionBehavior.atMostOne,
          overrideReasons: [
            CdsCoding(
              code: 'patient-preference',
              system: 'http://example.com/reasons',
            ),
          ],
          links: [
            CdsResponseBuilder.absoluteLink(
              label: 'Evidence',
              url: 'http://evidence.example.com',
            ),
            CdsResponseBuilder.smartLink(
              label: 'Launch App',
              url: 'http://smart.example.com/launch',
              appContext: 'drug-review',
            ),
          ],
        )
        ..addSystemAction(
          CdsResponseBuilder.deleteAction(
            resourceId: 'MedicationRequest/mr-old',
            description: 'Remove conflicting order',
          ),
        );
      final response = builder.build();
      final encoded = jsonEncode(response.toJson());
      final decoded = CdsResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );

      expect(decoded.cards.length, 1);
      final card = decoded.cards.first;
      expect(card.summary, 'Complex card');
      expect(card.indicator, CdsIndicator.warning);
      expect(card.source.url, 'http://cds.example.com');
      expect(card.source.topic!.code, 'drug-safety');
      expect(card.uuid, 'card-uuid-1');
      expect(
        card.suggestions!.first.actions!.first.resource,
        isA<Patient>(),
      );
      expect(card.selectionBehavior, CdsSelectionBehavior.atMostOne);
      expect(card.overrideReasons!.length, 1);
      expect(card.links!.length, 2);
      expect(card.links![0].type, CdsLinkType.absolute);
      expect(card.links![1].type, CdsLinkType.smart);
      expect(card.links![1].appContext, 'drug-review');

      expect(decoded.systemActions!.length, 1);
      expect(decoded.systemActions!.first.type, CdsActionType.delete);
      expect(
        decoded.systemActions!.first.resourceId,
        'MedicationRequest/mr-old',
      );
    });
  });

  group('PrefetchResolver extended', () {
    test('resolves multiple templates in parallel', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path == '/Patient/p1') {
          return http.Response(
            jsonEncode({'resourceType': 'Patient', 'id': 'p1'}),
            200,
          );
        }
        if (request.url.path == '/Encounter/enc-1') {
          return http.Response(
            jsonEncode({
              'resourceType': 'Encounter',
              'id': 'enc-1',
              'status': 'in-progress',
              'class': {
                'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                'code': 'AMB',
              },
            }),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
        client: mockClient,
      );

      final results = await resolver.resolve(
        {
          'patient': 'Patient/{{context.patientId}}',
          'encounter': 'Encounter/{{context.encounterId}}',
        },
        {'patientId': 'p1', 'encounterId': 'enc-1'},
      );

      expect(results['patient'], isA<Patient>());
      expect(results['encounter'], isA<Encounter>());
    });

    test('handles mix of successful and failed fetches', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path == '/Patient/p1') {
          return http.Response(
            jsonEncode({'resourceType': 'Patient', 'id': 'p1'}),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
        client: mockClient,
      );

      final results = await resolver.resolve(
        {
          'patient': 'Patient/{{context.patientId}}',
          'conditions': 'Condition?patient={{context.patientId}}'
              '&category=problem-list-item',
        },
        {'patientId': 'p1'},
      );

      expect(results['patient'], isA<Patient>());
      expect(results['conditions'], isNull);
    });

    test('template without placeholders', () async {
      final mockClient = MockClient((request) async {
        expect(request.url.path, '/ValueSet/my-valueset');
        return http.Response(
          jsonEncode({
            'resourceType': 'ValueSet',
            'id': 'my-valueset',
            'status': 'active',
          }),
          200,
        );
      });

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
        client: mockClient,
      );

      final results = await resolver.resolve(
        {'valueset': 'ValueSet/my-valueset'},
        {},
      );

      expect(results['valueset'], isA<ValueSet>());
    });

    test('throws ArgumentError for missing nested context value', () {
      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
      );

      expect(
        () => resolver.resolve(
          {
            'patient': 'Patient/{{context.patientId}}',
            'encounter': 'Encounter/{{context.encounterId}}',
          },
          {'patientId': 'p1'},
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('handles network errors gracefully', () async {
      final mockClient = MockClient((_) async {
        throw Exception('Network error');
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

    test('empty templates returns empty results', () async {
      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer tok',
      );

      final results = await resolver.resolve({}, {});
      expect(results.isEmpty, isTrue);
    });
  });
}
