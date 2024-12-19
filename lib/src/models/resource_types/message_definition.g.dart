part of 'message_definition.dart';

/// Event code or link to the EventDefinition.
sealed class EventXMessageDefinitionMessageDefinition {}

/// Event code or link to the EventDefinition.
class CodingEventMessageDefinitionMessageDefinition extends Coding
    implements EventXMessageDefinitionMessageDefinition {
  /// Factory constructor for super class
  factory CodingEventMessageDefinitionMessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingEventMessageDefinitionMessageDefinition;
}

/// Event code or link to the EventDefinition.
class UriEventMessageDefinitionMessageDefinition extends FhirUri
    implements EventXMessageDefinitionMessageDefinition {
  /// Constructor for [UriEventMessageDefinitionMessageDefinition]
  UriEventMessageDefinitionMessageDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriEventMessageDefinitionMessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriEventMessageDefinitionMessageDefinition;
}
