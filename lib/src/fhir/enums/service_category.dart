// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
@collection
class ServiceCategory {
  /// Constructor for internal use (like enum)
  ServiceCategory({this.fhirCode, this.element})
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

  /// ServiceCategory values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value1 = ServiceCategory(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value2 = ServiceCategory(
    fhirCode: '2',
  );

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value34 = ServiceCategory(
    fhirCode: '34',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value3 = ServiceCategory(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value4 = ServiceCategory(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value5 = ServiceCategory(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value6 = ServiceCategory(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value7 = ServiceCategory(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value8 = ServiceCategory(
    fhirCode: '8',
  );

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value36 = ServiceCategory(
    fhirCode: '36',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value9 = ServiceCategory(
    fhirCode: '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value10 = ServiceCategory(
    fhirCode: '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value11 = ServiceCategory(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value12 = ServiceCategory(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value13 = ServiceCategory(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value14 = ServiceCategory(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value15 = ServiceCategory(
    fhirCode: '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value16 = ServiceCategory(
    fhirCode: '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value17 = ServiceCategory(
    fhirCode: '17',
  );

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value35 = ServiceCategory(
    fhirCode: '35',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value18 = ServiceCategory(
    fhirCode: '18',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value19 = ServiceCategory(
    fhirCode: '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value20 = ServiceCategory(
    fhirCode: '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value21 = ServiceCategory(
    fhirCode: '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value22 = ServiceCategory(
    fhirCode: '22',
  );

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value38 = ServiceCategory(
    fhirCode: '38',
  );

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value23 = ServiceCategory(
    fhirCode: '23',
  );

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value24 = ServiceCategory(
    fhirCode: '24',
  );

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value25 = ServiceCategory(
    fhirCode: '25',
  );

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value26 = ServiceCategory(
    fhirCode: '26',
  );

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value27 = ServiceCategory(
    fhirCode: '27',
  );

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value28 = ServiceCategory(
    fhirCode: '28',
  );

  /// value29
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value29 = ServiceCategory(
    fhirCode: '29',
  );

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value30 = ServiceCategory(
    fhirCode: '30',
  );

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value31 = ServiceCategory(
    fhirCode: '31',
  );

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value32 = ServiceCategory(
    fhirCode: '32',
  );

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value37 = ServiceCategory(
    fhirCode: '37',
  );

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceCategory value33 = ServiceCategory(
    fhirCode: '33',
  );

  /// For instances where an Element is present but not value

  static final ServiceCategory elementOnly = ServiceCategory();

  /// List of all enum-like values
  static final List<ServiceCategory> values = [
    value1,
    value2,
    value34,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value36,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value35,
    value18,
    value19,
    value20,
    value21,
    value22,
    value38,
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
    value37,
    value33,
  ];

  /// Returns the enum value with an element attached
  ServiceCategory withElement(Element? newElement) {
    return ServiceCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceCategory] from JSON.
  static ServiceCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceCategory.elementOnly.withElement(element);
    }
    return ServiceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceCategory.$fhirCode';
}
