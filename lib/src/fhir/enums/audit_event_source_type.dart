// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of process where the audit event originated from.
class AuditEventSourceType {
  // Private constructor for internal use (like enum)
  AuditEventSourceType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventSourceType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value1 = AuditEventSourceType._(
    '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value2 = AuditEventSourceType._(
    '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value3 = AuditEventSourceType._(
    '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value4 = AuditEventSourceType._(
    '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value5 = AuditEventSourceType._(
    '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value6 = AuditEventSourceType._(
    '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value7 = AuditEventSourceType._(
    '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value8 = AuditEventSourceType._(
    '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value9 = AuditEventSourceType._(
    '9',
  );

  /// For instances where an Element is present but not value

  static final AuditEventSourceType elementOnly = AuditEventSourceType._('');

  /// List of all enum-like values
  static final List<AuditEventSourceType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
  ];

  /// Returns the enum value with an element attached
  AuditEventSourceType withElement(Element? newElement) {
    return AuditEventSourceType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventSourceType] from JSON.
  static AuditEventSourceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSourceType.elementOnly.withElement(element);
    }
    return AuditEventSourceType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
