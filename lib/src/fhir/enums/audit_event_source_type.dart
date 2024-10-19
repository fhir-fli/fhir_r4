// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of process where the audit event originated from.
@collection
class AuditEventSourceType {
  /// Constructor for internal use (like enum)
  AuditEventSourceType({this.fhirCode, this.element})
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

  /// AuditEventSourceType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value1 = AuditEventSourceType(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value2 = AuditEventSourceType(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value3 = AuditEventSourceType(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value4 = AuditEventSourceType(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value5 = AuditEventSourceType(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value6 = AuditEventSourceType(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value7 = AuditEventSourceType(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value8 = AuditEventSourceType(
    fhirCode: '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSourceType value9 = AuditEventSourceType(
    fhirCode: '9',
  );

  /// For instances where an Element is present but not value

  static final AuditEventSourceType elementOnly = AuditEventSourceType();

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
    return AuditEventSourceType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return AuditEventSourceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventSourceType.$fhirCode';
}
