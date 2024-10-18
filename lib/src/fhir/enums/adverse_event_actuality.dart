// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall nature of the adverse event, e.g. real or potential.
enum AdverseEventActuality {
  /// Display: Adverse Event
  /// Definition: The adverse event actually happened regardless of whether anyone was affected or harmed.
  actual('actual'),

  /// Display: Potential Adverse Event
  /// Definition: A potential adverse event.
  potential('potential'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdverseEventActuality(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdverseEventActuality] instances.
  static AdverseEventActuality fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly.withElement(element);
    }
    return AdverseEventActuality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
