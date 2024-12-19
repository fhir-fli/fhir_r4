part of 'supply_delivery.dart';

/// The date or time(s) the activity occurred.
sealed class OccurrenceXSupplyDeliverySupplyDelivery {}

/// The date or time(s) the activity occurred.
class DateTimeOccurrenceSupplyDeliverySupplyDelivery extends FhirDateTime
    implements OccurrenceXSupplyDeliverySupplyDelivery {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceSupplyDeliverySupplyDelivery.fromString(
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
      ) as DateTimeOccurrenceSupplyDeliverySupplyDelivery;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceSupplyDeliverySupplyDelivery.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceSupplyDeliverySupplyDelivery;

  /// Factory constructor for super class
  factory DateTimeOccurrenceSupplyDeliverySupplyDelivery.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceSupplyDeliverySupplyDelivery;
}

/// The date or time(s) the activity occurred.
class PeriodOccurrenceSupplyDeliverySupplyDelivery extends Period
    implements OccurrenceXSupplyDeliverySupplyDelivery {
  /// Factory constructor for super class
  factory PeriodOccurrenceSupplyDeliverySupplyDelivery.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceSupplyDeliverySupplyDelivery;
}

/// The date or time(s) the activity occurred.
class TimingOccurrenceSupplyDeliverySupplyDelivery extends Timing
    implements OccurrenceXSupplyDeliverySupplyDelivery {
  /// Factory constructor for super class
  factory TimingOccurrenceSupplyDeliverySupplyDelivery.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceSupplyDeliverySupplyDelivery;
}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
sealed class ItemXSupplyDeliverySuppliedItem {}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
class CodeableConceptItemSupplyDeliverySuppliedItem extends CodeableConcept
    implements ItemXSupplyDeliverySuppliedItem {
  /// Factory constructor for super class
  factory CodeableConceptItemSupplyDeliverySuppliedItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptItemSupplyDeliverySuppliedItem;
}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
class ReferenceItemSupplyDeliverySuppliedItem extends Reference
    implements ItemXSupplyDeliverySuppliedItem {
  /// Factory constructor for super class
  factory ReferenceItemSupplyDeliverySuppliedItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceItemSupplyDeliverySuppliedItem;
}
