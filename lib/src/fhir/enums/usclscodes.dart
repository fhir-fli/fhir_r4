import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of USCLS codes.
enum USCLSCodes {
  /// Display: Exam, comp, primary
  /// Definition: Exam, comp, primary
  @JsonValue('1101')
  value1101,
  /// Display: Exam, comp, mixed
  /// Definition: Exam, comp, mixed
  @JsonValue('1102')
  value1102,
  /// Display: Exam, comp, permanent
  /// Definition: Exam, comp, permanent
  @JsonValue('1103')
  value1103,
  /// Display: Exam, recall
  /// Definition: Exam, recall
  @JsonValue('1201')
  value1201,
  /// Display: Exam, emergency
  /// Definition: Exam, emergency
  @JsonValue('1205')
  value1205,
  /// Display: Radiograph, series (12)
  /// Definition: Radiograph, series (12)
  @JsonValue('2101')
  value2101,
  /// Display: Radiograph, series (16)
  /// Definition: Radiograph, series (16)
  @JsonValue('2102')
  value2102,
  /// Display: Radiograph, bitewing
  /// Definition: Radiograph, bitewing
  @JsonValue('2141')
  value2141,
  /// Display: Radiograph, panoramic
  /// Definition: Radiograph, panoramic
  @JsonValue('2601')
  value2601,
  /// Display: Polishing, 1 unit
  /// Definition: Polishing, 1 unit
  @JsonValue('11101')
  value11101,
  /// Display: Polishing, 2 unit
  /// Definition: Polishing, 2 unit
  @JsonValue('11102')
  value11102,
  /// Display: Polishing, 3 unit
  /// Definition: Polishing, 3 unit
  @JsonValue('11103')
  value11103,
  /// Display: Polishing, 4 unit
  /// Definition: Polishing, 4 unit
  @JsonValue('11104')
  value11104,
  /// Display: Amalgam, 1 surface
  /// Definition: Amalgam, 1 surface
  @JsonValue('21211')
  value21211,
  /// Display: Amalgam, 2 surface
  /// Definition: Amalgam, 2 surface
  @JsonValue('21212')
  value21212,
  /// Display: Crown, PFM
  /// Definition: Crown, PFM
  @JsonValue('27211')
  value27211,
  /// Display: Maryland Bridge
  /// Definition: Maryland Bridge
  @JsonValue('67211')
  value67211,
  /// Display: Lab, commercial
  /// Definition: Lab, commercial
  @JsonValue('99111')
  value99111,
  /// Display: Lab, in office
  /// Definition: Lab, in office
  @JsonValue('99333')
  value99333,
  /// Display: Expense
  /// Definition: Expense
  @JsonValue('99555')
  value99555,
;

@override
  String toString() {
      switch(this) {
        case value1101: return '1101';
        case value1102: return '1102';
        case value1103: return '1103';
        case value1201: return '1201';
        case value1205: return '1205';
        case value2101: return '2101';
        case value2102: return '2102';
        case value2141: return '2141';
        case value2601: return '2601';
        case value11101: return '11101';
        case value11102: return '11102';
        case value11103: return '11103';
        case value11104: return '11104';
        case value21211: return '21211';
        case value21212: return '21212';
        case value27211: return '27211';
        case value67211: return '67211';
        case value99111: return '99111';
        case value99333: return '99333';
        case value99555: return '99555';
      }
      }
String toJson() => toString();
  USCLSCodes fromString(String str) {
    switch(str) {
      case '1101': return USCLSCodes.value1101;
      case '1102': return USCLSCodes.value1102;
      case '1103': return USCLSCodes.value1103;
      case '1201': return USCLSCodes.value1201;
      case '1205': return USCLSCodes.value1205;
      case '2101': return USCLSCodes.value2101;
      case '2102': return USCLSCodes.value2102;
      case '2141': return USCLSCodes.value2141;
      case '2601': return USCLSCodes.value2601;
      case '11101': return USCLSCodes.value11101;
      case '11102': return USCLSCodes.value11102;
      case '11103': return USCLSCodes.value11103;
      case '11104': return USCLSCodes.value11104;
      case '21211': return USCLSCodes.value21211;
      case '21212': return USCLSCodes.value21212;
      case '27211': return USCLSCodes.value27211;
      case '67211': return USCLSCodes.value67211;
      case '99111': return USCLSCodes.value99111;
      case '99333': return USCLSCodes.value99333;
      case '99555': return USCLSCodes.value99555;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 USCLSCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

