import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
enum ImmunizationStatusReasonCodes {
  /// Display:
  /// Definition:
  IMMUNE('IMMUNE'),

  /// Display:
  /// Definition:
  MEDPREC('MEDPREC'),

  /// Display:
  /// Definition:
  OSTOCK('OSTOCK'),

  /// Display:
  /// Definition:
  PATOBJ('PATOBJ'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationStatusReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationStatusReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusReasonCodes.elementOnly.withElement(element);
    }
    return ImmunizationStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationStatusReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
