part of 'coverage_eligibility_response.dart';

/// The date or dates when the enclosed suite of services were performed or
/// completed.
sealed class ServicedXCoverageEligibilityResponseCoverageEligibilityResponse
    extends DataType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
class DateServicedCoverageEligibilityResponseCoverageEligibilityResponse
    extends FhirDate
    implements ServicedXCoverageEligibilityResponseCoverageEligibilityResponse {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedCoverageEligibilityResponseCoverageEligibilityResponse.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateServicedCoverageEligibilityResponseCoverageEligibilityResponse;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedCoverageEligibilityResponseCoverageEligibilityResponse.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateServicedCoverageEligibilityResponseCoverageEligibilityResponse;

  /// Factory constructor for super class
  factory DateServicedCoverageEligibilityResponseCoverageEligibilityResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateServicedCoverageEligibilityResponseCoverageEligibilityResponse;
}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
class PeriodServicedCoverageEligibilityResponseCoverageEligibilityResponse
    extends Period
    implements ServicedXCoverageEligibilityResponseCoverageEligibilityResponse {
  /// Factory constructor for super class
  factory PeriodServicedCoverageEligibilityResponseCoverageEligibilityResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodServicedCoverageEligibilityResponseCoverageEligibilityResponse;
}

/// The quantity of the benefit which is permitted under the coverage.
sealed class AllowedXCoverageEligibilityResponseBenefit extends DataType {}

/// The quantity of the benefit which is permitted under the coverage.
class UnsignedIntAllowedCoverageEligibilityResponseBenefit
    extends FhirUnsignedInt
    implements AllowedXCoverageEligibilityResponseBenefit {
  /// Constructor for [UnsignedIntAllowedCoverageEligibilityResponseBenefit]
  UnsignedIntAllowedCoverageEligibilityResponseBenefit(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntAllowedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntAllowedCoverageEligibilityResponseBenefit;
}

/// The quantity of the benefit which is permitted under the coverage.
class StringAllowedCoverageEligibilityResponseBenefit extends FhirString
    implements AllowedXCoverageEligibilityResponseBenefit {
  /// Constructor for [StringAllowedCoverageEligibilityResponseBenefit]
  StringAllowedCoverageEligibilityResponseBenefit(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAllowedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringAllowedCoverageEligibilityResponseBenefit;
}

/// The quantity of the benefit which is permitted under the coverage.
class MoneyAllowedCoverageEligibilityResponseBenefit extends Money
    implements AllowedXCoverageEligibilityResponseBenefit {
  /// Factory constructor for super class
  factory MoneyAllowedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyAllowedCoverageEligibilityResponseBenefit;
}

/// The quantity of the benefit which have been consumed to date.
sealed class UsedXCoverageEligibilityResponseBenefit extends DataType {}

/// The quantity of the benefit which have been consumed to date.
class UnsignedIntUsedCoverageEligibilityResponseBenefit extends FhirUnsignedInt
    implements UsedXCoverageEligibilityResponseBenefit {
  /// Constructor for [UnsignedIntUsedCoverageEligibilityResponseBenefit]
  UnsignedIntUsedCoverageEligibilityResponseBenefit(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntUsedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntUsedCoverageEligibilityResponseBenefit;
}

/// The quantity of the benefit which have been consumed to date.
class StringUsedCoverageEligibilityResponseBenefit extends FhirString
    implements UsedXCoverageEligibilityResponseBenefit {
  /// Constructor for [StringUsedCoverageEligibilityResponseBenefit]
  StringUsedCoverageEligibilityResponseBenefit(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringUsedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringUsedCoverageEligibilityResponseBenefit;
}

/// The quantity of the benefit which have been consumed to date.
class MoneyUsedCoverageEligibilityResponseBenefit extends Money
    implements UsedXCoverageEligibilityResponseBenefit {
  /// Factory constructor for super class
  factory MoneyUsedCoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyUsedCoverageEligibilityResponseBenefit;
}
