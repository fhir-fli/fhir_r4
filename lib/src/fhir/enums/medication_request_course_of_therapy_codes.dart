// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Course of Therapy Codes
enum MedicationRequestCourseOfTherapyCodes {
  /// Display: Continuous long term therapy
  /// Definition: A medication which is expected to be continued beyond the present order and which the patient should be assumed to be taking unless explicitly stopped.
  continuous('continuous'),

  /// Display: Short course (acute) therapy
  /// Definition: A medication which the patient is only expected to consume for the duration of the current order and which is not expected to be renewed.
  acute('acute'),

  /// Display: Seasonal
  /// Definition: A medication which is expected to be used on a part time basis at certain times of the year
  seasonal('seasonal'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationRequestCourseOfTherapyCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationRequestCourseOfTherapyCodes] instances.
  static MedicationRequestCourseOfTherapyCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCourseOfTherapyCodes.elementOnly.withElement(
        element,
      );
    }
    return MedicationRequestCourseOfTherapyCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationRequestCourseOfTherapyCodes withElement(Element? newElement) {
    return MedicationRequestCourseOfTherapyCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
