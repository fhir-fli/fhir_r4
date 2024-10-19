// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
class EvidenceReportType {
  // Private constructor for internal use (like enum)
  EvidenceReportType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceReportType values
  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType classification = EvidenceReportType._(
    'classification',
  );

  /// search_results
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType search_results = EvidenceReportType._(
    'search-results',
  );

  /// resources_compiled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType resources_compiled = EvidenceReportType._(
    'resources-compiled',
  );

  /// text_structured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType text_structured = EvidenceReportType._(
    'text-structured',
  );

  /// For instances where an Element is present but not value

  static final EvidenceReportType elementOnly = EvidenceReportType._('');

  /// List of all enum-like values
  static final List<EvidenceReportType> values = [
    classification,
    search_results,
    resources_compiled,
    text_structured,
  ];

  /// Returns the enum value with an element attached
  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceReportType] from JSON.
  static EvidenceReportType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceReportType.elementOnly.withElement(element);
    }
    return EvidenceReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceReportType.$fhirCode';
}
