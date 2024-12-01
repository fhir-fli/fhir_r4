// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SHALL applications comply with this constraint?
class ConstraintSeverity {
  // Private constructor for internal use (like enum)
  ConstraintSeverity._(this.fhirCode, {this.element});

  /// Factory constructor to create [ConstraintSeverity] from JSON.
  factory ConstraintSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly.withElement(element);
    }
    return ConstraintSeverity._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConstraintSeverity values
  /// error
  static final ConstraintSeverity error = ConstraintSeverity._(
    'error',
  );

  /// warning
  static final ConstraintSeverity warning = ConstraintSeverity._(
    'warning',
  );

  /// For instances where an Element is present but not value

  static final ConstraintSeverity elementOnly = ConstraintSeverity._('');

  /// List of all enum-like values
  static final List<ConstraintSeverity> values = [
    error,
    warning,
  ];

  /// Returns the enum value with an element attached
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
