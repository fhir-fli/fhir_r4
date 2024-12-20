part of 'communication.dart';

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
sealed class ContentXCommunicationPayload extends DataType {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
class StringContentCommunicationPayload extends FhirString
    implements ContentXCommunicationPayload {
  /// Constructor for [StringContentCommunicationPayload]
  StringContentCommunicationPayload(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringContentCommunicationPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringContentCommunicationPayload;
}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
class AttachmentContentCommunicationPayload extends Attachment
    implements ContentXCommunicationPayload {
  /// Factory constructor for super class
  factory AttachmentContentCommunicationPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentContentCommunicationPayload;
}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
class ReferenceContentCommunicationPayload extends Reference
    implements ContentXCommunicationPayload {
  /// Factory constructor for super class
  factory ReferenceContentCommunicationPayload.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceContentCommunicationPayload;
}
