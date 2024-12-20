part of 'device_use_statement.dart';

/// How often the device was used.
sealed class TimingXDeviceUseStatementDeviceUseStatement extends DataType {}

/// How often the device was used.
class TimingTimingDeviceUseStatementDeviceUseStatement extends Timing
    implements TimingXDeviceUseStatementDeviceUseStatement {
  /// Factory constructor for super class
  factory TimingTimingDeviceUseStatementDeviceUseStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingTimingDeviceUseStatementDeviceUseStatement;
}

/// How often the device was used.
class PeriodTimingDeviceUseStatementDeviceUseStatement extends Period
    implements TimingXDeviceUseStatementDeviceUseStatement {
  /// Factory constructor for super class
  factory PeriodTimingDeviceUseStatementDeviceUseStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingDeviceUseStatementDeviceUseStatement;
}

/// How often the device was used.
class DateTimeTimingDeviceUseStatementDeviceUseStatement extends FhirDateTime
    implements TimingXDeviceUseStatementDeviceUseStatement {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimingDeviceUseStatementDeviceUseStatement.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeTimingDeviceUseStatementDeviceUseStatement;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimingDeviceUseStatementDeviceUseStatement.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimingDeviceUseStatementDeviceUseStatement;

  /// Factory constructor for super class
  factory DateTimeTimingDeviceUseStatementDeviceUseStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeTimingDeviceUseStatementDeviceUseStatement;
}
