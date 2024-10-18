// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status of the device.
enum FHIRDeviceStatus {
  /// Display: Active
  /// Definition: The device is available for use. Note: For *implanted devices* this means that the device is implanted in the patient.
  active('active'),

  /// Display: Inactive
  /// Definition: The device is no longer available for use (e.g. lost, expired, damaged). Note: For *implanted devices* this means that the device has been removed from the patient.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The device was entered in error and voided.
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The status of the device has not been determined.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FHIRDeviceStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FHIRDeviceStatus] instances.
  static FHIRDeviceStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus.elementOnly.withElement(element);
    }
    return FHIRDeviceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
