/// Citation classification type
enum CitationClassificationType {
  /// Display: Citation Source
  /// Definition: Citation repository where this citation was created or copied from
  citation_source,

  /// Display: MEDLINE Citation Owner
  /// Definition: The party responsible for creating and validating the MEDLINE citation
  medline_owner,

  /// Display: FEvIR Platform Use
  /// Definition: Used for Citation sharing on the Fast Evidence Interoperability Resources (FEvIR) Platform
  fevir_platform_use,
  ;

  @override
  String toString() {
    switch (this) {
      case citation_source:
        return 'citation-source';
      case medline_owner:
        return 'medline-owner';
      case fevir_platform_use:
        return 'fevir-platform-use';
    }
  }

  /// Returns a [String] from a [CitationClassificationType] enum.
  String toJson() => toString();

  /// Returns a [CitationClassificationType] from a [String] enum.
  static CitationClassificationType fromString(String str) {
    switch (str) {
      case 'citation-source':
        return CitationClassificationType.citation_source;
      case 'medline-owner':
        return CitationClassificationType.medline_owner;
      case 'fevir-platform-use':
        return CitationClassificationType.fevir_platform_use;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CitationClassificationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CitationClassificationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
