// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How a type relates to its baseDefinition.
@Entity()
class TypeDerivationRule extends FhirCode {
  /// Factory constructor to create [TypeDerivationRule] from JSON.
  factory TypeDerivationRule.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRule.elementOnly(element);
    }
    if (values.contains(value)) {
      return TypeDerivationRule._(value, element);
    }
    throw ArgumentError(
      'TypeDerivationRule.fromJson: JSON value is not a valid value',
    );
  }

  /// specialization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeDerivationRule.specialization([this.element])
      : dbValue = 'specialization',
        super('specialization', element);

  /// constraint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeDerivationRule.constraint([this.element])
      : dbValue = 'constraint',
        super('constraint', element);

  /// For instances where an Element is present but not value

  TypeDerivationRule.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TypeDerivationRule._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'specialization',
    'constraint',
  ];

  /// Returns the enum value with an element attached
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TypeDerivationRule.$value';
}
