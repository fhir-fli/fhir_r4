import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Performer Function Codes
enum MedicationAdministrationPerformerFunctionCodes {
  /// Display: Performer
  /// Definition: A person, non-person living subject, organization or device that who actually and principally carries out the action
  performer('performer'),

  /// Display: Verifier
  /// Definition: A person who verifies the correctness and appropriateness of the service (plan, order, event, etc.) and hence takes on accountability.
  verifier('verifier'),

  /// Display: Witness
  /// Definition: A person witnessing the action happening without doing anything. A witness is not necessarily aware, much less approves of anything stated in the service event. Example for a witness is students watching an operation or an advanced directive witness.
  witness('witness'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationAdministrationPerformerFunctionCodes(this.fhirCode,
      [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationAdministrationPerformerFunctionCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationPerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationPerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationAdministrationPerformerFunctionCodes withElement(
      Element? newElement) {
    return MedicationAdministrationPerformerFunctionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
