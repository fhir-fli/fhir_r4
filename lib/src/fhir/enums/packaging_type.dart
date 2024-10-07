import 'package:json_annotation/json_annotation.dart';

/// A type of packaging.
enum PackagingType {
  /// Display: Ampoule
  @JsonValue('100000073490')
  value100000073490,
  /// Display: Applicator
  @JsonValue('100000073491')
  value100000073491,
  /// Display: Automatic injection device
  @JsonValue('100000073492')
  value100000073492,
  /// Display: Bag
  @JsonValue('100000073493')
  value100000073493,
  /// Display: Balling gun
  @JsonValue('100000073494')
  value100000073494,
  /// Display: Barrel
  @JsonValue('100000073495')
  value100000073495,
  /// Display: Blister
  @JsonValue('100000073496')
  value100000073496,
  /// Display: Bottle
  @JsonValue('100000073497')
  value100000073497,
  /// Display: Box
  @JsonValue('100000073498')
  value100000073498,
  /// Display: Brush
  @JsonValue('100000073499')
  value100000073499,
  /// Display: Brush applicator
  @JsonValue('100000073500')
  value100000073500,
  /// Display: Cannula
  @JsonValue('100000073501')
  value100000073501,
  /// Display: Cap
  @JsonValue('100000073502')
  value100000073502,
  /// Display: Cartridge
  @JsonValue('100000073503')
  value100000073503,
  /// Display: Child-resistant closure
  @JsonValue('100000073504')
  value100000073504,
  /// Display: Cup
  @JsonValue('100000073505')
  value100000073505,
  /// Display: Dabbing applicator
  @JsonValue('100000073506')
  value100000073506,
  /// Display: Dart
  @JsonValue('100000073507')
  value100000073507,
  /// Display: Dredging applicator
  @JsonValue('100000073508')
  value100000073508,
  /// Display: Dredging container
  @JsonValue('100000073509')
  value100000073509,
  /// Display: Drench gun
  @JsonValue('100000073510')
  value100000073510,
  /// Display: Dropper applicator
  @JsonValue('100000073511')
  value100000073511,
  /// Display: Dropper container
  @JsonValue('100000073512')
  value100000073512,
  /// Display: Fixed cryogenic vessel
  @JsonValue('100000073513')
  value100000073513,
  /// Display: Gas cylinder
  @JsonValue('100000073514')
  value100000073514,
  /// Display: High pressure transdermal delivery device
  @JsonValue('100000073515')
  value100000073515,
  /// Display: Implanter
  @JsonValue('100000073516')
  value100000073516,
  /// Display: Inhaler
  @JsonValue('100000073517')
  value100000073517,
  /// Display: In-ovo injection device
  @JsonValue('100000073518')
  value100000073518,
  /// Display: Injection needle
  @JsonValue('100000073519')
  value100000073519,
  /// Display: Injection syringe
  @JsonValue('100000073520')
  value100000073520,
  /// Display: Internal graduated calibration chamber
  @JsonValue('100000073521')
  value100000073521,
  /// Display: Intramammary syringe
  @JsonValue('100000073522')
  value100000073522,
  /// Display: Jar
  @JsonValue('100000073523')
  value100000073523,
  /// Display: Measuring device
  @JsonValue('100000073524')
  value100000073524,
  /// Display: Measuring spoon
  @JsonValue('100000073525')
  value100000073525,
  /// Display: Metering pump
  @JsonValue('100000073526')
  value100000073526,
  /// Display: Metering valve
  @JsonValue('100000073527')
  value100000073527,
  /// Display: Mobile cryogenic vessel
  @JsonValue('100000073528')
  value100000073528,
  /// Display: Mouthpiece
  @JsonValue('100000073529')
  value100000073529,
  /// Display: Multidose container
  @JsonValue('100000073530')
  value100000073530,
  /// Display: Multidose container with airless pump
  @JsonValue('100000073531')
  value100000073531,
  /// Display: Multipuncturer
  @JsonValue('100000073532')
  value100000073532,
  /// Display: Nasal applicator
  @JsonValue('100000073533')
  value100000073533,
  /// Display: Nebuliser
  @JsonValue('100000073534')
  value100000073534,
  /// Display: Needle applicator
  @JsonValue('100000073535')
  value100000073535,
  /// Display: Nozzle
  @JsonValue('100000073536')
  value100000073536,
  /// Display: Oral syringe
  @JsonValue('100000073537')
  value100000073537,
  /// Display: Pipette
  @JsonValue('100000073538')
  value100000073538,
  /// Display: Pipette applicator
  @JsonValue('100000073539')
  value100000073539,
  /// Display: Pouch
  @JsonValue('100000073540')
  value100000073540,
  /// Display: Pour-on container
  @JsonValue('100000073541')
  value100000073541,
  /// Display: Pre-filled gastroenteral tube
  @JsonValue('100000073542')
  value100000073542,
  /// Display: Pre-filled pen
  @JsonValue('100000073543')
  value100000073543,
  /// Display: Pre-filled syringe
  @JsonValue('100000073544')
  value100000073544,
  /// Display: Pressurised container
  @JsonValue('100000073545')
  value100000073545,
  /// Display: Prick test applicator
  @JsonValue('100000073546')
  value100000073546,
  /// Display: Sachet
  @JsonValue('100000073547')
  value100000073547,
  /// Display: Scarifier
  @JsonValue('100000073548')
  value100000073548,
  /// Display: Screw cap
  @JsonValue('100000073549')
  value100000073549,
  /// Display: Single-dose container
  @JsonValue('100000073550')
  value100000073550,
  /// Display: Spatula
  @JsonValue('100000073551')
  value100000073551,
  /// Display: Spot-on applicator
  @JsonValue('100000073552')
  value100000073552,
  /// Display: Spray container
  @JsonValue('100000073553')
  value100000073553,
  /// Display: Spray pump
  @JsonValue('100000073554')
  value100000073554,
  /// Display: Spray valve
  @JsonValue('100000073555')
  value100000073555,
  /// Display: Stab vaccinator
  @JsonValue('100000073556')
  value100000073556,
  /// Display: Stopper
  @JsonValue('100000073557')
  value100000073557,
  /// Display: Straw
  @JsonValue('100000073558')
  value100000073558,
  /// Display: Strip
  @JsonValue('100000073559')
  value100000073559,
  /// Display: Tablet container
  @JsonValue('100000073560')
  value100000073560,
  /// Display: Tube
  @JsonValue('100000073561')
  value100000073561,
  /// Display: Vaginal sponge applicator
  @JsonValue('100000073562')
  value100000073562,
  /// Display: Vial
  @JsonValue('100000073563')
  value100000073563,
  /// Display: Administration system
  @JsonValue('100000075664')
  value100000075664,
  /// Display: Calendar package
  @JsonValue('100000116195')
  value100000116195,
  /// Display: Needle-free injector
  @JsonValue('100000116196')
  value100000116196,
  /// Display: Roll-on container
  @JsonValue('100000116197')
  value100000116197,
  /// Display: Multidose container with pump
  @JsonValue('100000125779')
  value100000125779,
  /// Display: Container
  @JsonValue('100000137702')
  value100000137702,
  /// Display: Oral applicator
  @JsonValue('100000137703')
  value100000137703,
  /// Display: Multidose container with metering pump
  @JsonValue('100000143554')
  value100000143554,
  /// Display: Pack
  @JsonValue('100000143555')
  value100000143555,
  /// Display: disk
  @JsonValue('100000163233')
  value100000163233,
  /// Display: plunger
  @JsonValue('100000163234')
  value100000163234,
  /// Display: infusion port
  @JsonValue('100000164143')
  value100000164143,
  /// Display: Valve
  @JsonValue('100000166980')
  value100000166980,
  /// Display: Jerrycan
  @JsonValue('100000169899')
  value100000169899,
  /// Display: Oral applicator
  @JsonValue('100000173982')
  value100000173982,
  /// Display: Dose dispenser
  @JsonValue('100000173983')
  value100000173983,
  /// Display: Unit-dose blister
  @JsonValue('100000174066')
  value100000174066,
  /// Display: Pre-filled injector
  @JsonValue('100000174067')
  value100000174067,
  /// Display: Pre-filled oral syringe
  @JsonValue('100000174068')
  value100000174068,
  /// Display: Pre-filled oral applicator
  @JsonValue('100000174069')
  value100000174069,
  /// Display: Dose-dispenser cartridge
  @JsonValue('100000174070')
  value100000174070,
  /// Display: Pen
  @JsonValue('200000005068')
  value200000005068,
  /// Display: Wrapper
  @JsonValue('200000005585')
  value200000005585,
  /// Display: Lid
  @JsonValue('200000010647')
  value200000010647,
  /// Display: Capsule for opening
  @JsonValue('200000011726')
  value200000011726,
  /// Display: Child-resistant sachet
  @JsonValue('200000012539')
  value200000012539,
  /// Display: Tamper-evident closure
  @JsonValue('200000013191')
  value200000013191,
  /// Display: Tablet tube
  @JsonValue('200000024874')
  value200000024874,
;

@override
  String toString() {
      switch(this) {
        case value100000073490: return '100000073490';
        case value100000073491: return '100000073491';
        case value100000073492: return '100000073492';
        case value100000073493: return '100000073493';
        case value100000073494: return '100000073494';
        case value100000073495: return '100000073495';
        case value100000073496: return '100000073496';
        case value100000073497: return '100000073497';
        case value100000073498: return '100000073498';
        case value100000073499: return '100000073499';
        case value100000073500: return '100000073500';
        case value100000073501: return '100000073501';
        case value100000073502: return '100000073502';
        case value100000073503: return '100000073503';
        case value100000073504: return '100000073504';
        case value100000073505: return '100000073505';
        case value100000073506: return '100000073506';
        case value100000073507: return '100000073507';
        case value100000073508: return '100000073508';
        case value100000073509: return '100000073509';
        case value100000073510: return '100000073510';
        case value100000073511: return '100000073511';
        case value100000073512: return '100000073512';
        case value100000073513: return '100000073513';
        case value100000073514: return '100000073514';
        case value100000073515: return '100000073515';
        case value100000073516: return '100000073516';
        case value100000073517: return '100000073517';
        case value100000073518: return '100000073518';
        case value100000073519: return '100000073519';
        case value100000073520: return '100000073520';
        case value100000073521: return '100000073521';
        case value100000073522: return '100000073522';
        case value100000073523: return '100000073523';
        case value100000073524: return '100000073524';
        case value100000073525: return '100000073525';
        case value100000073526: return '100000073526';
        case value100000073527: return '100000073527';
        case value100000073528: return '100000073528';
        case value100000073529: return '100000073529';
        case value100000073530: return '100000073530';
        case value100000073531: return '100000073531';
        case value100000073532: return '100000073532';
        case value100000073533: return '100000073533';
        case value100000073534: return '100000073534';
        case value100000073535: return '100000073535';
        case value100000073536: return '100000073536';
        case value100000073537: return '100000073537';
        case value100000073538: return '100000073538';
        case value100000073539: return '100000073539';
        case value100000073540: return '100000073540';
        case value100000073541: return '100000073541';
        case value100000073542: return '100000073542';
        case value100000073543: return '100000073543';
        case value100000073544: return '100000073544';
        case value100000073545: return '100000073545';
        case value100000073546: return '100000073546';
        case value100000073547: return '100000073547';
        case value100000073548: return '100000073548';
        case value100000073549: return '100000073549';
        case value100000073550: return '100000073550';
        case value100000073551: return '100000073551';
        case value100000073552: return '100000073552';
        case value100000073553: return '100000073553';
        case value100000073554: return '100000073554';
        case value100000073555: return '100000073555';
        case value100000073556: return '100000073556';
        case value100000073557: return '100000073557';
        case value100000073558: return '100000073558';
        case value100000073559: return '100000073559';
        case value100000073560: return '100000073560';
        case value100000073561: return '100000073561';
        case value100000073562: return '100000073562';
        case value100000073563: return '100000073563';
        case value100000075664: return '100000075664';
        case value100000116195: return '100000116195';
        case value100000116196: return '100000116196';
        case value100000116197: return '100000116197';
        case value100000125779: return '100000125779';
        case value100000137702: return '100000137702';
        case value100000137703: return '100000137703';
        case value100000143554: return '100000143554';
        case value100000143555: return '100000143555';
        case value100000163233: return '100000163233';
        case value100000163234: return '100000163234';
        case value100000164143: return '100000164143';
        case value100000166980: return '100000166980';
        case value100000169899: return '100000169899';
        case value100000173982: return '100000173982';
        case value100000173983: return '100000173983';
        case value100000174066: return '100000174066';
        case value100000174067: return '100000174067';
        case value100000174068: return '100000174068';
        case value100000174069: return '100000174069';
        case value100000174070: return '100000174070';
        case value200000005068: return '200000005068';
        case value200000005585: return '200000005585';
        case value200000010647: return '200000010647';
        case value200000011726: return '200000011726';
        case value200000012539: return '200000012539';
        case value200000013191: return '200000013191';
        case value200000024874: return '200000024874';
      }
      }
String toJson() => toString();
  PackagingType fromString(String str) {
    switch(str) {
      case '100000073490': return PackagingType.value100000073490;
      case '100000073491': return PackagingType.value100000073491;
      case '100000073492': return PackagingType.value100000073492;
      case '100000073493': return PackagingType.value100000073493;
      case '100000073494': return PackagingType.value100000073494;
      case '100000073495': return PackagingType.value100000073495;
      case '100000073496': return PackagingType.value100000073496;
      case '100000073497': return PackagingType.value100000073497;
      case '100000073498': return PackagingType.value100000073498;
      case '100000073499': return PackagingType.value100000073499;
      case '100000073500': return PackagingType.value100000073500;
      case '100000073501': return PackagingType.value100000073501;
      case '100000073502': return PackagingType.value100000073502;
      case '100000073503': return PackagingType.value100000073503;
      case '100000073504': return PackagingType.value100000073504;
      case '100000073505': return PackagingType.value100000073505;
      case '100000073506': return PackagingType.value100000073506;
      case '100000073507': return PackagingType.value100000073507;
      case '100000073508': return PackagingType.value100000073508;
      case '100000073509': return PackagingType.value100000073509;
      case '100000073510': return PackagingType.value100000073510;
      case '100000073511': return PackagingType.value100000073511;
      case '100000073512': return PackagingType.value100000073512;
      case '100000073513': return PackagingType.value100000073513;
      case '100000073514': return PackagingType.value100000073514;
      case '100000073515': return PackagingType.value100000073515;
      case '100000073516': return PackagingType.value100000073516;
      case '100000073517': return PackagingType.value100000073517;
      case '100000073518': return PackagingType.value100000073518;
      case '100000073519': return PackagingType.value100000073519;
      case '100000073520': return PackagingType.value100000073520;
      case '100000073521': return PackagingType.value100000073521;
      case '100000073522': return PackagingType.value100000073522;
      case '100000073523': return PackagingType.value100000073523;
      case '100000073524': return PackagingType.value100000073524;
      case '100000073525': return PackagingType.value100000073525;
      case '100000073526': return PackagingType.value100000073526;
      case '100000073527': return PackagingType.value100000073527;
      case '100000073528': return PackagingType.value100000073528;
      case '100000073529': return PackagingType.value100000073529;
      case '100000073530': return PackagingType.value100000073530;
      case '100000073531': return PackagingType.value100000073531;
      case '100000073532': return PackagingType.value100000073532;
      case '100000073533': return PackagingType.value100000073533;
      case '100000073534': return PackagingType.value100000073534;
      case '100000073535': return PackagingType.value100000073535;
      case '100000073536': return PackagingType.value100000073536;
      case '100000073537': return PackagingType.value100000073537;
      case '100000073538': return PackagingType.value100000073538;
      case '100000073539': return PackagingType.value100000073539;
      case '100000073540': return PackagingType.value100000073540;
      case '100000073541': return PackagingType.value100000073541;
      case '100000073542': return PackagingType.value100000073542;
      case '100000073543': return PackagingType.value100000073543;
      case '100000073544': return PackagingType.value100000073544;
      case '100000073545': return PackagingType.value100000073545;
      case '100000073546': return PackagingType.value100000073546;
      case '100000073547': return PackagingType.value100000073547;
      case '100000073548': return PackagingType.value100000073548;
      case '100000073549': return PackagingType.value100000073549;
      case '100000073550': return PackagingType.value100000073550;
      case '100000073551': return PackagingType.value100000073551;
      case '100000073552': return PackagingType.value100000073552;
      case '100000073553': return PackagingType.value100000073553;
      case '100000073554': return PackagingType.value100000073554;
      case '100000073555': return PackagingType.value100000073555;
      case '100000073556': return PackagingType.value100000073556;
      case '100000073557': return PackagingType.value100000073557;
      case '100000073558': return PackagingType.value100000073558;
      case '100000073559': return PackagingType.value100000073559;
      case '100000073560': return PackagingType.value100000073560;
      case '100000073561': return PackagingType.value100000073561;
      case '100000073562': return PackagingType.value100000073562;
      case '100000073563': return PackagingType.value100000073563;
      case '100000075664': return PackagingType.value100000075664;
      case '100000116195': return PackagingType.value100000116195;
      case '100000116196': return PackagingType.value100000116196;
      case '100000116197': return PackagingType.value100000116197;
      case '100000125779': return PackagingType.value100000125779;
      case '100000137702': return PackagingType.value100000137702;
      case '100000137703': return PackagingType.value100000137703;
      case '100000143554': return PackagingType.value100000143554;
      case '100000143555': return PackagingType.value100000143555;
      case '100000163233': return PackagingType.value100000163233;
      case '100000163234': return PackagingType.value100000163234;
      case '100000164143': return PackagingType.value100000164143;
      case '100000166980': return PackagingType.value100000166980;
      case '100000169899': return PackagingType.value100000169899;
      case '100000173982': return PackagingType.value100000173982;
      case '100000173983': return PackagingType.value100000173983;
      case '100000174066': return PackagingType.value100000174066;
      case '100000174067': return PackagingType.value100000174067;
      case '100000174068': return PackagingType.value100000174068;
      case '100000174069': return PackagingType.value100000174069;
      case '100000174070': return PackagingType.value100000174070;
      case '200000005068': return PackagingType.value200000005068;
      case '200000005585': return PackagingType.value200000005585;
      case '200000010647': return PackagingType.value200000010647;
      case '200000011726': return PackagingType.value200000011726;
      case '200000012539': return PackagingType.value200000012539;
      case '200000013191': return PackagingType.value200000013191;
      case '200000024874': return PackagingType.value200000024874;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 PackagingType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

