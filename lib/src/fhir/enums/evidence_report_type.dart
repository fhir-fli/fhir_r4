// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
enum EvidenceReportType {
  /// Display: Classification
  /// Definition: The report is primarily a listing of classifiers about the report subject.
  classification('classification'),

  /// Display: Search Results
  /// Definition: The report is a composition of results generated in response to a search query.
  search_results('search-results'),

  /// Display: Resource Compilation
  /// Definition: The report is a composition containing one or more FHIR resources in the content.
  resources_compiled('resources-compiled'),

  /// Display: Structured Text
  /// Definition: The report is a structured representation of text.
  text_structured('text-structured'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EvidenceReportType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EvidenceReportType] instances.
  static EvidenceReportType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceReportType.elementOnly.withElement(
        element,
      );
    }
    return EvidenceReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
