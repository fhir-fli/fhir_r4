import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final initialMedicationRequest = MedicationRequest(
    id: '1'.toFhirString,
    status: MedicationrequestStatus.active,
    intent: MedicationRequestIntent.plan,
    medicationX: Reference(reference: 'Medication/1'.toFhirString),
    subject: Reference(reference: 'Patient/1'.toFhirString),
  );

  final medicationRequests = [
    MedicationRequest(
      id: '1'.toFhirString,
      status: MedicationrequestStatus.active,
      intent: MedicationRequestIntent.plan,
      medicationX: Reference(reference: 'Medication/1'.toFhirString),
      subject: Reference(reference: 'Patient/1'.toFhirString),
    ),
  ];

  group('Simple Equality Checker', () {
    test('2 MedicationRequests using "=="', () {
      expect(initialMedicationRequest == medicationRequests.first, true);
    });
    test('2 MedicationRequests using "equalsDeep"', () {
      expect(
        initialMedicationRequest.equalsDeep(medicationRequests.first),
        true,
      );
    });
    // This is due to how Dart handles List equality
    test('2 Lists of MedicationRequests', () {
      expect([initialMedicationRequest] == [medicationRequests.first], false);
    });
  });
}
