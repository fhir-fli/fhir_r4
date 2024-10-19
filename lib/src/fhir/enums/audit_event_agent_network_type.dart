// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of network access point of this agent in the audit event.
@collection
class AuditEventAgentNetworkType {
  /// Constructor for internal use (like enum)
  AuditEventAgentNetworkType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventAgentNetworkType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType(
    fhirCode: '5',
  );

  /// For instances where an Element is present but not value

  static final AuditEventAgentNetworkType elementOnly =
      AuditEventAgentNetworkType();

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
    return AuditEventAgentNetworkType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventAgentNetworkType.$fhirCode';
}
