part of 'citation.dart';

/// The article or artifact that the Citation Resource is related to.
sealed class TargetXCitationRelatesTo extends DataType {}

/// The article or artifact that the Citation Resource is related to.
class UriTargetCitationRelatesTo extends FhirUri
    implements TargetXCitationRelatesTo {
  /// Constructor for [UriTargetCitationRelatesTo]
  UriTargetCitationRelatesTo(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriTargetCitationRelatesTo;
}

/// The article or artifact that the Citation Resource is related to.
class IdentifierTargetCitationRelatesTo extends Identifier
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory IdentifierTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierTargetCitationRelatesTo;
}

/// The article or artifact that the Citation Resource is related to.
class ReferenceTargetCitationRelatesTo extends Reference
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory ReferenceTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTargetCitationRelatesTo;
}

/// The article or artifact that the Citation Resource is related to.
class AttachmentTargetCitationRelatesTo extends Attachment
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory AttachmentTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentTargetCitationRelatesTo;
}

/// The article or artifact that the cited artifact is related to.
sealed class TargetXCitationRelatesTo1 extends DataType {}

/// The article or artifact that the cited artifact is related to.
class UriTargetCitationRelatesTo1 extends FhirUri
    implements TargetXCitationRelatesTo1 {
  /// Constructor for [UriTargetCitationRelatesTo1]
  UriTargetCitationRelatesTo1(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriTargetCitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriTargetCitationRelatesTo1;
}

/// The article or artifact that the cited artifact is related to.
class IdentifierTargetCitationRelatesTo1 extends Identifier
    implements TargetXCitationRelatesTo1 {
  /// Factory constructor for super class
  factory IdentifierTargetCitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierTargetCitationRelatesTo1;
}

/// The article or artifact that the cited artifact is related to.
class ReferenceTargetCitationRelatesTo1 extends Reference
    implements TargetXCitationRelatesTo1 {
  /// Factory constructor for super class
  factory ReferenceTargetCitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTargetCitationRelatesTo1;
}

/// The article or artifact that the cited artifact is related to.
class AttachmentTargetCitationRelatesTo1 extends Attachment
    implements TargetXCitationRelatesTo1 {
  /// Factory constructor for super class
  factory AttachmentTargetCitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentTargetCitationRelatesTo1;
}
