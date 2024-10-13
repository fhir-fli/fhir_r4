/// Artifact Contribution Instance Type
enum ArtifactContributionInstanceType {
  /// Display: Reviewed
  /// Definition: Reviewed
  reviewed,

  /// Display: Approved
  /// Definition: Approved
  approved,

  /// Display: Edited
  /// Definition: Edited
  edited,
  ;

  @override
  String toString() {
    switch (this) {
      case reviewed:
        return 'reviewed';
      case approved:
        return 'approved';
      case edited:
        return 'edited';
    }
  }

  /// Returns a [String] from a [ArtifactContributionInstanceType] enum.
  String toJson() => toString();

  /// Returns a [ArtifactContributionInstanceType] from a [String] enum.
  static ArtifactContributionInstanceType fromString(String str) {
    switch (str) {
      case 'reviewed':
        return ArtifactContributionInstanceType.reviewed;
      case 'approved':
        return ArtifactContributionInstanceType.approved;
      case 'edited':
        return ArtifactContributionInstanceType.edited;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ArtifactContributionInstanceType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ArtifactContributionInstanceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
