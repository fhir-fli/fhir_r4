/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
enum EncounterType {
  /// Display: Annual diabetes mellitus screening
  ADMS,

  /// Display: Bone drilling/bone marrow punction in clinic
  BD_BM_clin,

  /// Display: Infant colon screening - 60 minutes
  CCS60,

  /// Display: Outpatient Kenacort injection
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
  static EncounterType fromString(String str) {
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

  static EncounterType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
