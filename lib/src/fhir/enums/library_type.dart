import 'package:json_annotation/json_annotation.dart';

/// The type of knowledge asset this library contains.
enum LibraryType {
  /// Display: Logic Library
  /// Definition: The resource is a shareable library of formalized knowledge.
  @JsonValue('logic-library')
  logic_library,
  /// Display: Model Definition
  /// Definition: The resource is a definition of an information model.
  @JsonValue('model-definition')
  model_definition,
  /// Display: Asset Collection
  /// Definition: The resource is a collection of knowledge assets.
  @JsonValue('asset-collection')
  asset_collection,
  /// Display: Module Definition
  /// Definition: The resource defines the dependencies, parameters, and data requirements for a particular module or evaluation context.
  @JsonValue('module-definition')
  module_definition,
;

@override
  String toString() {
      switch(this) {
        case logic_library: return 'logic-library';
        case model_definition: return 'model-definition';
        case asset_collection: return 'asset-collection';
        case module_definition: return 'module-definition';
      }
      }
String toJson() => toString();
  LibraryType fromString(String str) {
    switch(str) {
      case 'logic-library': return LibraryType.logic_library;
      case 'model-definition': return LibraryType.model_definition;
      case 'asset-collection': return LibraryType.asset_collection;
      case 'module-definition': return LibraryType.module_definition;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 LibraryType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

