// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status/availability of a specimen.
enum SpecimenStatus {
  /// Display: Available
  /// Definition: The physical specimen is present and in good condition.
  available('available'),

  /// Display: Unavailable
  /// Definition: There is no physical specimen because it is either lost, destroyed or consumed.
  unavailable('unavailable'),

  /// Display: Unsatisfactory
  /// Definition: The specimen cannot be used because of a quality issue such as a broken container, contamination, or too old.
  unsatisfactory('unsatisfactory'),

  /// Display: Entered in Error
  /// Definition: The specimen was entered in error and therefore nullified.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SpecimenStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SpecimenStatus] instances.
  static SpecimenStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly.withElement(
        element,
      );
    }
    return SpecimenStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
