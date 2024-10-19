// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of name the device is referred by.
@collection
class DeviceNameType {
  /// Constructor for internal use (like enum)
  DeviceNameType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceNameType values
  /// udi_label_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType udi_label_name = DeviceNameType(
    fhirCode: 'udi-label-name',
  );

  /// user_friendly_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType user_friendly_name = DeviceNameType(
    fhirCode: 'user-friendly-name',
  );

  /// patient_reported_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType patient_reported_name = DeviceNameType(
    fhirCode: 'patient-reported-name',
  );

  /// manufacturer_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType manufacturer_name = DeviceNameType(
    fhirCode: 'manufacturer-name',
  );

  /// model_name
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType model_name = DeviceNameType(
    fhirCode: 'model-name',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceNameType other = DeviceNameType(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final DeviceNameType elementOnly = DeviceNameType();

  /// List of all enum-like values
  static final List<DeviceNameType> values = [
    udi_label_name,
    user_friendly_name,
    patient_reported_name,
    manufacturer_name,
    model_name,
    other,
  ];

  /// Returns the enum value with an element attached
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceNameType] from JSON.
  static DeviceNameType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly.withElement(element);
    }
    return DeviceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceNameType.$fhirCode';
}
