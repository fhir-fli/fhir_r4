import 'package:json_annotation/json_annotation.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
enum LocationMode {
  /// Display: Instance
  /// Definition: The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A).
  @JsonValue('instance')
  instance,

  /// Display: Kind
  /// Definition: The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could be constrained within a specific boundary (such as organization, or parent location, address etc.).
  @JsonValue('kind')
  kind,
  ;

  @override
  String toString() {
    switch (this) {
      case instance:
        return 'instance';
      case kind:
        return 'kind';
    }
  }

  String toJson() => toString();
  static LocationMode fromString(String str) {
    switch (str) {
      case 'instance':
        return LocationMode.instance;
      case 'kind':
        return LocationMode.kind;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static LocationMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
