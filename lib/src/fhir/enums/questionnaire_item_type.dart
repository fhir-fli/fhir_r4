// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
@collection
class QuestionnaireItemType {
  /// Constructor for internal use (like enum)
  QuestionnaireItemType({this.fhirCode, this.element})
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

  /// QuestionnaireItemType values
  /// group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType group = QuestionnaireItemType(
    fhirCode: 'group',
  );

  /// display
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType display = QuestionnaireItemType(
    fhirCode: 'display',
  );

  /// question
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType question = QuestionnaireItemType(
    fhirCode: 'question',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType boolean = QuestionnaireItemType(
    fhirCode: 'boolean',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType decimal = QuestionnaireItemType(
    fhirCode: 'decimal',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType integer = QuestionnaireItemType(
    fhirCode: 'integer',
  );

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType date = QuestionnaireItemType(
    fhirCode: 'date',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType dateTime = QuestionnaireItemType(
    fhirCode: 'dateTime',
  );

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType time = QuestionnaireItemType(
    fhirCode: 'time',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType string = QuestionnaireItemType(
    fhirCode: 'string',
  );

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType text = QuestionnaireItemType(
    fhirCode: 'text',
  );

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType url = QuestionnaireItemType(
    fhirCode: 'url',
  );

  /// choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType choice = QuestionnaireItemType(
    fhirCode: 'choice',
  );

  /// open_choice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType open_choice = QuestionnaireItemType(
    fhirCode: 'open-choice',
  );

  /// attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType attachment = QuestionnaireItemType(
    fhirCode: 'attachment',
  );

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType reference = QuestionnaireItemType(
    fhirCode: 'reference',
  );

  /// quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemType quantity = QuestionnaireItemType(
    fhirCode: 'quantity',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemType elementOnly = QuestionnaireItemType();

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
    return QuestionnaireItemType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuestionnaireItemType.$fhirCode';
}
