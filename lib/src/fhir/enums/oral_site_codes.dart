// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes a smattering of FDI oral site codes.
@collection
class OralSiteCodes {
  /// Constructor for internal use (like enum)
  OralSiteCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OralSiteCodes values
  /// value0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value0 = OralSiteCodes(
    fhirCode: '0',
  );

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value1 = OralSiteCodes(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value2 = OralSiteCodes(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value3 = OralSiteCodes(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value4 = OralSiteCodes(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value5 = OralSiteCodes(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value6 = OralSiteCodes(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value7 = OralSiteCodes(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value8 = OralSiteCodes(
    fhirCode: '8',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value11 = OralSiteCodes(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value12 = OralSiteCodes(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value13 = OralSiteCodes(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value14 = OralSiteCodes(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value15 = OralSiteCodes(
    fhirCode: '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value16 = OralSiteCodes(
    fhirCode: '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value17 = OralSiteCodes(
    fhirCode: '17',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value18 = OralSiteCodes(
    fhirCode: '18',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value21 = OralSiteCodes(
    fhirCode: '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value22 = OralSiteCodes(
    fhirCode: '22',
  );

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value23 = OralSiteCodes(
    fhirCode: '23',
  );

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value24 = OralSiteCodes(
    fhirCode: '24',
  );

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value25 = OralSiteCodes(
    fhirCode: '25',
  );

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value26 = OralSiteCodes(
    fhirCode: '26',
  );

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value27 = OralSiteCodes(
    fhirCode: '27',
  );

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value28 = OralSiteCodes(
    fhirCode: '28',
  );

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value31 = OralSiteCodes(
    fhirCode: '31',
  );

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value32 = OralSiteCodes(
    fhirCode: '32',
  );

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value33 = OralSiteCodes(
    fhirCode: '33',
  );

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value34 = OralSiteCodes(
    fhirCode: '34',
  );

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value35 = OralSiteCodes(
    fhirCode: '35',
  );

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value36 = OralSiteCodes(
    fhirCode: '36',
  );

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value37 = OralSiteCodes(
    fhirCode: '37',
  );

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value38 = OralSiteCodes(
    fhirCode: '38',
  );

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value41 = OralSiteCodes(
    fhirCode: '41',
  );

  /// value42
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value42 = OralSiteCodes(
    fhirCode: '42',
  );

  /// value43
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value43 = OralSiteCodes(
    fhirCode: '43',
  );

  /// value44
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value44 = OralSiteCodes(
    fhirCode: '44',
  );

  /// value45
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value45 = OralSiteCodes(
    fhirCode: '45',
  );

  /// value46
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value46 = OralSiteCodes(
    fhirCode: '46',
  );

  /// value47
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value47 = OralSiteCodes(
    fhirCode: '47',
  );

  /// value48
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OralSiteCodes value48 = OralSiteCodes(
    fhirCode: '48',
  );

  /// For instances where an Element is present but not value

  static final OralSiteCodes elementOnly = OralSiteCodes();

  /// List of all enum-like values
  static final List<OralSiteCodes> values = [
    value0,
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value21,
    value22,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value31,
    value32,
    value33,
    value34,
    value35,
    value36,
    value37,
    value38,
    value41,
    value42,
    value43,
    value44,
    value45,
    value46,
    value47,
    value48,
  ];

  /// Returns the enum value with an element attached
  OralSiteCodes withElement(Element? newElement) {
    return OralSiteCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OralSiteCodes] from JSON.
  static OralSiteCodes fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OralSiteCodes.$fhirCode';
}
