import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of FDI oral site codes.
enum OralSiteCodes {
  /// Display: Oral cavity
  /// Definition: Oral cavity.
  @JsonValue('0')
  value0,

  /// Display: 1
  /// Definition: Permanent teeth Maxillary right.
  @JsonValue('1')
  value1,

  /// Display: 2
  /// Definition: Permanent teeth Maxillary left.
  @JsonValue('2')
  value2,

  /// Display: 3
  /// Definition: Permanent teeth Mandibular right.
  @JsonValue('3')
  value3,

  /// Display: 4
  /// Definition: Permanent teeth Mandibular left.
  @JsonValue('4')
  value4,

  /// Display: 5
  /// Definition: Deciduous teeth Maxillary right.
  @JsonValue('5')
  value5,

  /// Display: 6
  /// Definition: Deciduous teeth Maxillary left.
  @JsonValue('6')
  value6,

  /// Display: 7
  /// Definition: Deciduous teeth Mandibular right.
  @JsonValue('7')
  value7,

  /// Display: 8
  /// Definition: Deciduous teeth Mandibular left.
  @JsonValue('8')
  value8,

  /// Display: 11
  /// Definition: Upper Right Tooth 1 from the central axis, permanent dentition.
  @JsonValue('11')
  value11,

  /// Display: 12
  /// Definition: Upper Right Tooth 2 from the central axis, permanent dentition.
  @JsonValue('12')
  value12,

  /// Display: 13
  /// Definition: Upper Right Tooth 3 from the central axis, permanent dentition.
  @JsonValue('13')
  value13,

  /// Display: 14
  /// Definition: Upper Right Tooth 4 from the central axis, permanent dentition.
  @JsonValue('14')
  value14,

  /// Display: 15
  /// Definition: Upper Right Tooth 5 from the central axis, permanent dentition.
  @JsonValue('15')
  value15,

  /// Display: 16
  /// Definition: Upper Right Tooth 6 from the central axis, permanent dentition.
  @JsonValue('16')
  value16,

  /// Display: 17
  /// Definition: Upper Right Tooth 7 from the central axis, permanent dentition.
  @JsonValue('17')
  value17,

  /// Display: 18
  /// Definition: Upper Right Tooth 8 from the central axis, permanent dentition.
  @JsonValue('18')
  value18,

  /// Display: 21
  /// Definition: Upper Left Tooth 1 from the central axis, permanent dentition.
  @JsonValue('21')
  value21,

  /// Display: 22
  /// Definition: Upper Left Tooth 2 from the central axis, permanent dentition.
  @JsonValue('22')
  value22,

  /// Display: 23
  /// Definition: Upper Left Tooth 3 from the central axis, permanent dentition.
  @JsonValue('23')
  value23,

  /// Display: 24
  /// Definition: Upper Left Tooth 4 from the central axis, permanent dentition.
  @JsonValue('24')
  value24,

  /// Display: 25
  /// Definition: Upper Left Tooth 5 from the central axis, permanent dentition.
  @JsonValue('25')
  value25,

  /// Display: 26
  /// Definition: Upper Left Tooth 6 from the central axis, permanent dentition.
  @JsonValue('26')
  value26,

  /// Display: 27
  /// Definition: Upper Left Tooth 7 from the central axis, permanent dentition.
  @JsonValue('27')
  value27,

  /// Display: 28
  /// Definition: Upper Left Tooth 8 from the central axis, permanent dentition.
  @JsonValue('28')
  value28,

  /// Display: 31
  /// Definition: Lower Left Tooth 1 from the central axis, permanent dentition.
  @JsonValue('31')
  value31,

  /// Display: 32
  /// Definition: Lower Left Tooth 2 from the central axis, permanent dentition.
  @JsonValue('32')
  value32,

  /// Display: 33
  /// Definition: Lower Left Tooth 3 from the central axis, permanent dentition.
  @JsonValue('33')
  value33,

  /// Display: 34
  /// Definition: Lower Left Tooth 4 from the central axis, permanent dentition.
  @JsonValue('34')
  value34,

  /// Display: 35
  /// Definition: Lower Left Tooth 5 from the central axis, permanent dentition.
  @JsonValue('35')
  value35,

  /// Display: 36
  /// Definition: Lower Left Tooth 6 from the central axis, permanent dentition.
  @JsonValue('36')
  value36,

  /// Display: 37
  /// Definition: Lower Left Tooth 7 from the central axis, permanent dentition.
  @JsonValue('37')
  value37,

  /// Display: 38
  /// Definition: Lower Left Tooth 8 from the central axis, permanent dentition.
  @JsonValue('38')
  value38,

  /// Display: 41
  /// Definition: Lower Right Tooth 1 from the central axis, permanent dentition.
  @JsonValue('41')
  value41,

  /// Display: 42
  /// Definition: Lower Right Tooth 2 from the central axis, permanent dentition.
  @JsonValue('42')
  value42,

  /// Display: 43
  /// Definition: Lower Right Tooth 3 from the central axis, permanent dentition.
  @JsonValue('43')
  value43,

  /// Display: 44
  /// Definition: Lower Right Tooth 4 from the central axis, permanent dentition.
  @JsonValue('44')
  value44,

  /// Display: 45
  /// Definition: Lower Right Tooth 5 from the central axis, permanent dentition.
  @JsonValue('45')
  value45,

  /// Display: 46
  /// Definition: Lower Right Tooth 6 from the central axis, permanent dentition.
  @JsonValue('46')
  value46,

  /// Display: 47
  /// Definition: Lower Right Tooth 7 from the central axis, permanent dentition.
  @JsonValue('47')
  value47,

  /// Display: 48
  /// Definition: Lower Right Tooth 8 from the central axis, permanent dentition.
  @JsonValue('48')
  value48,
  ;

  @override
  String toString() {
    switch (this) {
      case value0:
        return '0';
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value6:
        return '6';
      case value7:
        return '7';
      case value8:
        return '8';
      case value11:
        return '11';
      case value12:
        return '12';
      case value13:
        return '13';
      case value14:
        return '14';
      case value15:
        return '15';
      case value16:
        return '16';
      case value17:
        return '17';
      case value18:
        return '18';
      case value21:
        return '21';
      case value22:
        return '22';
      case value23:
        return '23';
      case value24:
        return '24';
      case value25:
        return '25';
      case value26:
        return '26';
      case value27:
        return '27';
      case value28:
        return '28';
      case value31:
        return '31';
      case value32:
        return '32';
      case value33:
        return '33';
      case value34:
        return '34';
      case value35:
        return '35';
      case value36:
        return '36';
      case value37:
        return '37';
      case value38:
        return '38';
      case value41:
        return '41';
      case value42:
        return '42';
      case value43:
        return '43';
      case value44:
        return '44';
      case value45:
        return '45';
      case value46:
        return '46';
      case value47:
        return '47';
      case value48:
        return '48';
    }
  }

  String toJson() => toString();
  static OralSiteCodes fromString(String str) {
    switch (str) {
      case '0':
        return OralSiteCodes.value0;
      case '1':
        return OralSiteCodes.value1;
      case '2':
        return OralSiteCodes.value2;
      case '3':
        return OralSiteCodes.value3;
      case '4':
        return OralSiteCodes.value4;
      case '5':
        return OralSiteCodes.value5;
      case '6':
        return OralSiteCodes.value6;
      case '7':
        return OralSiteCodes.value7;
      case '8':
        return OralSiteCodes.value8;
      case '11':
        return OralSiteCodes.value11;
      case '12':
        return OralSiteCodes.value12;
      case '13':
        return OralSiteCodes.value13;
      case '14':
        return OralSiteCodes.value14;
      case '15':
        return OralSiteCodes.value15;
      case '16':
        return OralSiteCodes.value16;
      case '17':
        return OralSiteCodes.value17;
      case '18':
        return OralSiteCodes.value18;
      case '21':
        return OralSiteCodes.value21;
      case '22':
        return OralSiteCodes.value22;
      case '23':
        return OralSiteCodes.value23;
      case '24':
        return OralSiteCodes.value24;
      case '25':
        return OralSiteCodes.value25;
      case '26':
        return OralSiteCodes.value26;
      case '27':
        return OralSiteCodes.value27;
      case '28':
        return OralSiteCodes.value28;
      case '31':
        return OralSiteCodes.value31;
      case '32':
        return OralSiteCodes.value32;
      case '33':
        return OralSiteCodes.value33;
      case '34':
        return OralSiteCodes.value34;
      case '35':
        return OralSiteCodes.value35;
      case '36':
        return OralSiteCodes.value36;
      case '37':
        return OralSiteCodes.value37;
      case '38':
        return OralSiteCodes.value38;
      case '41':
        return OralSiteCodes.value41;
      case '42':
        return OralSiteCodes.value42;
      case '43':
        return OralSiteCodes.value43;
      case '44':
        return OralSiteCodes.value44;
      case '45':
        return OralSiteCodes.value45;
      case '46':
        return OralSiteCodes.value46;
      case '47':
        return OralSiteCodes.value47;
      case '48':
        return OralSiteCodes.value48;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static OralSiteCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
