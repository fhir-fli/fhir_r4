import 'package:json_annotation/json_annotation.dart';

/// A code or set of codes (e.g., for routine, emergency,) specifying the urgency under which the Act happened, can happen, is happening, is intended to happen, or is requested/demanded to happen.    *Discussion:* This attribute is used in orders to indicate the ordered priority, and in event documentation it indicates the actual priority used to perform the act. In definition mood it indicates the available priorities.
enum ActPriority {
  @JsonValue('A')
  A,
  @JsonValue('CR')
  CR,
  @JsonValue('EL')
  EL,
  @JsonValue('EM')
  EM,
  @JsonValue('P')
  P,
  @JsonValue('PRN')
  PRN,
  @JsonValue('R')
  R,
  @JsonValue('RR')
  RR,
  @JsonValue('S')
  S,
  @JsonValue('T')
  T,
  @JsonValue('UD')
  UD,
  @JsonValue('UR')
  UR,
  ;

  @override
  String toString() {
    switch (this) {
      case A:
        return 'A';
      case CR:
        return 'CR';
      case EL:
        return 'EL';
      case EM:
        return 'EM';
      case P:
        return 'P';
      case PRN:
        return 'PRN';
      case R:
        return 'R';
      case RR:
        return 'RR';
      case S:
        return 'S';
      case T:
        return 'T';
      case UD:
        return 'UD';
      case UR:
        return 'UR';
    }
  }

  String toJson() => toString();
  ActPriority fromString(String str) {
    switch (str) {
      case 'A':
        return ActPriority.A;
      case 'CR':
        return ActPriority.CR;
      case 'EL':
        return ActPriority.EL;
      case 'EM':
        return ActPriority.EM;
      case 'P':
        return ActPriority.P;
      case 'PRN':
        return ActPriority.PRN;
      case 'R':
        return ActPriority.R;
      case 'RR':
        return ActPriority.RR;
      case 'S':
        return ActPriority.S;
      case 'T':
        return ActPriority.T;
      case 'UD':
        return ActPriority.UD;
      case 'UR':
        return ActPriority.UR;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ActPriority fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
