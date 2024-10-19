// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
@collection
class EncounterType {
  /// Constructor for internal use (like enum)
  EncounterType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EncounterType values
  /// ADMS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterType ADMS = EncounterType(
    fhirCode: 'ADMS',
  );

  /// BD_BM_clin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterType BD_BM_clin = EncounterType(
    fhirCode: 'BD/BM-clin',
  );

  /// CCS60
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterType CCS60 = EncounterType(
    fhirCode: 'CCS60',
  );

  /// OKI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterType OKI = EncounterType(
    fhirCode: 'OKI',
  );

  /// For instances where an Element is present but not value

  static final EncounterType elementOnly = EncounterType();

  /// List of all enum-like values
  static final List<EncounterType> values = [
    ADMS,
    BD_BM_clin,
    CCS60,
    OKI,
  ];

  /// Returns the enum value with an element attached
  EncounterType withElement(Element? newElement) {
    return EncounterType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EncounterType] from JSON.
  static EncounterType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EncounterType.$fhirCode';
}
