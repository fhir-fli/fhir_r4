// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional read.
class ConditionalReadStatus {
  // Private constructor for internal use (like enum)
  ConditionalReadStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ConditionalReadStatus] from JSON.
  factory ConditionalReadStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(element);
    }
    return ConditionalReadStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionalReadStatus values
  /// not_supported
  static final ConditionalReadStatus not_supported = ConditionalReadStatus._(
    'not-supported',
  );

  /// modified_since
  static final ConditionalReadStatus modified_since = ConditionalReadStatus._(
    'modified-since',
  );

  /// not_match
  static final ConditionalReadStatus not_match = ConditionalReadStatus._(
    'not-match',
  );

  /// full_support
  static final ConditionalReadStatus full_support = ConditionalReadStatus._(
    'full-support',
  );

  /// For instances where an Element is present but not value

  static final ConditionalReadStatus elementOnly = ConditionalReadStatus._('');

  /// List of all enum-like values
  static final List<ConditionalReadStatus> values = [
    not_supported,
    modified_since,
    not_match,
    full_support,
  ];

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus._(fhirCode, element: newElement);
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
