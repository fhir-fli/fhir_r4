part of 'charge_item.dart';

/// Date/time(s) or duration when the charged service was applied.
sealed class OccurrenceXChargeItemChargeItem extends DataType {}

/// Date/time(s) or duration when the charged service was applied.
class DateTimeOccurrenceChargeItemChargeItem extends FhirDateTime
    implements OccurrenceXChargeItemChargeItem {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceChargeItemChargeItem.fromString(
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
      ) as DateTimeOccurrenceChargeItemChargeItem;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceChargeItemChargeItem.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceChargeItemChargeItem;

  /// Factory constructor for super class
  factory DateTimeOccurrenceChargeItemChargeItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeOccurrenceChargeItemChargeItem;
}

/// Date/time(s) or duration when the charged service was applied.
class PeriodOccurrenceChargeItemChargeItem extends Period
    implements OccurrenceXChargeItemChargeItem {
  /// Factory constructor for super class
  factory PeriodOccurrenceChargeItemChargeItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceChargeItemChargeItem;
}

/// Date/time(s) or duration when the charged service was applied.
class TimingOccurrenceChargeItemChargeItem extends Timing
    implements OccurrenceXChargeItemChargeItem {
  /// Factory constructor for super class
  factory TimingOccurrenceChargeItemChargeItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceChargeItemChargeItem;
}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
sealed class ProductXChargeItemChargeItem extends DataType {}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
class ReferenceProductChargeItemChargeItem extends Reference
    implements ProductXChargeItemChargeItem {
  /// Factory constructor for super class
  factory ReferenceProductChargeItemChargeItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceProductChargeItemChargeItem;
}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
class CodeableConceptProductChargeItemChargeItem extends CodeableConcept
    implements ProductXChargeItemChargeItem {
  /// Factory constructor for super class
  factory CodeableConceptProductChargeItemChargeItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptProductChargeItemChargeItem;
}
