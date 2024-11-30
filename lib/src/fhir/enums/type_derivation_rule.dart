// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a type relates to its baseDefinition.
class TypeDerivationRule {
  // Private constructor for internal use (like enum)
  TypeDerivationRule._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TypeDerivationRule values
  /// specialization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeDerivationRule specialization = TypeDerivationRule._(
    'specialization',
  );

  /// constraint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeDerivationRule constraint = TypeDerivationRule._(
    'constraint',
  );

  /// For instances where an Element is present but not value

  static final TypeDerivationRule elementOnly = TypeDerivationRule._('');

  /// List of all enum-like values
  static final List<TypeDerivationRule> values = [
    specialization,
    constraint,
  ];

  /// Returns the enum value with an element attached
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return TypeDerivationRule._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
