import 'package:json_annotation/json_annotation.dart';

/// Citation contribution.
enum ArtifactContributionType {
  /// Display: Conceptualization
  /// Definition: Conceptualization (see https://jats4r.org/credit-taxonomy).
  @JsonValue('conceptualization')
  conceptualization,

  /// Display: Data curation
  /// Definition: Data curation (see https://jats4r.org/credit-taxonomy).
  @JsonValue('data-curation')
  data_curation,

  /// Display: Formal analysis
  /// Definition: Formal analysis (see https://jats4r.org/credit-taxonomy).
  @JsonValue('formal-analysis')
  formal_analysis,

  /// Display: Funding acquisition
  /// Definition: Funding acquisition (see https://jats4r.org/credit-taxonomy).
  @JsonValue('funding-acquisition')
  funding_acquisition,

  /// Display: Investigation
  /// Definition: Investigation (see https://jats4r.org/credit-taxonomy).
  @JsonValue('investigation')
  investigation,

  /// Display: Methodology
  /// Definition: Methodology (see https://jats4r.org/credit-taxonomy).
  @JsonValue('methodology')
  methodology,

  /// Display: Project administration
  /// Definition: Project administration (see https://jats4r.org/credit-taxonomy).
  @JsonValue('project-administration')
  project_administration,

  /// Display: Resources
  /// Definition: Resources (see https://jats4r.org/credit-taxonomy).
  @JsonValue('resources')
  resources,

  /// Display: Software
  /// Definition: Software (see https://jats4r.org/credit-taxonomy).
  @JsonValue('software')
  software,

  /// Display: Supervision
  /// Definition: Supervision (see https://jats4r.org/credit-taxonomy).
  @JsonValue('supervision')
  supervision,

  /// Display: Validation
  /// Definition: Validation (see https://jats4r.org/credit-taxonomy).
  @JsonValue('validation')
  validation,

  /// Display: Visualization
  /// Definition: Visualization (see https://jats4r.org/credit-taxonomy).
  @JsonValue('visualization')
  visualization,

  /// Display: Writing - original draft
  /// Definition: Writing - original draft (see https://jats4r.org/credit-taxonomy).
  @JsonValue('writing-original-draft')
  writing_original_draft,

  /// Display: Writing - review & editing
  /// Definition: Writing - review & editing (see https://jats4r.org/credit-taxonomy).
  @JsonValue('writing-review-editing')
  writing_review_editing,
  ;

  @override
  String toString() {
    switch (this) {
      case conceptualization:
        return 'conceptualization';
      case data_curation:
        return 'data-curation';
      case formal_analysis:
        return 'formal-analysis';
      case funding_acquisition:
        return 'funding-acquisition';
      case investigation:
        return 'investigation';
      case methodology:
        return 'methodology';
      case project_administration:
        return 'project-administration';
      case resources:
        return 'resources';
      case software:
        return 'software';
      case supervision:
        return 'supervision';
      case validation:
        return 'validation';
      case visualization:
        return 'visualization';
      case writing_original_draft:
        return 'writing-original-draft';
      case writing_review_editing:
        return 'writing-review-editing';
    }
  }

  String toJson() => toString();
  static ArtifactContributionType fromString(String str) {
    switch (str) {
      case 'conceptualization':
        return ArtifactContributionType.conceptualization;
      case 'data-curation':
        return ArtifactContributionType.data_curation;
      case 'formal-analysis':
        return ArtifactContributionType.formal_analysis;
      case 'funding-acquisition':
        return ArtifactContributionType.funding_acquisition;
      case 'investigation':
        return ArtifactContributionType.investigation;
      case 'methodology':
        return ArtifactContributionType.methodology;
      case 'project-administration':
        return ArtifactContributionType.project_administration;
      case 'resources':
        return ArtifactContributionType.resources;
      case 'software':
        return ArtifactContributionType.software;
      case 'supervision':
        return ArtifactContributionType.supervision;
      case 'validation':
        return ArtifactContributionType.validation;
      case 'visualization':
        return ArtifactContributionType.visualization;
      case 'writing-original-draft':
        return ArtifactContributionType.writing_original_draft;
      case 'writing-review-editing':
        return ArtifactContributionType.writing_review_editing;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ArtifactContributionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
