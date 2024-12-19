part of 'service_request.dart';

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
sealed class QuantityXServiceRequestServiceRequest {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
class QuantityQuantityServiceRequestServiceRequest extends Quantity
    implements QuantityXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory QuantityQuantityServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityQuantityServiceRequestServiceRequest;
}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
class RatioQuantityServiceRequestServiceRequest extends Ratio
    implements QuantityXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory RatioQuantityServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioQuantityServiceRequestServiceRequest;
}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
class RangeQuantityServiceRequestServiceRequest extends Range
    implements QuantityXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory RangeQuantityServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeQuantityServiceRequestServiceRequest;
}

/// The date/time at which the requested service should occur.
sealed class OccurrenceXServiceRequestServiceRequest {}

/// The date/time at which the requested service should occur.
class DateTimeOccurrenceServiceRequestServiceRequest extends FhirDateTime
    implements OccurrenceXServiceRequestServiceRequest {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceServiceRequestServiceRequest.fromString(
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
      ) as DateTimeOccurrenceServiceRequestServiceRequest;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceServiceRequestServiceRequest.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceServiceRequestServiceRequest;

  /// Factory constructor for super class
  factory DateTimeOccurrenceServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceServiceRequestServiceRequest;
}

/// The date/time at which the requested service should occur.
class PeriodOccurrenceServiceRequestServiceRequest extends Period
    implements OccurrenceXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory PeriodOccurrenceServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceServiceRequestServiceRequest;
}

/// The date/time at which the requested service should occur.
class TimingOccurrenceServiceRequestServiceRequest extends Timing
    implements OccurrenceXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory TimingOccurrenceServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceServiceRequestServiceRequest;
}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
sealed class AsNeededXServiceRequestServiceRequest {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
class BooleanAsNeededServiceRequestServiceRequest extends FhirBoolean
    implements AsNeededXServiceRequestServiceRequest {
  /// Constructor for [BooleanAsNeededServiceRequestServiceRequest]
  BooleanAsNeededServiceRequestServiceRequest(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanAsNeededServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanAsNeededServiceRequestServiceRequest;
}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
class CodeableConceptAsNeededServiceRequestServiceRequest
    extends CodeableConcept implements AsNeededXServiceRequestServiceRequest {
  /// Factory constructor for super class
  factory CodeableConceptAsNeededServiceRequestServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptAsNeededServiceRequestServiceRequest;
}
