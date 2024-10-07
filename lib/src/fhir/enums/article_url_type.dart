import 'package:json_annotation/json_annotation.dart';

/// Code the reason for different URLs, eg abstract and full-text.
enum ArticleUrlType {
  /// Display: Abstract
  /// Definition: URL to reach the abstract for the article.
  @JsonValue('abstract')
  abstract_,

  /// Display: Abstract Version
  /// Definition: URL to reach a specific version of the abstract for the article.
  @JsonValue('abstract-version')
  abstract_version,

  /// Display: DOI Based
  /// Definition: URL derived from DOI.
  @JsonValue('doi-based')
  doi_based,

  /// Display: Full-Text
  /// Definition: URL to reach the full-text of the article.
  @JsonValue('full-text')
  full_text,

  /// Display: Full-Text Version
  /// Definition: URL to reach a specific version of the full-text of the article.
  @JsonValue('full-text-version')
  full_text_version,

  /// Display: PDF
  /// Definition: URL to reach the full-text of the article in PDF form.
  @JsonValue('pdf')
  pdf,

  /// Display: PDF Version
  /// Definition: URL to reach a specific version of the full-text of the article in PDF form.
  @JsonValue('pdf-version')
  pdf_version,

  /// Display: Webpage
  /// Definition: Used when URL type is a webpage, but other codes do not apply.
  @JsonValue('webpage')
  webpage,

  /// Display: Not Specified
  /// Definition: Used when URL type is not specified, commonly when only a single URL is provided.
  @JsonValue('not-specified')
  not_specified,

  /// Display: JSON
  /// Definition: URL to reach computable content in JSON format.
  @JsonValue('json')
  json,

  /// Display: JSON Version
  /// Definition: URL to reach a specific version of computable content in JSON format.
  @JsonValue('json-version')
  json_version,

  /// Display: XML
  /// Definition: URL to reach computable content in XML format.
  @JsonValue('xml')
  xml,

  /// Display: XML
  /// Definition: URL to reach a specific version of computable content in XML format.
  @JsonValue('xml-version')
  xml_version,

  /// Display: Supplement
  /// Definition: Supplement
  @JsonValue('supplement')
  supplement,

  /// Display: Supplementary file directory
  /// Definition: Supplementary file directory
  @JsonValue('supplementary-file-directory')
  supplementary_file_directory,

  /// Display: Compressed file
  /// Definition: Compressed archive file (e.g. a zip file) that contains multiple files
  @JsonValue('compressed-file')
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

  String toJson() => toString();
  ArticleUrlType fromString(String str) {
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

  ArticleUrlType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
