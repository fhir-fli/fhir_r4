part of 'regulated_authorization.dart';

/// Relevant date for this case.
sealed class DateXRegulatedAuthorizationCase extends DataType {}

/// Relevant date for this case.
class PeriodDateRegulatedAuthorizationCase extends Period
    implements DateXRegulatedAuthorizationCase {
  /// Factory constructor for super class
  factory PeriodDateRegulatedAuthorizationCase.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodDateRegulatedAuthorizationCase;
}

/// Relevant date for this case.
class DateTimeDateRegulatedAuthorizationCase extends FhirDateTime
    implements DateXRegulatedAuthorizationCase {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeDateRegulatedAuthorizationCase.fromString(
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
      ) as DateTimeDateRegulatedAuthorizationCase;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeDateRegulatedAuthorizationCase.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeDateRegulatedAuthorizationCase;

  /// Factory constructor for super class
  factory DateTimeDateRegulatedAuthorizationCase.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeDateRegulatedAuthorizationCase;
}
