// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Permitted data type for observation value.
enum ObservationDataType {
  /// Display: Quantity
  /// Definition: A measured amount.
  Quantity('Quantity'),

  /// Display: CodeableConcept
  /// Definition: A coded concept from a reference terminology and/or text.
  CodeableConcept('CodeableConcept'),

  /// Display: string
  /// Definition: A sequence of Unicode characters.
  string('string'),

  /// Display: boolean
  /// Definition: true or false.
  boolean('boolean'),

  /// Display: integer
  /// Definition: A signed integer.
  integer('integer'),

  /// Display: Range
  /// Definition: A set of values bounded by low and high.
  Range('Range'),

  /// Display: Ratio
  /// Definition: A ratio of two Quantity values - a numerator and a denominator.
  Ratio('Ratio'),

  /// Display: SampledData
  /// Definition: A series of measurements taken by a device.
  SampledData('SampledData'),

  /// Display: time
  /// Definition: A time during the day, in the format hh:mm:ss.
  time('time'),

  /// Display: dateTime
  /// Definition: A date, date-time or partial date (e.g. just year or year + month) as used in human communication.
  dateTime('dateTime'),

  /// Display: Period
  /// Definition: A time range defined by start and end date/time.
  Period('Period'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ObservationDataType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ObservationDataType] instances.
  static ObservationDataType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly.withElement(
        element,
      );
    }
    return ObservationDataType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
