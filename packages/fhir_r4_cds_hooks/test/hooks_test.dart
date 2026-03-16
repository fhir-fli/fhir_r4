import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('PatientViewContext', () {
    test('round-trip JSON', () {
      final ctx = PatientViewContext(
        userId: 'Practitioner/123',
        patientId: '456',
        encounterId: 'enc-1',
      );
      expect(ctx.hookName, 'patient-view');
      final json = ctx.toJson();
      final decoded = PatientViewContext.fromJson(json);
      expect(decoded.userId, 'Practitioner/123');
      expect(decoded.patientId, '456');
      expect(decoded.encounterId, 'enc-1');
    });

    test('optional encounterId omitted', () {
      final ctx = PatientViewContext(
        userId: 'Practitioner/1',
        patientId: '2',
      );
      expect(ctx.toJson().containsKey('encounterId'), isFalse);
    });
  });

  group('OrderSelectContext', () {
    test('round-trip JSON', () {
      const bundle = Bundle(type: BundleType.collection);
      final ctx = OrderSelectContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        selections: ['ServiceRequest/s1'],
        draftOrders: bundle,
        encounterId: 'e1',
      );
      expect(ctx.hookName, 'order-select');
      final json = ctx.toJson();
      final decoded = OrderSelectContext.fromJson(json);
      expect(decoded.selections, ['ServiceRequest/s1']);
      expect(decoded.draftOrders.type, BundleType.collection);
    });
  });

  group('OrderSignContext', () {
    test('round-trip JSON', () {
      final ctx = OrderSignContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        draftOrders: const Bundle(type: BundleType.collection),
      );
      expect(ctx.hookName, 'order-sign');
      final json = ctx.toJson();
      final decoded = OrderSignContext.fromJson(json);
      expect(decoded.patientId, 'p1');
    });
  });

  group('OrderDispatchContext', () {
    test('round-trip JSON', () {
      final ctx = OrderDispatchContext(
        patientId: 'p1',
        dispatchedOrders: ['ServiceRequest/s1'],
        performer: 'Organization/o1',
      );
      expect(ctx.hookName, 'order-dispatch');
      final json = ctx.toJson();
      expect(json.containsKey('fulfillmentTasks'), isFalse);
      final decoded = OrderDispatchContext.fromJson(json);
      expect(decoded.dispatchedOrders, ['ServiceRequest/s1']);
      expect(decoded.performer, 'Organization/o1');
    });
  });

  group('EncounterStartContext', () {
    test('round-trip JSON', () {
      final ctx = EncounterStartContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        encounterId: 'e1',
      );
      expect(ctx.hookName, 'encounter-start');
      final json = ctx.toJson();
      final decoded = EncounterStartContext.fromJson(json);
      expect(decoded.encounterId, 'e1');
    });
  });

  group('EncounterDischargeContext', () {
    test('round-trip JSON', () {
      final ctx = EncounterDischargeContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        encounterId: 'e1',
      );
      expect(ctx.hookName, 'encounter-discharge');
      final json = ctx.toJson();
      final decoded = EncounterDischargeContext.fromJson(json);
      expect(decoded.encounterId, 'e1');
    });
  });

  group('AppointmentBookContext', () {
    test('round-trip JSON', () {
      final ctx = AppointmentBookContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        appointments: const Bundle(type: BundleType.collection),
      );
      expect(ctx.hookName, 'appointment-book');
      final json = ctx.toJson();
      final decoded = AppointmentBookContext.fromJson(json);
      expect(decoded.appointments.type, BundleType.collection);
    });
  });

  group('AllergyintoleranceCreateContext', () {
    test('round-trip JSON', () {
      final ctx = AllergyintoleranceCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        allergyIntolerance: AllergyIntolerance(
          patient: Reference(reference: 'Patient/p1'.toFhirString),
        ),
      );
      expect(ctx.hookName, 'allergyintolerance-create');
      final json = ctx.toJson();
      final decoded = AllergyintoleranceCreateContext.fromJson(json);
      expect(decoded.allergyIntolerance, isA<AllergyIntolerance>());
    });
  });

  group('MedicationRefillContext', () {
    test('round-trip JSON', () {
      final ctx = MedicationRefillContext(
        patientId: 'p1',
        medications: const Bundle(type: BundleType.collection),
        userId: 'Practitioner/1',
      );
      expect(ctx.hookName, 'medication-refill');
      final json = ctx.toJson();
      final decoded = MedicationRefillContext.fromJson(json);
      expect(decoded.userId, 'Practitioner/1');
    });

    test('optional userId omitted', () {
      final ctx = MedicationRefillContext(
        patientId: 'p1',
        medications: const Bundle(type: BundleType.collection),
      );
      expect(ctx.toJson().containsKey('userId'), isFalse);
    });
  });

  group('ProblemListItemCreateContext', () {
    test('round-trip JSON', () {
      final ctx = ProblemListItemCreateContext(
        userId: 'Practitioner/1',
        patientId: 'p1',
        conditions: const Bundle(type: BundleType.collection),
      );
      expect(ctx.hookName, 'problem-list-item-create');
      final json = ctx.toJson();
      final decoded = ProblemListItemCreateContext.fromJson(json);
      expect(decoded.conditions.type, BundleType.collection);
    });
  });
}
