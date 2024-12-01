// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The days of the week.
class DaysOfWeek {
  // Private constructor for internal use (like enum)
  DaysOfWeek._(this.fhirCode, {this.element});

  /// Factory constructor to create [DaysOfWeek] from JSON.
  factory DaysOfWeek.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly.withElement(element);
    }
    return DaysOfWeek._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DaysOfWeek values
  /// mon
  static final DaysOfWeek mon = DaysOfWeek._(
    'mon',
  );

  /// tue
  static final DaysOfWeek tue = DaysOfWeek._(
    'tue',
  );

  /// wed
  static final DaysOfWeek wed = DaysOfWeek._(
    'wed',
  );

  /// thu
  static final DaysOfWeek thu = DaysOfWeek._(
    'thu',
  );

  /// fri
  static final DaysOfWeek fri = DaysOfWeek._(
    'fri',
  );

  /// sat
  static final DaysOfWeek sat = DaysOfWeek._(
    'sat',
  );

  /// sun
  static final DaysOfWeek sun = DaysOfWeek._(
    'sun',
  );

  /// For instances where an Element is present but not value

  static final DaysOfWeek elementOnly = DaysOfWeek._('');

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
    return DaysOfWeek._(fhirCode, element: newElement);
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
