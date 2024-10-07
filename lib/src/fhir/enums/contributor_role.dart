import 'package:json_annotation/json_annotation.dart';

/// Used to code the format of the display string.
enum ContributorRole {
  /// Display: Publisher
  /// Definition: Entity that makes the content available for public use
  @JsonValue('publisher')
  publisher,
  /// Display: Author/Creator
  /// Definition: An entity primarily responsible for making the resource, often called author or creator
  @JsonValue('author')
  author,
  /// Display: Reviewer
  /// Definition: Entity that examines the content, formally or informally, and suggests revisions or comments
  @JsonValue('reviewer')
  reviewer,
  /// Display: Endorser
  /// Definition: Entity that supports, approves, or advocates for the content
  @JsonValue('endorser')
  endorser,
  /// Display: Editor
  /// Definition: Entity that revises or has authority to control the content
  @JsonValue('editor')
  editor,
  /// Display: Informant
  /// Definition: Entity that supplies information
  @JsonValue('informant')
  informant,
  /// Display: Funder
  /// Definition: Entity that supplies financial support
  @JsonValue('funder')
  funder,
;

@override
  String toString() {
      switch(this) {
        case publisher: return 'publisher';
        case author: return 'author';
        case reviewer: return 'reviewer';
        case endorser: return 'endorser';
        case editor: return 'editor';
        case informant: return 'informant';
        case funder: return 'funder';
      }
      }
String toJson() => toString();
  ContributorRole fromString(String str) {
    switch(str) {
      case 'publisher': return ContributorRole.publisher;
      case 'author': return ContributorRole.author;
      case 'reviewer': return ContributorRole.reviewer;
      case 'endorser': return ContributorRole.endorser;
      case 'editor': return ContributorRole.editor;
      case 'informant': return ContributorRole.informant;
      case 'funder': return ContributorRole.funder;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContributorRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

