/// SupplementType :  Codes for nutritional supplements to be provided to the patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
enum SupplementTypeCodes {
  /// Display: Adult clear liquid supplement
  value442901000124106,

  /// Display: Adult critical care formula
  value443031000124106,

  /// Display: Adult diabetes specialty formula
  value443051000124104,

  /// Display: Adult elemental formula
  value442911000124109,

  /// Display: Adult hepatic specialty formula
  value443021000124108,

  /// Display: Adult high energy formula
  value442971000124100,

  /// Display: Adult hydrolyzed protein formula
  value442981000124102,

  /// Display: Adult high protein formula
  value442991000124104,

  /// Display: Adult high protein high fiber formula
  value443011000124100,

  /// Display: Adult low carbohydrate formula
  value442961000124107,

  /// Display: Adult pulmonary specialty formula
  value442951000124105,

  /// Display: Adult renal specialty formula
  value442941000124108,

  /// Display: Adult standard formula
  value442921000124101,

  /// Display: Adult soy protein isolate formula
  value442931000124103,

  /// Display: Diabetic meal replacement bar
  value444331000124106,

  /// Display: Pediatric Formula
  value443361000124100,

  /// Display: Pediatric clear liquid supplement
  value443391000124108,

  /// Display: Pediatric elemental formula
  value443401000124105,

  /// Display: Pediatric high energy formula
  value443491000124103,

  /// Display: Pediatric high energy formula with increased fiber
  value443501000124106,

  /// Display: Pediatric hydrolyzed protein formula
  value443421000124100,

  /// Display: Pediatric increased fiber formula
  value443471000124104,

  /// Display: Pediatric reduced energy formula
  value444431000124104,

  /// Display: Pediatric standard formula
  value443451000124109,

  /// Display: Standard pudding oral supplement
  value444321000124108,

  /// Display: Standard enteral formula with fiber
  value441561000124106,

  /// Display: Standard Formula
  value443461000124106,

  /// Display: Standard Enteral Formula
  value441531000124102,

  /// Display: Soy based formula
  value443561000124107,

  /// Display: Renal Formula
  value443481000124101,

  /// Display: High energy enteral formula with fiber
  value441571000124104,

  /// Display: Diabetic enteral formula with fiber
  value441591000124103,

  /// Display: Diabetic high calorie high protein enteral formula with fiber
  value441601000124106,

  /// Display: Increased fiber formula
  value443351000124102,

  /// Display: Hydrolyzed protein formula
  value443771000124106,

  /// Display: Hydrolyzed peptide-based high protein enteral formula
  value441671000124100,

  /// Display: High protein formula
  value443111000124101,

  /// Display: High Energy Formula
  value443431000124102,

  /// Display: Elemental Formula
  value443411000124108,

  /// Display: Electrolyte replacement supplement
  value444361000124102,

  /// Display: Frozen electrolyte replacement supplement
  value444401000124107,

  /// Display: Liquid electrolyte replacement supplement
  value444381000124107,

  /// Display: Powdered electrolyte replacement supplement
  value444371000124109,

  /// Display: Clear liquid supplement
  value443441000124107,

  /// Display: Adult formula
  value442651000124102,
  ;

  @override
  String toString() {
    switch (this) {
      case value442901000124106:
        return '442901000124106';
      case value443031000124106:
        return '443031000124106';
      case value443051000124104:
        return '443051000124104';
      case value442911000124109:
        return '442911000124109';
      case value443021000124108:
        return '443021000124108';
      case value442971000124100:
        return '442971000124100';
      case value442981000124102:
        return '442981000124102';
      case value442991000124104:
        return '442991000124104';
      case value443011000124100:
        return '443011000124100';
      case value442961000124107:
        return '442961000124107';
      case value442951000124105:
        return '442951000124105';
      case value442941000124108:
        return '442941000124108';
      case value442921000124101:
        return '442921000124101';
      case value442931000124103:
        return '442931000124103';
      case value444331000124106:
        return '444331000124106';
      case value443361000124100:
        return '443361000124100';
      case value443391000124108:
        return '443391000124108';
      case value443401000124105:
        return '443401000124105';
      case value443491000124103:
        return '443491000124103';
      case value443501000124106:
        return '443501000124106';
      case value443421000124100:
        return '443421000124100';
      case value443471000124104:
        return '443471000124104';
      case value444431000124104:
        return '444431000124104';
      case value443451000124109:
        return '443451000124109';
      case value444321000124108:
        return '444321000124108';
      case value441561000124106:
        return '441561000124106';
      case value443461000124106:
        return '443461000124106';
      case value441531000124102:
        return '441531000124102';
      case value443561000124107:
        return '443561000124107';
      case value443481000124101:
        return '443481000124101';
      case value441571000124104:
        return '441571000124104';
      case value441591000124103:
        return '441591000124103';
      case value441601000124106:
        return '441601000124106';
      case value443351000124102:
        return '443351000124102';
      case value443771000124106:
        return '443771000124106';
      case value441671000124100:
        return '441671000124100';
      case value443111000124101:
        return '443111000124101';
      case value443431000124102:
        return '443431000124102';
      case value443411000124108:
        return '443411000124108';
      case value444361000124102:
        return '444361000124102';
      case value444401000124107:
        return '444401000124107';
      case value444381000124107:
        return '444381000124107';
      case value444371000124109:
        return '444371000124109';
      case value443441000124107:
        return '443441000124107';
      case value442651000124102:
        return '442651000124102';
    }
  }

  String toJson() => toString();
  static SupplementTypeCodes fromString(String str) {
    switch (str) {
      case '442901000124106':
        return SupplementTypeCodes.value442901000124106;
      case '443031000124106':
        return SupplementTypeCodes.value443031000124106;
      case '443051000124104':
        return SupplementTypeCodes.value443051000124104;
      case '442911000124109':
        return SupplementTypeCodes.value442911000124109;
      case '443021000124108':
        return SupplementTypeCodes.value443021000124108;
      case '442971000124100':
        return SupplementTypeCodes.value442971000124100;
      case '442981000124102':
        return SupplementTypeCodes.value442981000124102;
      case '442991000124104':
        return SupplementTypeCodes.value442991000124104;
      case '443011000124100':
        return SupplementTypeCodes.value443011000124100;
      case '442961000124107':
        return SupplementTypeCodes.value442961000124107;
      case '442951000124105':
        return SupplementTypeCodes.value442951000124105;
      case '442941000124108':
        return SupplementTypeCodes.value442941000124108;
      case '442921000124101':
        return SupplementTypeCodes.value442921000124101;
      case '442931000124103':
        return SupplementTypeCodes.value442931000124103;
      case '444331000124106':
        return SupplementTypeCodes.value444331000124106;
      case '443361000124100':
        return SupplementTypeCodes.value443361000124100;
      case '443391000124108':
        return SupplementTypeCodes.value443391000124108;
      case '443401000124105':
        return SupplementTypeCodes.value443401000124105;
      case '443491000124103':
        return SupplementTypeCodes.value443491000124103;
      case '443501000124106':
        return SupplementTypeCodes.value443501000124106;
      case '443421000124100':
        return SupplementTypeCodes.value443421000124100;
      case '443471000124104':
        return SupplementTypeCodes.value443471000124104;
      case '444431000124104':
        return SupplementTypeCodes.value444431000124104;
      case '443451000124109':
        return SupplementTypeCodes.value443451000124109;
      case '444321000124108':
        return SupplementTypeCodes.value444321000124108;
      case '441561000124106':
        return SupplementTypeCodes.value441561000124106;
      case '443461000124106':
        return SupplementTypeCodes.value443461000124106;
      case '441531000124102':
        return SupplementTypeCodes.value441531000124102;
      case '443561000124107':
        return SupplementTypeCodes.value443561000124107;
      case '443481000124101':
        return SupplementTypeCodes.value443481000124101;
      case '441571000124104':
        return SupplementTypeCodes.value441571000124104;
      case '441591000124103':
        return SupplementTypeCodes.value441591000124103;
      case '441601000124106':
        return SupplementTypeCodes.value441601000124106;
      case '443351000124102':
        return SupplementTypeCodes.value443351000124102;
      case '443771000124106':
        return SupplementTypeCodes.value443771000124106;
      case '441671000124100':
        return SupplementTypeCodes.value441671000124100;
      case '443111000124101':
        return SupplementTypeCodes.value443111000124101;
      case '443431000124102':
        return SupplementTypeCodes.value443431000124102;
      case '443411000124108':
        return SupplementTypeCodes.value443411000124108;
      case '444361000124102':
        return SupplementTypeCodes.value444361000124102;
      case '444401000124107':
        return SupplementTypeCodes.value444401000124107;
      case '444381000124107':
        return SupplementTypeCodes.value444381000124107;
      case '444371000124109':
        return SupplementTypeCodes.value444371000124109;
      case '443441000124107':
        return SupplementTypeCodes.value443441000124107;
      case '442651000124102':
        return SupplementTypeCodes.value442651000124102;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SupplementTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
