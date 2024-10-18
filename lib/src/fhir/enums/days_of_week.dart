// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The days of the week.
enum DaysOfWeek {
  /// Display: Monday
  /// Definition: Monday.
  mon('mon'),

  /// Display: Tuesday
  /// Definition: Tuesday.
  tue('tue'),

  /// Display: Wednesday
  /// Definition: Wednesday.
  wed('wed'),

  /// Display: Thursday
  /// Definition: Thursday.
  thu('thu'),

  /// Display: Friday
  /// Definition: Friday.
  fri('fri'),

  /// Display: Saturday
  /// Definition: Saturday.
  sat('sat'),

  /// Display: Sunday
  /// Definition: Sunday.
  sun('sun'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DaysOfWeek(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DaysOfWeek] instances.
  static DaysOfWeek fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
