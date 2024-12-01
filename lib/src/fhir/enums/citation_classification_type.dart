// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation classification type
class CitationClassificationType {
  // Private constructor for internal use (like enum)
  CitationClassificationType._(this.fhirCode, {this.element});

  /// Factory constructor to create [CitationClassificationType] from JSON.
  factory CitationClassificationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationClassificationType.elementOnly.withElement(element);
    }
    return CitationClassificationType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitationClassificationType values
  /// citation_source
  static final CitationClassificationType citation_source =
      CitationClassificationType._(
    'citation-source',
  );

  /// medline_owner
  static final CitationClassificationType medline_owner =
      CitationClassificationType._(
    'medline-owner',
  );

  /// fevir_platform_use
  static final CitationClassificationType fevir_platform_use =
      CitationClassificationType._(
    'fevir-platform-use',
  );

  /// For instances where an Element is present but not value

  static final CitationClassificationType elementOnly =
      CitationClassificationType._('');

  /// List of all enum-like values
  static final List<CitationClassificationType> values = [
    citation_source,
    medline_owner,
    fevir_platform_use,
  ];

  /// Returns the enum value with an element attached
  CitationClassificationType withElement(Element? newElement) {
    return CitationClassificationType._(fhirCode, element: newElement);
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
