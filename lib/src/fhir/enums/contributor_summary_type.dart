// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code author list statement, contributorship statement, and such.
class ContributorSummaryType {
  // Private constructor for internal use (like enum)
  ContributorSummaryType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContributorSummaryType values
  /// author_string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType author_string = ContributorSummaryType._(
    'author-string',
  );

  /// contributorship_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType contributorship_list =
      ContributorSummaryType._(
    'contributorship-list',
  );

  /// contributorship_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType contributorship_statement =
      ContributorSummaryType._(
    'contributorship-statement',
  );

  /// acknowledgement_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType acknowledgement_list =
      ContributorSummaryType._(
    'acknowledgement-list',
  );

  /// acknowledgment_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType acknowledgment_statement =
      ContributorSummaryType._(
    'acknowledgment-statement',
  );

  /// funding_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType funding_statement =
      ContributorSummaryType._(
    'funding-statement',
  );

  /// competing_interests_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType competing_interests_statement =
      ContributorSummaryType._(
    'competing-interests-statement',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummaryType elementOnly =
      ContributorSummaryType._('');

  /// List of all enum-like values
  static final List<ContributorSummaryType> values = [
    author_string,
    contributorship_list,
    contributorship_statement,
    acknowledgement_list,
    acknowledgment_statement,
    funding_statement,
    competing_interests_statement,
  ];

  /// Returns the enum value with an element attached
  ContributorSummaryType withElement(Element? newElement) {
    return ContributorSummaryType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContributorSummaryType] from JSON.
  static ContributorSummaryType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryType.elementOnly.withElement(element);
    }
    return ContributorSummaryType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
