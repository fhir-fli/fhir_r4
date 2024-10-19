// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
@Entity()
class Diet extends FhirCode {
  /// Factory constructor to create [Diet] from JSON.
  factory Diet.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Diet.elementOnly(element);
    }
    if (values.contains(value)) {
      return Diet._(value, element);
    }
    throw ArgumentError(
      'Diet.fromJson: JSON value is not a valid value',
    );
  }

  /// vegetarian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.vegetarian([this.element])
      : dbValue = 'vegetarian',
        super('vegetarian', element);

  /// dairy_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.dairy_free([this.element])
      : dbValue = 'dairy-free',
        super('dairy-free', element);

  /// nut_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.nut_free([this.element])
      : dbValue = 'nut-free',
        super('nut-free', element);

  /// gluten_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.gluten_free([this.element])
      : dbValue = 'gluten-free',
        super('gluten-free', element);

  /// vegan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.vegan([this.element])
      : dbValue = 'vegan',
        super('vegan', element);

  /// halal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.halal([this.element])
      : dbValue = 'halal',
        super('halal', element);

  /// kosher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Diet.kosher([this.element])
      : dbValue = 'kosher',
        super('kosher', element);

  /// For instances where an Element is present but not value

  Diet.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  Diet._(super.input, [super.element])
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
    'vegetarian',
    'dairy-free',
    'nut-free',
    'gluten-free',
    'vegan',
    'halal',
    'kosher',
  ];

  /// Returns the enum value with an element attached
  Diet withElement(Element? newElement) {
    return Diet._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Diet.$value';
}
