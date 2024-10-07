import 'package:json_annotation/json_annotation.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
enum TitleType {
  /// Display: Primary title
  /// Definition: Main title for common use. The primary title used for representation if multiple titles exist.
  @JsonValue('primary')
  primary,

  /// Display: Official title
  /// Definition: The official or authoritative title.
  @JsonValue('official')
  official,

  /// Display: Scientific title
  /// Definition: Title using scientific terminology.
  @JsonValue('scientific')
  scientific,

  /// Display: Plain language title
  /// Definition: Title using language common to lay public discourse.
  @JsonValue('plain-language')
  plain_language,

  /// Display: Subtitle
  /// Definition: Subtitle or secondary title.
  @JsonValue('subtitle')
  subtitle,

  /// Display: Short title
  /// Definition: Brief title (e.g. 'running title' or title used in page headers)
  @JsonValue('short-title')
  short_title,

  /// Display: Acronym
  /// Definition: Abbreviation used as title
  @JsonValue('acronym')
  acronym,

  /// Display: Different text in an earlier version
  /// Definition: Alternative form of title in an earlier version such as epub ahead of print.
  @JsonValue('earlier-title')
  earlier_title,

  /// Display: Different language
  /// Definition: Additional form of title in a different language.
  @JsonValue('language')
  language,

  /// Display: Different language derived from autotranslation
  /// Definition: Machine translated form of title in a different language, language element codes the language into which it was translated by machine.
  @JsonValue('autotranslated')
  autotranslated,

  /// Display: Human use
  /// Definition: Human-friendly title
  @JsonValue('human-use')
  human_use,

  /// Display: Machine use
  /// Definition: Machine-friendly title
  @JsonValue('machine-use')
  machine_use,

  /// Display: Different text for the same object with a different identifier
  /// Definition: An alternative form of the title in two or more entries, e.g. in multiple medline entries
  @JsonValue('duplicate-uid')
  duplicate_uid,
  ;

  @override
  String toString() {
    switch (this) {
      case primary:
        return 'primary';
      case official:
        return 'official';
      case scientific:
        return 'scientific';
      case plain_language:
        return 'plain-language';
      case subtitle:
        return 'subtitle';
      case short_title:
        return 'short-title';
      case acronym:
        return 'acronym';
      case earlier_title:
        return 'earlier-title';
      case language:
        return 'language';
      case autotranslated:
        return 'autotranslated';
      case human_use:
        return 'human-use';
      case machine_use:
        return 'machine-use';
      case duplicate_uid:
        return 'duplicate-uid';
    }
  }

  String toJson() => toString();
  TitleType fromString(String str) {
    switch (str) {
      case 'primary':
        return TitleType.primary;
      case 'official':
        return TitleType.official;
      case 'scientific':
        return TitleType.scientific;
      case 'plain-language':
        return TitleType.plain_language;
      case 'subtitle':
        return TitleType.subtitle;
      case 'short-title':
        return TitleType.short_title;
      case 'acronym':
        return TitleType.acronym;
      case 'earlier-title':
        return TitleType.earlier_title;
      case 'language':
        return TitleType.language;
      case 'autotranslated':
        return TitleType.autotranslated;
      case 'human-use':
        return TitleType.human_use;
      case 'machine-use':
        return TitleType.machine_use;
      case 'duplicate-uid':
        return TitleType.duplicate_uid;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  TitleType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
