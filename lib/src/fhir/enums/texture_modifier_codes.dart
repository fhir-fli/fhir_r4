import 'package:json_annotation/json_annotation.dart';

/// TextureModifier: Codes for food consistency types or texture modifications to apply to foods. This value set is composed of SNOMED CT (US Extension and Core) Concepts from SCTID 229961002 Food consistency types (substance) hierarchy and is provided as a suggestive example.
enum TextureModifierCodes {
  /// Display: Cut-up food
  @JsonValue('228053002')
  value228053002,
  /// Display: Easy to chew food
  @JsonValue('439091000124107')
  value439091000124107,
  /// Display: Chopped food
  @JsonValue('228049004')
  value228049004,
  /// Display: Ground food
  @JsonValue('441881000124103')
  value441881000124103,
  /// Display: Minced food
  @JsonValue('441761000124103')
  value441761000124103,
  /// Display: Mashed food
  @JsonValue('441751000124100')
  value441751000124100,
  /// Display: Soft food
  @JsonValue('228059003')
  value228059003,
  /// Display: Strained food
  @JsonValue('441791000124106')
  value441791000124106,
  /// Display: Liquidized food
  @JsonValue('228055009')
  value228055009,
  /// Display: Lumpy food
  @JsonValue('228056005')
  value228056005,
  /// Display: Moist food
  @JsonValue('441771000124105')
  value441771000124105,
  /// Display: Semi-solid food
  @JsonValue('228057001')
  value228057001,
  /// Display: Single texture food
  @JsonValue('228058006')
  value228058006,
  /// Display: Solid food
  @JsonValue('228060008')
  value228060008,
;

@override
  String toString() {
      switch(this) {
        case value228053002: return '228053002';
        case value439091000124107: return '439091000124107';
        case value228049004: return '228049004';
        case value441881000124103: return '441881000124103';
        case value441761000124103: return '441761000124103';
        case value441751000124100: return '441751000124100';
        case value228059003: return '228059003';
        case value441791000124106: return '441791000124106';
        case value228055009: return '228055009';
        case value228056005: return '228056005';
        case value441771000124105: return '441771000124105';
        case value228057001: return '228057001';
        case value228058006: return '228058006';
        case value228060008: return '228060008';
      }
      }
String toJson() => toString();
  TextureModifierCodes fromString(String str) {
    switch(str) {
      case '228053002': return TextureModifierCodes.value228053002;
      case '439091000124107': return TextureModifierCodes.value439091000124107;
      case '228049004': return TextureModifierCodes.value228049004;
      case '441881000124103': return TextureModifierCodes.value441881000124103;
      case '441761000124103': return TextureModifierCodes.value441761000124103;
      case '441751000124100': return TextureModifierCodes.value441751000124100;
      case '228059003': return TextureModifierCodes.value228059003;
      case '441791000124106': return TextureModifierCodes.value441791000124106;
      case '228055009': return TextureModifierCodes.value228055009;
      case '228056005': return TextureModifierCodes.value228056005;
      case '441771000124105': return TextureModifierCodes.value441771000124105;
      case '228057001': return TextureModifierCodes.value228057001;
      case '228058006': return TextureModifierCodes.value228058006;
      case '228060008': return TextureModifierCodes.value228060008;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TextureModifierCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

