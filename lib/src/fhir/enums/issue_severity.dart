// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the issue affects the success of the action.
class IssueSeverity {
  // Private constructor for internal use (like enum)
  IssueSeverity._(this.fhirCode, {this.element});

  /// Factory constructor to create [IssueSeverity] from JSON.
  factory IssueSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    }
    return IssueSeverity._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IssueSeverity values
  /// fatal
  static final IssueSeverity fatal = IssueSeverity._(
    'fatal',
  );

  /// error
  static final IssueSeverity error = IssueSeverity._(
    'error',
  );

  /// warning
  static final IssueSeverity warning = IssueSeverity._(
    'warning',
  );

  /// information
  static final IssueSeverity information = IssueSeverity._(
    'information',
  );

  /// For instances where an Element is present but not value

  static final IssueSeverity elementOnly = IssueSeverity._('');

  /// List of all enum-like values
  static final List<IssueSeverity> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity._(fhirCode, element: newElement);
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
