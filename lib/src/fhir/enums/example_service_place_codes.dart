// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes a smattering of Service Place codes.
@collection
class ExampleServicePlaceCodes {
  /// Constructor for internal use (like enum)
  ExampleServicePlaceCodes({this.fhirCode, this.element})
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

  /// ExampleServicePlaceCodes values
  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value01 = ExampleServicePlaceCodes(
    fhirCode: '01',
  );

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value03 = ExampleServicePlaceCodes(
    fhirCode: '03',
  );

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value04 = ExampleServicePlaceCodes(
    fhirCode: '04',
  );

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value05 = ExampleServicePlaceCodes(
    fhirCode: '05',
  );

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value06 = ExampleServicePlaceCodes(
    fhirCode: '06',
  );

  /// value07
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value07 = ExampleServicePlaceCodes(
    fhirCode: '07',
  );

  /// value08
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value08 = ExampleServicePlaceCodes(
    fhirCode: '08',
  );

  /// value09
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value09 = ExampleServicePlaceCodes(
    fhirCode: '09',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value11 = ExampleServicePlaceCodes(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value12 = ExampleServicePlaceCodes(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value13 = ExampleServicePlaceCodes(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value14 = ExampleServicePlaceCodes(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value15 = ExampleServicePlaceCodes(
    fhirCode: '15',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value19 = ExampleServicePlaceCodes(
    fhirCode: '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value20 = ExampleServicePlaceCodes(
    fhirCode: '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value21 = ExampleServicePlaceCodes(
    fhirCode: '21',
  );

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleServicePlaceCodes value41 = ExampleServicePlaceCodes(
    fhirCode: '41',
  );

  /// For instances where an Element is present but not value

  static final ExampleServicePlaceCodes elementOnly =
      ExampleServicePlaceCodes();

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
    return ExampleServicePlaceCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
