// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of name the device is referred by.
@Entity()
class DeviceNameType extends FhirCode {
  /// Factory constructor to create [DeviceNameType] from JSON.
  factory DeviceNameType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceNameType._(value, element);
    }
    throw ArgumentError(
      'DeviceNameType.fromJson: JSON value is not a valid value',
    );
  }

  /// udi_label_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.udi_label_name([this.element])
      : dbValue = 'udi-label-name',
        super('udi-label-name', element);

  /// user_friendly_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.user_friendly_name([this.element])
      : dbValue = 'user-friendly-name',
        super('user-friendly-name', element);

  /// patient_reported_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.patient_reported_name([this.element])
      : dbValue = 'patient-reported-name',
        super('patient-reported-name', element);

  /// manufacturer_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.manufacturer_name([this.element])
      : dbValue = 'manufacturer-name',
        super('manufacturer-name', element);

  /// model_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.model_name([this.element])
      : dbValue = 'model-name',
        super('model-name', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceNameType.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  DeviceNameType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceNameType._(super.input, [super.element])
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
    'udi-label-name',
    'user-friendly-name',
    'patient-reported-name',
    'manufacturer-name',
    'model-name',
    'other',
  ];

  /// Returns the enum value with an element attached
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceNameType.$value';
}
