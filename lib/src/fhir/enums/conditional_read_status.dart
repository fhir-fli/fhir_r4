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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionalReadStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionalReadStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(element);
    }
    return ConditionalReadStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
