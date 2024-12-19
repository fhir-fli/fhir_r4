part of 'device_request.dart';

/// The details of the device to be used.
sealed class CodeXDeviceRequestDeviceRequest {}

/// The details of the device to be used.
class ReferenceCodeDeviceRequestDeviceRequest extends Reference
    implements CodeXDeviceRequestDeviceRequest {
  /// Factory constructor for super class
  factory ReferenceCodeDeviceRequestDeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceCodeDeviceRequestDeviceRequest;
}

/// The details of the device to be used.
class CodeableConceptCodeDeviceRequestDeviceRequest extends CodeableConcept
    implements CodeXDeviceRequestDeviceRequest {
  /// Factory constructor for super class
  factory CodeableConceptCodeDeviceRequestDeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptCodeDeviceRequestDeviceRequest;
}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
sealed class OccurrenceXDeviceRequestDeviceRequest {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
class DateTimeOccurrenceDeviceRequestDeviceRequest extends FhirDateTime
    implements OccurrenceXDeviceRequestDeviceRequest {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceDeviceRequestDeviceRequest.fromString(
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
      ) as DateTimeOccurrenceDeviceRequestDeviceRequest;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceDeviceRequestDeviceRequest.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceDeviceRequestDeviceRequest;

  /// Factory constructor for super class
  factory DateTimeOccurrenceDeviceRequestDeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceDeviceRequestDeviceRequest;
}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
class PeriodOccurrenceDeviceRequestDeviceRequest extends Period
    implements OccurrenceXDeviceRequestDeviceRequest {
  /// Factory constructor for super class
  factory PeriodOccurrenceDeviceRequestDeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceDeviceRequestDeviceRequest;
}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
class TimingOccurrenceDeviceRequestDeviceRequest extends Timing
    implements OccurrenceXDeviceRequestDeviceRequest {
  /// Factory constructor for super class
  factory TimingOccurrenceDeviceRequestDeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceDeviceRequestDeviceRequest;
}

/// The value of the device detail.
sealed class ValueXDeviceRequestParameter {}

/// The value of the device detail.
class CodeableConceptValueDeviceRequestParameter extends CodeableConcept
    implements ValueXDeviceRequestParameter {
  /// Factory constructor for super class
  factory CodeableConceptValueDeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueDeviceRequestParameter;
}

/// The value of the device detail.
class QuantityValueDeviceRequestParameter extends Quantity
    implements ValueXDeviceRequestParameter {
  /// Factory constructor for super class
  factory QuantityValueDeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueDeviceRequestParameter;
}

/// The value of the device detail.
class RangeValueDeviceRequestParameter extends Range
    implements ValueXDeviceRequestParameter {
  /// Factory constructor for super class
  factory RangeValueDeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueDeviceRequestParameter;
}

/// The value of the device detail.
class BooleanValueDeviceRequestParameter extends FhirBoolean
    implements ValueXDeviceRequestParameter {
  /// Constructor for [BooleanValueDeviceRequestParameter]
  BooleanValueDeviceRequestParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueDeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueDeviceRequestParameter;
}
