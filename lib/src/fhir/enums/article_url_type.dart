// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code the reason for different URLs, eg abstract and full-text.
enum ArticleUrlType {
  /// Display: Abstract
  /// Definition: URL to reach the abstract for the article.
  abstract_('abstract'),

  /// Display: Abstract Version
  /// Definition: URL to reach a specific version of the abstract for the article.
  abstract_version('abstract-version'),

  /// Display: DOI Based
  /// Definition: URL derived from DOI.
  doi_based('doi-based'),

  /// Display: Full-Text
  /// Definition: URL to reach the full-text of the article.
  full_text('full-text'),

  /// Display: Full-Text Version
  /// Definition: URL to reach a specific version of the full-text of the article.
  full_text_version('full-text-version'),

  /// Display: PDF
  /// Definition: URL to reach the full-text of the article in PDF form.
  pdf('pdf'),

  /// Display: PDF Version
  /// Definition: URL to reach a specific version of the full-text of the article in PDF form.
  pdf_version('pdf-version'),

  /// Display: Webpage
  /// Definition: Used when URL type is a webpage, but other codes do not apply.
  webpage('webpage'),

  /// Display: Not Specified
  /// Definition: Used when URL type is not specified, commonly when only a single URL is provided.
  not_specified('not-specified'),

  /// Display: JSON
  /// Definition: URL to reach computable content in JSON format.
  json('json'),

  /// Display: JSON Version
  /// Definition: URL to reach a specific version of computable content in JSON format.
  json_version('json-version'),

  /// Display: XML
  /// Definition: URL to reach computable content in XML format.
  xml('xml'),

  /// Display: XML
  /// Definition: URL to reach a specific version of computable content in XML format.
  xml_version('xml-version'),

  /// Display: Supplement
  /// Definition: Supplement
  supplement('supplement'),

  /// Display: Supplementary file directory
  /// Definition: Supplementary file directory
  supplementary_file_directory('supplementary-file-directory'),

  /// Display: Compressed file
  /// Definition: Compressed archive file (e.g. a zip file) that contains multiple files
  compressed_file('compressed-file'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ArticleUrlType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ArticleUrlType] instances.
  static ArticleUrlType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArticleUrlType.elementOnly.withElement(element);
    }
    return ArticleUrlType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ArticleUrlType withElement(Element? newElement) {
    return ArticleUrlType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
