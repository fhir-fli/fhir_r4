// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the issue affects the success of the action.
enum IssueSeverity {
  /// Display: Fatal
  /// Definition: The issue caused the action to fail and no further checking could be performed.
  fatal('fatal'),

  /// Display: Error
  /// Definition: The issue is sufficiently important to cause the action to fail.
  error('error'),

  /// Display: Warning
  /// Definition: The issue is not important enough to cause the action to fail but may cause it to be performed suboptimally or in a way that is not as desired.
  warning('warning'),

  /// Display: Information
  /// Definition: The issue has no relation to the degree of success of the action.
  information('information'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const IssueSeverity(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [IssueSeverity] instances.
  static IssueSeverity fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    }
    return IssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
