// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SHALL applications comply with this constraint?
enum ConstraintSeverity {
  /// Display: Error
  /// Definition: If the constraint is violated, the resource is not conformant.
  error('error'),

  /// Display: Warning
  /// Definition: If the constraint is violated, the resource is conformant, but it is not necessarily following best practice.
  warning('warning'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConstraintSeverity(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConstraintSeverity] instances.
  static ConstraintSeverity fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly.withElement(element);
    }
    return ConstraintSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
