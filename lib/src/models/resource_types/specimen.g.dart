part of 'specimen.dart';

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
sealed class CollectedXSpecimenCollection extends DataType {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
class DateTimeCollectedSpecimenCollection extends FhirDateTime
    implements CollectedXSpecimenCollection {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeCollectedSpecimenCollection.fromString(
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
      ) as DateTimeCollectedSpecimenCollection;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeCollectedSpecimenCollection.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeCollectedSpecimenCollection;

  /// Factory constructor for super class
  factory DateTimeCollectedSpecimenCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeCollectedSpecimenCollection;
}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
class PeriodCollectedSpecimenCollection extends Period
    implements CollectedXSpecimenCollection {
  /// Factory constructor for super class
  factory PeriodCollectedSpecimenCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodCollectedSpecimenCollection;
}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
sealed class FastingStatusXSpecimenCollection extends DataType {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
class CodeableConceptFastingStatusSpecimenCollection extends CodeableConcept
    implements FastingStatusXSpecimenCollection {
  /// Factory constructor for super class
  factory CodeableConceptFastingStatusSpecimenCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptFastingStatusSpecimenCollection;
}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
class DurationFastingStatusSpecimenCollection extends FhirDuration
    implements FastingStatusXSpecimenCollection {
  /// Factory constructor for super class
  factory DurationFastingStatusSpecimenCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationFastingStatusSpecimenCollection;
}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
sealed class TimeXSpecimenProcessing extends DataType {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
class DateTimeTimeSpecimenProcessing extends FhirDateTime
    implements TimeXSpecimenProcessing {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimeSpecimenProcessing.fromString(
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
      ) as DateTimeTimeSpecimenProcessing;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimeSpecimenProcessing.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimeSpecimenProcessing;

  /// Factory constructor for super class
  factory DateTimeTimeSpecimenProcessing.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeTimeSpecimenProcessing;
}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
class PeriodTimeSpecimenProcessing extends Period
    implements TimeXSpecimenProcessing {
  /// Factory constructor for super class
  factory PeriodTimeSpecimenProcessing.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimeSpecimenProcessing;
}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
sealed class AdditiveXSpecimenContainer extends DataType {}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
class CodeableConceptAdditiveSpecimenContainer extends CodeableConcept
    implements AdditiveXSpecimenContainer {
  /// Factory constructor for super class
  factory CodeableConceptAdditiveSpecimenContainer.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptAdditiveSpecimenContainer;
}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
class ReferenceAdditiveSpecimenContainer extends Reference
    implements AdditiveXSpecimenContainer {
  /// Factory constructor for super class
  factory ReferenceAdditiveSpecimenContainer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceAdditiveSpecimenContainer;
}
