import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
enum QuestionnaireItemType {
  /// Display: Group
  /// Definition: An item with no direct answer but should have at least one child item.
  group('group'),

  /// Display: Display
  /// Definition: Text for display that will not capture an answer or have child items.
  display('display'),

  /// Display: Question
  /// Definition: An item that defines a specific answer to be captured, and which may have child items. (the answer provided in the QuestionnaireResponse should be of the defined datatype).
  question('question'),

  /// Display: Boolean
  /// Definition: Question with a yes/no answer (valueBoolean).
  boolean('boolean'),

  /// Display: Decimal
  /// Definition: Question with is a real number answer (valueDecimal).
  decimal('decimal'),

  /// Display: Integer
  /// Definition: Question with an integer answer (valueInteger).
  integer('integer'),

  /// Display: Date
  /// Definition: Question with a date answer (valueDate).
  date('date'),

  /// Display: Date Time
  /// Definition: Question with a date and time answer (valueDateTime).
  dateTime('dateTime'),

  /// Display: Time
  /// Definition: Question with a time (hour:minute:second) answer independent of date. (valueTime).
  time('time'),

  /// Display: String
  /// Definition: Question with a short (few words to short sentence) free-text entry answer (valueString).
  string('string'),

  /// Display: Text
  /// Definition: Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
  text('text'),

  /// Display: Url
  /// Definition: Question with a URL (website, FTP site, etc.) answer (valueUri).
  url('url'),

  /// Display: Choice
  /// Definition: Question with a Coding drawn from a list of possible answers (specified in either the answerOption property, or via the valueset referenced in the answerValueSet property) as an answer (valueCoding).
  choice('choice'),

  /// Display: Open Choice
  /// Definition: Answer is a Coding drawn from a list of possible answers (as with the choice type) or a free-text entry in a string (valueCoding or valueString).
  open_choice('open-choice'),

  /// Display: Attachment
  /// Definition: Question with binary content such as an image, PDF, etc. as an answer (valueAttachment).
  attachment('attachment'),

  /// Display: Reference
  /// Definition: Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
  reference('reference'),

  /// Display: Quantity
  /// Definition: Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an answer. (valueQuantity) There is an extension 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that can be used to define what unit should be captured (or the unit that has a ucum conversion from the provided unit).
  quantity('quantity'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const QuestionnaireItemType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static QuestionnaireItemType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType.elementOnly.withElement(element);
    }
    return QuestionnaireItemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
