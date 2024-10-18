// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Cited Artifact Status Type
enum CitedArtifactStatusType {
  /// Display: Created
  /// Definition: The content was originally constructed or composed.
  created('created'),

  /// Display: Submitted
  /// Definition: The content was sent to the publisher for consideration of publication.
  submitted('submitted'),

  /// Display: Withdrawn
  /// Definition: The content that was not published has been removed from consideration for publishing by the submitter.
  withdrawn('withdrawn'),

  /// Display: Pre review
  /// Definition: The content is awaiting assignment and delivery to reviewer(s).
  pre_review('pre-review'),

  /// Display: Under review
  /// Definition: The content is in a state of being reviewed.
  under_review('under-review'),

  /// Display: Post review pre published
  /// Definition: The content is in a state between the review(s) being completed and being published.
  post_review_pre_published('post-review-pre-published'),

  /// Display: Rejected
  /// Definition: The content that was not published has been removed from consideration for publishing by a publisher or editor.
  rejected('rejected'),

  /// Display: Published early form
  /// Definition: The content is published but future changes to the published version are expected.
  published_early_form('published-early-form'),

  /// Display: Published final form
  /// Definition: The content is published and further changes to the content are not expected.
  published_final_form('published-final-form'),

  /// Display: Accepted
  /// Definition: The content that was not published yet has been approved for publication by the publisher and/or editor.
  accepted('accepted'),

  /// Display: Archived
  /// Definition: The content is retired or considered no longer current but still available as part of the public record.
  archived('archived'),

  /// Display: Retracted
  /// Definition: The content that was published is removed from publication and should no longer be considered part of the public record.
  retracted('retracted'),

  /// Display: Draft
  /// Definition: The content is considered unfinished or incomplete and not representative of the current state desired by the content creator.
  draft('draft'),

  /// Display: Active
  /// Definition: The content is considered complete for its current state by the content creator.
  active('active'),

  /// Display: Approved
  /// Definition: The content has been approved for a state transition, with the focus of approval described in the text associated with this coding.
  approved('approved'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitedArtifactStatusType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitedArtifactStatusType] instances.
  static CitedArtifactStatusType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactStatusType.elementOnly.withElement(
        element,
      );
    }
    return CitedArtifactStatusType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitedArtifactStatusType withElement(Element? newElement) {
    return CitedArtifactStatusType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
