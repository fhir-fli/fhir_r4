/// Used to code the producer or rule for creating the display string.
enum ContributorSummarySource {
  /// Display: Publisher provided
  /// Definition: Data copied by machine from publisher data.
  publisher_data,

  /// Display: Copied from article
  /// Definition: Data copied by human from article text.
  article_copy,

  /// Display: Reported by citation manager
  /// Definition: Data copied by machine from citation manager data.
  citation_manager,

  /// Display: custom format
  /// Definition: Custom format (may be described in text note).
  custom,
  ;

  @override
  String toString() {
    switch (this) {
      case publisher_data:
        return 'publisher-data';
      case article_copy:
        return 'article-copy';
      case citation_manager:
        return 'citation-manager';
      case custom:
        return 'custom';
    }
  }

  /// Returns a [String] from a [ContributorSummarySource] enum.
  String toJson() => toString();

  /// Returns a [ContributorSummarySource] from a [String] enum.
  static ContributorSummarySource fromString(String str) {
    switch (str) {
      case 'publisher-data':
        return ContributorSummarySource.publisher_data;
      case 'article-copy':
        return ContributorSummarySource.article_copy;
      case 'citation-manager':
        return ContributorSummarySource.citation_manager;
      case 'custom':
        return ContributorSummarySource.custom;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContributorSummarySource] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContributorSummarySource fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
