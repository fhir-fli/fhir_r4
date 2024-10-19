// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The days of the week.
@collection
class DaysOfWeek {
  /// Constructor for internal use (like enum)
  DaysOfWeek({this.fhirCode, this.element})
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

  /// DaysOfWeek values
  /// mon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek mon = DaysOfWeek(
    fhirCode: 'mon',
  );

  /// tue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek tue = DaysOfWeek(
    fhirCode: 'tue',
  );

  /// wed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek wed = DaysOfWeek(
    fhirCode: 'wed',
  );

  /// thu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek thu = DaysOfWeek(
    fhirCode: 'thu',
  );

  /// fri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek fri = DaysOfWeek(
    fhirCode: 'fri',
  );

  /// sat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek sat = DaysOfWeek(
    fhirCode: 'sat',
  );

  /// sun
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DaysOfWeek sun = DaysOfWeek(
    fhirCode: 'sun',
  );

  /// For instances where an Element is present but not value

  static final DaysOfWeek elementOnly = DaysOfWeek();

  /// List of all enum-like values
  static final List<DaysOfWeek> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];

  /// Returns the enum value with an element attached
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DaysOfWeek] from JSON.
  static DaysOfWeek fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly.withElement(element);
    }
    return DaysOfWeek.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DaysOfWeek.$fhirCode';
}
