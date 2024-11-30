// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
class CitedArtifactPartType {
  // Private constructor for internal use (like enum)
  CitedArtifactPartType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitedArtifactPartType values
  /// pages
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType pages = CitedArtifactPartType._(
    'pages',
  );

  /// sections
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType sections = CitedArtifactPartType._(
    'sections',
  );

  /// paragraphs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType paragraphs = CitedArtifactPartType._(
    'paragraphs',
  );

  /// lines
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType lines = CitedArtifactPartType._(
    'lines',
  );

  /// tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType tables = CitedArtifactPartType._(
    'tables',
  );

  /// figures
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType figures = CitedArtifactPartType._(
    'figures',
  );

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType supplement = CitedArtifactPartType._(
    'supplement',
  );

  /// supplement_subpart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType supplement_subpart =
      CitedArtifactPartType._(
    'supplement-subpart',
  );

  /// article_set
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactPartType article_set = CitedArtifactPartType._(
    'article-set',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactPartType elementOnly = CitedArtifactPartType._('');

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
    return CitedArtifactPartType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return CitedArtifactPartType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
