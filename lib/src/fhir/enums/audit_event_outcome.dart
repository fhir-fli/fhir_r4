// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates whether the event succeeded or failed.
@collection
class AuditEventOutcome {
  /// Constructor for internal use (like enum)
  AuditEventOutcome({this.fhirCode, this.element})
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

  /// AuditEventOutcome values
  /// value0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventOutcome value0 = AuditEventOutcome(
    fhirCode: '0',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventOutcome value4 = AuditEventOutcome(
    fhirCode: '4',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventOutcome value8 = AuditEventOutcome(
    fhirCode: '8',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventOutcome value12 = AuditEventOutcome(
    fhirCode: '12',
  );

  /// For instances where an Element is present but not value

  static final AuditEventOutcome elementOnly = AuditEventOutcome();

  /// List of all enum-like values
  static final List<AuditEventOutcome> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventOutcome] from JSON.
  static AuditEventOutcome fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    }
    return AuditEventOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventOutcome.$fhirCode';
}
