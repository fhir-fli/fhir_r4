// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
@collection
class CitedArtifactPartType {
  /// Constructor for internal use (like enum)
  CitedArtifactPartType({this.fhirCode, this.element})
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

  /// CitedArtifactPartType values
  /// pages
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType pages = CitedArtifactPartType(
    fhirCode: 'pages',
  );

  /// sections
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType sections = CitedArtifactPartType(
    fhirCode: 'sections',
  );

  /// paragraphs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType paragraphs = CitedArtifactPartType(
    fhirCode: 'paragraphs',
  );

  /// lines
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType lines = CitedArtifactPartType(
    fhirCode: 'lines',
  );

  /// tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType tables = CitedArtifactPartType(
    fhirCode: 'tables',
  );

  /// figures
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType figures = CitedArtifactPartType(
    fhirCode: 'figures',
  );

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType supplement = CitedArtifactPartType(
    fhirCode: 'supplement',
  );

  /// supplement_subpart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType supplement_subpart = CitedArtifactPartType(
    fhirCode: 'supplement-subpart',
  );

  /// article_set
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType article_set = CitedArtifactPartType(
    fhirCode: 'article-set',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactPartType elementOnly = CitedArtifactPartType();

  /// List of all enum-like values
  static final List<CitedArtifactPartType> values = [
    pages,
    sections,
    paragraphs,
    lines,
    tables,
    figures,
    supplement,
    supplement_subpart,
    article_set,
  ];

  /// Returns the enum value with an element attached
  CitedArtifactPartType withElement(Element? newElement) {
    return CitedArtifactPartType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitedArtifactPartType] from JSON.
  static CitedArtifactPartType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactPartType.elementOnly.withElement(element);
    }
    return CitedArtifactPartType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactPartType.$fhirCode';
}
