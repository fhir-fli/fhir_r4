import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the body site where the vaccination occurred. This value set is provided as a suggestive example.
enum CodesForImmunizationSiteOfAdministration {
  /// Display: Left arm
  /// Definition:
  LA('LA'),

  /// Display: Right arm
  /// Definition:
  RA('RA'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CodesForImmunizationSiteOfAdministration(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CodesForImmunizationSiteOfAdministration fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodesForImmunizationSiteOfAdministration.elementOnly
          .withElement(element);
    }
    return CodesForImmunizationSiteOfAdministration.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CodesForImmunizationSiteOfAdministration withElement(Element? newElement) {
    return CodesForImmunizationSiteOfAdministration.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
