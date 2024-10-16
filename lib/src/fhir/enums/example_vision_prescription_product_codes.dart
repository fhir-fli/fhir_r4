import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Prescription Product codes.
enum ExampleVisionPrescriptionProductCodes {
  /// Display: Lens
  /// Definition: A lens to be fitted to a frame to comprise a pair of glasses.
  lens('lens'),

  /// Display: Contact Lens
  /// Definition: A lens to be fitted for wearing directly on an eye.
  contact('contact'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleVisionPrescriptionProductCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleVisionPrescriptionProductCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleVisionPrescriptionProductCodes.elementOnly
          .withElement(element);
    }
    return ExampleVisionPrescriptionProductCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleVisionPrescriptionProductCodes withElement(Element? newElement) {
    return ExampleVisionPrescriptionProductCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
