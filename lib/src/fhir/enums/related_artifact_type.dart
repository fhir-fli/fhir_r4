// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of relationship to the related artifact.
@Entity()
class RelatedArtifactType extends FhirCode {
  /// Factory constructor to create [RelatedArtifactType] from JSON.
  factory RelatedArtifactType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType.elementOnly(element);
    }
    if (values.contains(value)) {
      return RelatedArtifactType._(value, element);
    }
    throw ArgumentError(
      'RelatedArtifactType.fromJson: JSON value is not a valid value',
    );
  }

  /// documentation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.documentation([this.element])
      : dbValue = 'documentation',
        super('documentation', element);

  /// justification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.justification([this.element])
      : dbValue = 'justification',
        super('justification', element);

  /// citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.citation([this.element])
      : dbValue = 'citation',
        super('citation', element);

  /// predecessor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.predecessor([this.element])
      : dbValue = 'predecessor',
        super('predecessor', element);

  /// successor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.successor([this.element])
      : dbValue = 'successor',
        super('successor', element);

  /// derived_from
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.derived_from([this.element])
      : dbValue = 'derived-from',
        super('derived-from', element);

  /// depends_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.depends_on([this.element])
      : dbValue = 'depends-on',
        super('depends-on', element);

  /// composed_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RelatedArtifactType.composed_of([this.element])
      : dbValue = 'composed-of',
        super('composed-of', element);

  /// For instances where an Element is present but not value

  RelatedArtifactType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RelatedArtifactType._(super.input, [super.element])
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
    'documentation',
    'justification',
    'citation',
    'predecessor',
    'successor',
    'derived-from',
    'depends-on',
    'composed-of',
  ];

  /// Returns the enum value with an element attached
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RelatedArtifactType.$value';
}
