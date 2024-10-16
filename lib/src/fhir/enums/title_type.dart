import 'package:fhir_r4/fhir_r4.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
enum TitleType {
  /// Display: Primary title
  /// Definition: Main title for common use. The primary title used for representation if multiple titles exist.
  primary('primary'),

  /// Display: Official title
  /// Definition: The official or authoritative title.
  official('official'),

  /// Display: Scientific title
  /// Definition: Title using scientific terminology.
  scientific('scientific'),

  /// Display: Plain language title
  /// Definition: Title using language common to lay public discourse.
  plain_language('plain-language'),

  /// Display: Subtitle
  /// Definition: Subtitle or secondary title.
  subtitle('subtitle'),

  /// Display: Short title
  /// Definition: Brief title (e.g. 'running title' or title used in page headers)
  short_title('short-title'),

  /// Display: Acronym
  /// Definition: Abbreviation used as title
  acronym('acronym'),

  /// Display: Different text in an earlier version
  /// Definition: Alternative form of title in an earlier version such as epub ahead of print.
  earlier_title('earlier-title'),

  /// Display: Different language
  /// Definition: Additional form of title in a different language.
  language('language'),

  /// Display: Different language derived from autotranslation
  /// Definition: Machine translated form of title in a different language, language element codes the language into which it was translated by machine.
  autotranslated('autotranslated'),

  /// Display: Human use
  /// Definition: Human-friendly title
  human_use('human-use'),

  /// Display: Machine use
  /// Definition: Machine-friendly title
  machine_use('machine-use'),

  /// Display: Different text for the same object with a different identifier
  /// Definition: An alternative form of the title in two or more entries, e.g. in multiple medline entries
  duplicate_uid('duplicate-uid'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TitleType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TitleType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TitleType.elementOnly.withElement(element);
    }
    return TitleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TitleType withElement(Element? newElement) {
    return TitleType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
