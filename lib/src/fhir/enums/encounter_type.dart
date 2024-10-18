// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EncounterType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EncounterType] instances.
  static EncounterType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterType.elementOnly.withElement(element);
    }
    return EncounterType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EncounterType withElement(Element? newElement) {
    return EncounterType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
