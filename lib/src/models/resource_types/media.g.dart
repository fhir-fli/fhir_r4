part of 'media.dart';

/// The date and time(s) at which the media was collected.
sealed class CreatedXMediaMedia extends DataType {}

/// The date and time(s) at which the media was collected.
class DateTimeCreatedMediaMedia extends FhirDateTime
    implements CreatedXMediaMedia {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeCreatedMediaMedia.fromString(
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
      ) as DateTimeCreatedMediaMedia;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeCreatedMediaMedia.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeCreatedMediaMedia;

  /// Factory constructor for super class
  factory DateTimeCreatedMediaMedia.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeCreatedMediaMedia;
}

/// The date and time(s) at which the media was collected.
class PeriodCreatedMediaMedia extends Period implements CreatedXMediaMedia {
  /// Factory constructor for super class
  factory PeriodCreatedMediaMedia.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodCreatedMediaMedia;
}
