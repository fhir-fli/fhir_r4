// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationAdministrationPerformerFunctionCodes(this.fhirCode,
      [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationAdministrationPerformerFunctionCodes] instances.
  static MedicationAdministrationPerformerFunctionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationPerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationPerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationAdministrationPerformerFunctionCodes withElement(
      Element? newElement) {
    return MedicationAdministrationPerformerFunctionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
