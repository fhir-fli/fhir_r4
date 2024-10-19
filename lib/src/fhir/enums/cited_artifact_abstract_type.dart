// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to express the reason and specific aspect for the variant abstract, such as language and specific language.
@Entity()
class CitedArtifactAbstractType extends FhirCode {
  /// Factory constructor to create [CitedArtifactAbstractType] from JSON.
  factory CitedArtifactAbstractType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactAbstractType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitedArtifactAbstractType._(value, element);
    }
    throw ArgumentError(
      'CitedArtifactAbstractType.fromJson: JSON value is not a valid value',
    );
  }

  /// primary_human_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.primary_human_use([this.element])
      : dbValue = 'primary-human-use',
        super('primary-human-use', element);

  /// primary_machine_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.primary_machine_use([this.element])
      : dbValue = 'primary-machine-use',
        super('primary-machine-use', element);

  /// truncated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.truncated([this.element])
      : dbValue = 'truncated',
        super('truncated', element);

  /// short_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.short_abstract([this.element])
      : dbValue = 'short-abstract',
        super('short-abstract', element);

  /// long_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.long_abstract([this.element])
      : dbValue = 'long-abstract',
        super('long-abstract', element);

  /// plain_language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.plain_language([this.element])
      : dbValue = 'plain-language',
        super('plain-language', element);

  /// different_publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.different_publisher([this.element])
      : dbValue = 'different-publisher',
        super('different-publisher', element);

  /// language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.language([this.element])
      : dbValue = 'language',
        super('language', element);

  /// autotranslated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.autotranslated([this.element])
      : dbValue = 'autotranslated',
        super('autotranslated', element);

  /// duplicate_pmid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.duplicate_pmid([this.element])
      : dbValue = 'duplicate-pmid',
        super('duplicate-pmid', element);

  /// earlier_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactAbstractType.earlier_abstract([this.element])
      : dbValue = 'earlier-abstract',
        super('earlier-abstract', element);

  /// For instances where an Element is present but not value

  CitedArtifactAbstractType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitedArtifactAbstractType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'primary-human-use',
    'primary-machine-use',
    'truncated',
    'short-abstract',
    'long-abstract',
    'plain-language',
    'different-publisher',
    'language',
    'autotranslated',
    'duplicate-pmid',
    'earlier-abstract',
  ];

  /// Returns the enum value with an element attached
  CitedArtifactAbstractType withElement(Element? newElement) {
    return CitedArtifactAbstractType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactAbstractType.$value';
}
