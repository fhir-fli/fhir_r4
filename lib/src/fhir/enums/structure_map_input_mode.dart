import 'package:json_annotation/json_annotation.dart';

/// Mode for this instance of data.
enum StructureMapInputMode {
  /// Display: Source Instance
  /// Definition: Names an input instance used a source for mapping.
  @JsonValue('source')
  source,
  /// Display: Target Instance
  /// Definition: Names an instance that is being populated.
  @JsonValue('target')
  target,
;

@override
  String toString() {
      switch(this) {
        case source: return 'source';
        case target: return 'target';
      }
      }
String toJson() => toString();
  StructureMapInputMode fromString(String str) {
    switch(str) {
      case 'source': return StructureMapInputMode.source;
      case 'target': return StructureMapInputMode.target;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 StructureMapInputMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

