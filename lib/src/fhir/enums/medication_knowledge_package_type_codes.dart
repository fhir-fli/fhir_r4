/// MedicationKnowledge Package Type Codes
enum MedicationKnowledgePackageTypeCodes {
  /// Display: Ampule
  amp,

  /// Display: Bag
  bag,

  /// Display: Blister Pack
  blstrpk,

  /// Display: Bottle
  bot,

  /// Display: Box
  box,

  /// Display: Can
  can,

  /// Display: Cartridge
  cart,

  /// Display: Disk
  disk,

  /// Display: Dosette
  doset,

  /// Display: Jar
  jar,

  /// Display: Jug
  jug,

  /// Display: Minim
  minim,

  /// Display: Nebule Amp
  nebamp,

  /// Display: Ovule
  ovul,

  /// Display: Pouch
  pch,

  /// Display: Packet
  pkt,

  /// Display: Sashet
  sash,

  /// Display: Strip
  strip,

  /// Display: Tin
  tin,

  /// Display: Tub
  tub,

  /// Display: Tube
  tube,

  /// Display: Vial
  vial,
  ;

  @override
  String toString() {
    switch (this) {
      case amp:
        return 'amp';
      case bag:
        return 'bag';
      case blstrpk:
        return 'blstrpk';
      case bot:
        return 'bot';
      case box:
        return 'box';
      case can:
        return 'can';
      case cart:
        return 'cart';
      case disk:
        return 'disk';
      case doset:
        return 'doset';
      case jar:
        return 'jar';
      case jug:
        return 'jug';
      case minim:
        return 'minim';
      case nebamp:
        return 'nebamp';
      case ovul:
        return 'ovul';
      case pch:
        return 'pch';
      case pkt:
        return 'pkt';
      case sash:
        return 'sash';
      case strip:
        return 'strip';
      case tin:
        return 'tin';
      case tub:
        return 'tub';
      case tube:
        return 'tube';
      case vial:
        return 'vial';
    }
  }

  /// Returns a [String] from a [MedicationKnowledgePackageTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationKnowledgePackageTypeCodes] from a [String] enum.
  static MedicationKnowledgePackageTypeCodes fromString(String str) {
    switch (str) {
      case 'amp':
        return MedicationKnowledgePackageTypeCodes.amp;
      case 'bag':
        return MedicationKnowledgePackageTypeCodes.bag;
      case 'blstrpk':
        return MedicationKnowledgePackageTypeCodes.blstrpk;
      case 'bot':
        return MedicationKnowledgePackageTypeCodes.bot;
      case 'box':
        return MedicationKnowledgePackageTypeCodes.box;
      case 'can':
        return MedicationKnowledgePackageTypeCodes.can;
      case 'cart':
        return MedicationKnowledgePackageTypeCodes.cart;
      case 'disk':
        return MedicationKnowledgePackageTypeCodes.disk;
      case 'doset':
        return MedicationKnowledgePackageTypeCodes.doset;
      case 'jar':
        return MedicationKnowledgePackageTypeCodes.jar;
      case 'jug':
        return MedicationKnowledgePackageTypeCodes.jug;
      case 'minim':
        return MedicationKnowledgePackageTypeCodes.minim;
      case 'nebamp':
        return MedicationKnowledgePackageTypeCodes.nebamp;
      case 'ovul':
        return MedicationKnowledgePackageTypeCodes.ovul;
      case 'pch':
        return MedicationKnowledgePackageTypeCodes.pch;
      case 'pkt':
        return MedicationKnowledgePackageTypeCodes.pkt;
      case 'sash':
        return MedicationKnowledgePackageTypeCodes.sash;
      case 'strip':
        return MedicationKnowledgePackageTypeCodes.strip;
      case 'tin':
        return MedicationKnowledgePackageTypeCodes.tin;
      case 'tub':
        return MedicationKnowledgePackageTypeCodes.tub;
      case 'tube':
        return MedicationKnowledgePackageTypeCodes.tube;
      case 'vial':
        return MedicationKnowledgePackageTypeCodes.vial;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationKnowledgePackageTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationKnowledgePackageTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
