/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
enum EpisodeOfCareType {
  /// Display: Home and Community Care
  hacc,

  /// Display: Post Acute Care
  pac,

  /// Display: Post coordinated diabetes program
  diab,

  /// Display: Drug and alcohol rehabilitation
  da,

  /// Display: Community-based aged care
  cacp,
  ;

  @override
  String toString() {
    switch (this) {
      case hacc:
        return 'hacc';
      case pac:
        return 'pac';
      case diab:
        return 'diab';
      case da:
        return 'da';
      case cacp:
        return 'cacp';
    }
  }

  String toJson() => toString();
  static EpisodeOfCareType fromString(String str) {
    switch (str) {
      case 'hacc':
        return EpisodeOfCareType.hacc;
      case 'pac':
        return EpisodeOfCareType.pac;
      case 'diab':
        return EpisodeOfCareType.diab;
      case 'da':
        return EpisodeOfCareType.da;
      case 'cacp':
        return EpisodeOfCareType.cacp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EpisodeOfCareType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
