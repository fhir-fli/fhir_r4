/// How the system supports versioning for a resource.
enum ResourceVersionPolicy {
  /// Display: No VersionId Support
  /// Definition: VersionId meta-property is not supported (server) or used (client).
  no_version,

  /// Display: Versioned
  /// Definition: VersionId meta-property is supported (server) or used (client).
  versioned,

  /// Display: VersionId tracked fully
  /// Definition: VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client).
  versioned_update,
  ;

  @override
  String toString() {
    switch (this) {
      case no_version:
        return 'no-version';
      case versioned:
        return 'versioned';
      case versioned_update:
        return 'versioned-update';
    }
  }

  /// Returns a [String] from a [ResourceVersionPolicy] enum.
  String toJson() => toString();

  /// Returns a [ResourceVersionPolicy] from a [String] enum.
  static ResourceVersionPolicy fromString(String str) {
    switch (str) {
      case 'no-version':
        return ResourceVersionPolicy.no_version;
      case 'versioned':
        return ResourceVersionPolicy.versioned;
      case 'versioned-update':
        return ResourceVersionPolicy.versioned_update;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ResourceVersionPolicy] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ResourceVersionPolicy fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
