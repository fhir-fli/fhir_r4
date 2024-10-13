/// The type of contributor.
enum ContributorType {
  /// Display: Author
  /// Definition: An author of the content of the module.
  author,

  /// Display: Editor
  /// Definition: An editor of the content of the module.
  editor,

  /// Display: Reviewer
  /// Definition: A reviewer of the content of the module.
  reviewer,

  /// Display: Endorser
  /// Definition: An endorser of the content of the module.
  endorser,
  ;

  @override
  String toString() {
    switch (this) {
      case author:
        return 'author';
      case editor:
        return 'editor';
      case reviewer:
        return 'reviewer';
      case endorser:
        return 'endorser';
    }
  }

  /// Returns a [String] from a [ContributorType] enum.
  String toJson() => toString();

  /// Returns a [ContributorType] from a [String] enum.
  static ContributorType fromString(String str) {
    switch (str) {
      case 'author':
        return ContributorType.author;
      case 'editor':
        return ContributorType.editor;
      case 'reviewer':
        return ContributorType.reviewer;
      case 'endorser':
        return ContributorType.endorser;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContributorType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContributorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
