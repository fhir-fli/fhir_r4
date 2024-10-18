// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Document section codes (LOINC codes used in CCDA sections).
enum DocumentSectionCodes {
  /// Display:
  /// Definition:
  value10154_3('10154-3'),

  /// Display:
  /// Definition:
  value10157_6('10157-6'),

  /// Display:
  /// Definition:
  value10160_0('10160-0'),

  /// Display:
  /// Definition:
  value10164_2('10164-2'),

  /// Display:
  /// Definition:
  value10183_2('10183-2'),

  /// Display:
  /// Definition:
  value10184_0('10184-0'),

  /// Display:
  /// Definition:
  value10187_3('10187-3'),

  /// Display:
  /// Definition:
  value10210_3('10210-3'),

  /// Display:
  /// Definition:
  value10216_0('10216-0'),

  /// Display:
  /// Definition:
  value10218_6('10218-6'),

  /// Display:
  /// Definition:
  value10218_6_1('10218-6'),

  /// Display:
  /// Definition:
  value10223_6('10223-6'),

  /// Display:
  /// Definition:
  value10222_8('10222-8'),

  /// Display:
  /// Definition:
  value11329_0('11329-0'),

  /// Display:
  /// Definition:
  value11348_0('11348-0'),

  /// Display:
  /// Definition:
  value11369_6('11369-6'),

  /// Display:
  /// Definition:
  value57852_6('57852-6'),

  /// Display:
  /// Definition:
  value11493_4('11493-4'),

  /// Display:
  /// Definition:
  value11535_2('11535-2'),

  /// Display:
  /// Definition:
  value11537_8('11537-8'),

  /// Display:
  /// Definition:
  value18776_5('18776-5'),

  /// Display:
  /// Definition:
  value18841_7('18841-7'),

  /// Display:
  /// Definition:
  value29299_5('29299-5'),

  /// Display:
  /// Definition:
  value29545_1('29545-1'),

  /// Display:
  /// Definition:
  value29549_3('29549-3'),

  /// Display:
  /// Definition:
  value29554_3('29554-3'),

  /// Display:
  /// Definition:
  value29762_2('29762-2'),

  /// Display:
  /// Definition:
  value30954_2('30954-2'),

  /// Display:
  /// Definition:
  value42344_2('42344-2'),

  /// Display:
  /// Definition:
  value42346_7('42346-7'),

  /// Display:
  /// Definition:
  value42348_3('42348-3'),

  /// Display:
  /// Definition:
  value42349_1('42349-1'),

  /// Display:
  /// Definition:
  value46240_8('46240-8'),

  /// Display:
  /// Definition:
  value46241_6('46241-6'),

  /// Display:
  /// Definition:
  value46264_8('46264-8'),

  /// Display:
  /// Definition:
  value47420_5('47420-5'),

  /// Display:
  /// Definition:
  value47519_4('47519-4'),

  /// Display:
  /// Definition:
  value48765_2('48765-2'),

  /// Display:
  /// Definition:
  value48768_6('48768-6'),

  /// Display:
  /// Definition:
  value51848_0('51848-0'),

  /// Display:
  /// Definition:
  value55109_3('55109-3'),

  /// Display:
  /// Definition:
  value55122_6('55122-6'),

  /// Display:
  /// Definition:
  value59768_2('59768-2'),

  /// Display:
  /// Definition:
  value59769_0('59769-0'),

  /// Display:
  /// Definition:
  value59770_8('59770-8'),

  /// Display:
  /// Definition:
  value59771_6('59771-6'),

  /// Display:
  /// Definition:
  value59772_4('59772-4'),

  /// Display:
  /// Definition:
  value59773_2('59773-2'),

  /// Display:
  /// Definition:
  value59775_7('59775-7'),

  /// Display:
  /// Definition:
  value59776_5('59776-5'),

  /// Display:
  /// Definition:
  value61149_1('61149-1'),

  /// Display:
  /// Definition:
  value61150_9('61150-9'),

  /// Display:
  /// Definition:
  value61150_9_1('61150-9'),

  /// Display:
  /// Definition:
  value69730_0('69730-0'),

  /// Display:
  /// Definition:
  value8648_8('8648-8'),

  /// Display:
  /// Definition:
  value8653_8('8653-8'),

  /// Display:
  /// Definition:
  value8716_3('8716-3'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DocumentSectionCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DocumentSectionCodes] instances.
  static DocumentSectionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentSectionCodes.elementOnly.withElement(element);
    }
    return DocumentSectionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DocumentSectionCodes withElement(Element? newElement) {
    return DocumentSectionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
