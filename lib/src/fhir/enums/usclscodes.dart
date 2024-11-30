// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of USCLS codes.
class USCLSCodes {
  // Private constructor for internal use (like enum)
  USCLSCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// USCLSCodes values
  /// value1101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value1101 = USCLSCodes._(
    '1101',
  );

  /// value1102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value1102 = USCLSCodes._(
    '1102',
  );

  /// value1103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value1103 = USCLSCodes._(
    '1103',
  );

  /// value1201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value1201 = USCLSCodes._(
    '1201',
  );

  /// value1205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value1205 = USCLSCodes._(
    '1205',
  );

  /// value2101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value2101 = USCLSCodes._(
    '2101',
  );

  /// value2102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value2102 = USCLSCodes._(
    '2102',
  );

  /// value2141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value2141 = USCLSCodes._(
    '2141',
  );

  /// value2601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value2601 = USCLSCodes._(
    '2601',
  );

  /// value11101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value11101 = USCLSCodes._(
    '11101',
  );

  /// value11102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value11102 = USCLSCodes._(
    '11102',
  );

  /// value11103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value11103 = USCLSCodes._(
    '11103',
  );

  /// value11104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value11104 = USCLSCodes._(
    '11104',
  );

  /// value21211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value21211 = USCLSCodes._(
    '21211',
  );

  /// value21212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value21212 = USCLSCodes._(
    '21212',
  );

  /// value27211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value27211 = USCLSCodes._(
    '27211',
  );

  /// value67211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value67211 = USCLSCodes._(
    '67211',
  );

  /// value99111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value99111 = USCLSCodes._(
    '99111',
  );

  /// value99333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value99333 = USCLSCodes._(
    '99333',
  );

  /// value99555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final USCLSCodes value99555 = USCLSCodes._(
    '99555',
  );

  /// For instances where an Element is present but not value

  static final USCLSCodes elementOnly = USCLSCodes._('');

  /// List of all enum-like values
  static final List<USCLSCodes> values = [
    value1101,
    value1102,
    value1103,
    value1201,
    value1205,
    value2101,
    value2102,
    value2141,
    value2601,
    value11101,
    value11102,
    value11103,
    value11104,
    value21211,
    value21212,
    value27211,
    value67211,
    value99111,
    value99333,
    value99555,
  ];

  /// Returns the enum value with an element attached
  USCLSCodes withElement(Element? newElement) {
    return USCLSCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [USCLSCodes] from JSON.
  static USCLSCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return USCLSCodes.elementOnly.withElement(element);
    }
    return USCLSCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
