/// Example Measure Stratification Value for MeasureReports Resource.
enum MeasureReportStratifierValueExample {
  /// Display: Northwest
  /// Definition: Northwest region stratification.
  northwest,

  /// Display: Northeast
  /// Definition: Northeast region stratification.
  northeast,

  /// Display: Soutwest
  /// Definition: Soutwest region stratification.
  southwest,

  /// Display: Southeast
  /// Definition: Southeast region stratification.
  southeast,
  ;

  @override
  String toString() {
    switch (this) {
      case northwest:
        return 'northwest';
      case northeast:
        return 'northeast';
      case southwest:
        return 'southwest';
      case southeast:
        return 'southeast';
    }
  }

  /// Returns a [String] from a [MeasureReportStratifierValueExample] enum.
  String toJson() => toString();

  /// Returns a [MeasureReportStratifierValueExample] from a [String] enum.
  static MeasureReportStratifierValueExample fromString(String str) {
    switch (str) {
      case 'northwest':
        return MeasureReportStratifierValueExample.northwest;
      case 'northeast':
        return MeasureReportStratifierValueExample.northeast;
      case 'southwest':
        return MeasureReportStratifierValueExample.southwest;
      case 'southeast':
        return MeasureReportStratifierValueExample.southeast;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureReportStratifierValueExample] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureReportStratifierValueExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
