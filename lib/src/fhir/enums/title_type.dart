// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
@Entity()
class TitleType extends FhirCode {
  /// Factory constructor to create [TitleType] from JSON.
  factory TitleType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TitleType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TitleType._(value, element);
    }
    throw ArgumentError(
      'TitleType.fromJson: JSON value is not a valid value',
    );
  }

  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.primary([this.element])
      : dbValue = 'primary',
        super('primary', element);

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.official([this.element])
      : dbValue = 'official',
        super('official', element);

  /// scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.scientific([this.element])
      : dbValue = 'scientific',
        super('scientific', element);

  /// plain_language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.plain_language([this.element])
      : dbValue = 'plain-language',
        super('plain-language', element);

  /// subtitle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.subtitle([this.element])
      : dbValue = 'subtitle',
        super('subtitle', element);

  /// short_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.short_title([this.element])
      : dbValue = 'short-title',
        super('short-title', element);

  /// acronym
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.acronym([this.element])
      : dbValue = 'acronym',
        super('acronym', element);

  /// earlier_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.earlier_title([this.element])
      : dbValue = 'earlier-title',
        super('earlier-title', element);

  /// language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.language([this.element])
      : dbValue = 'language',
        super('language', element);

  /// autotranslated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.autotranslated([this.element])
      : dbValue = 'autotranslated',
        super('autotranslated', element);

  /// human_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.human_use([this.element])
      : dbValue = 'human-use',
        super('human-use', element);

  /// machine_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.machine_use([this.element])
      : dbValue = 'machine-use',
        super('machine-use', element);

  /// duplicate_uid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TitleType.duplicate_uid([this.element])
      : dbValue = 'duplicate-uid',
        super('duplicate-uid', element);

  /// For instances where an Element is present but not value

  TitleType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TitleType._(super.input, [super.element])
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
    'primary',
    'official',
    'scientific',
    'plain-language',
    'subtitle',
    'short-title',
    'acronym',
    'earlier-title',
    'language',
    'autotranslated',
    'human-use',
    'machine-use',
    'duplicate-uid',
  ];

  /// Returns the enum value with an element attached
  TitleType withElement(Element? newElement) {
    return TitleType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TitleType.$value';
}
