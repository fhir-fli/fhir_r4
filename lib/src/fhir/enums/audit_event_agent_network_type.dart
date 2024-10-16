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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AuditEventAgentNetworkType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AuditEventAgentNetworkType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly.withElement(element);
    }
    return AuditEventAgentNetworkType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
