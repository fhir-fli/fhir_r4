// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code the reason for different URLs, eg abstract and full-text.
class ArticleUrlType {
  // Private constructor for internal use (like enum)
  ArticleUrlType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ArticleUrlType] from JSON.
  factory ArticleUrlType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArticleUrlType.elementOnly.withElement(element);
    }
    return ArticleUrlType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ArticleUrlType values
  /// abstract_
  static final ArticleUrlType abstract_ = ArticleUrlType._(
    'abstract',
  );

  /// abstract_version
  static final ArticleUrlType abstract_version = ArticleUrlType._(
    'abstract-version',
  );

  /// doi_based
  static final ArticleUrlType doi_based = ArticleUrlType._(
    'doi-based',
  );

  /// full_text
  static final ArticleUrlType full_text = ArticleUrlType._(
    'full-text',
  );

  /// full_text_version
  static final ArticleUrlType full_text_version = ArticleUrlType._(
    'full-text-version',
  );

  /// pdf
  static final ArticleUrlType pdf = ArticleUrlType._(
    'pdf',
  );

  /// pdf_version
  static final ArticleUrlType pdf_version = ArticleUrlType._(
    'pdf-version',
  );

  /// webpage
  static final ArticleUrlType webpage = ArticleUrlType._(
    'webpage',
  );

  /// not_specified
  static final ArticleUrlType not_specified = ArticleUrlType._(
    'not-specified',
  );

  /// json
  static final ArticleUrlType json = ArticleUrlType._(
    'json',
  );

  /// json_version
  static final ArticleUrlType json_version = ArticleUrlType._(
    'json-version',
  );

  /// xml
  static final ArticleUrlType xml = ArticleUrlType._(
    'xml',
  );

  /// xml_version
  static final ArticleUrlType xml_version = ArticleUrlType._(
    'xml-version',
  );

  /// supplement
  static final ArticleUrlType supplement = ArticleUrlType._(
    'supplement',
  );

  /// supplementary_file_directory
  static final ArticleUrlType supplementary_file_directory = ArticleUrlType._(
    'supplementary-file-directory',
  );

  /// compressed_file
  static final ArticleUrlType compressed_file = ArticleUrlType._(
    'compressed-file',
  );

  /// For instances where an Element is present but not value

  static final ArticleUrlType elementOnly = ArticleUrlType._('');

  /// List of all enum-like values
  static final List<ArticleUrlType> values = [
    abstract_,
    abstract_version,
    doi_based,
    full_text,
    full_text_version,
    pdf,
    pdf_version,
    webpage,
    not_specified,
    json,
    json_version,
    xml,
    xml_version,
    supplement,
    supplementary_file_directory,
    compressed_file,
  ];

  /// Returns the enum value with an element attached
  ArticleUrlType withElement(Element? newElement) {
    return ArticleUrlType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
