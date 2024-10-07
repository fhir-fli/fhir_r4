import 'package:json_annotation/json_annotation.dart';

/// Document section codes (LOINC codes used in CCDA sections).
enum DocumentSectionCodes {
  @JsonValue('10154-3')
  value10154_3,
  @JsonValue('10157-6')
  value10157_6,
  @JsonValue('10160-0')
  value10160_0,
  @JsonValue('10164-2')
  value10164_2,
  @JsonValue('10183-2')
  value10183_2,
  @JsonValue('10184-0')
  value10184_0,
  @JsonValue('10187-3')
  value10187_3,
  @JsonValue('10210-3')
  value10210_3,
  @JsonValue('10216-0')
  value10216_0,
  @JsonValue('10218-6')
  value10218_6,
  @JsonValue('10223-6')
  value10223_6,
  @JsonValue('10222-8')
  value10222_8,
  @JsonValue('11329-0')
  value11329_0,
  @JsonValue('11348-0')
  value11348_0,
  @JsonValue('11369-6')
  value11369_6,
  @JsonValue('57852-6')
  value57852_6,
  @JsonValue('11493-4')
  value11493_4,
  @JsonValue('11535-2')
  value11535_2,
  @JsonValue('11537-8')
  value11537_8,
  @JsonValue('18776-5')
  value18776_5,
  @JsonValue('18841-7')
  value18841_7,
  @JsonValue('29299-5')
  value29299_5,
  @JsonValue('29545-1')
  value29545_1,
  @JsonValue('29549-3')
  value29549_3,
  @JsonValue('29554-3')
  value29554_3,
  @JsonValue('29762-2')
  value29762_2,
  @JsonValue('30954-2')
  value30954_2,
  @JsonValue('42344-2')
  value42344_2,
  @JsonValue('42346-7')
  value42346_7,
  @JsonValue('42348-3')
  value42348_3,
  @JsonValue('42349-1')
  value42349_1,
  @JsonValue('46240-8')
  value46240_8,
  @JsonValue('46241-6')
  value46241_6,
  @JsonValue('46264-8')
  value46264_8,
  @JsonValue('47420-5')
  value47420_5,
  @JsonValue('47519-4')
  value47519_4,
  @JsonValue('48765-2')
  value48765_2,
  @JsonValue('48768-6')
  value48768_6,
  @JsonValue('51848-0')
  value51848_0,
  @JsonValue('55109-3')
  value55109_3,
  @JsonValue('55122-6')
  value55122_6,
  @JsonValue('59768-2')
  value59768_2,
  @JsonValue('59769-0')
  value59769_0,
  @JsonValue('59770-8')
  value59770_8,
  @JsonValue('59771-6')
  value59771_6,
  @JsonValue('59772-4')
  value59772_4,
  @JsonValue('59773-2')
  value59773_2,
  @JsonValue('59775-7')
  value59775_7,
  @JsonValue('59776-5')
  value59776_5,
  @JsonValue('61149-1')
  value61149_1,
  @JsonValue('61150-9')
  value61150_9,
  @JsonValue('69730-0')
  value69730_0,
  @JsonValue('8648-8')
  value8648_8,
  @JsonValue('8653-8')
  value8653_8,
  @JsonValue('8716-3')
  value8716_3,
;

@override
  String toString() {
      switch(this) {
        case value10154_3: return '10154-3';
        case value10157_6: return '10157-6';
        case value10160_0: return '10160-0';
        case value10164_2: return '10164-2';
        case value10183_2: return '10183-2';
        case value10184_0: return '10184-0';
        case value10187_3: return '10187-3';
        case value10210_3: return '10210-3';
        case value10216_0: return '10216-0';
        case value10218_6: return '10218-6';
        case value10223_6: return '10223-6';
        case value10222_8: return '10222-8';
        case value11329_0: return '11329-0';
        case value11348_0: return '11348-0';
        case value11369_6: return '11369-6';
        case value57852_6: return '57852-6';
        case value11493_4: return '11493-4';
        case value11535_2: return '11535-2';
        case value11537_8: return '11537-8';
        case value18776_5: return '18776-5';
        case value18841_7: return '18841-7';
        case value29299_5: return '29299-5';
        case value29545_1: return '29545-1';
        case value29549_3: return '29549-3';
        case value29554_3: return '29554-3';
        case value29762_2: return '29762-2';
        case value30954_2: return '30954-2';
        case value42344_2: return '42344-2';
        case value42346_7: return '42346-7';
        case value42348_3: return '42348-3';
        case value42349_1: return '42349-1';
        case value46240_8: return '46240-8';
        case value46241_6: return '46241-6';
        case value46264_8: return '46264-8';
        case value47420_5: return '47420-5';
        case value47519_4: return '47519-4';
        case value48765_2: return '48765-2';
        case value48768_6: return '48768-6';
        case value51848_0: return '51848-0';
        case value55109_3: return '55109-3';
        case value55122_6: return '55122-6';
        case value59768_2: return '59768-2';
        case value59769_0: return '59769-0';
        case value59770_8: return '59770-8';
        case value59771_6: return '59771-6';
        case value59772_4: return '59772-4';
        case value59773_2: return '59773-2';
        case value59775_7: return '59775-7';
        case value59776_5: return '59776-5';
        case value61149_1: return '61149-1';
        case value61150_9: return '61150-9';
        case value69730_0: return '69730-0';
        case value8648_8: return '8648-8';
        case value8653_8: return '8653-8';
        case value8716_3: return '8716-3';
      }
      }
String toJson() => toString();
  DocumentSectionCodes fromString(String str) {
    switch(str) {
      case '10154-3': return DocumentSectionCodes.value10154_3;
      case '10157-6': return DocumentSectionCodes.value10157_6;
      case '10160-0': return DocumentSectionCodes.value10160_0;
      case '10164-2': return DocumentSectionCodes.value10164_2;
      case '10183-2': return DocumentSectionCodes.value10183_2;
      case '10184-0': return DocumentSectionCodes.value10184_0;
      case '10187-3': return DocumentSectionCodes.value10187_3;
      case '10210-3': return DocumentSectionCodes.value10210_3;
      case '10216-0': return DocumentSectionCodes.value10216_0;
      case '10218-6': return DocumentSectionCodes.value10218_6;
      case '10223-6': return DocumentSectionCodes.value10223_6;
      case '10222-8': return DocumentSectionCodes.value10222_8;
      case '11329-0': return DocumentSectionCodes.value11329_0;
      case '11348-0': return DocumentSectionCodes.value11348_0;
      case '11369-6': return DocumentSectionCodes.value11369_6;
      case '57852-6': return DocumentSectionCodes.value57852_6;
      case '11493-4': return DocumentSectionCodes.value11493_4;
      case '11535-2': return DocumentSectionCodes.value11535_2;
      case '11537-8': return DocumentSectionCodes.value11537_8;
      case '18776-5': return DocumentSectionCodes.value18776_5;
      case '18841-7': return DocumentSectionCodes.value18841_7;
      case '29299-5': return DocumentSectionCodes.value29299_5;
      case '29545-1': return DocumentSectionCodes.value29545_1;
      case '29549-3': return DocumentSectionCodes.value29549_3;
      case '29554-3': return DocumentSectionCodes.value29554_3;
      case '29762-2': return DocumentSectionCodes.value29762_2;
      case '30954-2': return DocumentSectionCodes.value30954_2;
      case '42344-2': return DocumentSectionCodes.value42344_2;
      case '42346-7': return DocumentSectionCodes.value42346_7;
      case '42348-3': return DocumentSectionCodes.value42348_3;
      case '42349-1': return DocumentSectionCodes.value42349_1;
      case '46240-8': return DocumentSectionCodes.value46240_8;
      case '46241-6': return DocumentSectionCodes.value46241_6;
      case '46264-8': return DocumentSectionCodes.value46264_8;
      case '47420-5': return DocumentSectionCodes.value47420_5;
      case '47519-4': return DocumentSectionCodes.value47519_4;
      case '48765-2': return DocumentSectionCodes.value48765_2;
      case '48768-6': return DocumentSectionCodes.value48768_6;
      case '51848-0': return DocumentSectionCodes.value51848_0;
      case '55109-3': return DocumentSectionCodes.value55109_3;
      case '55122-6': return DocumentSectionCodes.value55122_6;
      case '59768-2': return DocumentSectionCodes.value59768_2;
      case '59769-0': return DocumentSectionCodes.value59769_0;
      case '59770-8': return DocumentSectionCodes.value59770_8;
      case '59771-6': return DocumentSectionCodes.value59771_6;
      case '59772-4': return DocumentSectionCodes.value59772_4;
      case '59773-2': return DocumentSectionCodes.value59773_2;
      case '59775-7': return DocumentSectionCodes.value59775_7;
      case '59776-5': return DocumentSectionCodes.value59776_5;
      case '61149-1': return DocumentSectionCodes.value61149_1;
      case '61150-9': return DocumentSectionCodes.value61150_9;
      case '69730-0': return DocumentSectionCodes.value69730_0;
      case '8648-8': return DocumentSectionCodes.value8648_8;
      case '8653-8': return DocumentSectionCodes.value8653_8;
      case '8716-3': return DocumentSectionCodes.value8716_3;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DocumentSectionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

