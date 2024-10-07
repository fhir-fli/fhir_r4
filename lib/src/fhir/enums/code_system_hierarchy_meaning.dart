import 'package:json_annotation/json_annotation.dart';

/// The meaning of the hierarchy of concepts in a code system.
enum CodeSystemHierarchyMeaning {
  /// Display: Grouped By
  /// Definition: No particular relationship between the concepts can be assumed, except what can be determined by inspection of the definitions of the elements (possible reasons to use this: importing from a source where this is not defined, or where various parts of the hierarchy have different meanings).
  @JsonValue('grouped-by')
  grouped_by,
  /// Display: Is-A
  /// Definition: A hierarchy where the child concepts have an IS-A relationship with the parents - that is, all the properties of the parent are also true for its child concepts. Not that is-a is a property of the concepts, so additional subsumption relationships may be defined using properties or the [subsumes](extension-codesystem-subsumes.html) extension.
  @JsonValue('is-a')
  is_a,
  /// Display: Part Of
  /// Definition: Child elements list the individual parts of a composite whole (e.g. body site).
  @JsonValue('part-of')
  part_of,
  /// Display: Classified With
  /// Definition: Child concepts in the hierarchy may have only one parent, and there is a presumption that the code system is a "closed world" meaning all things must be in the hierarchy. This results in concepts such as "not otherwise classified.".
  @JsonValue('classified-with')
  classified_with,
;

@override
  String toString() {
      switch(this) {
        case grouped_by: return 'grouped-by';
        case is_a: return 'is-a';
        case part_of: return 'part-of';
        case classified_with: return 'classified-with';
      }
      }
String toJson() => toString();
  CodeSystemHierarchyMeaning fromString(String str) {
    switch(str) {
      case 'grouped-by': return CodeSystemHierarchyMeaning.grouped_by;
      case 'is-a': return CodeSystemHierarchyMeaning.is_a;
      case 'part-of': return CodeSystemHierarchyMeaning.part_of;
      case 'classified-with': return CodeSystemHierarchyMeaning.classified_with;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CodeSystemHierarchyMeaning fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

