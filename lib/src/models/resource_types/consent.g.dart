part of 'consent.dart';

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
sealed class SourceXConsentConsent extends DataType {}

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
class AttachmentSourceConsentConsent extends Attachment
    implements SourceXConsentConsent {
  /// Factory constructor for super class
  factory AttachmentSourceConsentConsent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentSourceConsentConsent;
}

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
class ReferenceSourceConsentConsent extends Reference
    implements SourceXConsentConsent {
  /// Factory constructor for super class
  factory ReferenceSourceConsentConsent.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSourceConsentConsent;
}
