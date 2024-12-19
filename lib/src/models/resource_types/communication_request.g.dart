part of 'communication_request.dart';

/// The time when this communication is to occur.
sealed class OccurrenceXCommunicationRequestCommunicationRequest {}

/// The time when this communication is to occur.
class DateTimeOccurrenceCommunicationRequestCommunicationRequest
    extends FhirDateTime
    implements OccurrenceXCommunicationRequestCommunicationRequest {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceCommunicationRequestCommunicationRequest.fromString(
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
      ) as DateTimeOccurrenceCommunicationRequestCommunicationRequest;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceCommunicationRequestCommunicationRequest.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceCommunicationRequestCommunicationRequest;

  /// Factory constructor for super class
  factory DateTimeOccurrenceCommunicationRequestCommunicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceCommunicationRequestCommunicationRequest;
}

/// The time when this communication is to occur.
class PeriodOccurrenceCommunicationRequestCommunicationRequest extends Period
    implements OccurrenceXCommunicationRequestCommunicationRequest {
  /// Factory constructor for super class
  factory PeriodOccurrenceCommunicationRequestCommunicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodOccurrenceCommunicationRequestCommunicationRequest;
}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
sealed class ContentXCommunicationRequestPayload {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
class StringContentCommunicationRequestPayload extends FhirString
    implements ContentXCommunicationRequestPayload {
  /// Constructor for [StringContentCommunicationRequestPayload]
  StringContentCommunicationRequestPayload(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringContentCommunicationRequestPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringContentCommunicationRequestPayload;
}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
class AttachmentContentCommunicationRequestPayload extends Attachment
    implements ContentXCommunicationRequestPayload {
  /// Factory constructor for super class
  factory AttachmentContentCommunicationRequestPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentContentCommunicationRequestPayload;
}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
class ReferenceContentCommunicationRequestPayload extends Reference
    implements ContentXCommunicationRequestPayload {
  /// Factory constructor for super class
  factory ReferenceContentCommunicationRequestPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceContentCommunicationRequestPayload;
}
