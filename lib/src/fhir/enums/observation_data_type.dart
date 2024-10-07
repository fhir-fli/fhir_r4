import 'package:json_annotation/json_annotation.dart';

/// Permitted data type for observation value.
enum ObservationDataType {
  /// Display: Quantity
  /// Definition: A measured amount.
  @JsonValue('Quantity')
  Quantity,
  /// Display: CodeableConcept
  /// Definition: A coded concept from a reference terminology and/or text.
  @JsonValue('CodeableConcept')
  CodeableConcept,
  /// Display: string
  /// Definition: A sequence of Unicode characters.
  @JsonValue('string')
  string,
  /// Display: boolean
  /// Definition: true or false.
  @JsonValue('boolean')
  boolean,
  /// Display: integer
  /// Definition: A signed integer.
  @JsonValue('integer')
  integer,
  /// Display: Range
  /// Definition: A set of values bounded by low and high.
  @JsonValue('Range')
  Range,
  /// Display: Ratio
  /// Definition: A ratio of two Quantity values - a numerator and a denominator.
  @JsonValue('Ratio')
  Ratio,
  /// Display: SampledData
  /// Definition: A series of measurements taken by a device.
  @JsonValue('SampledData')
  SampledData,
  /// Display: time
  /// Definition: A time during the day, in the format hh:mm:ss.
  @JsonValue('time')
  time,
  /// Display: dateTime
  /// Definition: A date, date-time or partial date (e.g. just year or year + month) as used in human communication.
  @JsonValue('dateTime')
  dateTime,
  /// Display: Period
  /// Definition: A time range defined by start and end date/time.
  @JsonValue('Period')
  Period,
;

@override
  String toString() {
      switch(this) {
        case Quantity: return 'Quantity';
        case CodeableConcept: return 'CodeableConcept';
        case string: return 'string';
        case boolean: return 'boolean';
        case integer: return 'integer';
        case Range: return 'Range';
        case Ratio: return 'Ratio';
        case SampledData: return 'SampledData';
        case time: return 'time';
        case dateTime: return 'dateTime';
        case Period: return 'Period';
      }
      }
String toJson() => toString();
  ObservationDataType fromString(String str) {
    switch(str) {
      case 'Quantity': return ObservationDataType.Quantity;
      case 'CodeableConcept': return ObservationDataType.CodeableConcept;
      case 'string': return ObservationDataType.string;
      case 'boolean': return ObservationDataType.boolean;
      case 'integer': return ObservationDataType.integer;
      case 'Range': return ObservationDataType.Range;
      case 'Ratio': return ObservationDataType.Ratio;
      case 'SampledData': return ObservationDataType.SampledData;
      case 'time': return ObservationDataType.time;
      case 'dateTime': return ObservationDataType.dateTime;
      case 'Period': return ObservationDataType.Period;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ObservationDataType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

