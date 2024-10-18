// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
enum CitedArtifactPartType {
  /// Display: pages
  /// Definition: Denotes specific page or pages of an article or artifact.
  pages('pages'),

  /// Display: sections
  /// Definition: Denotes specific section or sections of an article or artifact.
  sections('sections'),

  /// Display: paragraphs
  /// Definition: Denotes specific paragraph or paragraphs of an article or artifact.
  paragraphs('paragraphs'),

  /// Display: lines
  /// Definition: Denotes specific line or lines of an article or artifact.
  lines('lines'),

  /// Display: tables
  /// Definition: Denotes specific table or tables of an article or artifact.
  tables('tables'),

  /// Display: figures
  /// Definition: Denotes specific figure or figures of an article or artifact.
  figures('figures'),

  /// Display: Supplement or Appendix
  /// Definition: Used to denote a supplementary file, appendix, or additional part that is not a subpart of the primary article.
  supplement('supplement'),

  /// Display: Supplement or Appendix Subpart
  /// Definition: Used to denote a subpart within a supplementary file or appendix.
  supplement_subpart('supplement-subpart'),

  /// Display: Part of an article set
  /// Definition: Used to distinguish an individual article within an article set where the article set is a base citation.
  article_set('article-set'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitedArtifactPartType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitedArtifactPartType] instances.
  static CitedArtifactPartType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactPartType.elementOnly.withElement(element);
    }
    return CitedArtifactPartType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitedArtifactPartType withElement(Element? newElement) {
    return CitedArtifactPartType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
