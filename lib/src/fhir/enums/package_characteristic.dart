// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A characteristic of a package.
@Entity()
class PackageCharacteristic extends FhirCode {
  /// Factory constructor to create [PackageCharacteristic] from JSON.
  factory PackageCharacteristic.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageCharacteristic.elementOnly(element);
    }
    if (values.contains(value)) {
      return PackageCharacteristic._(value, element);
    }
    throw ArgumentError(
      'PackageCharacteristic.fromJson: JSON value is not a valid value',
    );
  }

  /// HospitalPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageCharacteristic.HospitalPack([this.element])
      : dbValue = 'HospitalPack',
        super('HospitalPack', element);

  /// NursePrescribable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageCharacteristic.NursePrescribable([this.element])
      : dbValue = 'NursePrescribable',
        super('NursePrescribable', element);

  /// CalendarPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageCharacteristic.CalendarPack([this.element])
      : dbValue = 'CalendarPack',
        super('CalendarPack', element);

  /// For instances where an Element is present but not value

  PackageCharacteristic.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PackageCharacteristic._(super.input, [super.element])
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
    'HospitalPack',
    'NursePrescribable',
    'CalendarPack',
  ];

  /// Returns the enum value with an element attached
  PackageCharacteristic withElement(Element? newElement) {
    return PackageCharacteristic._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackageCharacteristic.$value';
}
