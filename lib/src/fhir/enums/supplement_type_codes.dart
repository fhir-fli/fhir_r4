// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SupplementType : Codes for nutritional supplements to be provided to the patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
enum SupplementTypeCodes {
  /// Display: Adult clear liquid supplement
  /// Definition:
  value442901000124106('442901000124106'),

  /// Display: Adult critical care formula
  /// Definition:
  value443031000124106('443031000124106'),

  /// Display: Adult diabetes specialty formula
  /// Definition:
  value443051000124104('443051000124104'),

  /// Display: Adult elemental formula
  /// Definition:
  value442911000124109('442911000124109'),

  /// Display: Adult hepatic specialty formula
  /// Definition:
  value443021000124108('443021000124108'),

  /// Display: Adult high energy formula
  /// Definition:
  value442971000124100('442971000124100'),

  /// Display: Adult hydrolyzed protein formula
  /// Definition:
  value442981000124102('442981000124102'),

  /// Display: Adult high protein formula
  /// Definition:
  value442991000124104('442991000124104'),

  /// Display: Adult high protein high fiber formula
  /// Definition:
  value443011000124100('443011000124100'),

  /// Display: Adult low carbohydrate formula
  /// Definition:
  value442961000124107('442961000124107'),

  /// Display: Adult pulmonary specialty formula
  /// Definition:
  value442951000124105('442951000124105'),

  /// Display: Adult renal specialty formula
  /// Definition:
  value442941000124108('442941000124108'),

  /// Display: Adult standard formula
  /// Definition:
  value442921000124101('442921000124101'),

  /// Display: Adult soy protein isolate formula
  /// Definition:
  value442931000124103('442931000124103'),

  /// Display: Diabetic meal replacement bar
  /// Definition:
  value444331000124106('444331000124106'),

  /// Display: Pediatric Formula
  /// Definition:
  value443361000124100('443361000124100'),

  /// Display: Pediatric clear liquid supplement
  /// Definition:
  value443391000124108('443391000124108'),

  /// Display: Pediatric elemental formula
  /// Definition:
  value443401000124105('443401000124105'),

  /// Display: Pediatric high energy formula
  /// Definition:
  value443491000124103('443491000124103'),

  /// Display: Pediatric high energy formula with increased fiber
  /// Definition:
  value443501000124106('443501000124106'),

  /// Display: Pediatric hydrolyzed protein formula
  /// Definition:
  value443421000124100('443421000124100'),

  /// Display: Pediatric increased fiber formula
  /// Definition:
  value443471000124104('443471000124104'),

  /// Display: Pediatric reduced energy formula
  /// Definition:
  value444431000124104('444431000124104'),

  /// Display: Pediatric standard formula
  /// Definition:
  value443451000124109('443451000124109'),

  /// Display: Standard pudding oral supplement
  /// Definition:
  value444321000124108('444321000124108'),

  /// Display: Standard enteral formula with fiber
  /// Definition:
  value441561000124106('441561000124106'),

  /// Display: Standard Formula
  /// Definition:
  value443461000124106('443461000124106'),

  /// Display: Standard Enteral Formula
  /// Definition:
  value441531000124102('441531000124102'),

  /// Display: Soy based formula
  /// Definition:
  value443561000124107('443561000124107'),

  /// Display: Renal Formula
  /// Definition:
  value443481000124101('443481000124101'),

  /// Display: High energy enteral formula with fiber
  /// Definition:
  value441571000124104('441571000124104'),

  /// Display: Diabetic enteral formula with fiber
  /// Definition:
  value441591000124103('441591000124103'),

  /// Display: Diabetic high calorie high protein enteral formula with fiber
  /// Definition:
  value441601000124106('441601000124106'),

  /// Display: Increased fiber formula
  /// Definition:
  value443351000124102('443351000124102'),

  /// Display: Hydrolyzed protein formula
  /// Definition:
  value443771000124106('443771000124106'),

  /// Display: Hydrolyzed peptide-based high protein enteral formula
  /// Definition:
  value441671000124100('441671000124100'),

  /// Display: High protein formula
  /// Definition:
  value443111000124101('443111000124101'),

  /// Display: High Energy Formula
  /// Definition:
  value443431000124102('443431000124102'),

  /// Display: Elemental Formula
  /// Definition:
  value443411000124108('443411000124108'),

  /// Display: Electrolyte replacement supplement
  /// Definition:
  value444361000124102('444361000124102'),

  /// Display: Frozen electrolyte replacement supplement
  /// Definition:
  value444401000124107('444401000124107'),

  /// Display: Liquid electrolyte replacement supplement
  /// Definition:
  value444381000124107('444381000124107'),

  /// Display: Powdered electrolyte replacement supplement
  /// Definition:
  value444371000124109('444371000124109'),

  /// Display: Clear liquid supplement
  /// Definition:
  value443441000124107('443441000124107'),

  /// Display: Adult formula
  /// Definition:
  value442651000124102('442651000124102'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SupplementTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SupplementTypeCodes] instances.
  static SupplementTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplementTypeCodes.elementOnly.withElement(
        element,
      );
    }
    return SupplementTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SupplementTypeCodes withElement(Element? newElement) {
    return SupplementTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
