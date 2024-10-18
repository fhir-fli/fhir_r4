// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional read.
enum ConditionalReadStatus {
  /// Display: Not Supported
  /// Definition: No support for conditional reads.
  not_supported('not-supported'),

  /// Display: If-Modified-Since
  /// Definition: Conditional reads are supported, but only with the If-Modified-Since HTTP Header.
  modified_since('modified-since'),

  /// Display: If-None-Match
  /// Definition: Conditional reads are supported, but only with the If-None-Match HTTP Header.
  not_match('not-match'),

  /// Display: Full Support
  /// Definition: Conditional reads are supported, with both If-Modified-Since and If-None-Match HTTP Headers.
  full_support('full-support'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionalReadStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionalReadStatus] instances.
  static ConditionalReadStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(
        element,
      );
    }
    return ConditionalReadStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
