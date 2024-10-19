// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to code the producer or rule for creating the display string.
@Entity()
class ContributorSummarySource extends FhirCode {
  /// Factory constructor to create [ContributorSummarySource] from JSON.
  factory ContributorSummarySource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummarySource.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContributorSummarySource._(value, element);
    }
    throw ArgumentError(
      'ContributorSummarySource.fromJson: JSON value is not a valid value',
    );
  }

  /// publisher_data
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummarySource.publisher_data([this.element])
      : dbValue = 'publisher-data',
        super('publisher-data', element);

  /// article_copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummarySource.article_copy([this.element])
      : dbValue = 'article-copy',
        super('article-copy', element);

  /// citation_manager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummarySource.citation_manager([this.element])
      : dbValue = 'citation-manager',
        super('citation-manager', element);

  /// custom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummarySource.custom([this.element])
      : dbValue = 'custom',
        super('custom', element);

  /// For instances where an Element is present but not value

  ContributorSummarySource.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContributorSummarySource._(super.input, [super.element])
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
    'publisher-data',
    'article-copy',
    'citation-manager',
    'custom',
  ];

  /// Returns the enum value with an element attached
  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorSummarySource.$value';
}
