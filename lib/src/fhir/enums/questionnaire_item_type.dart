// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
class QuestionnaireItemType {
  // Private constructor for internal use (like enum)
  QuestionnaireItemType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// QuestionnaireItemType values
  /// group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType group = QuestionnaireItemType._(
    'group',
  );

  /// display
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType display = QuestionnaireItemType._(
    'display',
  );

  /// question
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType question = QuestionnaireItemType._(
    'question',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType boolean = QuestionnaireItemType._(
    'boolean',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType decimal = QuestionnaireItemType._(
    'decimal',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType integer = QuestionnaireItemType._(
    'integer',
  );

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType date = QuestionnaireItemType._(
    'date',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType dateTime = QuestionnaireItemType._(
    'dateTime',
  );

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType time = QuestionnaireItemType._(
    'time',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType string = QuestionnaireItemType._(
    'string',
  );

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType text = QuestionnaireItemType._(
    'text',
  );

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType url = QuestionnaireItemType._(
    'url',
  );

  /// choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType choice = QuestionnaireItemType._(
    'choice',
  );

  /// open_choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType open_choice = QuestionnaireItemType._(
    'open-choice',
  );

  /// attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType attachment = QuestionnaireItemType._(
    'attachment',
  );

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType reference = QuestionnaireItemType._(
    'reference',
  );

  /// quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType quantity = QuestionnaireItemType._(
    'quantity',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemType elementOnly = QuestionnaireItemType._('');

  /// List of all enum-like values
  static final List<QuestionnaireItemType> values = [
    group,
    display,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    choice,
    open_choice,
    attachment,
    reference,
    quantity,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [QuestionnaireItemType] from JSON.
  static QuestionnaireItemType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType.elementOnly.withElement(element);
    }
    return QuestionnaireItemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
