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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CitedArtifactPartType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CitedArtifactPartType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactPartType.elementOnly.withElement(element);
    }
    return CitedArtifactPartType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CitedArtifactPartType withElement(Element? newElement) {
    return CitedArtifactPartType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
