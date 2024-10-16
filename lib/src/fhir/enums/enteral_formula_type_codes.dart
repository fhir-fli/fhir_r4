import 'package:fhir_r4/fhir_r4.dart';

/// EnteralFormulaType : Codes for type of enteral formula to be administered to patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
enum EnteralFormulaTypeCodes {
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

  /// Display: Pediatric Formula
  /// Definition:
  value443361000124100('443361000124100'),

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

  /// Display: Adult formula
  /// Definition:
  value442651000124102('442651000124102'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EnteralFormulaTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EnteralFormulaTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaTypeCodes.elementOnly.withElement(element);
    }
    return EnteralFormulaTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EnteralFormulaTypeCodes withElement(Element? newElement) {
    return EnteralFormulaTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
