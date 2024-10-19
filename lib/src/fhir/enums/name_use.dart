// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The use of a human name.
@Entity()
class NameUse extends FhirCode {
  /// Factory constructor to create [NameUse] from JSON.
  factory NameUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return NameUse._(value, element);
    }
    throw ArgumentError(
      'NameUse.fromJson: JSON value is not a valid value',
    );
  }

  /// usual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.usual([this.element])
      : dbValue = 'usual',
        super('usual', element);

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.official([this.element])
      : dbValue = 'official',
        super('official', element);

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.temp([this.element])
      : dbValue = 'temp',
        super('temp', element);

  /// nickname
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.nickname([this.element])
      : dbValue = 'nickname',
        super('nickname', element);

  /// anonymous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.anonymous([this.element])
      : dbValue = 'anonymous',
        super('anonymous', element);

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.old([this.element])
      : dbValue = 'old',
        super('old', element);

  /// maiden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NameUse.maiden([this.element])
      : dbValue = 'maiden',
        super('maiden', element);

  /// For instances where an Element is present but not value

  NameUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NameUse._(super.input, [super.element])
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
    'usual',
    'official',
    'temp',
    'nickname',
    'anonymous',
    'old',
    'maiden',
  ];

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NameUse.$value';
}
