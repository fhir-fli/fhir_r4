// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of network access point of this agent in the audit event.
enum AuditEventAgentNetworkType {
  /// Display: Machine Name
  /// Definition: The machine name, including DNS name.
  value1('1'),

  /// Display: IP Address
  /// Definition: The assigned Internet Protocol (IP) address.
  value2('2'),

  /// Display: Telephone Number
  /// Definition: The assigned telephone number.
  value3('3'),

  /// Display: Email address
  /// Definition: The assigned email address.
  value4('4'),

  /// Display: URI
  /// Definition: URI (User directory, HTTP-PUT, ftp, etc.).
  value5('5'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AuditEventAgentNetworkType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AuditEventAgentNetworkType] instances.
  static AuditEventAgentNetworkType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly.withElement(
        element,
      );
    }
    return AuditEventAgentNetworkType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
