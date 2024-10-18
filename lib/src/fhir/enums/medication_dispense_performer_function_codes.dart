// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Performer Function Codes
enum MedicationDispensePerformerFunctionCodes {
  /// Display: Data Enterer
  /// Definition: Recorded the details of the request
  dataenterer('dataenterer'),

  /// Display: Packager
  /// Definition: Prepared the medication.
  packager('packager'),

  /// Display: Checker
  /// Definition: Performed initial quality assurance on the prepared medication
  checker('checker'),

  /// Display: Final Checker
  /// Definition: Performed the final quality assurance on the prepared medication against the request. Typically, this is a pharmacist function.
  finalchecker('finalchecker'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationDispensePerformerFunctionCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationDispensePerformerFunctionCodes] instances.
  static MedicationDispensePerformerFunctionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispensePerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationDispensePerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
