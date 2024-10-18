// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a type relates to its baseDefinition.
enum TypeDerivationRule {
  /// Display: Specialization
  /// Definition: This definition defines a new type that adds additional elements to the base type.
  specialization('specialization'),

  /// Display: Constraint
  /// Definition: This definition adds additional rules to an existing concrete type.
  constraint('constraint'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TypeDerivationRule(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TypeDerivationRule] instances.
  static TypeDerivationRule fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
