import 'package:fhir_r4/fhir_r4.dart';

/// Which type a compartment definition describes.
enum CompartmentType {
  /// Display: Patient
  /// Definition: The compartment definition is for the patient compartment.
  Patient('Patient'),

  /// Display: Encounter
  /// Definition: The compartment definition is for the encounter compartment.
  Encounter('Encounter'),

  /// Display: RelatedPerson
  /// Definition: The compartment definition is for the related-person compartment.
  RelatedPerson('RelatedPerson'),

  /// Display: Practitioner
  /// Definition: The compartment definition is for the practitioner compartment.
  Practitioner('Practitioner'),

  /// Display: Device
  /// Definition: The compartment definition is for the device compartment.
  Device('Device'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CompartmentType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CompartmentType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentType.elementOnly.withElement(element);
    }
    return CompartmentType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CompartmentType withElement(Element? newElement) {
    return CompartmentType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
