part of 'trigger_definition.dart';

/// The timing of the event (if this is a periodic trigger).
sealed class TimingXTriggerDefinitionTriggerDefinition {}

/// The timing of the event (if this is a periodic trigger).
class TimingTimingTriggerDefinitionTriggerDefinition extends Timing
    implements TimingXTriggerDefinitionTriggerDefinition {
  /// Factory constructor for super class
  factory TimingTimingTriggerDefinitionTriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingTimingTriggerDefinitionTriggerDefinition;
}

/// The timing of the event (if this is a periodic trigger).
class ReferenceTimingTriggerDefinitionTriggerDefinition extends Reference
    implements TimingXTriggerDefinitionTriggerDefinition {
  /// Factory constructor for super class
  factory ReferenceTimingTriggerDefinitionTriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceTimingTriggerDefinitionTriggerDefinition;
}

/// The timing of the event (if this is a periodic trigger).
class DateTimingTriggerDefinitionTriggerDefinition extends FhirDate
    implements TimingXTriggerDefinitionTriggerDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateTimingTriggerDefinitionTriggerDefinition.fromString(
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
      ) as DateTimingTriggerDefinitionTriggerDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateTimingTriggerDefinitionTriggerDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateTimingTriggerDefinitionTriggerDefinition;

  /// Factory constructor for super class
  factory DateTimingTriggerDefinitionTriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateTimingTriggerDefinitionTriggerDefinition;
}

/// The timing of the event (if this is a periodic trigger).
class DateTimeTimingTriggerDefinitionTriggerDefinition extends FhirDateTime
    implements TimingXTriggerDefinitionTriggerDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimingTriggerDefinitionTriggerDefinition.fromString(
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
      ) as DateTimeTimingTriggerDefinitionTriggerDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimingTriggerDefinitionTriggerDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimingTriggerDefinitionTriggerDefinition;

  /// Factory constructor for super class
  factory DateTimeTimingTriggerDefinitionTriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeTimingTriggerDefinitionTriggerDefinition;
}
