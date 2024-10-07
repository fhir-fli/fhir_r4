import 'package:json_annotation/json_annotation.dart';

/// One of the resource types defined as part of this version of FHIR.
enum ResourceType {
  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  @JsonValue('Resource')
  Resource,
  ;

  @override
  String toString() {
    switch (this) {
      case Resource:
        return 'Resource';
    }
  }

  String toJson() => toString();
  ResourceType fromString(String str) {
    switch (str) {
      case 'Resource':
        return ResourceType.Resource;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ResourceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
