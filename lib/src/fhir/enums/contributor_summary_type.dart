/// Used to code author list statement, contributorship statement, and such.
enum ContributorSummaryType {
  /// Display: Author string
  /// Definition: Display of the author list as a complete string.
  author_string,

  /// Display: Contributorship list
  /// Definition: Display of the list of contributors as a complete string.
  contributorship_list,

  /// Display: Contributorship statement
  /// Definition: Compiled summary of contributions.
  contributorship_statement,

  /// Display: Acknowledgment list
  /// Definition: Display of the list of acknowledged parties as a complete string.
  acknowledgement_list,

  /// Display: Acknowledgment statement
  /// Definition: Statement of acknowledgment of contributions beyond those compiled for formal contributorship statements.
  acknowledgment_statement,

  /// Display: Funding statement
  /// Definition: Statement of financial support for the creation of the cited artifact.
  funding_statement,

  /// Display: Competing interests statement
  /// Definition: Statement of completing interests related to the creation of the cited artifact. Also called conflicts of interest or declaration of interests.
  competing_interests_statement,
  ;

  @override
  String toString() {
    switch (this) {
      case author_string:
        return 'author-string';
      case contributorship_list:
        return 'contributorship-list';
      case contributorship_statement:
        return 'contributorship-statement';
      case acknowledgement_list:
        return 'acknowledgement-list';
      case acknowledgment_statement:
        return 'acknowledgment-statement';
      case funding_statement:
        return 'funding-statement';
      case competing_interests_statement:
        return 'competing-interests-statement';
    }
  }

  String toJson() => toString();
  static ContributorSummaryType fromString(String str) {
    switch (str) {
      case 'author-string':
        return ContributorSummaryType.author_string;
      case 'contributorship-list':
        return ContributorSummaryType.contributorship_list;
      case 'contributorship-statement':
        return ContributorSummaryType.contributorship_statement;
      case 'acknowledgement-list':
        return ContributorSummaryType.acknowledgement_list;
      case 'acknowledgment-statement':
        return ContributorSummaryType.acknowledgment_statement;
      case 'funding-statement':
        return ContributorSummaryType.funding_statement;
      case 'competing-interests-statement':
        return ContributorSummaryType.competing_interests_statement;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContributorSummaryType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
