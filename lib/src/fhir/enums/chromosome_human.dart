// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Chromosome number for human.
@collection
class ChromosomeHuman {
  /// Constructor for internal use (like enum)
  ChromosomeHuman({this.fhirCode, this.element})
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

  /// ChromosomeHuman values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value1 = ChromosomeHuman(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value2 = ChromosomeHuman(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value3 = ChromosomeHuman(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value4 = ChromosomeHuman(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value5 = ChromosomeHuman(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value6 = ChromosomeHuman(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value7 = ChromosomeHuman(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value8 = ChromosomeHuman(
    fhirCode: '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value9 = ChromosomeHuman(
    fhirCode: '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value10 = ChromosomeHuman(
    fhirCode: '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value11 = ChromosomeHuman(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value12 = ChromosomeHuman(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value13 = ChromosomeHuman(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value14 = ChromosomeHuman(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value15 = ChromosomeHuman(
    fhirCode: '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value16 = ChromosomeHuman(
    fhirCode: '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value17 = ChromosomeHuman(
    fhirCode: '17',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value18 = ChromosomeHuman(
    fhirCode: '18',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value19 = ChromosomeHuman(
    fhirCode: '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value20 = ChromosomeHuman(
    fhirCode: '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value21 = ChromosomeHuman(
    fhirCode: '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value22 = ChromosomeHuman(
    fhirCode: '22',
  );

  /// X
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman X = ChromosomeHuman(
    fhirCode: 'X',
  );

  /// Y
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman Y = ChromosomeHuman(
    fhirCode: 'Y',
  );

  /// For instances where an Element is present but not value

  static final ChromosomeHuman elementOnly = ChromosomeHuman();

  /// List of all enum-like values
  static final List<ChromosomeHuman> values = [
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
    X,
    Y,
  ];

  /// Returns the enum value with an element attached
  ChromosomeHuman withElement(Element? newElement) {
    return ChromosomeHuman(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ChromosomeHuman] from JSON.
  static ChromosomeHuman fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChromosomeHuman.elementOnly.withElement(element);
    }
    return ChromosomeHuman.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ChromosomeHuman.$fhirCode';
}
