import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Revenue Center codes.
enum ExampleRevenueCenterCodes {
  /// Display: Anaesthesia
  /// Definition: Anaesthesia.
  value0370('0370'),

  /// Display: Physical Therapy
  /// Definition: Physical Therapy.
  value0420('0420'),

  /// Display: Physical Therapy -
  /// Definition: Physical Therapy - visit charge.
  value0421('0421'),

  /// Display: Speech-Language Pathology
  /// Definition: Speech-Language Pathology.
  value0440('0440'),

  /// Display: Speech-Language Pathology - Visit
  /// Definition: Speech-Language Pathology- visit charge
  value0441('0441'),

  /// Display: Emergency Room
  /// Definition: Emergency Room
  value0450('0450'),

  /// Display: Emergency Room - EM/EMTALA
  /// Definition: Emergency Room - EM/EMTALA
  value0451('0451'),

  /// Display: Emergency Room - beyond EMTALA
  /// Definition: Emergency Room - beyond EMTALA
  value0452('0452'),

  /// Display: Vision Clinic
  /// Definition: Vision Clinic
  value0010('0010'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleRevenueCenterCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleRevenueCenterCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRevenueCenterCodes.elementOnly.withElement(element);
    }
    return ExampleRevenueCenterCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleRevenueCenterCodes withElement(Element? newElement) {
    return ExampleRevenueCenterCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
