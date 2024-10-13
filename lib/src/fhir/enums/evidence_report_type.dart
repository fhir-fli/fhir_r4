/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
enum EvidenceReportType {
  /// Display: Classification
  /// Definition: The report is primarily a listing of classifiers about the report subject.
  classification,

  /// Display: Search Results
  /// Definition: The report is a composition of results generated in response to a search query.
  search_results,

  /// Display: Resource Compilation
  /// Definition: The report is a composition containing one or more FHIR resources in the content.
  resources_compiled,

  /// Display: Structured Text
  /// Definition: The report is a structured representation of text.
  text_structured,
  ;

  @override
  String toString() {
    switch (this) {
      case classification:
        return 'classification';
      case search_results:
        return 'search-results';
      case resources_compiled:
        return 'resources-compiled';
      case text_structured:
        return 'text-structured';
    }
  }

  /// Returns a [String] from a [EvidenceReportType] enum.
  String toJson() => toString();

  /// Returns a [EvidenceReportType] from a [String] enum.
  static EvidenceReportType fromString(String str) {
    switch (str) {
      case 'classification':
        return EvidenceReportType.classification;
      case 'search-results':
        return EvidenceReportType.search_results;
      case 'resources-compiled':
        return EvidenceReportType.resources_compiled;
      case 'text-structured':
        return EvidenceReportType.text_structured;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EvidenceReportType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EvidenceReportType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
