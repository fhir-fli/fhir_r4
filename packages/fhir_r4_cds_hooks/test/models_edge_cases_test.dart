import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('CdsRequest edge cases', () {
    test('minimal request without optional fields', () {
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
      );
      final json = request.toJson();
      expect(json.containsKey('fhirServer'), isFalse);
      expect(json.containsKey('fhirAuthorization'), isFalse);
      expect(json.containsKey('prefetch'), isFalse);
      expect(json.containsKey('extension'), isFalse);
    });

    test('prefetch with null resource value', () {
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
        prefetch: {'patient': null},
      );
      final json = request.toJson();
      final prefetch = json['prefetch'] as Map<String, dynamic>;
      expect(prefetch.containsKey('patient'), isTrue);
      expect(prefetch['patient'], isNull);
    });

    test('prefetch with multiple resource types', () {
      final request = CdsRequest(
        hook: 'order-select',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
        prefetch: {
          'patient': Patient(id: 'p1'.toFhirString),
          'encounter': Encounter(
            status: EncounterStatus.inProgress,
            class_: Coding(
              system: 'http://terminology.hl7.org/CodeSystem/v3-ActCode'
                  .toFhirUri,
              code: 'AMB'.toFhirCode,
            ),
          ),
          'conditions': null,
        },
      );
      final json = request.toJson();
      final encoded = jsonEncode(json);
      final decoded = CdsRequest.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.prefetch!['patient'], isA<Patient>());
      expect(decoded.prefetch!['encounter'], isA<Encounter>());
      expect(decoded.prefetch!['conditions'], isNull);
    });

    test('full JSON encode/decode cycle preserves all fields', () {
      final request = CdsRequest(
        hook: 'order-sign',
        hookInstance: 'inst-abc',
        context: {
          'userId': 'Practitioner/123',
          'patientId': 'p1',
          'draftOrders': {
            'resourceType': 'Bundle',
            'type': 'collection',
          },
        },
        fhirServer: 'http://fhir.example.com',
        fhirAuthorization: CdsFhirAuthorization(
          accessToken: 'tok123',
          tokenType: 'Bearer',
          expiresIn: 3600,
          scope: 'patient/*.read',
          subject: 'user1',
        ),
        prefetch: {'patient': Patient(id: 'p1'.toFhirString)},
        extension_: {'myExt': true, 'nested': {'key': 'val'}},
      );
      final encoded = jsonEncode(request.toJson());
      final decoded = CdsRequest.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.hook, 'order-sign');
      expect(decoded.hookInstance, 'inst-abc');
      expect(decoded.fhirServer, 'http://fhir.example.com');
      expect(decoded.fhirAuthorization!.accessToken, 'tok123');
      expect(decoded.prefetch!['patient'], isA<Patient>());
      expect(decoded.extension_!['myExt'], true);
      expect(
        (decoded.extension_!['nested'] as Map<String, dynamic>)['key'],
        'val',
      );
    });
  });

  group('CdsResponse edge cases', () {
    test('empty cards list', () {
      final response = CdsResponse(cards: []);
      final json = response.toJson();
      expect((json['cards'] as List).isEmpty, isTrue);
      expect(json.containsKey('systemActions'), isFalse);

      final decoded = CdsResponse.fromJson(json);
      expect(decoded.cards.isEmpty, isTrue);
    });

    test('multiple cards with different indicators', () {
      final response = CdsResponse(
        cards: [
          CdsCard(
            summary: 'Info card',
            indicator: CdsIndicator.info,
            source: CdsSource(label: 'S'),
          ),
          CdsCard(
            summary: 'Warning card',
            indicator: CdsIndicator.warning,
            source: CdsSource(label: 'S'),
          ),
          CdsCard(
            summary: 'Critical card',
            indicator: CdsIndicator.critical,
            source: CdsSource(label: 'S'),
          ),
        ],
      );
      final encoded = jsonEncode(response.toJson());
      final decoded = CdsResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.cards.length, 3);
      expect(decoded.cards[0].indicator, CdsIndicator.info);
      expect(decoded.cards[1].indicator, CdsIndicator.warning);
      expect(decoded.cards[2].indicator, CdsIndicator.critical);
    });

    test('system actions with various resource types', () {
      final response = CdsResponse(
        cards: [],
        systemActions: [
          CdsAction(
            type: CdsActionType.create,
            resource: Observation(
              status: ObservationStatus.final_,
              code: CodeableConcept(
                coding: [
                  Coding(
                    system:
                        'http://loinc.org'.toFhirUri,
                    code: '12345-6'.toFhirCode,
                  ),
                ],
              ),
            ),
          ),
          CdsAction(
            type: CdsActionType.delete,
            resourceId: 'MedicationRequest/mr-1',
          ),
          CdsAction(
            type: CdsActionType.update,
            resource: Patient(
              id: 'p1'.toFhirString,
              active: true.toFhirBoolean,
            ),
            description: 'Update patient active status',
          ),
        ],
      );
      final encoded = jsonEncode(response.toJson());
      final decoded = CdsResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.systemActions!.length, 3);
      expect(decoded.systemActions![0].resource, isA<Observation>());
      expect(decoded.systemActions![1].resourceId, 'MedicationRequest/mr-1');
      expect(decoded.systemActions![2].resource, isA<Patient>());
    });
  });

  group('CdsCard edge cases', () {
    test('minimal card with only required fields', () {
      final card = CdsCard(
        summary: 'Minimal',
        indicator: CdsIndicator.info,
        source: CdsSource(label: 'S'),
      );
      final json = card.toJson();
      expect(json.containsKey('uuid'), isFalse);
      expect(json.containsKey('detail'), isFalse);
      expect(json.containsKey('suggestions'), isFalse);
      expect(json.containsKey('selectionBehavior'), isFalse);
      expect(json.containsKey('overrideReasons'), isFalse);
      expect(json.containsKey('links'), isFalse);
    });

    test('card with multiple suggestions', () {
      final card = CdsCard(
        summary: 'Multi suggestion',
        indicator: CdsIndicator.warning,
        source: CdsSource(label: 'S'),
        suggestions: [
          CdsSuggestion(
            label: 'Option A',
            uuid: 'sug-a',
            isRecommended: true,
            actions: [
              CdsAction(
                type: CdsActionType.create,
                resource: Patient(
                  id: 'new-order-patient'.toFhirString,
                ),
              ),
            ],
          ),
          CdsSuggestion(
            label: 'Option B',
            uuid: 'sug-b',
            isRecommended: false,
          ),
        ],
        selectionBehavior: CdsSelectionBehavior.atMostOne,
      );
      final encoded = jsonEncode(card.toJson());
      final decoded = CdsCard.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.suggestions!.length, 2);
      expect(decoded.suggestions![0].isRecommended, true);
      expect(decoded.suggestions![0].actions!.first.resource,
          isA<Patient>());
      expect(decoded.suggestions![1].isRecommended, false);
      expect(decoded.suggestions![1].actions, isNull);
    });

    test('card with multiple links', () {
      final card = CdsCard(
        summary: 'Links card',
        indicator: CdsIndicator.info,
        source: CdsSource(label: 'S'),
        links: [
          CdsLink(
            label: 'External',
            url: 'http://example.com',
            type: CdsLinkType.absolute,
          ),
          CdsLink(
            label: 'SMART App',
            url: 'http://smart.example.com/launch',
            type: CdsLinkType.smart,
            appContext: 'some-context-data',
          ),
        ],
      );
      final encoded = jsonEncode(card.toJson());
      final decoded = CdsCard.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.links!.length, 2);
      expect(decoded.links![0].type, CdsLinkType.absolute);
      expect(decoded.links![0].appContext, isNull);
      expect(decoded.links![1].type, CdsLinkType.smart);
      expect(decoded.links![1].appContext, 'some-context-data');
    });

    test('card with multiple override reasons', () {
      final card = CdsCard(
        summary: 'Override card',
        indicator: CdsIndicator.critical,
        source: CdsSource(label: 'S'),
        overrideReasons: [
          CdsCoding(
            code: 'patient-declined',
            system: 'http://example.com/reasons',
            display: 'Patient declined',
          ),
          CdsCoding(
            code: 'not-applicable',
            system: 'http://example.com/reasons',
            display: 'Not applicable',
          ),
          CdsCoding(
            code: 'other',
            system: 'http://example.com/reasons',
          ),
        ],
      );
      final encoded = jsonEncode(card.toJson());
      final decoded = CdsCard.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.overrideReasons!.length, 3);
      expect(decoded.overrideReasons![0].display, 'Patient declined');
      expect(decoded.overrideReasons![2].display, isNull);
    });
  });

  group('CdsSuggestion edge cases', () {
    test('minimal suggestion with only label', () {
      final suggestion = CdsSuggestion(label: 'Minimal');
      final json = suggestion.toJson();
      expect(json.containsKey('uuid'), isFalse);
      expect(json.containsKey('isRecommended'), isFalse);
      expect(json.containsKey('actions'), isFalse);
    });

    test('suggestion with multiple actions', () {
      final suggestion = CdsSuggestion(
        label: 'Multi-action',
        actions: [
          CdsAction(
            type: CdsActionType.create,
            resource: Patient(id: 'new-p'.toFhirString),
            description: 'Create new patient',
          ),
          CdsAction(
            type: CdsActionType.delete,
            resourceId: 'Patient/old-p',
            description: 'Remove old patient',
          ),
        ],
      );
      final encoded = jsonEncode(suggestion.toJson());
      final decoded = CdsSuggestion.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.actions!.length, 2);
      expect(decoded.actions![0].type, CdsActionType.create);
      expect(decoded.actions![1].type, CdsActionType.delete);
    });
  });

  group('CdsOverrideReason edge cases', () {
    test('empty override reason (both null)', () {
      final reason = CdsOverrideReason();
      final json = reason.toJson();
      expect(json.isEmpty, isTrue);

      final decoded = CdsOverrideReason.fromJson(json);
      expect(decoded.reason, isNull);
      expect(decoded.userComment, isNull);
    });

    test('override reason with only userComment', () {
      final reason = CdsOverrideReason(userComment: 'Free text reason');
      final json = reason.toJson();
      expect(json.containsKey('reason'), isFalse);
      expect(json['userComment'], 'Free text reason');
    });

    test('override reason with only coded reason', () {
      final reason = CdsOverrideReason(
        reason: CdsCoding(code: 'r1', system: 'http://example.com'),
      );
      final json = reason.toJson();
      expect(json.containsKey('userComment'), isFalse);
      expect(
        (json['reason'] as Map<String, dynamic>)['code'],
        'r1',
      );
    });
  });

  group('CdsFeedback edge cases', () {
    test('feedback with multiple accepted suggestions', () {
      final feedback = CdsFeedback(
        card: 'card-1',
        outcome: CdsFeedbackOutcome.accepted,
        acceptedSuggestions: [
          CdsAcceptedSuggestion(id: 'sug-1'),
          CdsAcceptedSuggestion(id: 'sug-2'),
          CdsAcceptedSuggestion(id: 'sug-3'),
        ],
        outcomeTimestamp: '2024-06-15T14:30:00Z',
      );
      final encoded = jsonEncode(feedback.toJson());
      final decoded = CdsFeedback.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.acceptedSuggestions!.length, 3);
      expect(decoded.acceptedSuggestions![1].id, 'sug-2');
      expect(decoded.outcomeTimestamp, '2024-06-15T14:30:00Z');
    });

    test('feedback with no optional fields', () {
      final feedback = CdsFeedback(
        card: 'card-1',
        outcome: CdsFeedbackOutcome.accepted,
      );
      final json = feedback.toJson();
      expect(json.containsKey('acceptedSuggestions'), isFalse);
      expect(json.containsKey('overrideReason'), isFalse);
      expect(json.containsKey('outcomeTimestamp'), isFalse);
    });
  });

  group('CdsFeedbackRequest edge cases', () {
    test('multiple feedback items', () {
      final request = CdsFeedbackRequest(
        feedback: [
          CdsFeedback(
            card: 'card-1',
            outcome: CdsFeedbackOutcome.accepted,
            acceptedSuggestions: [CdsAcceptedSuggestion(id: 'sug-1')],
          ),
          CdsFeedback(
            card: 'card-2',
            outcome: CdsFeedbackOutcome.overridden,
            overrideReason: CdsOverrideReason(
              reason: CdsCoding(code: 'r1', system: 'http://example.com'),
              userComment: 'Not relevant',
            ),
          ),
        ],
      );
      final encoded = jsonEncode(request.toJson());
      final decoded = CdsFeedbackRequest.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.feedback.length, 2);
      expect(decoded.feedback[0].outcome, CdsFeedbackOutcome.accepted);
      expect(decoded.feedback[1].outcome, CdsFeedbackOutcome.overridden);
      expect(decoded.feedback[1].overrideReason!.userComment, 'Not relevant');
    });
  });

  group('CdsServiceDefinition edge cases', () {
    test('without optional fields', () {
      final def = CdsServiceDefinition(
        hook: 'patient-view',
        title: 'Test',
        description: 'Test service',
        id: 'svc-1',
      );
      final json = def.toJson();
      expect(json.containsKey('prefetch'), isFalse);
      expect(json.containsKey('usageRequirements'), isFalse);
    });

    test('with multiple prefetch templates', () {
      final def = CdsServiceDefinition(
        hook: 'order-select',
        title: 'Order Check',
        description: 'Checks orders',
        id: 'order-check',
        prefetch: {
          'patient': 'Patient/{{context.patientId}}',
          'medications':
              'MedicationRequest?patient={{context.patientId}}&status=active',
          'allergies':
              'AllergyIntolerance?patient={{context.patientId}}',
        },
        usageRequirements: 'Requires patient and medication context',
      );
      final encoded = jsonEncode(def.toJson());
      final decoded = CdsServiceDefinition.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.prefetch!.length, 3);
      expect(decoded.prefetch!['patient'], 'Patient/{{context.patientId}}');
      expect(decoded.usageRequirements,
          'Requires patient and medication context');
    });
  });

  group('CdsDiscoveryResponse edge cases', () {
    test('empty services list', () {
      final response = CdsDiscoveryResponse(services: []);
      final json = response.toJson();
      expect((json['services'] as List).isEmpty, isTrue);

      final decoded = CdsDiscoveryResponse.fromJson(json);
      expect(decoded.services.isEmpty, isTrue);
    });

    test('multiple services with different hooks', () {
      final response = CdsDiscoveryResponse(
        services: [
          CdsServiceDefinition(
            hook: 'patient-view',
            title: 'Patient Alerts',
            description: 'Alerts for patient view',
            id: 'patient-alerts',
          ),
          CdsServiceDefinition(
            hook: 'order-sign',
            title: 'Drug Interactions',
            description: 'Check for drug interactions',
            id: 'drug-interactions',
            prefetch: {
              'patient': 'Patient/{{context.patientId}}',
            },
          ),
          CdsServiceDefinition(
            hook: 'encounter-start',
            title: 'Care Gaps',
            description: 'Identify care gaps',
            id: 'care-gaps',
            usageRequirements: 'Requires encounter context',
          ),
        ],
      );
      final encoded = jsonEncode(response.toJson());
      final decoded = CdsDiscoveryResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.services.length, 3);
      expect(decoded.services[0].hook, 'patient-view');
      expect(decoded.services[1].prefetch, isNotNull);
      expect(decoded.services[2].usageRequirements, isNotNull);
    });
  });

  group('CdsAction with update type', () {
    test('update action with resource', () {
      final action = CdsAction(
        type: CdsActionType.update,
        resource: Patient(
          id: 'p1'.toFhirString,
          active: false.toFhirBoolean,
        ),
        description: 'Deactivate patient',
      );
      final encoded = jsonEncode(action.toJson());
      final decoded = CdsAction.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.type, CdsActionType.update);
      expect(decoded.description, 'Deactivate patient');
      expect(decoded.resource, isA<Patient>());
    });
  });
}
