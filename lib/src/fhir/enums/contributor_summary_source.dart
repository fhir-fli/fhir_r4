// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the producer or rule for creating the display string.
class ContributorSummarySource {
  // Private constructor for internal use (like enum)
  ContributorSummarySource._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContributorSummarySource values
  /// publisher_data
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource publisher_data =
      ContributorSummarySource._(
    'publisher-data',
  );

  /// article_copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource article_copy =
      ContributorSummarySource._(
    'article-copy',
  );

  /// citation_manager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource citation_manager =
      ContributorSummarySource._(
    'citation-manager',
  );

  /// custom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource custom = ContributorSummarySource._(
    'custom',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummarySource elementOnly =
      ContributorSummarySource._('');

  /// List of all enum-like values
  static final List<ContributorSummarySource> values = [
    publisher_data,
    article_copy,
    citation_manager,
    custom,
  ];

  /// Returns the enum value with an element attached
  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContributorSummarySource] from JSON.
  static ContributorSummarySource fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummarySource.elementOnly.withElement(element);
    }
    return ContributorSummarySource._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
