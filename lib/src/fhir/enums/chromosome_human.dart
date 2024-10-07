import 'package:json_annotation/json_annotation.dart';

/// Chromosome number for human.
enum ChromosomeHuman {
  /// Display: chromosome 1
  /// Definition: chromosome 1.
  @JsonValue('1')
  value1,
  /// Display: chromosome 2
  /// Definition: chromosome 2.
  @JsonValue('2')
  value2,
  /// Display: chromosome 3
  /// Definition: chromosome 3.
  @JsonValue('3')
  value3,
  /// Display: chromosome 4
  /// Definition: chromosome 4.
  @JsonValue('4')
  value4,
  /// Display: chromosome 5
  /// Definition: chromosome 5.
  @JsonValue('5')
  value5,
  /// Display: chromosome 6
  /// Definition: chromosome 6.
  @JsonValue('6')
  value6,
  /// Display: chromosome 7
  /// Definition: chromosome 7.
  @JsonValue('7')
  value7,
  /// Display: chromosome 8
  /// Definition: chromosome 8.
  @JsonValue('8')
  value8,
  /// Display: chromosome 9
  /// Definition: chromosome 9.
  @JsonValue('9')
  value9,
  /// Display: chromosome 10
  /// Definition: chromosome 10.
  @JsonValue('10')
  value10,
  /// Display: chromosome 11
  /// Definition: chromosome 11.
  @JsonValue('11')
  value11,
  /// Display: chromosome 12
  /// Definition: chromosome 12.
  @JsonValue('12')
  value12,
  /// Display: chromosome 13
  /// Definition: chromosome 13.
  @JsonValue('13')
  value13,
  /// Display: chromosome 14
  /// Definition: chromosome 14.
  @JsonValue('14')
  value14,
  /// Display: chromosome 15
  /// Definition: chromosome 15.
  @JsonValue('15')
  value15,
  /// Display: chromosome 16
  /// Definition: chromosome 16.
  @JsonValue('16')
  value16,
  /// Display: chromosome 17
  /// Definition: chromosome 17.
  @JsonValue('17')
  value17,
  /// Display: chromosome 18
  /// Definition: chromosome 18.
  @JsonValue('18')
  value18,
  /// Display: chromosome 19
  /// Definition: chromosome 19.
  @JsonValue('19')
  value19,
  /// Display: chromosome 20
  /// Definition: chromosome 20.
  @JsonValue('20')
  value20,
  /// Display: chromosome 21
  /// Definition: chromosome 21.
  @JsonValue('21')
  value21,
  /// Display: chromosome 22
  /// Definition: chromosome 22.
  @JsonValue('22')
  value22,
  /// Display: chromosome X
  /// Definition: chromosome X.
  @JsonValue('X')
  X,
  /// Display: chromosome Y
  /// Definition: chromosome Y.
  @JsonValue('Y')
  Y,
;

@override
  String toString() {
      switch(this) {
        case value1: return '1';
        case value2: return '2';
        case value3: return '3';
        case value4: return '4';
        case value5: return '5';
        case value6: return '6';
        case value7: return '7';
        case value8: return '8';
        case value9: return '9';
        case value10: return '10';
        case value11: return '11';
        case value12: return '12';
        case value13: return '13';
        case value14: return '14';
        case value15: return '15';
        case value16: return '16';
        case value17: return '17';
        case value18: return '18';
        case value19: return '19';
        case value20: return '20';
        case value21: return '21';
        case value22: return '22';
        case X: return 'X';
        case Y: return 'Y';
      }
      }
String toJson() => toString();
  ChromosomeHuman fromString(String str) {
    switch(str) {
      case '1': return ChromosomeHuman.value1;
      case '2': return ChromosomeHuman.value2;
      case '3': return ChromosomeHuman.value3;
      case '4': return ChromosomeHuman.value4;
      case '5': return ChromosomeHuman.value5;
      case '6': return ChromosomeHuman.value6;
      case '7': return ChromosomeHuman.value7;
      case '8': return ChromosomeHuman.value8;
      case '9': return ChromosomeHuman.value9;
      case '10': return ChromosomeHuman.value10;
      case '11': return ChromosomeHuman.value11;
      case '12': return ChromosomeHuman.value12;
      case '13': return ChromosomeHuman.value13;
      case '14': return ChromosomeHuman.value14;
      case '15': return ChromosomeHuman.value15;
      case '16': return ChromosomeHuman.value16;
      case '17': return ChromosomeHuman.value17;
      case '18': return ChromosomeHuman.value18;
      case '19': return ChromosomeHuman.value19;
      case '20': return ChromosomeHuman.value20;
      case '21': return ChromosomeHuman.value21;
      case '22': return ChromosomeHuman.value22;
      case 'X': return ChromosomeHuman.X;
      case 'Y': return ChromosomeHuman.Y;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ChromosomeHuman fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

