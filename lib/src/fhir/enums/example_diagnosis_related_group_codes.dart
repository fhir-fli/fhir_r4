// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Related Group codes.
enum ExampleDiagnosisRelatedGroupCodes {
  /// Display: Normal Vaginal Delivery
  /// Definition: Normal Vaginal Delivery.
  value100('100'),

  /// Display: Appendectomy - uncomplicated
  /// Definition: Appendectomy without rupture or other complications.
  value101('101'),

  /// Display: Tooth abscess
  /// Definition: Emergency department treatment of a tooth abscess.
  value300('300'),

  /// Display: Head trauma - concussion
  /// Definition: Head trauma - concussion.
  value400('400'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleDiagnosisRelatedGroupCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleDiagnosisRelatedGroupCodes] instances.
  static ExampleDiagnosisRelatedGroupCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisRelatedGroupCodes.elementOnly.withElement(
        element,
      );
    }
    return ExampleDiagnosisRelatedGroupCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleDiagnosisRelatedGroupCodes withElement(Element? newElement) {
    return ExampleDiagnosisRelatedGroupCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
