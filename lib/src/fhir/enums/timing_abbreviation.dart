import 'package:json_annotation/json_annotation.dart';

/// Code for a known / defined timing pattern.
enum TimingAbbreviation {
  /// Display: BID
  @JsonValue('BID')
  BID,
  /// Display: TID
  @JsonValue('TID')
  TID,
  /// Display: QID
  @JsonValue('QID')
  QID,
  /// Display: AM
  @JsonValue('AM')
  AM,
  /// Display: PM
  @JsonValue('PM')
  PM,
  /// Display: QD
  @JsonValue('QD')
  QD,
  /// Display: QOD
  @JsonValue('QOD')
  QOD,
  /// Display: every hour
  @JsonValue('Q1H')
  Q1H,
  /// Display: every 2 hours
  @JsonValue('Q2H')
  Q2H,
  /// Display: every 3 hours
  @JsonValue('Q3H')
  Q3H,
  /// Display: Q4H
  @JsonValue('Q4H')
  Q4H,
  /// Display: Q6H
  @JsonValue('Q6H')
  Q6H,
  /// Display: every 8 hours
  @JsonValue('Q8H')
  Q8H,
  /// Display: at bedtime
  @JsonValue('BED')
  BED,
  /// Display: weekly
  @JsonValue('WK')
  WK,
  /// Display: monthly
  @JsonValue('MO')
  MO,
;

@override
  String toString() {
      switch(this) {
        case BID: return 'BID';
        case TID: return 'TID';
        case QID: return 'QID';
        case AM: return 'AM';
        case PM: return 'PM';
        case QD: return 'QD';
        case QOD: return 'QOD';
        case Q1H: return 'Q1H';
        case Q2H: return 'Q2H';
        case Q3H: return 'Q3H';
        case Q4H: return 'Q4H';
        case Q6H: return 'Q6H';
        case Q8H: return 'Q8H';
        case BED: return 'BED';
        case WK: return 'WK';
        case MO: return 'MO';
      }
      }
String toJson() => toString();
  TimingAbbreviation fromString(String str) {
    switch(str) {
      case 'BID': return TimingAbbreviation.BID;
      case 'TID': return TimingAbbreviation.TID;
      case 'QID': return TimingAbbreviation.QID;
      case 'AM': return TimingAbbreviation.AM;
      case 'PM': return TimingAbbreviation.PM;
      case 'QD': return TimingAbbreviation.QD;
      case 'QOD': return TimingAbbreviation.QOD;
      case 'Q1H': return TimingAbbreviation.Q1H;
      case 'Q2H': return TimingAbbreviation.Q2H;
      case 'Q3H': return TimingAbbreviation.Q3H;
      case 'Q4H': return TimingAbbreviation.Q4H;
      case 'Q6H': return TimingAbbreviation.Q6H;
      case 'Q8H': return TimingAbbreviation.Q8H;
      case 'BED': return TimingAbbreviation.BED;
      case 'WK': return TimingAbbreviation.WK;
      case 'MO': return TimingAbbreviation.MO;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TimingAbbreviation fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

