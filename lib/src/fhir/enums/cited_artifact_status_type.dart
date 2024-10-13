/// Cited Artifact Status Type
enum CitedArtifactStatusType {
  /// Display: Created
  /// Definition: The content was originally constructed or composed.
  created,

  /// Display: Submitted
  /// Definition: The content was sent to the publisher for consideration of publication.
  submitted,

  /// Display: Withdrawn
  /// Definition: The content that was not published has been removed from consideration for publishing by the submitter.
  withdrawn,

  /// Display: Pre review
  /// Definition: The content is awaiting assignment and delivery to reviewer(s).
  pre_review,

  /// Display: Under review
  /// Definition: The content is in a state of being reviewed.
  under_review,

  /// Display: Post review pre published
  /// Definition: The content is in a state between the review(s) being completed and being published.
  post_review_pre_published,

  /// Display: Rejected
  /// Definition: The content that was not published has been removed from consideration for publishing by a publisher or editor.
  rejected,

  /// Display: Published early form
  /// Definition: The content is published but future changes to the published version are expected.
  published_early_form,

  /// Display: Published final form
  /// Definition: The content is published and further changes to the content are not expected.
  published_final_form,

  /// Display: Accepted
  /// Definition: The content that was not published yet has been approved for publication by the publisher and/or editor.
  accepted,

  /// Display: Archived
  /// Definition: The content is retired or considered no longer current but still available as part of the public record.
  archived,

  /// Display: Retracted
  /// Definition: The content that was published is removed from publication and should no longer be considered part of the public record.
  retracted,

  /// Display: Draft
  /// Definition: The content is considered unfinished or incomplete and not representative of the current state desired by the content creator.
  draft,

  /// Display: Active
  /// Definition: The content is considered complete for its current state by the content creator.
  active,

  /// Display: Approved
  /// Definition: The content has been approved for a state transition, with the focus of approval described in the text associated with this coding.
  approved,
  ;

  @override
  String toString() {
    switch (this) {
      case created:
        return 'created';
      case submitted:
        return 'submitted';
      case withdrawn:
        return 'withdrawn';
      case pre_review:
        return 'pre-review';
      case under_review:
        return 'under-review';
      case post_review_pre_published:
        return 'post-review-pre-published';
      case rejected:
        return 'rejected';
      case published_early_form:
        return 'published-early-form';
      case published_final_form:
        return 'published-final-form';
      case accepted:
        return 'accepted';
      case archived:
        return 'archived';
      case retracted:
        return 'retracted';
      case draft:
        return 'draft';
      case active:
        return 'active';
      case approved:
        return 'approved';
    }
  }

  /// Returns a [String] from a [CitedArtifactStatusType] enum.
  String toJson() => toString();

  /// Returns a [CitedArtifactStatusType] from a [String] enum.
  static CitedArtifactStatusType fromString(String str) {
    switch (str) {
      case 'created':
        return CitedArtifactStatusType.created;
      case 'submitted':
        return CitedArtifactStatusType.submitted;
      case 'withdrawn':
        return CitedArtifactStatusType.withdrawn;
      case 'pre-review':
        return CitedArtifactStatusType.pre_review;
      case 'under-review':
        return CitedArtifactStatusType.under_review;
      case 'post-review-pre-published':
        return CitedArtifactStatusType.post_review_pre_published;
      case 'rejected':
        return CitedArtifactStatusType.rejected;
      case 'published-early-form':
        return CitedArtifactStatusType.published_early_form;
      case 'published-final-form':
        return CitedArtifactStatusType.published_final_form;
      case 'accepted':
        return CitedArtifactStatusType.accepted;
      case 'archived':
        return CitedArtifactStatusType.archived;
      case 'retracted':
        return CitedArtifactStatusType.retracted;
      case 'draft':
        return CitedArtifactStatusType.draft;
      case 'active':
        return CitedArtifactStatusType.active;
      case 'approved':
        return CitedArtifactStatusType.approved;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CitedArtifactStatusType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CitedArtifactStatusType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
