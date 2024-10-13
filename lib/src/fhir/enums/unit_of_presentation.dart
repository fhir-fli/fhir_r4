/// The presentation type in which an administrable medicinal product is given to a patient.
enum UnitOfPresentation {
  /// Display: Barrel
  value200000002108,

  /// Display: Blister
  value200000002109,

  /// Display: Block
  value200000002110,

  /// Display: Bottle
  value200000002111,

  /// Display: Cachet
  value200000002112,

  /// Display: Capsule
  value200000002113,

  /// Display: Cartridge
  value200000002114,

  /// Display: Collar
  value200000002115,

  /// Display: Container
  value200000002116,

  /// Display: Cup
  value200000002117,

  /// Display: Cylinder
  value200000002118,

  /// Display: Dart
  value200000002119,

  /// Display: Dressing
  value200000002120,

  /// Display: Drop
  value200000002121,

  /// Display: Film
  value200000002122,

  /// Display: Chewing gum
  value200000002123,

  /// Display: Implant
  value200000002124,

  /// Display: Inhaler
  value200000002125,

  /// Display: Insert
  value200000002126,

  /// Display: Jar
  value200000002127,

  /// Display: Lozenge
  value200000002128,

  /// Display: Lyophilisate
  value200000002129,

  /// Display: Matrix
  value200000002130,

  /// Display: Pad
  value200000002131,

  /// Display: Paper
  value200000002132,

  /// Display: Pastille
  value200000002133,

  /// Display: Patch
  value200000002134,

  /// Display: Pen
  value200000002135,

  /// Display: Pendant
  value200000002136,

  /// Display: Pessary
  value200000002137,

  /// Display: Pillule
  value200000002138,

  /// Display: Pipette
  value200000002139,

  /// Display: Plaster
  value200000002140,

  /// Display: Plug
  value200000002141,

  /// Display: Pouch
  value200000002142,

  /// Display: Sachet
  value200000002143,

  /// Display: Sponge
  value200000002144,

  /// Display: Spoonful
  value200000002145,

  /// Display: Stick
  value200000002146,

  /// Display: Straw
  value200000002147,

  /// Display: Strip
  value200000002148,

  /// Display: Suppository
  value200000002149,

  /// Display: Syringe
  value200000002150,

  /// Display: System
  value200000002151,

  /// Display: Tablet
  value200000002152,

  /// Display: Tag
  value200000002153,

  /// Display: Tampon
  value200000002154,

  /// Display: Thread
  value200000002155,

  /// Display: Tube
  value200000002156,

  /// Display: Vessel
  value200000002157,

  /// Display: Vial
  value200000002158,

  /// Display: Puff
  value200000002159,

  /// Display: Actuation
  value200000002163,

  /// Display: Ampoule
  value200000002164,

  /// Display: Applicator
  value200000002165,

  /// Display: Bag
  value200000002166,
  ;

  @override
  String toString() {
    switch (this) {
      case value200000002108:
        return '200000002108';
      case value200000002109:
        return '200000002109';
      case value200000002110:
        return '200000002110';
      case value200000002111:
        return '200000002111';
      case value200000002112:
        return '200000002112';
      case value200000002113:
        return '200000002113';
      case value200000002114:
        return '200000002114';
      case value200000002115:
        return '200000002115';
      case value200000002116:
        return '200000002116';
      case value200000002117:
        return '200000002117';
      case value200000002118:
        return '200000002118';
      case value200000002119:
        return '200000002119';
      case value200000002120:
        return '200000002120';
      case value200000002121:
        return '200000002121';
      case value200000002122:
        return '200000002122';
      case value200000002123:
        return '200000002123';
      case value200000002124:
        return '200000002124';
      case value200000002125:
        return '200000002125';
      case value200000002126:
        return '200000002126';
      case value200000002127:
        return '200000002127';
      case value200000002128:
        return '200000002128';
      case value200000002129:
        return '200000002129';
      case value200000002130:
        return '200000002130';
      case value200000002131:
        return '200000002131';
      case value200000002132:
        return '200000002132';
      case value200000002133:
        return '200000002133';
      case value200000002134:
        return '200000002134';
      case value200000002135:
        return '200000002135';
      case value200000002136:
        return '200000002136';
      case value200000002137:
        return '200000002137';
      case value200000002138:
        return '200000002138';
      case value200000002139:
        return '200000002139';
      case value200000002140:
        return '200000002140';
      case value200000002141:
        return '200000002141';
      case value200000002142:
        return '200000002142';
      case value200000002143:
        return '200000002143';
      case value200000002144:
        return '200000002144';
      case value200000002145:
        return '200000002145';
      case value200000002146:
        return '200000002146';
      case value200000002147:
        return '200000002147';
      case value200000002148:
        return '200000002148';
      case value200000002149:
        return '200000002149';
      case value200000002150:
        return '200000002150';
      case value200000002151:
        return '200000002151';
      case value200000002152:
        return '200000002152';
      case value200000002153:
        return '200000002153';
      case value200000002154:
        return '200000002154';
      case value200000002155:
        return '200000002155';
      case value200000002156:
        return '200000002156';
      case value200000002157:
        return '200000002157';
      case value200000002158:
        return '200000002158';
      case value200000002159:
        return '200000002159';
      case value200000002163:
        return '200000002163';
      case value200000002164:
        return '200000002164';
      case value200000002165:
        return '200000002165';
      case value200000002166:
        return '200000002166';
    }
  }

  /// Returns a [String] from a [UnitOfPresentation] enum.
  String toJson() => toString();

  /// Returns a [UnitOfPresentation] from a [String] enum.
  static UnitOfPresentation fromString(String str) {
    switch (str) {
      case '200000002108':
        return UnitOfPresentation.value200000002108;
      case '200000002109':
        return UnitOfPresentation.value200000002109;
      case '200000002110':
        return UnitOfPresentation.value200000002110;
      case '200000002111':
        return UnitOfPresentation.value200000002111;
      case '200000002112':
        return UnitOfPresentation.value200000002112;
      case '200000002113':
        return UnitOfPresentation.value200000002113;
      case '200000002114':
        return UnitOfPresentation.value200000002114;
      case '200000002115':
        return UnitOfPresentation.value200000002115;
      case '200000002116':
        return UnitOfPresentation.value200000002116;
      case '200000002117':
        return UnitOfPresentation.value200000002117;
      case '200000002118':
        return UnitOfPresentation.value200000002118;
      case '200000002119':
        return UnitOfPresentation.value200000002119;
      case '200000002120':
        return UnitOfPresentation.value200000002120;
      case '200000002121':
        return UnitOfPresentation.value200000002121;
      case '200000002122':
        return UnitOfPresentation.value200000002122;
      case '200000002123':
        return UnitOfPresentation.value200000002123;
      case '200000002124':
        return UnitOfPresentation.value200000002124;
      case '200000002125':
        return UnitOfPresentation.value200000002125;
      case '200000002126':
        return UnitOfPresentation.value200000002126;
      case '200000002127':
        return UnitOfPresentation.value200000002127;
      case '200000002128':
        return UnitOfPresentation.value200000002128;
      case '200000002129':
        return UnitOfPresentation.value200000002129;
      case '200000002130':
        return UnitOfPresentation.value200000002130;
      case '200000002131':
        return UnitOfPresentation.value200000002131;
      case '200000002132':
        return UnitOfPresentation.value200000002132;
      case '200000002133':
        return UnitOfPresentation.value200000002133;
      case '200000002134':
        return UnitOfPresentation.value200000002134;
      case '200000002135':
        return UnitOfPresentation.value200000002135;
      case '200000002136':
        return UnitOfPresentation.value200000002136;
      case '200000002137':
        return UnitOfPresentation.value200000002137;
      case '200000002138':
        return UnitOfPresentation.value200000002138;
      case '200000002139':
        return UnitOfPresentation.value200000002139;
      case '200000002140':
        return UnitOfPresentation.value200000002140;
      case '200000002141':
        return UnitOfPresentation.value200000002141;
      case '200000002142':
        return UnitOfPresentation.value200000002142;
      case '200000002143':
        return UnitOfPresentation.value200000002143;
      case '200000002144':
        return UnitOfPresentation.value200000002144;
      case '200000002145':
        return UnitOfPresentation.value200000002145;
      case '200000002146':
        return UnitOfPresentation.value200000002146;
      case '200000002147':
        return UnitOfPresentation.value200000002147;
      case '200000002148':
        return UnitOfPresentation.value200000002148;
      case '200000002149':
        return UnitOfPresentation.value200000002149;
      case '200000002150':
        return UnitOfPresentation.value200000002150;
      case '200000002151':
        return UnitOfPresentation.value200000002151;
      case '200000002152':
        return UnitOfPresentation.value200000002152;
      case '200000002153':
        return UnitOfPresentation.value200000002153;
      case '200000002154':
        return UnitOfPresentation.value200000002154;
      case '200000002155':
        return UnitOfPresentation.value200000002155;
      case '200000002156':
        return UnitOfPresentation.value200000002156;
      case '200000002157':
        return UnitOfPresentation.value200000002157;
      case '200000002158':
        return UnitOfPresentation.value200000002158;
      case '200000002159':
        return UnitOfPresentation.value200000002159;
      case '200000002163':
        return UnitOfPresentation.value200000002163;
      case '200000002164':
        return UnitOfPresentation.value200000002164;
      case '200000002165':
        return UnitOfPresentation.value200000002165;
      case '200000002166':
        return UnitOfPresentation.value200000002166;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [UnitOfPresentation] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static UnitOfPresentation fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
