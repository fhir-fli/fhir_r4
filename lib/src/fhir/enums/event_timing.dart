/// Real world event relating to the schedule.
enum EventTiming {
  /// Display: Morning
  /// Definition: Event occurs during the morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN,

  /// Display: Early Morning
  /// Definition: Event occurs during the early morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN_early,

  /// Display: Late Morning
  /// Definition: Event occurs during the late morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN_late,

  /// Display: Noon
  /// Definition: Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient interpretation.
  NOON,

  /// Display: Afternoon
  /// Definition: Event occurs during the afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT,

  /// Display: Early Afternoon
  /// Definition: Event occurs during the early afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT_early,

  /// Display: Late Afternoon
  /// Definition: Event occurs during the late afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT_late,

  /// Display: Evening
  /// Definition: Event occurs during the evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE,

  /// Display: Early Evening
  /// Definition: Event occurs during the early evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE_early,

  /// Display: Late Evening
  /// Definition: Event occurs during the late evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE_late,

  /// Display: Night
  /// Definition: Event occurs during the night. The exact time is unspecified and established by institution convention or patient interpretation.
  NIGHT,

  /// Display: After Sleep
  /// Definition: Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution convention or patient interpretation.
  PHS,
  HS,
  WAKE,
  C,
  CM,
  CD,
  CV,
  AC,
  ACM,
  ACD,
  ACV,
  PC,
  PCM,
  PCD,
  PCV,
  ;

  @override
  String toString() {
    switch (this) {
      case MORN:
        return 'MORN';
      case MORN_early:
        return 'MORN.early';
      case MORN_late:
        return 'MORN.late';
      case NOON:
        return 'NOON';
      case AFT:
        return 'AFT';
      case AFT_early:
        return 'AFT.early';
      case AFT_late:
        return 'AFT.late';
      case EVE:
        return 'EVE';
      case EVE_early:
        return 'EVE.early';
      case EVE_late:
        return 'EVE.late';
      case NIGHT:
        return 'NIGHT';
      case PHS:
        return 'PHS';
      case HS:
        return 'HS';
      case WAKE:
        return 'WAKE';
      case C:
        return 'C';
      case CM:
        return 'CM';
      case CD:
        return 'CD';
      case CV:
        return 'CV';
      case AC:
        return 'AC';
      case ACM:
        return 'ACM';
      case ACD:
        return 'ACD';
      case ACV:
        return 'ACV';
      case PC:
        return 'PC';
      case PCM:
        return 'PCM';
      case PCD:
        return 'PCD';
      case PCV:
        return 'PCV';
    }
  }

  /// Returns a [String] from a [EventTiming] enum.
  String toJson() => toString();

  /// Returns a [EventTiming] from a [String] enum.
  static EventTiming fromString(String str) {
    switch (str) {
      case 'MORN':
        return EventTiming.MORN;
      case 'MORN.early':
        return EventTiming.MORN_early;
      case 'MORN.late':
        return EventTiming.MORN_late;
      case 'NOON':
        return EventTiming.NOON;
      case 'AFT':
        return EventTiming.AFT;
      case 'AFT.early':
        return EventTiming.AFT_early;
      case 'AFT.late':
        return EventTiming.AFT_late;
      case 'EVE':
        return EventTiming.EVE;
      case 'EVE.early':
        return EventTiming.EVE_early;
      case 'EVE.late':
        return EventTiming.EVE_late;
      case 'NIGHT':
        return EventTiming.NIGHT;
      case 'PHS':
        return EventTiming.PHS;
      case 'HS':
        return EventTiming.HS;
      case 'WAKE':
        return EventTiming.WAKE;
      case 'C':
        return EventTiming.C;
      case 'CM':
        return EventTiming.CM;
      case 'CD':
        return EventTiming.CD;
      case 'CV':
        return EventTiming.CV;
      case 'AC':
        return EventTiming.AC;
      case 'ACM':
        return EventTiming.ACM;
      case 'ACD':
        return EventTiming.ACD;
      case 'ACV':
        return EventTiming.ACV;
      case 'PC':
        return EventTiming.PC;
      case 'PCM':
        return EventTiming.PCM;
      case 'PCD':
        return EventTiming.PCD;
      case 'PCV':
        return EventTiming.PCV;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EventTiming] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EventTiming fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
