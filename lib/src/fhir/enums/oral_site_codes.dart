// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI oral site codes.
enum OralSiteCodes {
  /// Display: Oral cavity
  /// Definition: Oral cavity.
  value0('0'),

  /// Display: 1
  /// Definition: Permanent teeth Maxillary right.
  value1('1'),

  /// Display: 2
  /// Definition: Permanent teeth Maxillary left.
  value2('2'),

  /// Display: 3
  /// Definition: Permanent teeth Mandibular right.
  value3('3'),

  /// Display: 4
  /// Definition: Permanent teeth Mandibular left.
  value4('4'),

  /// Display: 5
  /// Definition: Deciduous teeth Maxillary right.
  value5('5'),

  /// Display: 6
  /// Definition: Deciduous teeth Maxillary left.
  value6('6'),

  /// Display: 7
  /// Definition: Deciduous teeth Mandibular right.
  value7('7'),

  /// Display: 8
  /// Definition: Deciduous teeth Mandibular left.
  value8('8'),

  /// Display: 11
  /// Definition: Upper Right Tooth 1 from the central axis, permanent dentition.
  value11('11'),

  /// Display: 12
  /// Definition: Upper Right Tooth 2 from the central axis, permanent dentition.
  value12('12'),

  /// Display: 13
  /// Definition: Upper Right Tooth 3 from the central axis, permanent dentition.
  value13('13'),

  /// Display: 14
  /// Definition: Upper Right Tooth 4 from the central axis, permanent dentition.
  value14('14'),

  /// Display: 15
  /// Definition: Upper Right Tooth 5 from the central axis, permanent dentition.
  value15('15'),

  /// Display: 16
  /// Definition: Upper Right Tooth 6 from the central axis, permanent dentition.
  value16('16'),

  /// Display: 17
  /// Definition: Upper Right Tooth 7 from the central axis, permanent dentition.
  value17('17'),

  /// Display: 18
  /// Definition: Upper Right Tooth 8 from the central axis, permanent dentition.
  value18('18'),

  /// Display: 21
  /// Definition: Upper Left Tooth 1 from the central axis, permanent dentition.
  value21('21'),

  /// Display: 22
  /// Definition: Upper Left Tooth 2 from the central axis, permanent dentition.
  value22('22'),

  /// Display: 23
  /// Definition: Upper Left Tooth 3 from the central axis, permanent dentition.
  value23('23'),

  /// Display: 24
  /// Definition: Upper Left Tooth 4 from the central axis, permanent dentition.
  value24('24'),

  /// Display: 25
  /// Definition: Upper Left Tooth 5 from the central axis, permanent dentition.
  value25('25'),

  /// Display: 26
  /// Definition: Upper Left Tooth 6 from the central axis, permanent dentition.
  value26('26'),

  /// Display: 27
  /// Definition: Upper Left Tooth 7 from the central axis, permanent dentition.
  value27('27'),

  /// Display: 28
  /// Definition: Upper Left Tooth 8 from the central axis, permanent dentition.
  value28('28'),

  /// Display: 31
  /// Definition: Lower Left Tooth 1 from the central axis, permanent dentition.
  value31('31'),

  /// Display: 32
  /// Definition: Lower Left Tooth 2 from the central axis, permanent dentition.
  value32('32'),

  /// Display: 33
  /// Definition: Lower Left Tooth 3 from the central axis, permanent dentition.
  value33('33'),

  /// Display: 34
  /// Definition: Lower Left Tooth 4 from the central axis, permanent dentition.
  value34('34'),

  /// Display: 35
  /// Definition: Lower Left Tooth 5 from the central axis, permanent dentition.
  value35('35'),

  /// Display: 36
  /// Definition: Lower Left Tooth 6 from the central axis, permanent dentition.
  value36('36'),

  /// Display: 37
  /// Definition: Lower Left Tooth 7 from the central axis, permanent dentition.
  value37('37'),

  /// Display: 38
  /// Definition: Lower Left Tooth 8 from the central axis, permanent dentition.
  value38('38'),

  /// Display: 41
  /// Definition: Lower Right Tooth 1 from the central axis, permanent dentition.
  value41('41'),

  /// Display: 42
  /// Definition: Lower Right Tooth 2 from the central axis, permanent dentition.
  value42('42'),

  /// Display: 43
  /// Definition: Lower Right Tooth 3 from the central axis, permanent dentition.
  value43('43'),

  /// Display: 44
  /// Definition: Lower Right Tooth 4 from the central axis, permanent dentition.
  value44('44'),

  /// Display: 45
  /// Definition: Lower Right Tooth 5 from the central axis, permanent dentition.
  value45('45'),

  /// Display: 46
  /// Definition: Lower Right Tooth 6 from the central axis, permanent dentition.
  value46('46'),

  /// Display: 47
  /// Definition: Lower Right Tooth 7 from the central axis, permanent dentition.
  value47('47'),

  /// Display: 48
  /// Definition: Lower Right Tooth 8 from the central axis, permanent dentition.
  value48('48'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const OralSiteCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [OralSiteCodes] instances.
  static OralSiteCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OralSiteCodes.elementOnly.withElement(element);
    }
    return OralSiteCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  OralSiteCodes withElement(Element? newElement) {
    return OralSiteCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
