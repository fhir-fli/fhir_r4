// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
@Entity()
class SubstanceNameDomain extends FhirCode {
  /// Factory constructor to create [SubstanceNameDomain] from JSON.
  factory SubstanceNameDomain.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameDomain.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubstanceNameDomain._(value, element);
    }
    throw ArgumentError(
      'SubstanceNameDomain.fromJson: JSON value is not a valid value',
    );
  }

  /// ActiveIngredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameDomain.ActiveIngredient([this.element])
      : dbValue = 'ActiveIngredient',
        super('ActiveIngredient', element);

  /// FoodColorAdditive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameDomain.FoodColorAdditive([this.element])
      : dbValue = 'FoodColorAdditive',
        super('FoodColorAdditive', element);

  /// For instances where an Element is present but not value

  SubstanceNameDomain.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubstanceNameDomain._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'ActiveIngredient',
    'FoodColorAdditive',
  ];

  /// Returns the enum value with an element attached
  SubstanceNameDomain withElement(Element? newElement) {
    return SubstanceNameDomain._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameDomain.$value';
}
