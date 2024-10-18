// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation classification type
enum CitationClassificationType {
  /// Display: Citation Source
  /// Definition: Citation repository where this citation was created or copied from
  citation_source('citation-source'),

  /// Display: MEDLINE Citation Owner
  /// Definition: The party responsible for creating and validating the MEDLINE citation
  medline_owner('medline-owner'),

  /// Display: FEvIR Platform Use
  /// Definition: Used for Citation sharing on the Fast Evidence Interoperability Resources (FEvIR) Platform
  fevir_platform_use('fevir-platform-use'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitationClassificationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitationClassificationType] instances.
  static CitationClassificationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationClassificationType.elementOnly.withElement(
        element,
      );
    }
    return CitationClassificationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitationClassificationType withElement(Element? newElement) {
    return CitationClassificationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
