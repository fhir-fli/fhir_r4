// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Logical grouping of characteristics.
@Entity()
class CharacteristicCombination extends FhirCode {
  /// Factory constructor to create [CharacteristicCombination] from JSON.
  factory CharacteristicCombination.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombination.elementOnly(element);
    }
    if (values.contains(value)) {
      return CharacteristicCombination._(value, element);
    }
    throw ArgumentError(
      'CharacteristicCombination.fromJson: JSON value is not a valid value',
    );
  }

  /// intersection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CharacteristicCombination.intersection([this.element])
      : dbValue = 'intersection',
        super('intersection', element);

  /// union
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CharacteristicCombination.union([this.element])
      : dbValue = 'union',
        super('union', element);

  /// For instances where an Element is present but not value

  CharacteristicCombination.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CharacteristicCombination._(super.input, [super.element])
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
    'intersection',
    'union',
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombination withElement(Element? newElement) {
    return CharacteristicCombination._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CharacteristicCombination.$value';
}
