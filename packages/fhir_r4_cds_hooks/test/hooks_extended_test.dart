import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('PatientViewContext extended', () {
    test('full JSON encode/decode cycle', () {
      final ctx = PatientViewContext(
        userId: 'Practitioner/doc-1',
        patientId: 'p-abc',
        encounterId: 'enc-xyz',
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = PatientViewContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.userId, 'Practitioner/doc-1');
      expect(decoded.patientId, 'p-abc');
      expect(decoded.encounterId, 'enc-xyz');
      expect(decoded.hookName, 'patient-view');
    });

    test('is a CdsHookContext', () {
      final ctx = PatientViewContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
      );
      expect(ctx, isA<CdsHookContext>());
    });
  });

  group('OrderSelectContext extended', () {
    test('with encounterId', () {
      final ctx = OrderSelectContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        selections: ['MedicationRequest/m1', 'MedicationRequest/m2'],
        draftOrders: const Bundle(type: BundleType.collection),
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');
      expect((json['selections'] as List).length, 2);

      final decoded = OrderSelectContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
      expect(decoded.selections.length, 2);
    });

    test('without encounterId', () {
      final ctx = OrderSelectContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        selections: ['ServiceRequest/s1'],
        draftOrders: const Bundle(type: BundleType.collection),
      );
      final json = ctx.toJson();
      expect(json.containsKey('encounterId'), isFalse);
    });

    test('full JSON encode/decode with bundle entries', () {
      final ctx = OrderSelectContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        selections: ['MedicationRequest/m1'],
        draftOrders: Bundle(
          type: BundleType.collection,
          entry: [
            BundleEntry(
              resource: Patient(
                id: 'order-patient'.toFhirString,
              ),
            ),
          ],
        ),
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = OrderSelectContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.draftOrders.entry!.length, 1);
      expect(decoded.draftOrders.entry!.first.resource, isA<Patient>());
    });
  });

  group('OrderSignContext extended', () {
    test('with encounterId', () {
      final ctx = OrderSignContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        draftOrders: const Bundle(type: BundleType.collection),
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');

      final decoded = OrderSignContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
    });

    test('without encounterId', () {
      final ctx = OrderSignContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        draftOrders: const Bundle(type: BundleType.collection),
      );
      expect(ctx.toJson().containsKey('encounterId'), isFalse);
    });
  });

  group('OrderDispatchContext extended', () {
    test('with fulfillmentTasks bundle', () {
      final ctx = OrderDispatchContext(
        patientId: 'p1',
        dispatchedOrders: ['ServiceRequest/s1'],
        performer: 'Organization/o1',
        fulfillmentTasks: Bundle(
          type: BundleType.collection,
          entry: [
            BundleEntry(
              resource: Task(
                status: TaskStatus.requested,
                intent: TaskIntent.order,
              ),
            ),
          ],
        ),
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = OrderDispatchContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.fulfillmentTasks, isNotNull);
      expect(decoded.fulfillmentTasks!.entry!.length, 1);
      expect(decoded.fulfillmentTasks!.entry!.first.resource, isA<Task>());
    });

    test('with multiple dispatched orders', () {
      final ctx = OrderDispatchContext(
        patientId: 'p1',
        dispatchedOrders: [
          'ServiceRequest/s1',
          'ServiceRequest/s2',
          'ServiceRequest/s3',
        ],
        performer: 'Practitioner/prac-1',
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = OrderDispatchContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.dispatchedOrders.length, 3);
      expect(decoded.performer, 'Practitioner/prac-1');
    });
  });

  group('EncounterStartContext extended', () {
    test('full JSON encode/decode cycle', () {
      final ctx = EncounterStartContext(
        userId: 'Practitioner/doc-1',
        patientId: 'p-abc',
        encounterId: 'enc-xyz',
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = EncounterStartContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.userId, 'Practitioner/doc-1');
      expect(decoded.patientId, 'p-abc');
      expect(decoded.encounterId, 'enc-xyz');
      expect(decoded.hookName, 'encounter-start');
    });
  });

  group('EncounterDischargeContext extended', () {
    test('full JSON encode/decode cycle', () {
      final ctx = EncounterDischargeContext(
        userId: 'Practitioner/doc-2',
        patientId: 'p-def',
        encounterId: 'enc-456',
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = EncounterDischargeContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.userId, 'Practitioner/doc-2');
      expect(decoded.patientId, 'p-def');
      expect(decoded.encounterId, 'enc-456');
      expect(decoded.hookName, 'encounter-discharge');
    });
  });

  group('AppointmentBookContext extended', () {
    test('with encounterId', () {
      final ctx = AppointmentBookContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        appointments: const Bundle(type: BundleType.collection),
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');

      final decoded = AppointmentBookContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
    });

    test('without encounterId', () {
      final ctx = AppointmentBookContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        appointments: const Bundle(type: BundleType.collection),
      );
      expect(ctx.toJson().containsKey('encounterId'), isFalse);
    });

    test('full encode/decode with appointment entries', () {
      final ctx = AppointmentBookContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        appointments: Bundle(
          type: BundleType.collection,
          entry: [
            BundleEntry(
              resource: Appointment(
                status: AppointmentStatus.proposed,
                participant: [
                  AppointmentParticipant(
                    actor: Reference(reference: 'Patient/p1'.toFhirString),
                    status: ParticipationStatus.accepted,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = AppointmentBookContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.appointments.entry!.length, 1);
      expect(decoded.appointments.entry!.first.resource, isA<Appointment>());
    });
  });

  group('AllergyintoleranceCreateContext extended', () {
    test('with encounterId', () {
      final ctx = AllergyintoleranceCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        allergyIntolerance: AllergyIntolerance(
          patient: Reference(reference: 'Patient/p1'.toFhirString),
        ),
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');

      final decoded = AllergyintoleranceCreateContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
    });

    test('without encounterId', () {
      final ctx = AllergyintoleranceCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        allergyIntolerance: AllergyIntolerance(
          patient: Reference(reference: 'Patient/p1'.toFhirString),
        ),
      );
      expect(ctx.toJson().containsKey('encounterId'), isFalse);
    });

    test('full encode/decode with detailed allergy', () {
      final ctx = AllergyintoleranceCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        allergyIntolerance: AllergyIntolerance(
          patient: Reference(reference: 'Patient/p1'.toFhirString),
          clinicalStatus: CodeableConcept(
            coding: [
              Coding(
                system:
                    'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical'
                        .toFhirUri,
                code: 'active'.toFhirCode,
              ),
            ],
          ),
          code: CodeableConcept(text: 'Penicillin'.toFhirString),
          type: AllergyIntoleranceType.allergy,
        ),
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = AllergyintoleranceCreateContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.allergyIntolerance.code!.text.toString(), 'Penicillin');
      expect(decoded.allergyIntolerance.type, AllergyIntoleranceType.allergy);
    });
  });

  group('MedicationRefillContext extended', () {
    test('with encounterId', () {
      final ctx = MedicationRefillContext(
        patientId: 'p1',
        medications: const Bundle(type: BundleType.collection),
        userId: 'Practitioner/1',
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');

      final decoded = MedicationRefillContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
    });

    test('without userId and encounterId', () {
      final ctx = MedicationRefillContext(
        patientId: 'p1',
        medications: const Bundle(type: BundleType.collection),
      );
      final json = ctx.toJson();
      expect(json.containsKey('userId'), isFalse);
      expect(json.containsKey('encounterId'), isFalse);
    });
  });

  group('ProblemListItemCreateContext extended', () {
    test('with encounterId', () {
      final ctx = ProblemListItemCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        conditions: const Bundle(type: BundleType.collection),
        encounterId: 'enc-1',
      );
      final json = ctx.toJson();
      expect(json['encounterId'], 'enc-1');

      final decoded = ProblemListItemCreateContext.fromJson(json);
      expect(decoded.encounterId, 'enc-1');
    });

    test('without encounterId', () {
      final ctx = ProblemListItemCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        conditions: const Bundle(type: BundleType.collection),
      );
      expect(ctx.toJson().containsKey('encounterId'), isFalse);
    });

    test('full encode/decode with condition entries', () {
      final ctx = ProblemListItemCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        conditions: Bundle(
          type: BundleType.collection,
          entry: [
            BundleEntry(
              resource: Condition(
                subject: Reference(reference: 'Patient/p1'.toFhirString),
                code: CodeableConcept(text: 'Hypertension'.toFhirString),
              ),
            ),
          ],
        ),
      );
      final encoded = jsonEncode(ctx.toJson());
      final decoded = ProblemListItemCreateContext.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );
      expect(decoded.conditions.entry!.length, 1);
      expect(decoded.conditions.entry!.first.resource, isA<Condition>());
    });
  });

  group('Hook context used in CdsRequest', () {
    test('PatientViewContext toJson used as CdsRequest context', () {
      final hookCtx = PatientViewContext(
        userId: 'Practitioner/123',
        patientId: 'p1',
        encounterId: 'enc-1',
      );
      final request = CdsRequest(
        hook: hookCtx.hookName,
        hookInstance: 'inst-1',
        context: hookCtx.toJson(),
      );
      expect(request.hook, 'patient-view');
      expect(request.context['userId'], 'Practitioner/123');
      expect(request.context['patientId'], 'p1');
      expect(request.context['encounterId'], 'enc-1');
    });

    test('OrderSelectContext toJson used as CdsRequest context', () {
      final hookCtx = OrderSelectContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        selections: ['MedicationRequest/m1'],
        draftOrders: const Bundle(type: BundleType.collection),
      );
      final request = CdsRequest(
        hook: hookCtx.hookName,
        hookInstance: 'inst-2',
        context: hookCtx.toJson(),
      );
      expect(request.hook, 'order-select');
      expect(
        (request.context['selections'] as List).first,
        'MedicationRequest/m1',
      );
    });
  });
}
