part of 'citation.dart';

/// The article or artifact that the Citation Resource is related to.
sealed class TargetXCitationRelatesTo {}

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
sealed class TargetXCitationRelatesTo {}

/// The article or artifact that the cited artifact is related to.
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

/// The article or artifact that the cited artifact is related to.
class IdentifierTargetCitationRelatesTo extends Identifier
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory IdentifierTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierTargetCitationRelatesTo;
}

/// The article or artifact that the cited artifact is related to.
class ReferenceTargetCitationRelatesTo extends Reference
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory ReferenceTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTargetCitationRelatesTo;
}

/// The article or artifact that the cited artifact is related to.
class AttachmentTargetCitationRelatesTo extends Attachment
    implements TargetXCitationRelatesTo {
  /// Factory constructor for super class
  factory AttachmentTargetCitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentTargetCitationRelatesTo;
}
