import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('CdsSource copyWith', () {
    test('replaces label only', () {
      final source = CdsSource(
        label: 'Original',
        url: 'http://example.com',
        icon: 'http://example.com/icon.png',
        topic: CdsCoding(code: 'x', system: 'http://example.com'),
      );
      final copy = source.copyWith(label: 'Updated');
      expect(copy.label, 'Updated');
      expect(copy.url, 'http://example.com');
      expect(copy.icon, 'http://example.com/icon.png');
      expect(copy.topic!.code, 'x');
    });

    test('replaces topic', () {
      final source = CdsSource(label: 'S');
      final copy = source.copyWith(
        topic: CdsCoding(code: 'new', system: 'http://new.com'),
      );
      expect(copy.topic!.code, 'new');
      expect(copy.label, 'S');
    });
  });

  group('CdsLink copyWith', () {
    test('changes type', () {
      final link = CdsLink(
        label: 'Link',
        url: 'http://example.com',
        type: CdsLinkType.absolute,
        appContext: 'ctx',
      );
      final copy = link.copyWith(type: CdsLinkType.smart);
      expect(copy.type, CdsLinkType.smart);
      expect(copy.label, 'Link');
      expect(copy.appContext, 'ctx');
    });
  });

  group('CdsAction copyWith', () {
    test('changes type and adds description', () {
      final action = CdsAction(
        type: CdsActionType.create,
        resource: Patient(id: 'p1'.toFhirString),
      );
      final copy = action.copyWith(
        type: CdsActionType.update,
        description: 'Update patient',
      );
      expect(copy.type, CdsActionType.update);
      expect(copy.description, 'Update patient');
      expect(copy.resource, isA<Patient>());
    });

    test('preserves resourceId', () {
      final action = CdsAction(
        type: CdsActionType.delete,
        resourceId: 'Patient/p1',
      );
      final copy = action.copyWith(description: 'Remove');
      expect(copy.type, CdsActionType.delete);
      expect(copy.resourceId, 'Patient/p1');
      expect(copy.description, 'Remove');
    });
  });

  group('CdsSuggestion copyWith', () {
    test('changes label and isRecommended', () {
      final suggestion = CdsSuggestion(
        label: 'Original',
        uuid: 'sug-1',
        isRecommended: false,
        actions: [CdsAction(type: CdsActionType.create)],
      );
      final copy = suggestion.copyWith(
        label: 'Updated',
        isRecommended: true,
      );
      expect(copy.label, 'Updated');
      expect(copy.isRecommended, true);
      expect(copy.uuid, 'sug-1');
      expect(copy.actions!.length, 1);
    });
  });

  group('CdsCard copyWith', () {
    test('changes summary and indicator', () {
      final card = CdsCard(
        summary: 'Original',
        indicator: CdsIndicator.info,
        source: CdsSource(label: 'Src'),
        uuid: 'card-1',
        detail: 'Some detail',
      );
      final copy = card.copyWith(
        summary: 'Updated',
        indicator: CdsIndicator.critical,
      );
      expect(copy.summary, 'Updated');
      expect(copy.indicator, CdsIndicator.critical);
      expect(copy.source.label, 'Src');
      expect(copy.uuid, 'card-1');
      expect(copy.detail, 'Some detail');
    });

    test('adds suggestions and links', () {
      final card = CdsCard(
        summary: 'Test',
        indicator: CdsIndicator.warning,
        source: CdsSource(label: 'S'),
      );
      final copy = card.copyWith(
        suggestions: [CdsSuggestion(label: 'Do it')],
        links: [
          CdsLink(
            label: 'More',
            url: 'http://example.com',
            type: CdsLinkType.absolute,
          ),
        ],
        selectionBehavior: CdsSelectionBehavior.atMostOne,
      );
      expect(copy.suggestions!.length, 1);
      expect(copy.links!.length, 1);
      expect(copy.selectionBehavior, CdsSelectionBehavior.atMostOne);
    });
  });

  group('CdsFeedback copyWith', () {
    test('changes outcome', () {
      final feedback = CdsFeedback(
        card: 'card-1',
        outcome: CdsFeedbackOutcome.accepted,
        outcomeTimestamp: '2024-01-01T00:00:00Z',
      );
      final copy = feedback.copyWith(
        outcome: CdsFeedbackOutcome.overridden,
        overrideReason: CdsOverrideReason(userComment: 'Disagree'),
      );
      expect(copy.outcome, CdsFeedbackOutcome.overridden);
      expect(copy.overrideReason!.userComment, 'Disagree');
      expect(copy.card, 'card-1');
      expect(copy.outcomeTimestamp, '2024-01-01T00:00:00Z');
    });
  });

  group('CdsOverrideReason copyWith', () {
    test('changes userComment', () {
      final reason = CdsOverrideReason(
        reason: CdsCoding(code: 'r1', system: 'http://example.com'),
        userComment: 'Original',
      );
      final copy = reason.copyWith(userComment: 'Updated');
      expect(copy.userComment, 'Updated');
      expect(copy.reason!.code, 'r1');
    });
  });

  group('CdsAcceptedSuggestion copyWith', () {
    test('changes id', () {
      final suggestion = CdsAcceptedSuggestion(id: 'sug-1');
      final copy = suggestion.copyWith(id: 'sug-2');
      expect(copy.id, 'sug-2');
    });
  });

  group('CdsFhirAuthorization copyWith', () {
    test('changes accessToken and expiresIn', () {
      final auth = CdsFhirAuthorization(
        accessToken: 'old-token',
        tokenType: 'Bearer',
        expiresIn: 3600,
        scope: 'patient/*.read',
        subject: 'user1',
      );
      final copy = auth.copyWith(
        accessToken: 'new-token',
        expiresIn: 7200,
      );
      expect(copy.accessToken, 'new-token');
      expect(copy.expiresIn, 7200);
      expect(copy.tokenType, 'Bearer');
      expect(copy.scope, 'patient/*.read');
      expect(copy.subject, 'user1');
    });
  });

  group('CdsServiceDefinition copyWith', () {
    test('changes title and adds prefetch', () {
      final def = CdsServiceDefinition(
        hook: 'patient-view',
        title: 'Old Title',
        description: 'A service',
        id: 'svc-1',
      );
      final copy = def.copyWith(
        title: 'New Title',
        prefetch: {'patient': 'Patient/{{context.patientId}}'},
      );
      expect(copy.title, 'New Title');
      expect(copy.prefetch!['patient'], 'Patient/{{context.patientId}}');
      expect(copy.hook, 'patient-view');
      expect(copy.id, 'svc-1');
    });
  });

  group('CdsDiscoveryResponse copyWith', () {
    test('replaces services list', () {
      final response = CdsDiscoveryResponse(
        services: [
          CdsServiceDefinition(
            hook: 'patient-view',
            title: 'Svc1',
            description: 'd1',
            id: 's1',
          ),
        ],
      );
      final copy = response.copyWith(
        services: [
          CdsServiceDefinition(
            hook: 'order-sign',
            title: 'Svc2',
            description: 'd2',
            id: 's2',
          ),
          CdsServiceDefinition(
            hook: 'encounter-start',
            title: 'Svc3',
            description: 'd3',
            id: 's3',
          ),
        ],
      );
      expect(copy.services.length, 2);
      expect(copy.services.first.hook, 'order-sign');
    });
  });

  group('CdsRequest copyWith', () {
    test('changes hook and adds extension', () {
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
      );
      final copy = request.copyWith(
        hook: 'order-select',
        extension_: {'custom': 'data'},
      );
      expect(copy.hook, 'order-select');
      expect(copy.extension_!['custom'], 'data');
      expect(copy.hookInstance, 'inst-1');
      expect(copy.context['patientId'], 'p1');
    });

    test('adds fhirServer and authorization', () {
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': 'p1'},
      );
      final copy = request.copyWith(
        fhirServer: 'http://fhir.example.com',
        fhirAuthorization: CdsFhirAuthorization(
          accessToken: 'tok',
          tokenType: 'Bearer',
          expiresIn: 3600,
          scope: 'patient/*.read',
          subject: 'user1',
        ),
      );
      expect(copy.fhirServer, 'http://fhir.example.com');
      expect(copy.fhirAuthorization!.accessToken, 'tok');
    });
  });

  group('CdsResponse copyWith', () {
    test('replaces cards', () {
      final response = CdsResponse(
        cards: [
          CdsCard(
            summary: 'Original',
            indicator: CdsIndicator.info,
            source: CdsSource(label: 'Src'),
          ),
        ],
      );
      final copy = response.copyWith(
        cards: [
          CdsCard(
            summary: 'New',
            indicator: CdsIndicator.warning,
            source: CdsSource(label: 'New Src'),
          ),
        ],
        extension_: {'key': 'value'},
      );
      expect(copy.cards.length, 1);
      expect(copy.cards.first.summary, 'New');
      expect(copy.extension_!['key'], 'value');
    });

    test('adds system actions', () {
      final response = CdsResponse(cards: []);
      final copy = response.copyWith(
        systemActions: [
          CdsAction(
            type: CdsActionType.delete,
            resourceId: 'MedicationRequest/123',
          ),
        ],
      );
      expect(copy.systemActions!.length, 1);
      expect(copy.systemActions!.first.type, CdsActionType.delete);
    });
  });

  group('CdsFeedbackRequest copyWith', () {
    test('replaces feedback list', () {
      final request = CdsFeedbackRequest(
        feedback: [
          CdsFeedback(
            card: 'card-1',
            outcome: CdsFeedbackOutcome.accepted,
          ),
        ],
      );
      final copy = request.copyWith(
        feedback: [
          CdsFeedback(
            card: 'card-2',
            outcome: CdsFeedbackOutcome.overridden,
          ),
          CdsFeedback(
            card: 'card-3',
            outcome: CdsFeedbackOutcome.accepted,
          ),
        ],
      );
      expect(copy.feedback.length, 2);
      expect(copy.feedback.first.card, 'card-2');
    });
  });
}
