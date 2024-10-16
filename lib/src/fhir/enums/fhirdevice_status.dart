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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FHIRDeviceStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FHIRDeviceStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus.elementOnly.withElement(element);
    }
    return FHIRDeviceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
