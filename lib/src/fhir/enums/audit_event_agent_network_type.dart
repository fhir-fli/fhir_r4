// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkType {
  // Private constructor for internal use (like enum)
  AuditEventAgentNetworkType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventAgentNetworkType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType._(
    '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType._(
    '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType._(
    '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType._(
    '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType._(
    '5',
  );

  /// For instances where an Element is present but not value

  static final AuditEventAgentNetworkType elementOnly =
      AuditEventAgentNetworkType._('');

  /// List of all enum-like values
  static final List<AuditEventAgentNetworkType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventAgentNetworkType] from JSON.
  static AuditEventAgentNetworkType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly.withElement(element);
    }
    return AuditEventAgentNetworkType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
