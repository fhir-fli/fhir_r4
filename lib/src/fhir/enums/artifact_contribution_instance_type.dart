import 'package:json_annotation/json_annotation.dart';

/// Artifact Contribution Instance Type
enum ArtifactContributionInstanceType {
  /// Display: Reviewed
  /// Definition: Reviewed
  @JsonValue('reviewed')
  reviewed,
  /// Display: Approved
  /// Definition: Approved
  @JsonValue('approved')
  approved,
  /// Display: Edited
  /// Definition: Edited
  @JsonValue('edited')
  edited,
;

@override
  String toString() {
      switch(this) {
        case reviewed: return 'reviewed';
        case approved: return 'approved';
        case edited: return 'edited';
      }
      }
String toJson() => toString();
  ArtifactContributionInstanceType fromString(String str) {
    switch(str) {
      case 'reviewed': return ArtifactContributionInstanceType.reviewed;
      case 'approved': return ArtifactContributionInstanceType.approved;
      case 'edited': return ArtifactContributionInstanceType.edited;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ArtifactContributionInstanceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

