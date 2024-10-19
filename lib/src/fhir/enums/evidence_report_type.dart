// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
@Entity()
class EvidenceReportType extends FhirCode {
  /// Factory constructor to create [EvidenceReportType] from JSON.
  factory EvidenceReportType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceReportType.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceReportType._(value, element);
    }
    throw ArgumentError(
      'EvidenceReportType.fromJson: JSON value is not a valid value',
    );
  }

  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceReportType.classification([this.element])
      : dbValue = 'classification',
        super('classification', element);

  /// search_results
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceReportType.search_results([this.element])
      : dbValue = 'search-results',
        super('search-results', element);

  /// resources_compiled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceReportType.resources_compiled([this.element])
      : dbValue = 'resources-compiled',
        super('resources-compiled', element);

  /// text_structured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceReportType.text_structured([this.element])
      : dbValue = 'text-structured',
        super('text-structured', element);

  /// For instances where an Element is present but not value

  EvidenceReportType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceReportType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'classification',
    'search-results',
    'resources-compiled',
    'text-structured',
  ];

  /// Returns the enum value with an element attached
  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceReportType.$value';
}
