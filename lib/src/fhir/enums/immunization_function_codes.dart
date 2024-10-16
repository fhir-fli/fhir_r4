import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the function a practitioner or organization may play in the immunization event. This value set is provided as a suggestive example.
enum ImmunizationFunctionCodes {
  /// Display:
  /// Definition:
  OP('OP'),

  /// Display:
  /// Definition:
  AP('AP'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationFunctionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationFunctionCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFunctionCodes.elementOnly.withElement(element);
    }
    return ImmunizationFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationFunctionCodes withElement(Element? newElement) {
    return ImmunizationFunctionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
