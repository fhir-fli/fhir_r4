import 'package:json_annotation/json_annotation.dart';

/// The lifecycle status of an artifact.
enum PublicationStatus {
  /// Display: Draft
  /// Definition: This resource is still under development and is not yet considered to be ready for normal use.
  @JsonValue('draft')
  draft,

  /// Display: Active
  /// Definition: This resource is ready for normal use.
  @JsonValue('active')
  active,

  /// Display: Retired
  /// Definition: This resource has been withdrawn or superseded and should no longer be used.
  @JsonValue('retired')
  retired,

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this resource.  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case draft:
        return 'draft';
      case active:
        return 'active';
      case retired:
        return 'retired';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  PublicationStatus fromString(String str) {
    switch (str) {
      case 'draft':
        return PublicationStatus.draft;
      case 'active':
        return PublicationStatus.active;
      case 'retired':
        return PublicationStatus.retired;
      case 'unknown':
        return PublicationStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  PublicationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
