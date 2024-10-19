// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How a capability statement is intended to be used.
@collection
class CapabilityStatementKind {
  /// Constructor for internal use (like enum)
  CapabilityStatementKind({this.fhirCode, this.element})
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

  /// CapabilityStatementKind values
  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CapabilityStatementKind instance = CapabilityStatementKind(
    fhirCode: 'instance',
  );

  /// capability
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CapabilityStatementKind capability = CapabilityStatementKind(
    fhirCode: 'capability',
  );

  /// requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CapabilityStatementKind requirements = CapabilityStatementKind(
    fhirCode: 'requirements',
  );

  /// For instances where an Element is present but not value

  static final CapabilityStatementKind elementOnly = CapabilityStatementKind();

  /// List of all enum-like values
  static final List<CapabilityStatementKind> values = [
    instance,
    capability,
    requirements,
  ];

  /// Returns the enum value with an element attached
  CapabilityStatementKind withElement(Element? newElement) {
    return CapabilityStatementKind(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CapabilityStatementKind] from JSON.
  static CapabilityStatementKind fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKind.elementOnly.withElement(element);
    }
    return CapabilityStatementKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CapabilityStatementKind.$fhirCode';
}
