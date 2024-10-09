/// Used to code the format of the display string.
enum ContributorRole {
  /// Display: Publisher
  /// Definition: Entity that makes the content available for public use
  publisher,

  /// Display: Author/Creator
  /// Definition: An entity primarily responsible for making the resource, often called author or creator
  author,

  /// Display: Reviewer
  /// Definition: Entity that examines the content, formally or informally, and suggests revisions or comments
  reviewer,

  /// Display: Endorser
  /// Definition: Entity that supports, approves, or advocates for the content
  endorser,

  /// Display: Editor
  /// Definition: Entity that revises or has authority to control the content
  editor,

  /// Display: Informant
  /// Definition: Entity that supplies information
  informant,

  /// Display: Funder
  /// Definition: Entity that supplies financial support
  funder,
  ;

  @override
  String toString() {
    switch (this) {
      case publisher:
        return 'publisher';
      case author:
        return 'author';
      case reviewer:
        return 'reviewer';
      case endorser:
        return 'endorser';
      case editor:
        return 'editor';
      case informant:
        return 'informant';
      case funder:
        return 'funder';
    }
  }

  String toJson() => toString();
  static ContributorRole fromString(String str) {
    switch (str) {
      case 'publisher':
        return ContributorRole.publisher;
      case 'author':
        return ContributorRole.author;
      case 'reviewer':
        return ContributorRole.reviewer;
      case 'endorser':
        return ContributorRole.endorser;
      case 'editor':
        return ContributorRole.editor;
      case 'informant':
        return ContributorRole.informant;
      case 'funder':
        return ContributorRole.funder;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContributorRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
