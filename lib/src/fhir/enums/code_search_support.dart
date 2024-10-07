import 'package:json_annotation/json_annotation.dart';

/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
enum CodeSearchSupport {
  /// Display: Explicit Codes
  /// Definition: The search for code on ValueSet only includes codes explicitly detailed on includes or expansions.
  @JsonValue('explicit')
  explicit,
  /// Display: Implicit Codes
  /// Definition: The search for code on ValueSet only includes all codes based on the expansion of the value set.
  @JsonValue('all')
  all,
;

@override
  String toString() {
      switch(this) {
        case explicit: return 'explicit';
        case all: return 'all';
      }
      }
String toJson() => toString();
  CodeSearchSupport fromString(String str) {
    switch(str) {
      case 'explicit': return CodeSearchSupport.explicit;
      case 'all': return CodeSearchSupport.all;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CodeSearchSupport fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

