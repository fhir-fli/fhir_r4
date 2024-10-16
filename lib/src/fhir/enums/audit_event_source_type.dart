import 'package:fhir_r4/fhir_r4.dart';

/// The type of process where the audit event originated from.
enum AuditEventSourceType {
  /// Display: User Device
  /// Definition: End-user display device, diagnostic device.
  value1('1'),

  /// Display: Data Interface
  /// Definition: Data acquisition device or instrument.
  value2('2'),

  /// Display: Web Server
  /// Definition: Web Server process or thread.
  value3('3'),

  /// Display: Application Server
  /// Definition: Application Server process or thread.
  value4('4'),

  /// Display: Database Server
  /// Definition: Database Server process or thread.
  value5('5'),

  /// Display: Security Server
  /// Definition: Security server, e.g. a domain controller.
  value6('6'),

  /// Display: Network Device
  /// Definition: ISO level 1-3 network component.
  value7('7'),

  /// Display: Network Router
  /// Definition: ISO level 4-6 operating software.
  value8('8'),

  /// Display: Other
  /// Definition: Other kind of device (defined by DICOM, but some other code/system can be used).
  value9('9'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AuditEventSourceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AuditEventSourceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSourceType.elementOnly.withElement(element);
    }
    return AuditEventSourceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AuditEventSourceType withElement(Element? newElement) {
    return AuditEventSourceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
