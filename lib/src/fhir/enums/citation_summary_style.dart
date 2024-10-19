// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The format for display of the citation.
@Entity()
class CitationSummaryStyle extends FhirCode {
  /// Factory constructor to create [CitationSummaryStyle] from JSON.
  factory CitationSummaryStyle.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationSummaryStyle.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitationSummaryStyle._(value, element);
    }
    throw ArgumentError(
      'CitationSummaryStyle.fromJson: JSON value is not a valid value',
    );
  }

  /// vancouver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.vancouver([this.element])
      : dbValue = 'vancouver',
        super('vancouver', element);

  /// ama11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.ama11([this.element])
      : dbValue = 'ama11',
        super('ama11', element);

  /// apa7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.apa7([this.element])
      : dbValue = 'apa7',
        super('apa7', element);

  /// apa6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.apa6([this.element])
      : dbValue = 'apa6',
        super('apa6', element);

  /// asa6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.asa6([this.element])
      : dbValue = 'asa6',
        super('asa6', element);

  /// mla8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.mla8([this.element])
      : dbValue = 'mla8',
        super('mla8', element);

  /// cochrane
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.cochrane([this.element])
      : dbValue = 'cochrane',
        super('cochrane', element);

  /// elsevier_harvard
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.elsevier_harvard([this.element])
      : dbValue = 'elsevier-harvard',
        super('elsevier-harvard', element);

  /// nature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.nature([this.element])
      : dbValue = 'nature',
        super('nature', element);

  /// acs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.acs([this.element])
      : dbValue = 'acs',
        super('acs', element);

  /// chicago_a_17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.chicago_a_17([this.element])
      : dbValue = 'chicago-a-17',
        super('chicago-a-17', element);

  /// chicago_b_17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.chicago_b_17([this.element])
      : dbValue = 'chicago-b-17',
        super('chicago-b-17', element);

  /// ieee
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.ieee([this.element])
      : dbValue = 'ieee',
        super('ieee', element);

  /// comppub
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationSummaryStyle.comppub([this.element])
      : dbValue = 'comppub',
        super('comppub', element);

  /// For instances where an Element is present but not value

  CitationSummaryStyle.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitationSummaryStyle._(super.input, [super.element])
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
    'vancouver',
    'ama11',
    'apa7',
    'apa6',
    'asa6',
    'mla8',
    'cochrane',
    'elsevier-harvard',
    'nature',
    'acs',
    'chicago-a-17',
    'chicago-b-17',
    'ieee',
    'comppub',
  ];

  /// Returns the enum value with an element attached
  CitationSummaryStyle withElement(Element? newElement) {
    return CitationSummaryStyle._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationSummaryStyle.$value';
}
