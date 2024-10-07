import 'package:json_annotation/json_annotation.dart';

/// The type of contributor.
enum ContributorType {
  /// Display: Author
  /// Definition: An author of the content of the module.
  @JsonValue('author')
  author,
  /// Display: Editor
  /// Definition: An editor of the content of the module.
  @JsonValue('editor')
  editor,
  /// Display: Reviewer
  /// Definition: A reviewer of the content of the module.
  @JsonValue('reviewer')
  reviewer,
  /// Display: Endorser
  /// Definition: An endorser of the content of the module.
  @JsonValue('endorser')
  endorser,
;

@override
  String toString() {
      switch(this) {
        case author: return 'author';
        case editor: return 'editor';
        case reviewer: return 'reviewer';
        case endorser: return 'endorser';
      }
      }
String toJson() => toString();
  ContributorType fromString(String str) {
    switch(str) {
      case 'author': return ContributorType.author;
      case 'editor': return ContributorType.editor;
      case 'reviewer': return ContributorType.reviewer;
      case 'endorser': return ContributorType.endorser;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContributorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

