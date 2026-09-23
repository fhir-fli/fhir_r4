import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  final patient = Patient(id: 'p1'.toFhirString);
  final bundle = Bundle(
    type: BundleType.collection,
    entry: [BundleEntry(resource: patient)],
  );

  test('prefetch round-trips through the R4B model', () {
    final request = CdsRequest(
      hook: 'patient-view',
      hookInstance: 'i1',
      context: const <String, dynamic>{'patientId': 'p1'},
      prefetch: {'patient': patient.toJson(), 'declined': null},
    );
    final typed = request.prefetchResources!;
    expect(typed['patient'], isA<Patient>());
    expect((typed['patient']! as Patient).id!.valueString, 'p1');
    expect(typed['declined'], isNull);
    expect(request.toJson()['prefetch'], request.prefetch);
  });

  test('an action resource and the bundle contexts are typed on demand', () {
    final action = CdsAction(
      type: CdsActionType.create,
      resource: patient.toJson(),
    );
    expect(action.typedResource, isA<Patient>());
    final sign = OrderSignContext(
      userId: 'Practitioner/1',
      patientId: 'p1',
      draftOrders: bundle.toJson(),
    );
    expect(sign.draftOrdersBundle.entry!.first.resource, isA<Patient>());
    final dispatch = OrderDispatchContext(
      patientId: 'p1',
      dispatchedOrders: const ['ServiceRequest/s1'],
      performer: 'Organization/o1',
    );
    expect(dispatch.fulfillmentTasksBundle, isNull);
    final allergy = AllergyintoleranceCreateContext(
      userId: 'Practitioner/1',
      patientId: 'p1',
      allergyIntolerance: AllergyIntolerance(
        patient: Reference(reference: 'Patient/p1'.toFhirString),
      ).toJson(),
    );
    expect(
      allergy.allergyIntoleranceResource.patient.reference!.valueString,
      'Patient/p1',
    );
  });
}
