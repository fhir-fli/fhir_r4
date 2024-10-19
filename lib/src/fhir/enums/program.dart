// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines an example set of codes that could be can be used to classify groupings of service-types/specialties.
@collection
class Program {
  /// Constructor for internal use (like enum)
  Program({this.fhirCode, this.element})
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

  /// Program values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value1 = Program(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value2 = Program(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value3 = Program(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value4 = Program(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value5 = Program(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value6 = Program(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value7 = Program(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value8 = Program(
    fhirCode: '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value9 = Program(
    fhirCode: '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value10 = Program(
    fhirCode: '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value11 = Program(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value12 = Program(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value13 = Program(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value14 = Program(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value15 = Program(
    fhirCode: '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value16 = Program(
    fhirCode: '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value17 = Program(
    fhirCode: '17',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value18 = Program(
    fhirCode: '18',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value19 = Program(
    fhirCode: '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value20 = Program(
    fhirCode: '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value21 = Program(
    fhirCode: '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value22 = Program(
    fhirCode: '22',
  );

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value23 = Program(
    fhirCode: '23',
  );

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value24 = Program(
    fhirCode: '24',
  );

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value25 = Program(
    fhirCode: '25',
  );

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value26 = Program(
    fhirCode: '26',
  );

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value27 = Program(
    fhirCode: '27',
  );

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value28 = Program(
    fhirCode: '28',
  );

  /// value29
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value29 = Program(
    fhirCode: '29',
  );

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value30 = Program(
    fhirCode: '30',
  );

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value31 = Program(
    fhirCode: '31',
  );

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value32 = Program(
    fhirCode: '32',
  );

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value33 = Program(
    fhirCode: '33',
  );

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value34 = Program(
    fhirCode: '34',
  );

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value35 = Program(
    fhirCode: '35',
  );

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value36 = Program(
    fhirCode: '36',
  );

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value37 = Program(
    fhirCode: '37',
  );

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value38 = Program(
    fhirCode: '38',
  );

  /// value39
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value39 = Program(
    fhirCode: '39',
  );

  /// value40
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value40 = Program(
    fhirCode: '40',
  );

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value41 = Program(
    fhirCode: '41',
  );

  /// value42
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value42 = Program(
    fhirCode: '42',
  );

  /// value43
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value43 = Program(
    fhirCode: '43',
  );

  /// value44
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value44 = Program(
    fhirCode: '44',
  );

  /// value45
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Program value45 = Program(
    fhirCode: '45',
  );

  /// For instances where an Element is present but not value

  static final Program elementOnly = Program();

  /// List of all enum-like values
  static final List<Program> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value19,
    value20,
    value21,
    value22,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value29,
    value30,
    value31,
    value32,
    value33,
    value34,
    value35,
    value36,
    value37,
    value38,
    value39,
    value40,
    value41,
    value42,
    value43,
    value44,
    value45,
  ];

  /// Returns the enum value with an element attached
  Program withElement(Element? newElement) {
    return Program(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [Program] from JSON.
  static Program fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Program.elementOnly.withElement(element);
    }
    return Program.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Program.$fhirCode';
}
