// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Chromosome number for human.
class ChromosomeHuman {
  // Private constructor for internal use (like enum)
  ChromosomeHuman._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ChromosomeHuman values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value1 = ChromosomeHuman._(
    '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value2 = ChromosomeHuman._(
    '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value3 = ChromosomeHuman._(
    '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value4 = ChromosomeHuman._(
    '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value5 = ChromosomeHuman._(
    '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value6 = ChromosomeHuman._(
    '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value7 = ChromosomeHuman._(
    '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value8 = ChromosomeHuman._(
    '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value9 = ChromosomeHuman._(
    '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value10 = ChromosomeHuman._(
    '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value11 = ChromosomeHuman._(
    '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value12 = ChromosomeHuman._(
    '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value13 = ChromosomeHuman._(
    '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value14 = ChromosomeHuman._(
    '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value15 = ChromosomeHuman._(
    '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value16 = ChromosomeHuman._(
    '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value17 = ChromosomeHuman._(
    '17',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value18 = ChromosomeHuman._(
    '18',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value19 = ChromosomeHuman._(
    '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value20 = ChromosomeHuman._(
    '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value21 = ChromosomeHuman._(
    '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman value22 = ChromosomeHuman._(
    '22',
  );

  /// X
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman X = ChromosomeHuman._(
    'X',
  );

  /// Y
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChromosomeHuman Y = ChromosomeHuman._(
    'Y',
  );

  /// For instances where an Element is present but not value

  static final ChromosomeHuman elementOnly = ChromosomeHuman._('');

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
    return ChromosomeHuman._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
