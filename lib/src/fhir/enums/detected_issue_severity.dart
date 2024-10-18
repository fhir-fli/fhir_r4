// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
enum DetectedIssueSeverity {
  /// Display: High
  /// Definition: Indicates the issue may be life-threatening or has the potential to cause permanent injury.
  high('high'),

  /// Display: Moderate
  /// Definition: Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or cause permanent injury.
  moderate('moderate'),

  /// Display: Low
  /// Definition: Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the situation of the subject.
  low('low'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DetectedIssueSeverity(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DetectedIssueSeverity] instances.
  static DetectedIssueSeverity fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    }
    return DetectedIssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
