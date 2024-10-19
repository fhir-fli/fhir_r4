// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to code author list statement, contributorship statement, and such.
@collection
class ContributorSummaryType {
  /// Constructor for internal use (like enum)
  ContributorSummaryType({this.fhirCode, this.element})
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

  /// ContributorSummaryType values
  /// author_string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType author_string = ContributorSummaryType(
    fhirCode: 'author-string',
  );

  /// contributorship_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType contributorship_list =
      ContributorSummaryType(
    fhirCode: 'contributorship-list',
  );

  /// contributorship_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType contributorship_statement =
      ContributorSummaryType(
    fhirCode: 'contributorship-statement',
  );

  /// acknowledgement_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType acknowledgement_list =
      ContributorSummaryType(
    fhirCode: 'acknowledgement-list',
  );

  /// acknowledgment_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType acknowledgment_statement =
      ContributorSummaryType(
    fhirCode: 'acknowledgment-statement',
  );

  /// funding_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType funding_statement =
      ContributorSummaryType(
    fhirCode: 'funding-statement',
  );

  /// competing_interests_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryType competing_interests_statement =
      ContributorSummaryType(
    fhirCode: 'competing-interests-statement',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummaryType elementOnly = ContributorSummaryType();

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
    return ContributorSummaryType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ContributorSummaryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorSummaryType.$fhirCode';
}
