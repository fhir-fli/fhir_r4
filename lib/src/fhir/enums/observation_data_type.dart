/// Permitted data type for observation value.
enum ObservationDataType {
  /// Display: Quantity
  /// Definition: A measured amount.
  Quantity,

  /// Display: CodeableConcept
  /// Definition: A coded concept from a reference terminology and/or text.
  CodeableConcept,

  /// Display: string
  /// Definition: A sequence of Unicode characters.
  string,

  /// Display: boolean
  /// Definition: true or false.
  boolean,

  /// Display: integer
  /// Definition: A signed integer.
  integer,

  /// Display: Range
  /// Definition: A set of values bounded by low and high.
  Range,

  /// Display: Ratio
  /// Definition: A ratio of two Quantity values - a numerator and a denominator.
  Ratio,

  /// Display: SampledData
  /// Definition: A series of measurements taken by a device.
  SampledData,

  /// Display: time
  /// Definition: A time during the day, in the format hh:mm:ss.
  time,

  /// Display: dateTime
  /// Definition: A date, date-time or partial date (e.g. just year or year + month) as used in human communication.
  dateTime,

  /// Display: Period
  /// Definition: A time range defined by start and end date/time.
  Period,
  ;

  @override
  String toString() {
    switch (this) {
      case Quantity:
        return 'Quantity';
      case CodeableConcept:
        return 'CodeableConcept';
      case string:
        return 'string';
      case boolean:
        return 'boolean';
      case integer:
        return 'integer';
      case Range:
        return 'Range';
      case Ratio:
        return 'Ratio';
      case SampledData:
        return 'SampledData';
      case time:
        return 'time';
      case dateTime:
        return 'dateTime';
      case Period:
        return 'Period';
    }
  }

  String toJson() => toString();
  static ObservationDataType fromString(String str) {
    switch (str) {
      case 'Quantity':
        return ObservationDataType.Quantity;
      case 'CodeableConcept':
        return ObservationDataType.CodeableConcept;
      case 'string':
        return ObservationDataType.string;
      case 'boolean':
        return ObservationDataType.boolean;
      case 'integer':
        return ObservationDataType.integer;
      case 'Range':
        return ObservationDataType.Range;
      case 'Ratio':
        return ObservationDataType.Ratio;
      case 'SampledData':
        return ObservationDataType.SampledData;
      case 'time':
        return ObservationDataType.time;
      case 'dateTime':
        return ObservationDataType.dateTime;
      case 'Period':
        return ObservationDataType.Period;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ObservationDataType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
