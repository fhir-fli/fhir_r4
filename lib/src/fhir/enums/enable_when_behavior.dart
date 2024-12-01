// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Controls how multiple enableWhen values are interpreted - whether all or any must be true.
class EnableWhenBehavior {
  // Private constructor for internal use (like enum)
  EnableWhenBehavior._(this.fhirCode, {this.element});

  /// Factory constructor to create [EnableWhenBehavior] from JSON.
  factory EnableWhenBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly.withElement(element);
    }
    return EnableWhenBehavior._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EnableWhenBehavior values
  /// all
  static final EnableWhenBehavior all = EnableWhenBehavior._(
    'all',
  );

  /// any
  static final EnableWhenBehavior any = EnableWhenBehavior._(
    'any',
  );

  /// For instances where an Element is present but not value

  static final EnableWhenBehavior elementOnly = EnableWhenBehavior._('');

  /// List of all enum-like values
  static final List<EnableWhenBehavior> values = [
    all,
    any,
  ];

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior._(fhirCode, element: newElement);
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
