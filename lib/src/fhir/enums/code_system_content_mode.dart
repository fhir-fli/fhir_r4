import 'package:json_annotation/json_annotation.dart';

/// The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.
enum CodeSystemContentMode {
  /// Display: Not Present
  /// Definition: None of the concepts defined by the code system are included in the code system resource.
  @JsonValue('not-present')
  not_present,
  /// Display: Example
  /// Definition: A few representative concepts are included in the code system resource. There is no useful intent in the subset choice and there's no process to make it workable: it's not intended to be workable.
  @JsonValue('example')
  example,
  /// Display: Fragment
  /// Definition: A subset of the code system concepts are included in the code system resource. This is a curated subset released for a specific purpose under the governance of the code system steward, and that the intent, bounds and consequences of the fragmentation are clearly defined in the fragment or the code system documentation. Fragments are also known as partitions.
  @JsonValue('fragment')
  fragment,
  /// Display: Complete
  /// Definition: All the concepts defined by the code system are included in the code system resource.
  @JsonValue('complete')
  complete,
  /// Display: Supplement
  /// Definition: The resource doesn't define any new concepts; it just provides additional designations and properties to another code system.
  @JsonValue('supplement')
  supplement,
;

@override
  String toString() {
      switch(this) {
        case not_present: return 'not-present';
        case example: return 'example';
        case fragment: return 'fragment';
        case complete: return 'complete';
        case supplement: return 'supplement';
      }
      }
String toJson() => toString();
  CodeSystemContentMode fromString(String str) {
    switch(str) {
      case 'not-present': return CodeSystemContentMode.not_present;
      case 'example': return CodeSystemContentMode.example;
      case 'fragment': return CodeSystemContentMode.fragment;
      case 'complete': return CodeSystemContentMode.complete;
      case 'supplement': return CodeSystemContentMode.supplement;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CodeSystemContentMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

