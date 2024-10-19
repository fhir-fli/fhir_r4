// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
@collection
class EvidenceReportType {
  /// Constructor for internal use (like enum)
  EvidenceReportType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceReportType values
  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType classification = EvidenceReportType(
    fhirCode: 'classification',
  );

  /// search_results
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType search_results = EvidenceReportType(
    fhirCode: 'search-results',
  );

  /// resources_compiled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType resources_compiled = EvidenceReportType(
    fhirCode: 'resources-compiled',
  );

  /// text_structured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceReportType text_structured = EvidenceReportType(
    fhirCode: 'text-structured',
  );

  /// For instances where an Element is present but not value

  static final EvidenceReportType elementOnly = EvidenceReportType();

  /// List of all enum-like values
  static final List<EvidenceReportType> values = [
    classification,
    search_results,
    resources_compiled,
    text_structured,
  ];

  /// Returns the enum value with an element attached
  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
