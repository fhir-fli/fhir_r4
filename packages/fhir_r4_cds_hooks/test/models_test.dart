import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('CdsCoding', () {
    test('round-trip JSON', () {
      final coding = CdsCoding(
        code: 'abc',
        system: 'http://example.com',
        display: 'Test',
      );
      final json = coding.toJson();
      final decoded = CdsCoding.fromJson(json);
      expect(decoded.code, 'abc');
      expect(decoded.system, 'http://example.com');
      expect(decoded.display, 'Test');
    });

    test('omits null display', () {
      final coding = CdsCoding(code: 'x', system: 'http://example.com');
      expect(coding.toJson().containsKey('display'), isFalse);
    });

    test('copyWith', () {
      final coding =
          CdsCoding(code: 'a', system: 'http://example.com', display: 'A');
      final copy = coding.copyWith(code: 'b');
      expect(copy.code, 'b');
      expect(copy.system, 'http://example.com');
    });
  });

  group('CdsSource', () {
    test('round-trip JSON', () {
      final source = CdsSource(
        label: 'My CDS',
        url: 'http://example.com',
        icon: 'http://example.com/icon.png',
        topic: CdsCoding(code: 'x', system: 'http://example.com'),
      );
      final json = source.toJson();
      final decoded = CdsSource.fromJson(json);
      expect(decoded.label, 'My CDS');
      expect(decoded.url, 'http://example.com');
      expect(decoded.icon, 'http://example.com/icon.png');
      expect(decoded.topic!.code, 'x');
    });

    test('minimal fields', () {
      final source = CdsSource(label: 'Src');
      final json = source.toJson();
      expect(json.containsKey('url'), isFalse);
      expect(json.containsKey('icon'), isFalse);
      expect(json.containsKey('topic'), isFalse);
    });
  });

  group('CdsFhirAuthorization', () {
    test('round-trip JSON with snake_case keys', () {
      final auth = CdsFhirAuthorization(
        accessToken: 'tok123',
        tokenType: 'Bearer',
        expiresIn: 3600,
        scope: 'patient/*.read',
        subject: 'user123',
      );
      final json = auth.toJson();
      expect(json['access_token'], 'tok123');
      expect(json['token_type'], 'Bearer');
      expect(json['expires_in'], 3600);

      final decoded = CdsFhirAuthorization.fromJson(json);
      expect(decoded.accessToken, 'tok123');
      expect(decoded.tokenType, 'Bearer');
      expect(decoded.expiresIn, 3600);
      expect(decoded.scope, 'patient/*.read');
      expect(decoded.subject, 'user123');
    });
  });

  group('CdsLink', () {
    test('round-trip JSON', () {
      final link = CdsLink(
        label: 'View details',
        url: 'http://example.com',
        type: CdsLinkType.absolute,
        appContext: 'ctx',
      );
      final json = link.toJson();
      final decoded = CdsLink.fromJson(json);
      expect(decoded.label, 'View details');
      expect(decoded.type, CdsLinkType.absolute);
      expect(decoded.appContext, 'ctx');
    });

    test('smart link type', () {
      final link = CdsLink(
        label: 'Launch',
        url: 'http://example.com/launch',
        type: CdsLinkType.smart,
      );
      final json = link.toJson();
      expect(json['type'], 'smart');
      expect(json.containsKey('appContext'), isFalse);
    });
  });

  group('CdsAction', () {
    test('round-trip with FHIR resource', () {
      final patient = Patient(id: 'p1'.toFhirString);
      final action = CdsAction(
        type: CdsActionType.create,
        description: 'Create patient',
        resource: patient,
      );
      final json = action.toJson();
      expect(json['type'], 'create');
      expect(json['description'], 'Create patient');
      expect((json['resource'] as Map)['resourceType'], 'Patient');

      final decoded = CdsAction.fromJson(json);
      expect(decoded.type, CdsActionType.create);
      expect(decoded.resource, isA<Patient>());
    });

    test('delete action with resourceId', () {
      final action = CdsAction(
        type: CdsActionType.delete,
        resourceId: 'MedicationRequest/123',
      );
      final json = action.toJson();
      expect(json['type'], 'delete');
      expect(json['resourceId'], 'MedicationRequest/123');
      expect(json.containsKey('resource'), isFalse);
    });
  });

  group('CdsSuggestion', () {
    test('round-trip JSON', () {
      final suggestion = CdsSuggestion(
        label: 'Accept',
        uuid: 'uuid-1',
        isRecommended: true,
        actions: [
          CdsAction(type: CdsActionType.create),
        ],
      );
      final json = suggestion.toJson();
      final decoded = CdsSuggestion.fromJson(json);
      expect(decoded.label, 'Accept');
      expect(decoded.uuid, 'uuid-1');
      expect(decoded.isRecommended, true);
      expect(decoded.actions!.length, 1);
    });
  });

  group('CdsCard', () {
    test('round-trip JSON', () {
      final card = CdsCard(
        summary: 'High risk',
        indicator: CdsIndicator.critical,
        source: CdsSource(label: 'My CDS'),
        uuid: 'card-1',
        detail: '## Details\nSome markdown',
        suggestions: [CdsSuggestion(label: 'Fix it')],
        selectionBehavior: CdsSelectionBehavior.atMostOne,
        overrideReasons: [
          CdsCoding(code: 'reason1', system: 'http://example.com'),
        ],
        links: [
          CdsLink(
            label: 'More info',
            url: 'http://example.com',
            type: CdsLinkType.absolute,
          ),
        ],
      );
      final json = card.toJson();
      expect(json['selectionBehavior'], 'at-most-one');

      final decoded = CdsCard.fromJson(json);
      expect(decoded.summary, 'High risk');
      expect(decoded.indicator, CdsIndicator.critical);
      expect(decoded.source.label, 'My CDS');
      expect(decoded.selectionBehavior, CdsSelectionBehavior.atMostOne);
      expect(decoded.overrideReasons!.length, 1);
      expect(decoded.links!.length, 1);
    });
  });

  group('CdsFeedback / CdsFeedbackRequest', () {
    test('accepted feedback round-trip', () {
      final feedback = CdsFeedback(
        card: 'card-1',
        outcome: CdsFeedbackOutcome.accepted,
        acceptedSuggestions: [CdsAcceptedSuggestion(id: 'sug-1')],
        outcomeTimestamp: '2024-01-01T00:00:00Z',
      );
      final json = feedback.toJson();
      final decoded = CdsFeedback.fromJson(json);
      expect(decoded.outcome, CdsFeedbackOutcome.accepted);
      expect(decoded.acceptedSuggestions!.first.id, 'sug-1');
    });

    test('overridden feedback with reason', () {
      final feedback = CdsFeedback(
        card: 'card-2',
        outcome: CdsFeedbackOutcome.overridden,
        overrideReason: CdsOverrideReason(
          reason: CdsCoding(code: 'disagree', system: 'http://example.com'),
          userComment: 'Patient declined',
        ),
      );
      final json = feedback.toJson();
      final decoded = CdsFeedback.fromJson(json);
      expect(decoded.overrideReason!.userComment, 'Patient declined');
    });

    test('feedback request round-trip', () {
      final request = CdsFeedbackRequest(
        feedback: [
          CdsFeedback(
            card: 'card-1',
            outcome: CdsFeedbackOutcome.accepted,
          ),
        ],
      );
      final json = request.toJson();
      final decoded = CdsFeedbackRequest.fromJson(json);
      expect(decoded.feedback.length, 1);
    });
  });

  group('CdsServiceDefinition / CdsDiscoveryResponse', () {
    test('round-trip JSON', () {
      final def = CdsServiceDefinition(
        hook: 'patient-view',
        title: 'My Service',
        description: 'A test service',
        id: 'my-service',
        prefetch: {'patient': 'Patient/{{context.patientId}}'},
        usageRequirements: 'Requires patient context',
      );
      final json = def.toJson();
      final decoded = CdsServiceDefinition.fromJson(json);
      expect(decoded.hook, 'patient-view');
      expect(
        decoded.prefetch!['patient'],
        'Patient/{{context.patientId}}',
      );
    });

    test('discovery response round-trip', () {
      final response = CdsDiscoveryResponse(
        services: [
          CdsServiceDefinition(
            hook: 'patient-view',
            title: 'Svc1',
            description: 'desc',
            id: 'svc1',
          ),
        ],
      );
      final json = response.toJson();
      final decoded = CdsDiscoveryResponse.fromJson(json);
      expect(decoded.services.length, 1);
      expect(decoded.services.first.id, 'svc1');
    });
  });

  group('CdsRequest', () {
    test('round-trip JSON with prefetch', () {
      final patient = Patient(id: 'p1'.toFhirString);
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'userId': 'Practitioner/123', 'patientId': 'p1'},
        fhirServer: 'http://fhir.example.com',
        fhirAuthorization: CdsFhirAuthorization(
          accessToken: 'tok',
          tokenType: 'Bearer',
          expiresIn: 3600,
          scope: 'patient/*.read',
          subject: 'user1',
        ),
        prefetch: {'patient': patient},
      );
      final json = request.toJson();
      expect(json['hook'], 'patient-view');
      expect(
        (json['prefetch'] as Map<String, dynamic>)['patient']
            as Map<String, dynamic>,
        containsPair('resourceType', 'Patient'),
      );

      final decoded = CdsRequest.fromJson(json);
      expect(decoded.hook, 'patient-view');
      expect(decoded.prefetch!['patient'], isA<Patient>());
      expect(decoded.fhirAuthorization!.accessToken, 'tok');
    });

    test('extension field maps to "extension" key in JSON', () {
      final request = CdsRequest(
        hook: 'patient-view',
        hookInstance: 'inst-1',
        context: {'patientId': '1'},
        extension_: {'myExtension': 'value'},
      );
      final json = request.toJson();
      expect(json.containsKey('extension'), isTrue);
      expect(
        (json['extension'] as Map<String, dynamic>)['myExtension'],
        'value',
      );

      final decoded = CdsRequest.fromJson(json);
      expect(decoded.extension_!['myExtension'], 'value');
    });
  });

  group('CdsResponse', () {
    test('round-trip JSON', () {
      final response = CdsResponse(
        cards: [
          CdsCard(
            summary: 'Test',
            indicator: CdsIndicator.info,
            source: CdsSource(label: 'Src'),
          ),
        ],
        systemActions: [
          CdsAction(
            type: CdsActionType.update,
            resource: Patient(id: 'p1'.toFhirString),
          ),
        ],
      );
      final json = response.toJson();

      // Verify it survives a full JSON encode/decode cycle
      final roundTripped = CdsResponse.fromJson(
        jsonDecode(jsonEncode(json)) as Map<String, dynamic>,
      );
      expect(roundTripped.cards.length, 1);
      expect(roundTripped.cards.first.summary, 'Test');
      expect(roundTripped.systemActions!.length, 1);
      expect(roundTripped.systemActions!.first.type, CdsActionType.update);
    });

    test('extension field round-trip', () {
      final response = CdsResponse(
        cards: [],
        extension_: {'x': 1},
      );
      final json = response.toJson();
      expect(json['extension'], {'x': 1});

      final decoded = CdsResponse.fromJson(json);
      expect(decoded.extension_!['x'], 1);
    });
  });

  group('Enums', () {
    test('CdsIndicator', () {
      expect(CdsIndicator.fromJson('info'), CdsIndicator.info);
      expect(CdsIndicator.fromJson('warning'), CdsIndicator.warning);
      expect(CdsIndicator.fromJson('critical'), CdsIndicator.critical);
      expect(CdsIndicator.info.toJson(), 'info');
    });

    test('CdsSelectionBehavior', () {
      expect(
        CdsSelectionBehavior.fromJson('at-most-one'),
        CdsSelectionBehavior.atMostOne,
      );
      expect(CdsSelectionBehavior.fromJson('any'), CdsSelectionBehavior.any);
      expect(CdsSelectionBehavior.atMostOne.toJson(), 'at-most-one');
    });

    test('CdsActionType', () {
      expect(CdsActionType.fromJson('create'), CdsActionType.create);
      expect(CdsActionType.fromJson('update'), CdsActionType.update);
      expect(CdsActionType.fromJson('delete'), CdsActionType.delete);
      expect(CdsActionType.delete.toJson(), 'delete');
    });

    test('CdsLinkType', () {
      expect(CdsLinkType.fromJson('absolute'), CdsLinkType.absolute);
      expect(CdsLinkType.fromJson('smart'), CdsLinkType.smart);
      expect(CdsLinkType.absolute.toJson(), 'absolute');
    });

    test('CdsFeedbackOutcome', () {
      expect(
        CdsFeedbackOutcome.fromJson('accepted'),
        CdsFeedbackOutcome.accepted,
      );
      expect(
        CdsFeedbackOutcome.fromJson('overridden'),
        CdsFeedbackOutcome.overridden,
      );
      expect(CdsFeedbackOutcome.overridden.toJson(), 'overridden');
    });
  });
}
