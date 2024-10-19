// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a patients visit.
@Entity()
class SpecialArrangements extends FhirCode {
  /// Factory constructor to create [SpecialArrangements] from JSON.
  factory SpecialArrangements.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialArrangements.elementOnly(element);
    }
    if (values.contains(value)) {
      return SpecialArrangements._(value, element);
    }
    throw ArgumentError(
      'SpecialArrangements.fromJson: JSON value is not a valid value',
    );
  }

  /// wheel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialArrangements.wheel([this.element])
      : dbValue = 'wheel',
        super('wheel', element);

  /// add_bed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialArrangements.add_bed([this.element])
      : dbValue = 'add-bed',
        super('add-bed', element);

  /// int_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialArrangements.int_([this.element])
      : dbValue = 'int',
        super('int', element);

  /// att
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialArrangements.att([this.element])
      : dbValue = 'att',
        super('att', element);

  /// dog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialArrangements.dog([this.element])
      : dbValue = 'dog',
        super('dog', element);

  /// For instances where an Element is present but not value

  SpecialArrangements.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SpecialArrangements._(super.input, [super.element])
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
    'wheel',
    'add-bed',
    'int',
    'att',
    'dog',
  ];

  /// Returns the enum value with an element attached
  SpecialArrangements withElement(Element? newElement) {
    return SpecialArrangements._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialArrangements.$value';
}
