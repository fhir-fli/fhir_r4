// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A unit of time (units from UCUM).
@collection
class UnitsOfTime {
  /// Constructor for internal use (like enum)
  UnitsOfTime({this.fhirCode, this.element})
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

  /// UnitsOfTime values
  /// s
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime s = UnitsOfTime(
    fhirCode: 's',
  );

  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime min = UnitsOfTime(
    fhirCode: 'min',
  );

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime h = UnitsOfTime(
    fhirCode: 'h',
  );

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime d = UnitsOfTime(
    fhirCode: 'd',
  );

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime wk = UnitsOfTime(
    fhirCode: 'wk',
  );

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime mo = UnitsOfTime(
    fhirCode: 'mo',
  );

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UnitsOfTime a = UnitsOfTime(
    fhirCode: 'a',
  );

  /// For instances where an Element is present but not value

  static final UnitsOfTime elementOnly = UnitsOfTime();

  /// List of all enum-like values
  static final List<UnitsOfTime> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [UnitsOfTime] from JSON.
  static UnitsOfTime fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime.elementOnly.withElement(element);
    }
    return UnitsOfTime.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UnitsOfTime.$fhirCode';
}
