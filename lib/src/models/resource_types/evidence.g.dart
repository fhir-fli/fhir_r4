part of 'evidence.dart';

/// Citation Resource or display of suggested citation for this evidence.
sealed class CiteAsXEvidenceEvidence {}

/// Citation Resource or display of suggested citation for this evidence.
class ReferenceCiteAsEvidenceEvidence extends Reference
    implements CiteAsXEvidenceEvidence {
  /// Factory constructor for super class
  factory ReferenceCiteAsEvidenceEvidence.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceCiteAsEvidenceEvidence;
}

/// Citation Resource or display of suggested citation for this evidence.
class MarkdownCiteAsEvidenceEvidence extends FhirMarkdown
    implements CiteAsXEvidenceEvidence {
  /// Constructor for [MarkdownCiteAsEvidenceEvidence]
  MarkdownCiteAsEvidenceEvidence(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownCiteAsEvidenceEvidence.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownCiteAsEvidenceEvidence;
}
