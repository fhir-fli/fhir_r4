import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
enum EncounterType {
  /// Display: Annual diabetes mellitus screening
  /// Definition:
  ADMS('ADMS'),

  /// Display: Bone drilling/bone marrow punction in clinic
  /// Definition:
  BD_BM_clin('BD/BM-clin'),

  /// Display: Infant colon screening - 60 minutes
  /// Definition:
  CCS60('CCS60'),

  /// Display: Outpatient Kenacort injection
  /// Definition:
  OKI('OKI'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EncounterType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EncounterType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterType.elementOnly.withElement(element);
    }
    return EncounterType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EncounterType withElement(Element? newElement) {
    return EncounterType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
