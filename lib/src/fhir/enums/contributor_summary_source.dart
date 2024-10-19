// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to code the producer or rule for creating the display string.
@collection
class ContributorSummarySource {
  /// Constructor for internal use (like enum)
  ContributorSummarySource({this.fhirCode, this.element})
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

  /// ContributorSummarySource values
  /// publisher_data
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource publisher_data =
      ContributorSummarySource(
    fhirCode: 'publisher-data',
  );

  /// article_copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource article_copy = ContributorSummarySource(
    fhirCode: 'article-copy',
  );

  /// citation_manager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource citation_manager =
      ContributorSummarySource(
    fhirCode: 'citation-manager',
  );

  /// custom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummarySource custom = ContributorSummarySource(
    fhirCode: 'custom',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummarySource elementOnly =
      ContributorSummarySource();

  /// List of all enum-like values
  static final List<ContributorSummarySource> values = [
    publisher_data,
    article_copy,
    citation_manager,
    custom,
  ];

  /// Returns the enum value with an element attached
  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ContributorSummarySource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorSummarySource.$fhirCode';
}
