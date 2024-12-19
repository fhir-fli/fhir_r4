part of 'biologically_derived_product.dart';

/// Time of product collection.
sealed class CollectedXBiologicallyDerivedProductCollection {}

/// Time of product collection.
class DateTimeCollectedBiologicallyDerivedProductCollection extends FhirDateTime
    implements CollectedXBiologicallyDerivedProductCollection {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeCollectedBiologicallyDerivedProductCollection.fromString(
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
      ) as DateTimeCollectedBiologicallyDerivedProductCollection;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeCollectedBiologicallyDerivedProductCollection.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeCollectedBiologicallyDerivedProductCollection;

  /// Factory constructor for super class
  factory DateTimeCollectedBiologicallyDerivedProductCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeCollectedBiologicallyDerivedProductCollection;
}

/// Time of product collection.
class PeriodCollectedBiologicallyDerivedProductCollection extends Period
    implements CollectedXBiologicallyDerivedProductCollection {
  /// Factory constructor for super class
  factory PeriodCollectedBiologicallyDerivedProductCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodCollectedBiologicallyDerivedProductCollection;
}

/// Time of processing.
sealed class TimeXBiologicallyDerivedProductProcessing {}

/// Time of processing.
class DateTimeTimeBiologicallyDerivedProductProcessing extends FhirDateTime
    implements TimeXBiologicallyDerivedProductProcessing {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimeBiologicallyDerivedProductProcessing.fromString(
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
      ) as DateTimeTimeBiologicallyDerivedProductProcessing;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimeBiologicallyDerivedProductProcessing.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimeBiologicallyDerivedProductProcessing;

  /// Factory constructor for super class
  factory DateTimeTimeBiologicallyDerivedProductProcessing.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeTimeBiologicallyDerivedProductProcessing;
}

/// Time of processing.
class PeriodTimeBiologicallyDerivedProductProcessing extends Period
    implements TimeXBiologicallyDerivedProductProcessing {
  /// Factory constructor for super class
  factory PeriodTimeBiologicallyDerivedProductProcessing.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimeBiologicallyDerivedProductProcessing;
}

/// Time of manipulation.
sealed class TimeXBiologicallyDerivedProductManipulation {}

/// Time of manipulation.
class DateTimeTimeBiologicallyDerivedProductManipulation extends FhirDateTime
    implements TimeXBiologicallyDerivedProductManipulation {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimeBiologicallyDerivedProductManipulation.fromString(
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
      ) as DateTimeTimeBiologicallyDerivedProductManipulation;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimeBiologicallyDerivedProductManipulation.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimeBiologicallyDerivedProductManipulation;

  /// Factory constructor for super class
  factory DateTimeTimeBiologicallyDerivedProductManipulation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeTimeBiologicallyDerivedProductManipulation;
}

/// Time of manipulation.
class PeriodTimeBiologicallyDerivedProductManipulation extends Period
    implements TimeXBiologicallyDerivedProductManipulation {
  /// Factory constructor for super class
  factory PeriodTimeBiologicallyDerivedProductManipulation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimeBiologicallyDerivedProductManipulation;
}
