// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
@Entity()
class FlagCategory extends FhirCode {
  /// Factory constructor to create [FlagCategory] from JSON.
  factory FlagCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return FlagCategory._(value, element);
    }
    throw ArgumentError(
      'FlagCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// diet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.diet([this.element])
      : dbValue = 'diet',
        super('diet', element);

  /// drug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.drug([this.element])
      : dbValue = 'drug',
        super('drug', element);

  /// lab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.lab([this.element])
      : dbValue = 'lab',
        super('lab', element);

  /// admin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.admin([this.element])
      : dbValue = 'admin',
        super('admin', element);

  /// contact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.contact([this.element])
      : dbValue = 'contact',
        super('contact', element);

  /// clinical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.clinical([this.element])
      : dbValue = 'clinical',
        super('clinical', element);

  /// behavioral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.behavioral([this.element])
      : dbValue = 'behavioral',
        super('behavioral', element);

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.research([this.element])
      : dbValue = 'research',
        super('research', element);

  /// advance_directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.advance_directive([this.element])
      : dbValue = 'advance-directive',
        super('advance-directive', element);

  /// safety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FlagCategory.safety([this.element])
      : dbValue = 'safety',
        super('safety', element);

  /// For instances where an Element is present but not value

  FlagCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FlagCategory._(super.input, [super.element])
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
    'diet',
    'drug',
    'lab',
    'admin',
    'contact',
    'clinical',
    'behavioral',
    'research',
    'advance-directive',
    'safety',
  ];

  /// Returns the enum value with an element attached
  FlagCategory withElement(Element? newElement) {
    return FlagCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FlagCategory.$value';
}
