// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the producer or rule for creating the display string.
enum ContributorSummarySource {
  /// Display: Publisher provided
  /// Definition: Data copied by machine from publisher data.
  publisher_data('publisher-data'),

  /// Display: Copied from article
  /// Definition: Data copied by human from article text.
  article_copy('article-copy'),

  /// Display: Reported by citation manager
  /// Definition: Data copied by machine from citation manager data.
  citation_manager('citation-manager'),

  /// Display: custom format
  /// Definition: Custom format (may be described in text note).
  custom('custom'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContributorSummarySource(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContributorSummarySource] instances.
  static ContributorSummarySource fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummarySource.elementOnly.withElement(
        element,
      );
    }
    return ContributorSummarySource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
