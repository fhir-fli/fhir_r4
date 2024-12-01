// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The outcome of the processing.
class RemittanceOutcome {
  // Private constructor for internal use (like enum)
  RemittanceOutcome._(this.fhirCode, {this.element});

  /// Factory constructor to create [RemittanceOutcome] from JSON.
  factory RemittanceOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome.elementOnly.withElement(element);
    }
    return RemittanceOutcome._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RemittanceOutcome values
  /// queued
  static final RemittanceOutcome queued = RemittanceOutcome._(
    'queued',
  );

  /// complete
  static final RemittanceOutcome complete = RemittanceOutcome._(
    'complete',
  );

  /// error
  static final RemittanceOutcome error = RemittanceOutcome._(
    'error',
  );

  /// partial
  static final RemittanceOutcome partial = RemittanceOutcome._(
    'partial',
  );

  /// For instances where an Element is present but not value

  static final RemittanceOutcome elementOnly = RemittanceOutcome._('');

  /// List of all enum-like values
  static final List<RemittanceOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome._(fhirCode, element: newElement);
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
