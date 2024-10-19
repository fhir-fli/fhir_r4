// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes examples of Benefit Category codes.
@collection
class BenefitCategoryCodes {
  /// Constructor for internal use (like enum)
  BenefitCategoryCodes({this.fhirCode, this.element})
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

  /// BenefitCategoryCodes values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value1 = BenefitCategoryCodes(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value2 = BenefitCategoryCodes(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value3 = BenefitCategoryCodes(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value4 = BenefitCategoryCodes(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value5 = BenefitCategoryCodes(
    fhirCode: '5',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value14 = BenefitCategoryCodes(
    fhirCode: '14',
  );

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value23 = BenefitCategoryCodes(
    fhirCode: '23',
  );

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value24 = BenefitCategoryCodes(
    fhirCode: '24',
  );

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value25 = BenefitCategoryCodes(
    fhirCode: '25',
  );

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value26 = BenefitCategoryCodes(
    fhirCode: '26',
  );

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value27 = BenefitCategoryCodes(
    fhirCode: '27',
  );

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value28 = BenefitCategoryCodes(
    fhirCode: '28',
  );

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value30 = BenefitCategoryCodes(
    fhirCode: '30',
  );

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value35 = BenefitCategoryCodes(
    fhirCode: '35',
  );

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value36 = BenefitCategoryCodes(
    fhirCode: '36',
  );

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value37 = BenefitCategoryCodes(
    fhirCode: '37',
  );

  /// value49
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value49 = BenefitCategoryCodes(
    fhirCode: '49',
  );

  /// value55
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value55 = BenefitCategoryCodes(
    fhirCode: '55',
  );

  /// value56
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value56 = BenefitCategoryCodes(
    fhirCode: '56',
  );

  /// value61
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value61 = BenefitCategoryCodes(
    fhirCode: '61',
  );

  /// value62
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value62 = BenefitCategoryCodes(
    fhirCode: '62',
  );

  /// value63
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value63 = BenefitCategoryCodes(
    fhirCode: '63',
  );

  /// value69
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value69 = BenefitCategoryCodes(
    fhirCode: '69',
  );

  /// value76
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes value76 = BenefitCategoryCodes(
    fhirCode: '76',
  );

  /// F1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes F1 = BenefitCategoryCodes(
    fhirCode: 'F1',
  );

  /// F3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes F3 = BenefitCategoryCodes(
    fhirCode: 'F3',
  );

  /// F4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes F4 = BenefitCategoryCodes(
    fhirCode: 'F4',
  );

  /// F6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitCategoryCodes F6 = BenefitCategoryCodes(
    fhirCode: 'F6',
  );

  /// For instances where an Element is present but not value

  static final BenefitCategoryCodes elementOnly = BenefitCategoryCodes();

  /// List of all enum-like values
  static final List<BenefitCategoryCodes> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value14,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value30,
    value35,
    value36,
    value37,
    value49,
    value55,
    value56,
    value61,
    value62,
    value63,
    value69,
    value76,
    F1,
    F3,
    F4,
    F6,
  ];

  /// Returns the enum value with an element attached
  BenefitCategoryCodes withElement(Element? newElement) {
    return BenefitCategoryCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BenefitCategoryCodes] from JSON.
  static BenefitCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitCategoryCodes.elementOnly.withElement(element);
    }
    return BenefitCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitCategoryCodes.$fhirCode';
}
