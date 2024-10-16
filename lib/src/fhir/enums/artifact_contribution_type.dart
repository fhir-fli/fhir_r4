import 'package:fhir_r4/fhir_r4.dart';

/// Citation contribution.
enum ArtifactContributionType {
  /// Display: Conceptualization
  /// Definition: Conceptualization (see https://jats4r.org/credit-taxonomy).
  conceptualization('conceptualization'),

  /// Display: Data curation
  /// Definition: Data curation (see https://jats4r.org/credit-taxonomy).
  data_curation('data-curation'),

  /// Display: Formal analysis
  /// Definition: Formal analysis (see https://jats4r.org/credit-taxonomy).
  formal_analysis('formal-analysis'),

  /// Display: Funding acquisition
  /// Definition: Funding acquisition (see https://jats4r.org/credit-taxonomy).
  funding_acquisition('funding-acquisition'),

  /// Display: Investigation
  /// Definition: Investigation (see https://jats4r.org/credit-taxonomy).
  investigation('investigation'),

  /// Display: Methodology
  /// Definition: Methodology (see https://jats4r.org/credit-taxonomy).
  methodology('methodology'),

  /// Display: Project administration
  /// Definition: Project administration (see https://jats4r.org/credit-taxonomy).
  project_administration('project-administration'),

  /// Display: Resources
  /// Definition: Resources (see https://jats4r.org/credit-taxonomy).
  resources('resources'),

  /// Display: Software
  /// Definition: Software (see https://jats4r.org/credit-taxonomy).
  software('software'),

  /// Display: Supervision
  /// Definition: Supervision (see https://jats4r.org/credit-taxonomy).
  supervision('supervision'),

  /// Display: Validation
  /// Definition: Validation (see https://jats4r.org/credit-taxonomy).
  validation('validation'),

  /// Display: Visualization
  /// Definition: Visualization (see https://jats4r.org/credit-taxonomy).
  visualization('visualization'),

  /// Display: Writing - original draft
  /// Definition: Writing - original draft (see https://jats4r.org/credit-taxonomy).
  writing_original_draft('writing-original-draft'),

  /// Display: Writing - review & editing
  /// Definition: Writing - review & editing (see https://jats4r.org/credit-taxonomy).
  writing_review_editing('writing-review-editing'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ArtifactContributionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ArtifactContributionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionType.elementOnly.withElement(element);
    }
    return ArtifactContributionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ArtifactContributionType withElement(Element? newElement) {
    return ArtifactContributionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
