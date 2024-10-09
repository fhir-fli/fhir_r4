/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
enum SpecialCourtesy {
  EXT,
  NRM,
  PRF,
  STF,
  VIP,
  UNK,
  ;

  @override
  String toString() {
    switch (this) {
      case EXT:
        return 'EXT';
      case NRM:
        return 'NRM';
      case PRF:
        return 'PRF';
      case STF:
        return 'STF';
      case VIP:
        return 'VIP';
      case UNK:
        return 'UNK';
    }
  }

  String toJson() => toString();
  static SpecialCourtesy fromString(String str) {
    switch (str) {
      case 'EXT':
        return SpecialCourtesy.EXT;
      case 'NRM':
        return SpecialCourtesy.NRM;
      case 'PRF':
        return SpecialCourtesy.PRF;
      case 'STF':
        return SpecialCourtesy.STF;
      case 'VIP':
        return SpecialCourtesy.VIP;
      case 'UNK':
        return SpecialCourtesy.UNK;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SpecialCourtesy fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
