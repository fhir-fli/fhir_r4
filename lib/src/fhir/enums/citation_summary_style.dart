// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The format for display of the citation.
@collection
class CitationSummaryStyle {
  /// Constructor for internal use (like enum)
  CitationSummaryStyle({this.fhirCode, this.element})
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

  /// CitationSummaryStyle values
  /// vancouver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle vancouver = CitationSummaryStyle(
    fhirCode: 'vancouver',
  );

  /// ama11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle ama11 = CitationSummaryStyle(
    fhirCode: 'ama11',
  );

  /// apa7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle apa7 = CitationSummaryStyle(
    fhirCode: 'apa7',
  );

  /// apa6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle apa6 = CitationSummaryStyle(
    fhirCode: 'apa6',
  );

  /// asa6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle asa6 = CitationSummaryStyle(
    fhirCode: 'asa6',
  );

  /// mla8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle mla8 = CitationSummaryStyle(
    fhirCode: 'mla8',
  );

  /// cochrane
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle cochrane = CitationSummaryStyle(
    fhirCode: 'cochrane',
  );

  /// elsevier_harvard
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle elsevier_harvard = CitationSummaryStyle(
    fhirCode: 'elsevier-harvard',
  );

  /// nature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle nature = CitationSummaryStyle(
    fhirCode: 'nature',
  );

  /// acs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle acs = CitationSummaryStyle(
    fhirCode: 'acs',
  );

  /// chicago_a_17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle chicago_a_17 = CitationSummaryStyle(
    fhirCode: 'chicago-a-17',
  );

  /// chicago_b_17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle chicago_b_17 = CitationSummaryStyle(
    fhirCode: 'chicago-b-17',
  );

  /// ieee
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle ieee = CitationSummaryStyle(
    fhirCode: 'ieee',
  );

  /// comppub
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationSummaryStyle comppub = CitationSummaryStyle(
    fhirCode: 'comppub',
  );

  /// For instances where an Element is present but not value

  static final CitationSummaryStyle elementOnly = CitationSummaryStyle();

  /// List of all enum-like values
  static final List<CitationSummaryStyle> values = [
    vancouver,
    ama11,
    apa7,
    apa6,
    asa6,
    mla8,
    cochrane,
    elsevier_harvard,
    nature,
    acs,
    chicago_a_17,
    chicago_b_17,
    ieee,
    comppub,
  ];

  /// Returns the enum value with an element attached
  CitationSummaryStyle withElement(Element? newElement) {
    return CitationSummaryStyle(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitationSummaryStyle] from JSON.
  static CitationSummaryStyle fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationSummaryStyle.elementOnly.withElement(element);
    }
    return CitationSummaryStyle.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationSummaryStyle.$fhirCode';
}
