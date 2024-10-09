import 'package:json_annotation/json_annotation.dart';

/// Dose forms for a product as a whole, considering all individual parts, but before any mixing
enum CombinedDoseForm {
  /// Display: Powder and solvent for oral solution
  @JsonValue('100000073366')
  value100000073366,

  /// Display: Powder and solvent for oral suspension
  @JsonValue('100000073651')
  value100000073651,

  /// Display: Eye drops, powder and solvent for solution
  @JsonValue('100000073774')
  value100000073774,

  /// Display: Eye drops, powder and solvent for suspension
  @JsonValue('100000073781')
  value100000073781,

  /// Display: Ear drops, powder and solvent for suspension
  @JsonValue('100000073801')
  value100000073801,

  /// Display: Powder and solvent for solution for infusion
  @JsonValue('100000073860')
  value100000073860,

  /// Display: Powder and solvent for solution for injection
  @JsonValue('100000073868')
  value100000073868,

  /// Display: Powder and solvent for suspension for injection
  @JsonValue('100000073869')
  value100000073869,

  /// Display: Powder and solvent for implantation paste
  @JsonValue('100000073884')
  value100000073884,

  /// Display: Endotracheopulmonary instillation, powder and solvent for solution
  @JsonValue('100000073891')
  value100000073891,

  /// Display: Powder and solvent for endocervical gel
  @JsonValue('100000073892')
  value100000073892,

  /// Display: Powder and solvent for sealant
  @JsonValue('100000073941')
  value100000073941,

  /// Display: Concentrate and solvent for concentrate for solution for infusion
  @JsonValue('100000073972')
  value100000073972,

  /// Display: Concentrate and solvent for cutaneous use
  @JsonValue('100000073973')
  value100000073973,

  /// Display: Concentrate and solvent for injection
  @JsonValue('100000073974')
  value100000073974,

  /// Display: Concentrate and solvent for solution for infusion
  @JsonValue('100000073975')
  value100000073975,

  /// Display: Concentrate and diluent for solution for infusion
  @JsonValue('100000073987')
  value100000073987,

  /// Display: Concentrate and solvent for cutaneous solution
  @JsonValue('100000073988')
  value100000073988,

  /// Display: Concentrate and solvent for solution for injection
  @JsonValue('100000073989')
  value100000073989,

  /// Display: Concentrate and solvent for suspension for injection
  @JsonValue('100000073990')
  value100000073990,

  /// Display: Granules and solvent for suspension for injection
  @JsonValue('100000073999')
  value100000073999,

  /// Display: Powder and solvent for concentrate for solution for infusion
  @JsonValue('100000074015')
  value100000074015,

  /// Display: Powder and solvent for cutaneous solution
  @JsonValue('100000074016')
  value100000074016,

  /// Display: Powder and solvent for gingival gel
  @JsonValue('100000074017')
  value100000074017,

  /// Display: Powder and solvent for prolonged-release suspension for injection
  @JsonValue('100000074018')
  value100000074018,

  /// Display: Powder and solvent for endosinusial solution
  @JsonValue('100000074030')
  value100000074030,

  /// Display: Powder and solvent for intraocular instillation solution
  @JsonValue('100000074031')
  value100000074031,

  /// Display: Powder and suspension for suspension for injection
  @JsonValue('100000074032')
  value100000074032,

  /// Display: Suspension and effervescent granules for oral suspension
  @JsonValue('100000074048')
  value100000074048,

  /// Display: Tablet and solvent for rectal suspension
  @JsonValue('100000074051')
  value100000074051,

  /// Display: Powder and solvent for dental gel
  @JsonValue('100000074053')
  value100000074053,

  /// Display: Gas and solvent for dispersion for injection/infusion
  @JsonValue('100000074056')
  value100000074056,

  /// Display: Powder and solvent for solution for injection/infusion
  @JsonValue('100000074057')
  value100000074057,

  /// Display: Suspension and solution for spray
  @JsonValue('100000074061')
  value100000074061,

  /// Display: Tablet and powder for oral solution
  @JsonValue('100000074064')
  value100000074064,

  /// Display: Emulsion and suspension for emulsion for injection
  @JsonValue('100000075580')
  value100000075580,

  /// Display: Powder and solvent for dispersion for injection
  @JsonValue('100000075584')
  value100000075584,

  /// Display: Powder for mouth wash
  @JsonValue('100000075587')
  value100000075587,

  /// Display: Lyophilisate and solvent for solution for injection
  @JsonValue('100000116137')
  value100000116137,

  /// Display: Fibrin sealant-powder and solvent for fibrin sealant
  @JsonValue('100000116141')
  value100000116141,

  /// Display: Granules and solvent for oral suspension
  @JsonValue('100000116155')
  value100000116155,

  /// Display: Lyophilisate and solvent for suspension for injection
  @JsonValue('100000116160')
  value100000116160,

  /// Display: Powder and gel for gel
  @JsonValue('100000116172')
  value100000116172,

  /// Display: Powder and solution for solution for injection
  @JsonValue('100000116173')
  value100000116173,

  /// Display: Powder and solvent for epilesional solution
  @JsonValue('100000116174')
  value100000116174,

  /// Display: Powder and solvent for intravesical solution
  @JsonValue('100000116175')
  value100000116175,

  /// Display: Powder and solvent for intravesical suspension
  @JsonValue('100000116176')
  value100000116176,

  /// Display: Powder and solvent for nebuliser solution
  @JsonValue('100000116177')
  value100000116177,

  /// Display: Powder, dispersion and solvent for concentrate for dispersion for infusion
  @JsonValue('100000116179')
  value100000116179,

  /// Display: Powder and solvent for emulsion for injection
  @JsonValue('100000125746')
  value100000125746,

  /// Display: Nasal drops, powder and solvent for solution
  @JsonValue('100000125747')
  value100000125747,

  /// Display: Suspension and solvent for suspension for injection
  @JsonValue('100000125777')
  value100000125777,

  /// Display: Concentrate and solvent for solution for injection/infusion
  @JsonValue('100000136318')
  value100000136318,

  /// Display: Powder and solvent for solution for injection/skin-prick test
  @JsonValue('100000136325')
  value100000136325,

  /// Display: Lyophilisate and solvent for suspension for nasal administration
  @JsonValue('100000136558')
  value100000136558,

  /// Display: Powder and solvent for solution for sealant
  @JsonValue('100000136560')
  value100000136560,

  /// Display: Solution for dispersion for injection/infusion
  @JsonValue('100000136907')
  value100000136907,

  /// Display: Powder and solution for dental cement
  @JsonValue('100000143502')
  value100000143502,

  /// Display: Endotracheopulmonary instillation, powder and solvent for suspension
  @JsonValue('100000143546')
  value100000143546,

  /// Display: Powder, solvent and matrix for implantation matrix
  @JsonValue('100000143552')
  value100000143552,

  /// Display: Nasal drops, lyophilisate and solvent for suspension
  @JsonValue('100000156068')
  value100000156068,

  /// Display: Lyophilisate and suspension for suspension for injection
  @JsonValue('100000157796')
  value100000157796,

  /// Display: Powder for concentrate and solution for solution for infusion
  @JsonValue('100000164467')
  value100000164467,

  /// Display: Powder and solution for bee-hive solution
  @JsonValue('100000169997')
  value100000169997,

  /// Display: Suspension and solvent for oral spray
  @JsonValue('100000170588')
  value100000170588,

  /// Display: Lyophilisate and solvent for oral suspension
  @JsonValue('100000171127')
  value100000171127,

  /// Display: Concentrate and solvent for concentrate for oral spray, suspension
  @JsonValue('100000171193')
  value100000171193,

  /// Display: Lyophilisate and solvent for oculonasal suspension
  @JsonValue('100000171238')
  value100000171238,

  /// Display: Emulsion and lyophilisate for suspension for injection
  @JsonValue('100000171935')
  value100000171935,

  /// Display: Powder and solvent for syrup
  @JsonValue('100000174065')
  value100000174065,

  /// Display: Nasal spray, lyophilisate and solvent for suspension
  @JsonValue('200000002161')
  value200000002161,

  /// Display: Powder and solution for bee-hive dispersion
  @JsonValue('200000002287')
  value200000002287,

  /// Display: Solution and dispersion for nebuliser dispersion
  @JsonValue('200000004201')
  value200000004201,

  /// Display: Effervescent powder and powder for oral suspension
  @JsonValue('200000004819')
  value200000004819,

  /// Display: Lyophilisate and solvent for emulsion for injection
  @JsonValue('200000004820')
  value200000004820,

  /// Display: Powder and solution for suspension for injection
  @JsonValue('200000005547')
  value200000005547,

  /// Display: Lyophilisate and solvent for suspension for nasal spray or injection
  @JsonValue('200000010382')
  value200000010382,
  ;

  @override
  String toString() {
    switch (this) {
      case value100000073366:
        return '100000073366';
      case value100000073651:
        return '100000073651';
      case value100000073774:
        return '100000073774';
      case value100000073781:
        return '100000073781';
      case value100000073801:
        return '100000073801';
      case value100000073860:
        return '100000073860';
      case value100000073868:
        return '100000073868';
      case value100000073869:
        return '100000073869';
      case value100000073884:
        return '100000073884';
      case value100000073891:
        return '100000073891';
      case value100000073892:
        return '100000073892';
      case value100000073941:
        return '100000073941';
      case value100000073972:
        return '100000073972';
      case value100000073973:
        return '100000073973';
      case value100000073974:
        return '100000073974';
      case value100000073975:
        return '100000073975';
      case value100000073987:
        return '100000073987';
      case value100000073988:
        return '100000073988';
      case value100000073989:
        return '100000073989';
      case value100000073990:
        return '100000073990';
      case value100000073999:
        return '100000073999';
      case value100000074015:
        return '100000074015';
      case value100000074016:
        return '100000074016';
      case value100000074017:
        return '100000074017';
      case value100000074018:
        return '100000074018';
      case value100000074030:
        return '100000074030';
      case value100000074031:
        return '100000074031';
      case value100000074032:
        return '100000074032';
      case value100000074048:
        return '100000074048';
      case value100000074051:
        return '100000074051';
      case value100000074053:
        return '100000074053';
      case value100000074056:
        return '100000074056';
      case value100000074057:
        return '100000074057';
      case value100000074061:
        return '100000074061';
      case value100000074064:
        return '100000074064';
      case value100000075580:
        return '100000075580';
      case value100000075584:
        return '100000075584';
      case value100000075587:
        return '100000075587';
      case value100000116137:
        return '100000116137';
      case value100000116141:
        return '100000116141';
      case value100000116155:
        return '100000116155';
      case value100000116160:
        return '100000116160';
      case value100000116172:
        return '100000116172';
      case value100000116173:
        return '100000116173';
      case value100000116174:
        return '100000116174';
      case value100000116175:
        return '100000116175';
      case value100000116176:
        return '100000116176';
      case value100000116177:
        return '100000116177';
      case value100000116179:
        return '100000116179';
      case value100000125746:
        return '100000125746';
      case value100000125747:
        return '100000125747';
      case value100000125777:
        return '100000125777';
      case value100000136318:
        return '100000136318';
      case value100000136325:
        return '100000136325';
      case value100000136558:
        return '100000136558';
      case value100000136560:
        return '100000136560';
      case value100000136907:
        return '100000136907';
      case value100000143502:
        return '100000143502';
      case value100000143546:
        return '100000143546';
      case value100000143552:
        return '100000143552';
      case value100000156068:
        return '100000156068';
      case value100000157796:
        return '100000157796';
      case value100000164467:
        return '100000164467';
      case value100000169997:
        return '100000169997';
      case value100000170588:
        return '100000170588';
      case value100000171127:
        return '100000171127';
      case value100000171193:
        return '100000171193';
      case value100000171238:
        return '100000171238';
      case value100000171935:
        return '100000171935';
      case value100000174065:
        return '100000174065';
      case value200000002161:
        return '200000002161';
      case value200000002287:
        return '200000002287';
      case value200000004201:
        return '200000004201';
      case value200000004819:
        return '200000004819';
      case value200000004820:
        return '200000004820';
      case value200000005547:
        return '200000005547';
      case value200000010382:
        return '200000010382';
    }
  }

  String toJson() => toString();
  static CombinedDoseForm fromString(String str) {
    switch (str) {
      case '100000073366':
        return CombinedDoseForm.value100000073366;
      case '100000073651':
        return CombinedDoseForm.value100000073651;
      case '100000073774':
        return CombinedDoseForm.value100000073774;
      case '100000073781':
        return CombinedDoseForm.value100000073781;
      case '100000073801':
        return CombinedDoseForm.value100000073801;
      case '100000073860':
        return CombinedDoseForm.value100000073860;
      case '100000073868':
        return CombinedDoseForm.value100000073868;
      case '100000073869':
        return CombinedDoseForm.value100000073869;
      case '100000073884':
        return CombinedDoseForm.value100000073884;
      case '100000073891':
        return CombinedDoseForm.value100000073891;
      case '100000073892':
        return CombinedDoseForm.value100000073892;
      case '100000073941':
        return CombinedDoseForm.value100000073941;
      case '100000073972':
        return CombinedDoseForm.value100000073972;
      case '100000073973':
        return CombinedDoseForm.value100000073973;
      case '100000073974':
        return CombinedDoseForm.value100000073974;
      case '100000073975':
        return CombinedDoseForm.value100000073975;
      case '100000073987':
        return CombinedDoseForm.value100000073987;
      case '100000073988':
        return CombinedDoseForm.value100000073988;
      case '100000073989':
        return CombinedDoseForm.value100000073989;
      case '100000073990':
        return CombinedDoseForm.value100000073990;
      case '100000073999':
        return CombinedDoseForm.value100000073999;
      case '100000074015':
        return CombinedDoseForm.value100000074015;
      case '100000074016':
        return CombinedDoseForm.value100000074016;
      case '100000074017':
        return CombinedDoseForm.value100000074017;
      case '100000074018':
        return CombinedDoseForm.value100000074018;
      case '100000074030':
        return CombinedDoseForm.value100000074030;
      case '100000074031':
        return CombinedDoseForm.value100000074031;
      case '100000074032':
        return CombinedDoseForm.value100000074032;
      case '100000074048':
        return CombinedDoseForm.value100000074048;
      case '100000074051':
        return CombinedDoseForm.value100000074051;
      case '100000074053':
        return CombinedDoseForm.value100000074053;
      case '100000074056':
        return CombinedDoseForm.value100000074056;
      case '100000074057':
        return CombinedDoseForm.value100000074057;
      case '100000074061':
        return CombinedDoseForm.value100000074061;
      case '100000074064':
        return CombinedDoseForm.value100000074064;
      case '100000075580':
        return CombinedDoseForm.value100000075580;
      case '100000075584':
        return CombinedDoseForm.value100000075584;
      case '100000075587':
        return CombinedDoseForm.value100000075587;
      case '100000116137':
        return CombinedDoseForm.value100000116137;
      case '100000116141':
        return CombinedDoseForm.value100000116141;
      case '100000116155':
        return CombinedDoseForm.value100000116155;
      case '100000116160':
        return CombinedDoseForm.value100000116160;
      case '100000116172':
        return CombinedDoseForm.value100000116172;
      case '100000116173':
        return CombinedDoseForm.value100000116173;
      case '100000116174':
        return CombinedDoseForm.value100000116174;
      case '100000116175':
        return CombinedDoseForm.value100000116175;
      case '100000116176':
        return CombinedDoseForm.value100000116176;
      case '100000116177':
        return CombinedDoseForm.value100000116177;
      case '100000116179':
        return CombinedDoseForm.value100000116179;
      case '100000125746':
        return CombinedDoseForm.value100000125746;
      case '100000125747':
        return CombinedDoseForm.value100000125747;
      case '100000125777':
        return CombinedDoseForm.value100000125777;
      case '100000136318':
        return CombinedDoseForm.value100000136318;
      case '100000136325':
        return CombinedDoseForm.value100000136325;
      case '100000136558':
        return CombinedDoseForm.value100000136558;
      case '100000136560':
        return CombinedDoseForm.value100000136560;
      case '100000136907':
        return CombinedDoseForm.value100000136907;
      case '100000143502':
        return CombinedDoseForm.value100000143502;
      case '100000143546':
        return CombinedDoseForm.value100000143546;
      case '100000143552':
        return CombinedDoseForm.value100000143552;
      case '100000156068':
        return CombinedDoseForm.value100000156068;
      case '100000157796':
        return CombinedDoseForm.value100000157796;
      case '100000164467':
        return CombinedDoseForm.value100000164467;
      case '100000169997':
        return CombinedDoseForm.value100000169997;
      case '100000170588':
        return CombinedDoseForm.value100000170588;
      case '100000171127':
        return CombinedDoseForm.value100000171127;
      case '100000171193':
        return CombinedDoseForm.value100000171193;
      case '100000171238':
        return CombinedDoseForm.value100000171238;
      case '100000171935':
        return CombinedDoseForm.value100000171935;
      case '100000174065':
        return CombinedDoseForm.value100000174065;
      case '200000002161':
        return CombinedDoseForm.value200000002161;
      case '200000002287':
        return CombinedDoseForm.value200000002287;
      case '200000004201':
        return CombinedDoseForm.value200000004201;
      case '200000004819':
        return CombinedDoseForm.value200000004819;
      case '200000004820':
        return CombinedDoseForm.value200000004820;
      case '200000005547':
        return CombinedDoseForm.value200000005547;
      case '200000010382':
        return CombinedDoseForm.value200000010382;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CombinedDoseForm fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
