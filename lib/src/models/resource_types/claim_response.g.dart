part of 'claim_response.dart';

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXClaimResponseAddItem {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class DateServicedClaimResponseAddItem extends FhirDate
    implements ServicedXClaimResponseAddItem {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedClaimResponseAddItem.fromString(
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
      ) as DateServicedClaimResponseAddItem;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedClaimResponseAddItem.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateServicedClaimResponseAddItem;

  /// Factory constructor for super class
  factory DateServicedClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateServicedClaimResponseAddItem;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class PeriodServicedClaimResponseAddItem extends Period
    implements ServicedXClaimResponseAddItem {
  /// Factory constructor for super class
  factory PeriodServicedClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodServicedClaimResponseAddItem;
}

/// Where the product or service was provided.
sealed class LocationXClaimResponseAddItem {}

/// Where the product or service was provided.
class CodeableConceptLocationClaimResponseAddItem extends CodeableConcept
    implements LocationXClaimResponseAddItem {
  /// Factory constructor for super class
  factory CodeableConceptLocationClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptLocationClaimResponseAddItem;
}

/// Where the product or service was provided.
class AddressLocationClaimResponseAddItem extends Address
    implements LocationXClaimResponseAddItem {
  /// Factory constructor for super class
  factory AddressLocationClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationClaimResponseAddItem;
}

/// Where the product or service was provided.
class ReferenceLocationClaimResponseAddItem extends Reference
    implements LocationXClaimResponseAddItem {
  /// Factory constructor for super class
  factory ReferenceLocationClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationClaimResponseAddItem;
}
