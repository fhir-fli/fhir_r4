import 'package:json_annotation/json_annotation.dart';

/// MedicationKnowledge Package Type Codes
enum MedicationKnowledgePackageTypeCodes {
  /// Display: Ampule
  @JsonValue('amp')
  amp,

  /// Display: Bag
  @JsonValue('bag')
  bag,

  /// Display: Blister Pack
  @JsonValue('blstrpk')
  blstrpk,

  /// Display: Bottle
  @JsonValue('bot')
  bot,

  /// Display: Box
  @JsonValue('box')
  box,

  /// Display: Can
  @JsonValue('can')
  can,

  /// Display: Cartridge
  @JsonValue('cart')
  cart,

  /// Display: Disk
  @JsonValue('disk')
  disk,

  /// Display: Dosette
  @JsonValue('doset')
  doset,

  /// Display: Jar
  @JsonValue('jar')
  jar,

  /// Display: Jug
  @JsonValue('jug')
  jug,

  /// Display: Minim
  @JsonValue('minim')
  minim,

  /// Display: Nebule Amp
  @JsonValue('nebamp')
  nebamp,

  /// Display: Ovule
  @JsonValue('ovul')
  ovul,

  /// Display: Pouch
  @JsonValue('pch')
  pch,

  /// Display: Packet
  @JsonValue('pkt')
  pkt,

  /// Display: Sashet
  @JsonValue('sash')
  sash,

  /// Display: Strip
  @JsonValue('strip')
  strip,

  /// Display: Tin
  @JsonValue('tin')
  tin,

  /// Display: Tub
  @JsonValue('tub')
  tub,

  /// Display: Tube
  @JsonValue('tube')
  tube,

  /// Display: Vial
  @JsonValue('vial')
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

  String toJson() => toString();
  MedicationKnowledgePackageTypeCodes fromString(String str) {
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

  MedicationKnowledgePackageTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
