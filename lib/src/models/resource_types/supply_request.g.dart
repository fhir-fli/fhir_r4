part of 'supply_request.dart';

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
sealed class ItemXSupplyRequestSupplyRequest extends DataType {}

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
class CodeableConceptItemSupplyRequestSupplyRequest extends CodeableConcept
    implements ItemXSupplyRequestSupplyRequest {
  /// Factory constructor for super class
  factory CodeableConceptItemSupplyRequestSupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptItemSupplyRequestSupplyRequest;
}

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
class ReferenceItemSupplyRequestSupplyRequest extends Reference
    implements ItemXSupplyRequestSupplyRequest {
  /// Factory constructor for super class
  factory ReferenceItemSupplyRequestSupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceItemSupplyRequestSupplyRequest;
}

/// When the request should be fulfilled.
sealed class OccurrenceXSupplyRequestSupplyRequest extends DataType {}

/// When the request should be fulfilled.
class DateTimeOccurrenceSupplyRequestSupplyRequest extends FhirDateTime
    implements OccurrenceXSupplyRequestSupplyRequest {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceSupplyRequestSupplyRequest.fromString(
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
      ) as DateTimeOccurrenceSupplyRequestSupplyRequest;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceSupplyRequestSupplyRequest.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceSupplyRequestSupplyRequest;

  /// Factory constructor for super class
  factory DateTimeOccurrenceSupplyRequestSupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceSupplyRequestSupplyRequest;
}

/// When the request should be fulfilled.
class PeriodOccurrenceSupplyRequestSupplyRequest extends Period
    implements OccurrenceXSupplyRequestSupplyRequest {
  /// Factory constructor for super class
  factory PeriodOccurrenceSupplyRequestSupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceSupplyRequestSupplyRequest;
}

/// When the request should be fulfilled.
class TimingOccurrenceSupplyRequestSupplyRequest extends Timing
    implements OccurrenceXSupplyRequestSupplyRequest {
  /// Factory constructor for super class
  factory TimingOccurrenceSupplyRequestSupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceSupplyRequestSupplyRequest;
}

/// The value of the device detail.
sealed class ValueXSupplyRequestParameter extends DataType {}

/// The value of the device detail.
class CodeableConceptValueSupplyRequestParameter extends CodeableConcept
    implements ValueXSupplyRequestParameter {
  /// Factory constructor for super class
  factory CodeableConceptValueSupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueSupplyRequestParameter;
}

/// The value of the device detail.
class QuantityValueSupplyRequestParameter extends Quantity
    implements ValueXSupplyRequestParameter {
  /// Factory constructor for super class
  factory QuantityValueSupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueSupplyRequestParameter;
}

/// The value of the device detail.
class RangeValueSupplyRequestParameter extends Range
    implements ValueXSupplyRequestParameter {
  /// Factory constructor for super class
  factory RangeValueSupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueSupplyRequestParameter;
}

/// The value of the device detail.
class BooleanValueSupplyRequestParameter extends FhirBoolean
    implements ValueXSupplyRequestParameter {
  /// Constructor for [BooleanValueSupplyRequestParameter]
  BooleanValueSupplyRequestParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueSupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueSupplyRequestParameter;
}
