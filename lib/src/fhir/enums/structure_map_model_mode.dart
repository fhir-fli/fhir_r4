import 'package:json_annotation/json_annotation.dart';

/// How the referenced structure is used in this mapping.
enum StructureMapModelMode {
  /// Display: Source Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a source of data.
  @JsonValue('source')
  source,

  /// Display: Queried Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask for that is used a source of data.
  @JsonValue('queried')
  queried,

  /// Display: Target Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a target of data.
  @JsonValue('target')
  target,

  /// Display: Produced Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask to create that is used a target of data.
  @JsonValue('produced')
  produced,
  ;

  @override
  String toString() {
    switch (this) {
      case source:
        return 'source';
      case queried:
        return 'queried';
      case target:
        return 'target';
      case produced:
        return 'produced';
    }
  }

  String toJson() => toString();
  static StructureMapModelMode fromString(String str) {
    switch (str) {
      case 'source':
        return StructureMapModelMode.source;
      case 'queried':
        return StructureMapModelMode.queried;
      case 'target':
        return StructureMapModelMode.target;
      case 'produced':
        return StructureMapModelMode.produced;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static StructureMapModelMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
