part of 'observation.dart';

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
sealed class EffectiveXObservationObservation {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
class DateTimeEffectiveObservationObservation extends FhirDateTime
    implements EffectiveXObservationObservation {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeEffectiveObservationObservation.fromString(
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
      ) as DateTimeEffectiveObservationObservation;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeEffectiveObservationObservation.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeEffectiveObservationObservation;

  /// Factory constructor for super class
  factory DateTimeEffectiveObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeEffectiveObservationObservation;
}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
class PeriodEffectiveObservationObservation extends Period
    implements EffectiveXObservationObservation {
  /// Factory constructor for super class
  factory PeriodEffectiveObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodEffectiveObservationObservation;
}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
class TimingEffectiveObservationObservation extends Timing
    implements EffectiveXObservationObservation {
  /// Factory constructor for super class
  factory TimingEffectiveObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingEffectiveObservationObservation;
}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
class InstantEffectiveObservationObservation extends FhirInstant
    implements EffectiveXObservationObservation {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantEffectiveObservationObservation.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirInstant.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as InstantEffectiveObservationObservation;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantEffectiveObservationObservation.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantEffectiveObservationObservation;

  /// Factory constructor for super class
  factory InstantEffectiveObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantEffectiveObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
sealed class ValueXObservationObservation {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class QuantityValueObservationObservation extends Quantity
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory QuantityValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class CodeableConceptValueObservationObservation extends CodeableConcept
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory CodeableConceptValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class StringValueObservationObservation extends FhirString
    implements ValueXObservationObservation {
  /// Constructor for [StringValueObservationObservation]
  StringValueObservationObservation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class BooleanValueObservationObservation extends FhirBoolean
    implements ValueXObservationObservation {
  /// Constructor for [BooleanValueObservationObservation]
  BooleanValueObservationObservation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class IntegerValueObservationObservation extends FhirInteger
    implements ValueXObservationObservation {
  /// Constructor for [IntegerValueObservationObservation]
  IntegerValueObservationObservation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class RangeValueObservationObservation extends Range
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory RangeValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class RatioValueObservationObservation extends Ratio
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory RatioValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class SampledDataValueObservationObservation extends SampledData
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory SampledDataValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class TimeValueObservationObservation extends FhirTime
    implements ValueXObservationObservation {
  /// Constructor for [TimeValueObservationObservation]
  TimeValueObservationObservation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class DateTimeValueObservationObservation extends FhirDateTime
    implements ValueXObservationObservation {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueObservationObservation.fromString(
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
      ) as DateTimeValueObservationObservation;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueObservationObservation.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueObservationObservation;

  /// Factory constructor for super class
  factory DateTimeValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class PeriodValueObservationObservation extends Period
    implements ValueXObservationObservation {
  /// Factory constructor for super class
  factory PeriodValueObservationObservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueObservationObservation;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
sealed class ValueXObservationComponent {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class QuantityValueObservationComponent extends Quantity
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory QuantityValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class CodeableConceptValueObservationComponent extends CodeableConcept
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory CodeableConceptValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class StringValueObservationComponent extends FhirString
    implements ValueXObservationComponent {
  /// Constructor for [StringValueObservationComponent]
  StringValueObservationComponent(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class BooleanValueObservationComponent extends FhirBoolean
    implements ValueXObservationComponent {
  /// Constructor for [BooleanValueObservationComponent]
  BooleanValueObservationComponent(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class IntegerValueObservationComponent extends FhirInteger
    implements ValueXObservationComponent {
  /// Constructor for [IntegerValueObservationComponent]
  IntegerValueObservationComponent(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class RangeValueObservationComponent extends Range
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory RangeValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class RatioValueObservationComponent extends Ratio
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory RatioValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class SampledDataValueObservationComponent extends SampledData
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory SampledDataValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class TimeValueObservationComponent extends FhirTime
    implements ValueXObservationComponent {
  /// Constructor for [TimeValueObservationComponent]
  TimeValueObservationComponent(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class DateTimeValueObservationComponent extends FhirDateTime
    implements ValueXObservationComponent {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueObservationComponent.fromString(
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
      ) as DateTimeValueObservationComponent;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueObservationComponent.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueObservationComponent;

  /// Factory constructor for super class
  factory DateTimeValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueObservationComponent;
}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
class PeriodValueObservationComponent extends Period
    implements ValueXObservationComponent {
  /// Factory constructor for super class
  factory PeriodValueObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueObservationComponent;
}
