// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
class ServiceCategory {
  // Private constructor for internal use (like enum)
  ServiceCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [ServiceCategory] from JSON.
  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceCategory.elementOnly.withElement(element);
    }
    return ServiceCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ServiceCategory values
  /// value1
  static final ServiceCategory value1 = ServiceCategory._(
    '1',
  );

  /// value2
  static final ServiceCategory value2 = ServiceCategory._(
    '2',
  );

  /// value34
  static final ServiceCategory value34 = ServiceCategory._(
    '34',
  );

  /// value3
  static final ServiceCategory value3 = ServiceCategory._(
    '3',
  );

  /// value4
  static final ServiceCategory value4 = ServiceCategory._(
    '4',
  );

  /// value5
  static final ServiceCategory value5 = ServiceCategory._(
    '5',
  );

  /// value6
  static final ServiceCategory value6 = ServiceCategory._(
    '6',
  );

  /// value7
  static final ServiceCategory value7 = ServiceCategory._(
    '7',
  );

  /// value8
  static final ServiceCategory value8 = ServiceCategory._(
    '8',
  );

  /// value36
  static final ServiceCategory value36 = ServiceCategory._(
    '36',
  );

  /// value9
  static final ServiceCategory value9 = ServiceCategory._(
    '9',
  );

  /// value10
  static final ServiceCategory value10 = ServiceCategory._(
    '10',
  );

  /// value11
  static final ServiceCategory value11 = ServiceCategory._(
    '11',
  );

  /// value12
  static final ServiceCategory value12 = ServiceCategory._(
    '12',
  );

  /// value13
  static final ServiceCategory value13 = ServiceCategory._(
    '13',
  );

  /// value14
  static final ServiceCategory value14 = ServiceCategory._(
    '14',
  );

  /// value15
  static final ServiceCategory value15 = ServiceCategory._(
    '15',
  );

  /// value16
  static final ServiceCategory value16 = ServiceCategory._(
    '16',
  );

  /// value17
  static final ServiceCategory value17 = ServiceCategory._(
    '17',
  );

  /// value35
  static final ServiceCategory value35 = ServiceCategory._(
    '35',
  );

  /// value18
  static final ServiceCategory value18 = ServiceCategory._(
    '18',
  );

  /// value19
  static final ServiceCategory value19 = ServiceCategory._(
    '19',
  );

  /// value20
  static final ServiceCategory value20 = ServiceCategory._(
    '20',
  );

  /// value21
  static final ServiceCategory value21 = ServiceCategory._(
    '21',
  );

  /// value22
  static final ServiceCategory value22 = ServiceCategory._(
    '22',
  );

  /// value38
  static final ServiceCategory value38 = ServiceCategory._(
    '38',
  );

  /// value23
  static final ServiceCategory value23 = ServiceCategory._(
    '23',
  );

  /// value24
  static final ServiceCategory value24 = ServiceCategory._(
    '24',
  );

  /// value25
  static final ServiceCategory value25 = ServiceCategory._(
    '25',
  );

  /// value26
  static final ServiceCategory value26 = ServiceCategory._(
    '26',
  );

  /// value27
  static final ServiceCategory value27 = ServiceCategory._(
    '27',
  );

  /// value28
  static final ServiceCategory value28 = ServiceCategory._(
    '28',
  );

  /// value29
  static final ServiceCategory value29 = ServiceCategory._(
    '29',
  );

  /// value30
  static final ServiceCategory value30 = ServiceCategory._(
    '30',
  );

  /// value31
  static final ServiceCategory value31 = ServiceCategory._(
    '31',
  );

  /// value32
  static final ServiceCategory value32 = ServiceCategory._(
    '32',
  );

  /// value37
  static final ServiceCategory value37 = ServiceCategory._(
    '37',
  );

  /// value33
  static final ServiceCategory value33 = ServiceCategory._(
    '33',
  );

  /// For instances where an Element is present but not value

  static final ServiceCategory elementOnly = ServiceCategory._('');

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
    return ServiceCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
