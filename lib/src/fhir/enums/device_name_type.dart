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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceNameType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceNameType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly.withElement(element);
    }
    return DeviceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
