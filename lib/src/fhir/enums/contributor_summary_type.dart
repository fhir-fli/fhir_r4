// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to code author list statement, contributorship statement, and such.
@Entity()
class ContributorSummaryType extends FhirCode {
  /// Factory constructor to create [ContributorSummaryType] from JSON.
  factory ContributorSummaryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContributorSummaryType._(value, element);
    }
    throw ArgumentError(
      'ContributorSummaryType.fromJson: JSON value is not a valid value',
    );
  }

  /// author_string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.author_string([this.element])
      : dbValue = 'author-string',
        super('author-string', element);

  /// contributorship_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.contributorship_list([this.element])
      : dbValue = 'contributorship-list',
        super('contributorship-list', element);

  /// contributorship_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.contributorship_statement([this.element])
      : dbValue = 'contributorship-statement',
        super('contributorship-statement', element);

  /// acknowledgement_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.acknowledgement_list([this.element])
      : dbValue = 'acknowledgement-list',
        super('acknowledgement-list', element);

  /// acknowledgment_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.acknowledgment_statement([this.element])
      : dbValue = 'acknowledgment-statement',
        super('acknowledgment-statement', element);

  /// funding_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.funding_statement([this.element])
      : dbValue = 'funding-statement',
        super('funding-statement', element);

  /// competing_interests_statement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryType.competing_interests_statement([this.element])
      : dbValue = 'competing-interests-statement',
        super('competing-interests-statement', element);

  /// For instances where an Element is present but not value

  ContributorSummaryType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContributorSummaryType._(super.input, [super.element])
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
    'author-string',
    'contributorship-list',
    'contributorship-statement',
    'acknowledgement-list',
    'acknowledgment-statement',
    'funding-statement',
    'competing-interests-statement',
  ];

  /// Returns the enum value with an element attached
  ContributorSummaryType withElement(Element? newElement) {
    return ContributorSummaryType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorSummaryType.$value';
}
