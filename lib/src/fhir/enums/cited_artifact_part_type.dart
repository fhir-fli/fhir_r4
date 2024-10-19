// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
@Entity()
class CitedArtifactPartType extends FhirCode {
  /// Factory constructor to create [CitedArtifactPartType] from JSON.
  factory CitedArtifactPartType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactPartType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitedArtifactPartType._(value, element);
    }
    throw ArgumentError(
      'CitedArtifactPartType.fromJson: JSON value is not a valid value',
    );
  }

  /// pages
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.pages([this.element])
      : dbValue = 'pages',
        super('pages', element);

  /// sections
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.sections([this.element])
      : dbValue = 'sections',
        super('sections', element);

  /// paragraphs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.paragraphs([this.element])
      : dbValue = 'paragraphs',
        super('paragraphs', element);

  /// lines
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.lines([this.element])
      : dbValue = 'lines',
        super('lines', element);

  /// tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.tables([this.element])
      : dbValue = 'tables',
        super('tables', element);

  /// figures
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.figures([this.element])
      : dbValue = 'figures',
        super('figures', element);

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.supplement([this.element])
      : dbValue = 'supplement',
        super('supplement', element);

  /// supplement_subpart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.supplement_subpart([this.element])
      : dbValue = 'supplement-subpart',
        super('supplement-subpart', element);

  /// article_set
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactPartType.article_set([this.element])
      : dbValue = 'article-set',
        super('article-set', element);

  /// For instances where an Element is present but not value

  CitedArtifactPartType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitedArtifactPartType._(super.input, [super.element])
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
    'pages',
    'sections',
    'paragraphs',
    'lines',
    'tables',
    'figures',
    'supplement',
    'supplement-subpart',
    'article-set',
  ];

  /// Returns the enum value with an element attached
  CitedArtifactPartType withElement(Element? newElement) {
    return CitedArtifactPartType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactPartType.$value';
}
