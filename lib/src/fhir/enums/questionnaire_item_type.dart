// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
@Entity()
class QuestionnaireItemType extends FhirCode {
  /// Factory constructor to create [QuestionnaireItemType] from JSON.
  factory QuestionnaireItemType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType.elementOnly(element);
    }
    if (values.contains(value)) {
      return QuestionnaireItemType._(value, element);
    }
    throw ArgumentError(
      'QuestionnaireItemType.fromJson: JSON value is not a valid value',
    );
  }

  /// group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.group([this.element])
      : dbValue = 'group',
        super('group', element);

  /// display
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.display([this.element])
      : dbValue = 'display',
        super('display', element);

  /// question
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.question([this.element])
      : dbValue = 'question',
        super('question', element);

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.boolean([this.element])
      : dbValue = 'boolean',
        super('boolean', element);

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.decimal([this.element])
      : dbValue = 'decimal',
        super('decimal', element);

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.integer([this.element])
      : dbValue = 'integer',
        super('integer', element);

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.date([this.element])
      : dbValue = 'date',
        super('date', element);

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.dateTime([this.element])
      : dbValue = 'dateTime',
        super('dateTime', element);

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.time([this.element])
      : dbValue = 'time',
        super('time', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.text([this.element])
      : dbValue = 'text',
        super('text', element);

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.url([this.element])
      : dbValue = 'url',
        super('url', element);

  /// choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.choice([this.element])
      : dbValue = 'choice',
        super('choice', element);

  /// open_choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.open_choice([this.element])
      : dbValue = 'open-choice',
        super('open-choice', element);

  /// attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.attachment([this.element])
      : dbValue = 'attachment',
        super('attachment', element);

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.reference([this.element])
      : dbValue = 'reference',
        super('reference', element);

  /// quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireItemType.quantity([this.element])
      : dbValue = 'quantity',
        super('quantity', element);

  /// For instances where an Element is present but not value

  QuestionnaireItemType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  QuestionnaireItemType._(super.input, [super.element])
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
    'group',
    'display',
    'question',
    'boolean',
    'decimal',
    'integer',
    'date',
    'dateTime',
    'time',
    'string',
    'text',
    'url',
    'choice',
    'open-choice',
    'attachment',
    'reference',
    'quantity',
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuestionnaireItemType.$value';
}
