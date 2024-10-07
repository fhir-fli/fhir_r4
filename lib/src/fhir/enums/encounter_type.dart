import 'package:json_annotation/json_annotation.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
enum EncounterType {
  /// Display: Annual diabetes mellitus screening
  @JsonValue('ADMS')
  ADMS,

  /// Display: Bone drilling/bone marrow punction in clinic
  @JsonValue('BD/BM-clin')
  BD_BM_clin,

  /// Display: Infant colon screening - 60 minutes
  @JsonValue('CCS60')
  CCS60,

  /// Display: Outpatient Kenacort injection
  @JsonValue('OKI')
  OKI,
  ;

  @override
  String toString() {
    switch (this) {
      case ADMS:
        return 'ADMS';
      case BD_BM_clin:
        return 'BD/BM-clin';
      case CCS60:
        return 'CCS60';
      case OKI:
        return 'OKI';
    }
  }

  String toJson() => toString();
  EncounterType fromString(String str) {
    switch (str) {
      case 'ADMS':
        return EncounterType.ADMS;
      case 'BD/BM-clin':
        return EncounterType.BD_BM_clin;
      case 'CCS60':
        return EncounterType.CCS60;
      case 'OKI':
        return EncounterType.OKI;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  EncounterType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
