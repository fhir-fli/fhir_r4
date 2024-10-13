/// Artifact Relationship Type
enum ArtifactRelationshipType {
  /// Display: Replaces
  /// Definition: Replaces
  replaces,

  /// Display: Amends
  /// Definition: Amends
  amends,

  /// Display: Appends
  /// Definition: Appends
  appends,

  /// Display: Transforms
  /// Definition: Transforms
  transforms,

  /// Display: Replaced with
  /// Definition: Replaced with
  replaced_with,

  /// Display: Amended with
  /// Definition: Amended with
  amended_with,

  /// Display: Appended with
  /// Definition: Appended with
  appended_with,

  /// Display: Transformed with
  /// Definition: Transformed with
  transformed_with,

  /// Display: Derived from
  /// Definition: Derived from
  derived_from,

  /// Display: Transformed into
  /// Definition: Transformed into
  transformed_into,

  /// Display: Composed of
  /// Definition: Composed of
  composed_of,

  /// Display: Part of
  /// Definition: Part of
  part_of,

  /// Display: Supports
  /// Definition: Supports
  supports,

  /// Display: Supported with
  /// Definition: Supported with
  supported_with,

  /// Display: Depends on
  /// Definition: Depends on
  depends_on,

  /// Display: Similar to
  /// Definition: Similar to
  similar_to,

  /// Display: Cites
  /// Definition: Cites
  cites,

  /// Display: Cited by
  /// Definition: Cited by
  cited_by,

  /// Display: Retracts
  /// Definition: Retracts
  retracts,

  /// Display: Retracted by
  /// Definition: Retracted by
  retracted_by,

  /// Display: Comments On
  /// Definition: Comments On
  comments_on,

  /// Display: Comment In
  /// Definition: Comment In
  comment_in,

  /// Display: Corrects
  /// Definition: Corrects
  corrects,

  /// Display: Correction In
  /// Definition: Correction In
  correction_in,
  ;

  @override
  String toString() {
    switch (this) {
      case replaces:
        return 'replaces';
      case amends:
        return 'amends';
      case appends:
        return 'appends';
      case transforms:
        return 'transforms';
      case replaced_with:
        return 'replaced-with';
      case amended_with:
        return 'amended-with';
      case appended_with:
        return 'appended-with';
      case transformed_with:
        return 'transformed-with';
      case derived_from:
        return 'derived-from';
      case transformed_into:
        return 'transformed-into';
      case composed_of:
        return 'composed-of';
      case part_of:
        return 'part-of';
      case supports:
        return 'supports';
      case supported_with:
        return 'supported-with';
      case depends_on:
        return 'depends-on';
      case similar_to:
        return 'similar-to';
      case cites:
        return 'cites';
      case cited_by:
        return 'cited-by';
      case retracts:
        return 'retracts';
      case retracted_by:
        return 'retracted-by';
      case comments_on:
        return 'comments-on';
      case comment_in:
        return 'comment-in';
      case corrects:
        return 'corrects';
      case correction_in:
        return 'correction-in';
    }
  }

  /// Returns a [String] from a [ArtifactRelationshipType] enum.
  String toJson() => toString();

  /// Returns a [ArtifactRelationshipType] from a [String] enum.
  static ArtifactRelationshipType fromString(String str) {
    switch (str) {
      case 'replaces':
        return ArtifactRelationshipType.replaces;
      case 'amends':
        return ArtifactRelationshipType.amends;
      case 'appends':
        return ArtifactRelationshipType.appends;
      case 'transforms':
        return ArtifactRelationshipType.transforms;
      case 'replaced-with':
        return ArtifactRelationshipType.replaced_with;
      case 'amended-with':
        return ArtifactRelationshipType.amended_with;
      case 'appended-with':
        return ArtifactRelationshipType.appended_with;
      case 'transformed-with':
        return ArtifactRelationshipType.transformed_with;
      case 'derived-from':
        return ArtifactRelationshipType.derived_from;
      case 'transformed-into':
        return ArtifactRelationshipType.transformed_into;
      case 'composed-of':
        return ArtifactRelationshipType.composed_of;
      case 'part-of':
        return ArtifactRelationshipType.part_of;
      case 'supports':
        return ArtifactRelationshipType.supports;
      case 'supported-with':
        return ArtifactRelationshipType.supported_with;
      case 'depends-on':
        return ArtifactRelationshipType.depends_on;
      case 'similar-to':
        return ArtifactRelationshipType.similar_to;
      case 'cites':
        return ArtifactRelationshipType.cites;
      case 'cited-by':
        return ArtifactRelationshipType.cited_by;
      case 'retracts':
        return ArtifactRelationshipType.retracts;
      case 'retracted-by':
        return ArtifactRelationshipType.retracted_by;
      case 'comments-on':
        return ArtifactRelationshipType.comments_on;
      case 'comment-in':
        return ArtifactRelationshipType.comment_in;
      case 'corrects':
        return ArtifactRelationshipType.corrects;
      case 'correction-in':
        return ArtifactRelationshipType.correction_in;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ArtifactRelationshipType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ArtifactRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
