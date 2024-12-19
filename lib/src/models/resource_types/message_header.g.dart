part of 'message_header.dart';

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
sealed class EventXMessageHeaderMessageHeader {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
class CodingEventMessageHeaderMessageHeader extends Coding
    implements EventXMessageHeaderMessageHeader {
  /// Factory constructor for super class
  factory CodingEventMessageHeaderMessageHeader.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingEventMessageHeaderMessageHeader;
}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
class UriEventMessageHeaderMessageHeader extends FhirUri
    implements EventXMessageHeaderMessageHeader {
  /// Constructor for [UriEventMessageHeaderMessageHeader]
  UriEventMessageHeaderMessageHeader(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriEventMessageHeaderMessageHeader.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriEventMessageHeaderMessageHeader;
}
