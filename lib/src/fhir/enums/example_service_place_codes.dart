// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Service Place codes.
class ExampleServicePlaceCodes {
  // Private constructor for internal use (like enum)
  ExampleServicePlaceCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleServicePlaceCodes values
  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value01 = ExampleServicePlaceCodes._(
    '01',
  );

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value03 = ExampleServicePlaceCodes._(
    '03',
  );

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value04 = ExampleServicePlaceCodes._(
    '04',
  );

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value05 = ExampleServicePlaceCodes._(
    '05',
  );

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value06 = ExampleServicePlaceCodes._(
    '06',
  );

  /// value07
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value07 = ExampleServicePlaceCodes._(
    '07',
  );

  /// value08
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value08 = ExampleServicePlaceCodes._(
    '08',
  );

  /// value09
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value09 = ExampleServicePlaceCodes._(
    '09',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value11 = ExampleServicePlaceCodes._(
    '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value12 = ExampleServicePlaceCodes._(
    '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value13 = ExampleServicePlaceCodes._(
    '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value14 = ExampleServicePlaceCodes._(
    '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value15 = ExampleServicePlaceCodes._(
    '15',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value19 = ExampleServicePlaceCodes._(
    '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value20 = ExampleServicePlaceCodes._(
    '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value21 = ExampleServicePlaceCodes._(
    '21',
  );

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value41 = ExampleServicePlaceCodes._(
    '41',
  );

  /// For instances where an Element is present but not value

  static final ExampleServicePlaceCodes elementOnly =
      ExampleServicePlaceCodes._('');

  /// List of all enum-like values
  static final List<ExampleServicePlaceCodes> values = [
    value01,
    value03,
    value04,
    value05,
    value06,
    value07,
    value08,
    value09,
    value11,
    value12,
    value13,
    value14,
    value15,
    value19,
    value20,
    value21,
    value41,
  ];

  /// Returns the enum value with an element attached
  ExampleServicePlaceCodes withElement(Element? newElement) {
    return ExampleServicePlaceCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleServicePlaceCodes] from JSON.
  static ExampleServicePlaceCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleServicePlaceCodes.elementOnly.withElement(element);
    }
    return ExampleServicePlaceCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleServicePlaceCodes.$fhirCode';
}
