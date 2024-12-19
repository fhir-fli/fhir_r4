part of 'provenance.dart';

/// The period during which the activity occurred.
sealed class OccurredXProvenanceProvenance {}

/// The period during which the activity occurred.
class PeriodOccurredProvenanceProvenance extends Period
    implements OccurredXProvenanceProvenance {
  /// Factory constructor for super class
  factory PeriodOccurredProvenanceProvenance.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurredProvenanceProvenance;
}

/// The period during which the activity occurred.
class DateTimeOccurredProvenanceProvenance extends FhirDateTime
    implements OccurredXProvenanceProvenance {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurredProvenanceProvenance.fromString(
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
      ) as DateTimeOccurredProvenanceProvenance;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurredProvenanceProvenance.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurredProvenanceProvenance;

  /// Factory constructor for super class
  factory DateTimeOccurredProvenanceProvenance.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeOccurredProvenanceProvenance;
}
