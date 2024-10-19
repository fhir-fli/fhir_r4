// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How a type relates to its baseDefinition.
@collection
class TypeDerivationRule {
  /// Constructor for internal use (like enum)
  TypeDerivationRule({this.fhirCode, this.element})
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

  /// TypeDerivationRule values
  /// specialization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeDerivationRule specialization = TypeDerivationRule(
    fhirCode: 'specialization',
  );

  /// constraint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeDerivationRule constraint = TypeDerivationRule(
    fhirCode: 'constraint',
  );

  /// For instances where an Element is present but not value

  static final TypeDerivationRule elementOnly = TypeDerivationRule();

  /// List of all enum-like values
  static final List<TypeDerivationRule> values = [
    specialization,
    constraint,
  ];

  /// Returns the enum value with an element attached
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TypeDerivationRule] from JSON.
  static TypeDerivationRule fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRule.elementOnly.withElement(element);
    }
    return TypeDerivationRule.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TypeDerivationRule.$fhirCode';
}
