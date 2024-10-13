/// Code the reason for different URLs, eg abstract and full-text.
enum ArticleUrlType {
  /// Display: Abstract
  /// Definition: URL to reach the abstract for the article.
  abstract_,

  /// Display: Abstract Version
  /// Definition: URL to reach a specific version of the abstract for the article.
  abstract_version,

  /// Display: DOI Based
  /// Definition: URL derived from DOI.
  doi_based,

  /// Display: Full-Text
  /// Definition: URL to reach the full-text of the article.
  full_text,

  /// Display: Full-Text Version
  /// Definition: URL to reach a specific version of the full-text of the article.
  full_text_version,

  /// Display: PDF
  /// Definition: URL to reach the full-text of the article in PDF form.
  pdf,

  /// Display: PDF Version
  /// Definition: URL to reach a specific version of the full-text of the article in PDF form.
  pdf_version,

  /// Display: Webpage
  /// Definition: Used when URL type is a webpage, but other codes do not apply.
  webpage,

  /// Display: Not Specified
  /// Definition: Used when URL type is not specified, commonly when only a single URL is provided.
  not_specified,

  /// Display: JSON
  /// Definition: URL to reach computable content in JSON format.
  json,

  /// Display: JSON Version
  /// Definition: URL to reach a specific version of computable content in JSON format.
  json_version,

  /// Display: XML
  /// Definition: URL to reach computable content in XML format.
  xml,

  /// Display: XML
  /// Definition: URL to reach a specific version of computable content in XML format.
  xml_version,

  /// Display: Supplement
  /// Definition: Supplement
  supplement,

  /// Display: Supplementary file directory
  /// Definition: Supplementary file directory
  supplementary_file_directory,

  /// Display: Compressed file
  /// Definition: Compressed archive file (e.g. a zip file) that contains multiple files
  compressed_file,
  ;

  @override
  String toString() {
    switch (this) {
      case abstract_:
        return 'abstract';
      case abstract_version:
        return 'abstract-version';
      case doi_based:
        return 'doi-based';
      case full_text:
        return 'full-text';
      case full_text_version:
        return 'full-text-version';
      case pdf:
        return 'pdf';
      case pdf_version:
        return 'pdf-version';
      case webpage:
        return 'webpage';
      case not_specified:
        return 'not-specified';
      case json:
        return 'json';
      case json_version:
        return 'json-version';
      case xml:
        return 'xml';
      case xml_version:
        return 'xml-version';
      case supplement:
        return 'supplement';
      case supplementary_file_directory:
        return 'supplementary-file-directory';
      case compressed_file:
        return 'compressed-file';
    }
  }

  /// Returns a [String] from a [ArticleUrlType] enum.
  String toJson() => toString();

  /// Returns a [ArticleUrlType] from a [String] enum.
  static ArticleUrlType fromString(String str) {
    switch (str) {
      case 'abstract':
        return ArticleUrlType.abstract_;
      case 'abstract-version':
        return ArticleUrlType.abstract_version;
      case 'doi-based':
        return ArticleUrlType.doi_based;
      case 'full-text':
        return ArticleUrlType.full_text;
      case 'full-text-version':
        return ArticleUrlType.full_text_version;
      case 'pdf':
        return ArticleUrlType.pdf;
      case 'pdf-version':
        return ArticleUrlType.pdf_version;
      case 'webpage':
        return ArticleUrlType.webpage;
      case 'not-specified':
        return ArticleUrlType.not_specified;
      case 'json':
        return ArticleUrlType.json;
      case 'json-version':
        return ArticleUrlType.json_version;
      case 'xml':
        return ArticleUrlType.xml;
      case 'xml-version':
        return ArticleUrlType.xml_version;
      case 'supplement':
        return ArticleUrlType.supplement;
      case 'supplementary-file-directory':
        return ArticleUrlType.supplementary_file_directory;
      case 'compressed-file':
        return ArticleUrlType.compressed_file;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ArticleUrlType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ArticleUrlType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
