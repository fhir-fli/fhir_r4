// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the event succeeded or failed.
class AuditEventOutcome {
  // Private constructor for internal use (like enum)
  AuditEventOutcome._(this.fhirCode, {this.element});

  /// Factory constructor to create [AuditEventOutcome] from JSON.
  factory AuditEventOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    }
    return AuditEventOutcome._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventOutcome values
  /// value0
  static final AuditEventOutcome value0 = AuditEventOutcome._(
    '0',
  );

  /// value4
  static final AuditEventOutcome value4 = AuditEventOutcome._(
    '4',
  );

  /// value8
  static final AuditEventOutcome value8 = AuditEventOutcome._(
    '8',
  );

  /// value12
  static final AuditEventOutcome value12 = AuditEventOutcome._(
    '12',
  );

  /// For instances where an Element is present but not value

  static final AuditEventOutcome elementOnly = AuditEventOutcome._('');

  /// List of all enum-like values
  static final List<AuditEventOutcome> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome._(fhirCode, element: newElement);
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
