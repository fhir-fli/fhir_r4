import 'package:fhir_r4/fhir_r4.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula. This value set is composed of HL7 V3 codes and is provided as a suggestive example.
enum EnteralRouteCodes {
  /// Display:
  /// Definition:
  PO('PO'),

  /// Display:
  /// Definition:
  EFT('EFT'),

  /// Display:
  /// Definition:
  ENTINSTL('ENTINSTL'),

  /// Display:
  /// Definition:
  GT('GT'),

  /// Display:
  /// Definition:
  NGT('NGT'),

  /// Display:
  /// Definition:
  OGT('OGT'),

  /// Display:
  /// Definition:
  GJT('GJT'),

  /// Display:
  /// Definition:
  JJTINSTL('JJTINSTL'),

  /// Display:
  /// Definition:
  OJJ('OJJ'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EnteralRouteCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EnteralRouteCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralRouteCodes.elementOnly.withElement(element);
    }
    return EnteralRouteCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EnteralRouteCodes withElement(Element? newElement) {
    return EnteralRouteCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
