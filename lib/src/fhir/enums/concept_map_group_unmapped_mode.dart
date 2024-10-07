import 'package:json_annotation/json_annotation.dart';

/// Defines which action to take if there is no match in the group.
enum ConceptMapGroupUnmappedMode {
  /// Display: Provided Code
  /// Definition: Use the code as provided in the $translate request.
  @JsonValue('provided')
  provided,

  /// Display: Fixed Code
  /// Definition: Use the code explicitly provided in the group.unmapped.
  @JsonValue('fixed')
  fixed,

  /// Display: Other Map
  /// Definition: Use the map identified by the canonical URL in the url element.
  @JsonValue('other-map')
  other_map,
  ;

  @override
  String toString() {
    switch (this) {
      case provided:
        return 'provided';
      case fixed:
        return 'fixed';
      case other_map:
        return 'other-map';
    }
  }

  String toJson() => toString();
  ConceptMapGroupUnmappedMode fromString(String str) {
    switch (str) {
      case 'provided':
        return ConceptMapGroupUnmappedMode.provided;
      case 'fixed':
        return ConceptMapGroupUnmappedMode.fixed;
      case 'other-map':
        return ConceptMapGroupUnmappedMode.other_map;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConceptMapGroupUnmappedMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
