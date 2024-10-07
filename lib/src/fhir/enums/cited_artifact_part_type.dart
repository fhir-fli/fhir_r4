import 'package:json_annotation/json_annotation.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
enum CitedArtifactPartType {
  /// Display: pages
  /// Definition: Denotes specific page or pages of an article or artifact.
  @JsonValue('pages')
  pages,
  /// Display: sections
  /// Definition: Denotes specific section or sections of an article or artifact.
  @JsonValue('sections')
  sections,
  /// Display: paragraphs
  /// Definition: Denotes specific paragraph or paragraphs of an article or artifact.
  @JsonValue('paragraphs')
  paragraphs,
  /// Display: lines
  /// Definition: Denotes specific line or lines of an article or artifact.
  @JsonValue('lines')
  lines,
  /// Display: tables
  /// Definition: Denotes specific table or tables of an article or artifact.
  @JsonValue('tables')
  tables,
  /// Display: figures
  /// Definition: Denotes specific figure or figures of an article or artifact.
  @JsonValue('figures')
  figures,
  /// Display: Supplement or Appendix
  /// Definition: Used to denote a supplementary file, appendix, or additional part that is not a subpart of the primary article.
  @JsonValue('supplement')
  supplement,
  /// Display: Supplement or Appendix Subpart
  /// Definition: Used to denote a subpart within a supplementary file or appendix.
  @JsonValue('supplement-subpart')
  supplement_subpart,
  /// Display: Part of an article set
  /// Definition: Used to distinguish an individual article within an article set where the article set is a base citation.
  @JsonValue('article-set')
  article_set,
;

@override
  String toString() {
      switch(this) {
        case pages: return 'pages';
        case sections: return 'sections';
        case paragraphs: return 'paragraphs';
        case lines: return 'lines';
        case tables: return 'tables';
        case figures: return 'figures';
        case supplement: return 'supplement';
        case supplement_subpart: return 'supplement-subpart';
        case article_set: return 'article-set';
      }
      }
String toJson() => toString();
  CitedArtifactPartType fromString(String str) {
    switch(str) {
      case 'pages': return CitedArtifactPartType.pages;
      case 'sections': return CitedArtifactPartType.sections;
      case 'paragraphs': return CitedArtifactPartType.paragraphs;
      case 'lines': return CitedArtifactPartType.lines;
      case 'tables': return CitedArtifactPartType.tables;
      case 'figures': return CitedArtifactPartType.figures;
      case 'supplement': return CitedArtifactPartType.supplement;
      case 'supplement-subpart': return CitedArtifactPartType.supplement_subpart;
      case 'article-set': return CitedArtifactPartType.article_set;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CitedArtifactPartType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

