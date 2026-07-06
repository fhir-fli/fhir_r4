import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// Integration-style tests that simulate end-to-end CDS Hooks workflows.
void main() {
  group('End-to-end: patient-view workflow', () {
    test('discover, invoke, and send feedback', () async {
      final mockClient = MockClient((request) async {
        // Discovery
        if (request.method == 'GET' && request.url.path == '/cds-services') {
          return http.Response(
            jsonEncode({
              'services': [
                {
                  'hook': 'patient-view',
                  'title': 'Patient Alert Service',
                  'description': 'Alerts about the patient',
                  'id': 'patient-alerts',
                  'prefetch': {
                    'patient': 'Patient/{{context.patientId}}',
                  },
                },
              ],
            }),
            200,
          );
        }

        // Invocation
        if (request.method == 'POST' &&
            request.url.path == '/cds-services/patient-alerts') {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['hook'], 'patient-view');
          final context = body['context'] as Map<String, dynamic>;
          expect(context['patientId'], 'p1');

          return http.Response(
            jsonEncode({
              'cards': [
                {
                  'uuid': 'card-1',
                  'summary': 'Patient is overdue for screening',
                  'indicator': 'warning',
                  'source': {'label': 'Preventive Care'},
                  'detail': 'Annual screening was due 3 months ago.',
                  'suggestions': [
                    {
                      'label': 'Order screening',
                      'uuid': 'sug-1',
                      'isRecommended': true,
                      'actions': [
                        {
                          'type': 'create',
                          'resource': {
                            'resourceType': 'ServiceRequest',
                            'id': 'sr-1',
                            'status': 'draft',
                            'intent': 'order',
                            'subject': {
                              'reference': 'Patient/p1',
                            },
                          },
                          'description': 'Order annual screening',
                        },
                      ],
                    },
                  ],
                  'links': [
                    {
                      'label': 'Screening guidelines',
                      'url': 'http://guidelines.example.com',
                      'type': 'absolute',
                    },
                  ],
                },
              ],
            }),
            200,
          );
        }

        // Feedback
        if (request.method == 'POST' &&
            request.url.path == '/cds-services/patient-alerts/feedback') {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          final feedbackList = body['feedback'] as List<dynamic>;
          expect(feedbackList.length, 1);
          expect(
            (feedbackList[0] as Map<String, dynamic>)['card'],
            'card-1',
          );
          return http.Response('', 200);
        }

        return http.Response('Not Found', 404);
      });

      final client = CdsClient(
        baseUrl: 'http://cds.example.com',
        client: mockClient,
      );

      // Step 1: Discover services
      final discovery = await client.discover();
      expect(discovery.services.length, 1);
      final service = discovery.services.first;
      expect(service.id, 'patient-alerts');
      expect(service.hook, 'patient-view');

      // Step 2: Build and send request using hook context
      final hookContext = PatientViewContext(
        userId: 'Practitioner/doc-1',
        patientId: 'p1',
      );
      final request = CdsRequest(
        hook: hookContext.hookName,
        hookInstance: 'inst-${DateTime.now().millisecondsSinceEpoch}',
        context: hookContext.toJson(),
        prefetch: {
          'patient': Patient(
            id: 'p1'.toFhirString,
            name: [HumanName(family: 'Smith'.toFhirString)],
          ),
        },
      );
      final response = await client.invoke(service.id, request);

      // Step 3: Verify response
      expect(response.cards.length, 1);
      final card = response.cards.first;
      expect(card.uuid, 'card-1');
      expect(card.indicator, CdsIndicator.warning);
      expect(
        card.suggestions!.first.actions!.first.resource,
        isA<ServiceRequest>(),
      );
      expect(card.links!.first.type, CdsLinkType.absolute);

      // Step 4: Send feedback
      await client.sendFeedback(
        service.id,
        CdsFeedbackRequest(
          feedback: [
            CdsFeedback(
              card: card.uuid!,
              outcome: CdsFeedbackOutcome.accepted,
              acceptedSuggestions: [
                CdsAcceptedSuggestion(
                  id: card.suggestions!.first.uuid!,
                ),
              ],
              outcomeTimestamp: '2024-06-15T14:30:00Z',
            ),
          ],
        ),
      );
    });
  });

  group('End-to-end: order-sign with drug interaction', () {
    test('detect drug interaction and override', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'POST' &&
            request.url.path == '/cds-services/drug-check') {
          return http.Response(
            jsonEncode({
              'cards': [
                {
                  'uuid': 'drug-card-1',
                  'summary': 'Potential drug interaction: Aspirin + Warfarin',
                  'indicator': 'critical',
                  'source': {'label': 'Drug Interaction DB'},
                  'detail': 'Concurrent use of Aspirin and Warfarin increases '
                      'bleeding risk.',
                  'suggestions': [
                    {
                      'label': 'Remove Aspirin',
                      'uuid': 'remove-aspirin',
                      'isRecommended': true,
                      'actions': [
                        {
                          'type': 'delete',
                          'resourceId': 'MedicationRequest/mr-aspirin',
                          'description': 'Remove Aspirin order',
                        },
                      ],
                    },
                    {
                      'label': 'Substitute with Acetaminophen',
                      'uuid': 'substitute',
                      'actions': [
                        {
                          'type': 'delete',
                          'resourceId': 'MedicationRequest/mr-aspirin',
                        },
                        {
                          'type': 'create',
                          'resource': {
                            'resourceType': 'MedicationRequest',
                            'status': 'draft',
                            'intent': 'order',
                            'medicationCodeableConcept': {
                              'text': 'Acetaminophen',
                            },
                            'subject': {'reference': 'Patient/p1'},
                          },
                        },
                      ],
                    },
                  ],
                  'selectionBehavior': 'at-most-one',
                  'overrideReasons': [
                    {
                      'code': 'clinician-aware',
                      'system': 'http://example.com/reasons',
                      'display': 'Clinician is aware of interaction',
                    },
                    {
                      'code': 'benefit-outweighs-risk',
                      'system': 'http://example.com/reasons',
                      'display': 'Benefit outweighs risk',
                    },
                  ],
                },
              ],
            }),
            200,
          );
        }

        if (request.method == 'POST' &&
            request.url.path == '/cds-services/drug-check/feedback') {
          return http.Response('', 200);
        }

        return http.Response('Not Found', 404);
      });

      final client = CdsClient(
        baseUrl: 'http://cds.example.com',
        client: mockClient,
      );

      // Build order-sign request
      final hookContext = OrderSignContext(
        userId: 'Practitioner/doc-1',
        patientId: 'p1',
        draftOrders: Bundle(
          type: BundleType.collection,
          entry: [
            BundleEntry(
              resource: Patient(
                id: 'mr-aspirin'.toFhirString,
              ),
            ),
          ],
        ),
      );

      final response = await client.invoke(
        'drug-check',
        CdsRequest(
          hook: hookContext.hookName,
          hookInstance: 'inst-1',
          context: hookContext.toJson(),
        ),
      );

      // Verify drug interaction card
      expect(response.cards.length, 1);
      final card = response.cards.first;
      expect(card.indicator, CdsIndicator.critical);
      expect(card.selectionBehavior, CdsSelectionBehavior.atMostOne);
      expect(card.suggestions!.length, 2);
      expect(card.overrideReasons!.length, 2);

      // Verify multi-action suggestion
      final substituteSuggestion = card.suggestions![1];
      expect(substituteSuggestion.actions!.length, 2);
      expect(substituteSuggestion.actions![0].type, CdsActionType.delete);
      expect(substituteSuggestion.actions![1].type, CdsActionType.create);
      expect(
        substituteSuggestion.actions![1].resource,
        isA<MedicationRequest>(),
      );

      // Send override feedback
      await client.sendFeedback(
        'drug-check',
        CdsFeedbackRequest(
          feedback: [
            CdsFeedback(
              card: card.uuid!,
              outcome: CdsFeedbackOutcome.overridden,
              overrideReason: CdsOverrideReason(
                reason: card.overrideReasons!.first,
                userComment: 'Patient has been stable on both medications',
              ),
              outcomeTimestamp: '2024-06-15T15:00:00Z',
            ),
          ],
        ),
      );
    });
  });

  group('End-to-end: build response on server side', () {
    test('service builds response using CdsResponseBuilder', () {
      // Simulate server-side: receive request, build response
      final requestJson = {
        'hook': 'patient-view',
        'hookInstance': 'inst-abc',
        'context': {
          'userId': 'Practitioner/doc-1',
          'patientId': 'p1',
        },
        'prefetch': {
          'patient': {
            'resourceType': 'Patient',
            'id': 'p1',
            'birthDate': '1950-01-15',
          },
        },
      };

      // Parse incoming request
      final request = CdsRequest.fromJson(requestJson);
      expect(request.hook, 'patient-view');
      final patient = request.prefetch!['patient']! as Patient;
      expect(patient.id.toString(), 'p1');

      // Parse hook context
      final context = PatientViewContext.fromJson(request.context);
      expect(context.patientId, 'p1');

      // Build response
      final builder = CdsResponseBuilder()
        ..addWarningCard(
          summary: 'Patient is 74 years old - consider screening',
          sourceLabel: 'Age-based Screening',
          detail: 'Patients over 65 should have annual screening.',
          suggestions: [
            CdsResponseBuilder.createSuggestion(
              label: 'Order screening',
              uuid: 'sug-screen',
              isRecommended: true,
              action: CdsResponseBuilder.createAction(
                resource: Patient(
                  id: context.patientId.toFhirString,
                  active: true.toFhirBoolean,
                ),
                description: 'Order age-appropriate screening',
              ),
            ),
          ],
        );

      final response = builder.build();

      // Verify the response serializes correctly
      final encoded = jsonEncode(response.toJson());
      final decoded = CdsResponse.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );

      expect(decoded.cards.length, 1);
      expect(decoded.cards.first.indicator, CdsIndicator.warning);
      expect(
        decoded.cards.first.suggestions!.first.actions!.first.resource,
        isA<Patient>(),
      );
    });
  });

  group('End-to-end: prefetch resolution', () {
    test('resolve prefetch and build request', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path == '/Patient/p1') {
          return http.Response(
            jsonEncode({
              'resourceType': 'Patient',
              'id': 'p1',
              'name': [
                {
                  'family': 'Smith',
                  'given': ['John'],
                },
              ],
            }),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      // Simulate: service definition has prefetch templates
      final serviceDef = CdsServiceDefinition(
        hook: 'patient-view',
        title: 'Patient Alerts',
        description: 'Alerts',
        id: 'patient-alerts',
        prefetch: {
          'patient': 'Patient/{{context.patientId}}',
        },
      );

      // Client-side: resolve prefetch
      final hookContext = PatientViewContext(
        userId: 'Practitioner/doc-1',
        patientId: 'p1',
      );

      final resolver = PrefetchResolver(
        fhirServerUrl: 'http://fhir.example.com',
        authorization: 'Bearer my-token',
        client: mockClient,
      );

      final prefetchData = await resolver.resolve(
        serviceDef.prefetch!,
        hookContext.toJson(),
      );

      // Build request with resolved prefetch
      final request = CdsRequest(
        hook: hookContext.hookName,
        hookInstance: 'inst-resolve',
        context: hookContext.toJson(),
        fhirServer: 'http://fhir.example.com',
        fhirAuthorization: CdsFhirAuthorization(
          accessToken: 'my-token',
          tokenType: 'Bearer',
          expiresIn: 3600,
          scope: 'patient/*.read',
          subject: 'doc-1',
        ),
        prefetch: prefetchData,
      );

      expect(request.prefetch!['patient'], isA<Patient>());
      final resolvedPatient = request.prefetch!['patient']! as Patient;
      expect(resolvedPatient.name!.first.family.toString(), 'Smith');

      // Verify request serializes and deserializes correctly
      final encoded = jsonEncode(request.toJson());
      final decoded = CdsRequest.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.prefetch!['patient'], isA<Patient>());
    });
  });
}
