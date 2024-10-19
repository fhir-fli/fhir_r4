// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The gender of a person used for administrative purposes.
@Entity()
class AdministrativeGender extends FhirCode {
  /// Factory constructor to create [AdministrativeGender] from JSON.
  factory AdministrativeGender.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdministrativeGender._(value, element);
    }
    throw ArgumentError(
      'AdministrativeGender.fromJson: JSON value is not a valid value',
    );
  }

  /// male
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrativeGender.male([this.element])
      : dbValue = 'male',
        super('male', element);

  /// female
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrativeGender.female([this.element])
      : dbValue = 'female',
        super('female', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrativeGender.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrativeGender.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  AdministrativeGender.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdministrativeGender._(super.input, [super.element])
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
    'male',
    'female',
    'other',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdministrativeGender.$value';
}
