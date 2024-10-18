// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AuditEventSourceType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AuditEventSourceType] instances.
  static AuditEventSourceType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSourceType.elementOnly.withElement(
        element,
      );
    }
    return AuditEventSourceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AuditEventSourceType withElement(Element? newElement) {
    return AuditEventSourceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
