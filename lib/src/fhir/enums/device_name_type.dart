// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of name the device is referred by.
enum DeviceNameType {
  /// Display: UDI Label name
  /// Definition: UDI Label name.
  udi_label_name('udi-label-name'),

  /// Display: User Friendly name
  /// Definition: User Friendly name.
  user_friendly_name('user-friendly-name'),

  /// Display: Patient Reported name
  /// Definition: Patient Reported name.
  patient_reported_name('patient-reported-name'),

  /// Display: Manufacturer name
  /// Definition: Manufacturer name.
  manufacturer_name('manufacturer-name'),

  /// Display: Model name
  /// Definition: Model name.
  model_name('model-name'),

  /// Display: other
  /// Definition: other.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceNameType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceNameType] instances.
  static DeviceNameType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly.withElement(
        element,
      );
    }
    return DeviceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
