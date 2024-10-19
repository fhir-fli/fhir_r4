// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Consent Action codes.
@Entity()
class ConsentActionCodes extends FhirCode {
  /// Factory constructor to create [ConsentActionCodes] from JSON.
  factory ConsentActionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentActionCodes._(value, element);
    }
    throw ArgumentError(
      'ConsentActionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// collect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentActionCodes.collect([this.element])
      : dbValue = 'collect',
        super('collect', element);

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentActionCodes.access([this.element])
      : dbValue = 'access',
        super('access', element);

  /// use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentActionCodes.use([this.element])
      : dbValue = 'use',
        super('use', element);

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentActionCodes.disclose([this.element])
      : dbValue = 'disclose',
        super('disclose', element);

  /// correct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentActionCodes.correct([this.element])
      : dbValue = 'correct',
        super('correct', element);

  /// For instances where an Element is present but not value

  ConsentActionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentActionCodes._(super.input, [super.element])
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
    'collect',
    'access',
    'use',
    'disclose',
    'correct',
  ];

  /// Returns the enum value with an element attached
  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentActionCodes.$value';
}
