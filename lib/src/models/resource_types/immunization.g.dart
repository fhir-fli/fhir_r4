part of 'immunization.dart';

/// Date vaccine administered or was to be administered.
sealed class OccurrenceXImmunizationImmunization extends DataType {}

/// Date vaccine administered or was to be administered.
class DateTimeOccurrenceImmunizationImmunization extends FhirDateTime
    implements OccurrenceXImmunizationImmunization {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceImmunizationImmunization.fromString(
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
      ) as DateTimeOccurrenceImmunizationImmunization;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceImmunizationImmunization.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceImmunizationImmunization;

  /// Factory constructor for super class
  factory DateTimeOccurrenceImmunizationImmunization.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeOccurrenceImmunizationImmunization;
}

/// Date vaccine administered or was to be administered.
class StringOccurrenceImmunizationImmunization extends FhirString
    implements OccurrenceXImmunizationImmunization {
  /// Constructor for [StringOccurrenceImmunizationImmunization]
  StringOccurrenceImmunizationImmunization(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringOccurrenceImmunizationImmunization.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringOccurrenceImmunizationImmunization;
}

/// Nominal position in a series.
sealed class DoseNumberXImmunizationProtocolApplied extends DataType {}

/// Nominal position in a series.
class PositiveIntDoseNumberImmunizationProtocolApplied extends FhirPositiveInt
    implements DoseNumberXImmunizationProtocolApplied {
  /// Constructor for [PositiveIntDoseNumberImmunizationProtocolApplied]
  PositiveIntDoseNumberImmunizationProtocolApplied(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntDoseNumberImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntDoseNumberImmunizationProtocolApplied;
}

/// Nominal position in a series.
class StringDoseNumberImmunizationProtocolApplied extends FhirString
    implements DoseNumberXImmunizationProtocolApplied {
  /// Constructor for [StringDoseNumberImmunizationProtocolApplied]
  StringDoseNumberImmunizationProtocolApplied(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDoseNumberImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringDoseNumberImmunizationProtocolApplied;
}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationProtocolApplied extends DataType {}

/// The recommended number of doses to achieve immunity.
class PositiveIntSeriesDosesImmunizationProtocolApplied extends FhirPositiveInt
    implements SeriesDosesXImmunizationProtocolApplied {
  /// Constructor for [PositiveIntSeriesDosesImmunizationProtocolApplied]
  PositiveIntSeriesDosesImmunizationProtocolApplied(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntSeriesDosesImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntSeriesDosesImmunizationProtocolApplied;
}

/// The recommended number of doses to achieve immunity.
class StringSeriesDosesImmunizationProtocolApplied extends FhirString
    implements SeriesDosesXImmunizationProtocolApplied {
  /// Constructor for [StringSeriesDosesImmunizationProtocolApplied]
  StringSeriesDosesImmunizationProtocolApplied(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringSeriesDosesImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringSeriesDosesImmunizationProtocolApplied;
}
