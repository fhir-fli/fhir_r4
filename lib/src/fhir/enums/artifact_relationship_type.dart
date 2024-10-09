import 'package:json_annotation/json_annotation.dart';

/// Artifact Relationship Type
enum ArtifactRelationshipType {
  /// Display: Replaces
  /// Definition: Replaces
  @JsonValue('replaces')
  replaces,

  /// Display: Amends
  /// Definition: Amends
  @JsonValue('amends')
  amends,

  /// Display: Appends
  /// Definition: Appends
  @JsonValue('appends')
  appends,

  /// Display: Transforms
  /// Definition: Transforms
  @JsonValue('transforms')
  transforms,

  /// Display: Replaced with
  /// Definition: Replaced with
  @JsonValue('replaced-with')
  replaced_with,

  /// Display: Amended with
  /// Definition: Amended with
  @JsonValue('amended-with')
  amended_with,

  /// Display: Appended with
  /// Definition: Appended with
  @JsonValue('appended-with')
  appended_with,

  /// Display: Transformed with
  /// Definition: Transformed with
  @JsonValue('transformed-with')
  transformed_with,

  /// Display: Derived from
  /// Definition: Derived from
  @JsonValue('derived-from')
  derived_from,

  /// Display: Transformed into
  /// Definition: Transformed into
  @JsonValue('transformed-into')
  transformed_into,

  /// Display: Composed of
  /// Definition: Composed of
  @JsonValue('composed-of')
  composed_of,

  /// Display: Part of
  /// Definition: Part of
  @JsonValue('part-of')
  part_of,

  /// Display: Supports
  /// Definition: Supports
  @JsonValue('supports')
  supports,

  /// Display: Supported with
  /// Definition: Supported with
  @JsonValue('supported-with')
  supported_with,

  /// Display: Depends on
  /// Definition: Depends on
  @JsonValue('depends-on')
  depends_on,

  /// Display: Similar to
  /// Definition: Similar to
  @JsonValue('similar-to')
  similar_to,

  /// Display: Cites
  /// Definition: Cites
  @JsonValue('cites')
  cites,

  /// Display: Cited by
  /// Definition: Cited by
  @JsonValue('cited-by')
  cited_by,

  /// Display: Retracts
  /// Definition: Retracts
  @JsonValue('retracts')
  retracts,

  /// Display: Retracted by
  /// Definition: Retracted by
  @JsonValue('retracted-by')
  retracted_by,

  /// Display: Comments On
  /// Definition: Comments On
  @JsonValue('comments-on')
  comments_on,

  /// Display: Comment In
  /// Definition: Comment In
  @JsonValue('comment-in')
  comment_in,

  /// Display: Corrects
  /// Definition: Corrects
  @JsonValue('corrects')
  corrects,

  /// Display: Correction In
  /// Definition: Correction In
  @JsonValue('correction-in')
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

  String toJson() => toString();
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

  static ArtifactRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
