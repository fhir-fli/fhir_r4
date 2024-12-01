// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How resource references can be aggregated.
class AggregationMode {
  // Private constructor for internal use (like enum)
  AggregationMode._(this.fhirCode, {this.element});

  /// Factory constructor to create [AggregationMode] from JSON.
  factory AggregationMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode.elementOnly.withElement(element);
    }
    return AggregationMode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AggregationMode values
  /// contained
  static final AggregationMode contained = AggregationMode._(
    'contained',
  );

  /// referenced
  static final AggregationMode referenced = AggregationMode._(
    'referenced',
  );

  /// bundled
  static final AggregationMode bundled = AggregationMode._(
    'bundled',
  );

  /// For instances where an Element is present but not value

  static final AggregationMode elementOnly = AggregationMode._('');

  /// List of all enum-like values
  static final List<AggregationMode> values = [
    contained,
    referenced,
    bundled,
  ];

  /// Returns the enum value with an element attached
  AggregationMode withElement(Element? newElement) {
    return AggregationMode._(fhirCode, element: newElement);
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
