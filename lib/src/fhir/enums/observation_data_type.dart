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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ObservationDataType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ObservationDataType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly.withElement(element);
    }
    return ObservationDataType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
