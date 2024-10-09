/// Distinguishes groups from questions and display text and indicates data type for questions.
enum QuestionnaireItemType {
  /// Display: Group
  /// Definition: An item with no direct answer but should have at least one child item.
  group,

  /// Display: Display
  /// Definition: Text for display that will not capture an answer or have child items.
  display,

  /// Display: Question
  /// Definition: An item that defines a specific answer to be captured, and which may have child items. (the answer provided in the QuestionnaireResponse should be of the defined datatype).
  question,

  /// Display: Boolean
  /// Definition: Question with a yes/no answer (valueBoolean).
  boolean,

  /// Display: Decimal
  /// Definition: Question with is a real number answer (valueDecimal).
  decimal,

  /// Display: Integer
  /// Definition: Question with an integer answer (valueInteger).
  integer,

  /// Display: Date
  /// Definition: Question with a date answer (valueDate).
  date,

  /// Display: Date Time
  /// Definition: Question with a date and time answer (valueDateTime).
  dateTime,

  /// Display: Time
  /// Definition: Question with a time (hour:minute:second) answer independent of date. (valueTime).
  time,

  /// Display: String
  /// Definition: Question with a short (few words to short sentence) free-text entry answer (valueString).
  string,

  /// Display: Text
  /// Definition: Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
  text,

  /// Display: Url
  /// Definition: Question with a URL (website, FTP site, etc.) answer (valueUri).
  url,

  /// Display: Choice
  /// Definition: Question with a Coding drawn from a list of possible answers (specified in either the answerOption property, or via the valueset referenced in the answerValueSet property) as an answer (valueCoding).
  choice,

  /// Display: Open Choice
  /// Definition: Answer is a Coding drawn from a list of possible answers (as with the choice type) or a free-text entry in a string (valueCoding or valueString).
  open_choice,

  /// Display: Attachment
  /// Definition: Question with binary content such as an image, PDF, etc. as an answer (valueAttachment).
  attachment,

  /// Display: Reference
  /// Definition: Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
  reference,

  /// Display: Quantity
  /// Definition: Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an answer. (valueQuantity) There is an extension 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that can be used to define what unit should be captured (or the unit that has a ucum conversion from the provided unit).
  quantity,
  ;

  @override
  String toString() {
    switch (this) {
      case group:
        return 'group';
      case display:
        return 'display';
      case question:
        return 'question';
      case boolean:
        return 'boolean';
      case decimal:
        return 'decimal';
      case integer:
        return 'integer';
      case date:
        return 'date';
      case dateTime:
        return 'dateTime';
      case time:
        return 'time';
      case string:
        return 'string';
      case text:
        return 'text';
      case url:
        return 'url';
      case choice:
        return 'choice';
      case open_choice:
        return 'open-choice';
      case attachment:
        return 'attachment';
      case reference:
        return 'reference';
      case quantity:
        return 'quantity';
    }
  }

  String toJson() => toString();
  static QuestionnaireItemType fromString(String str) {
    switch (str) {
      case 'group':
        return QuestionnaireItemType.group;
      case 'display':
        return QuestionnaireItemType.display;
      case 'question':
        return QuestionnaireItemType.question;
      case 'boolean':
        return QuestionnaireItemType.boolean;
      case 'decimal':
        return QuestionnaireItemType.decimal;
      case 'integer':
        return QuestionnaireItemType.integer;
      case 'date':
        return QuestionnaireItemType.date;
      case 'dateTime':
        return QuestionnaireItemType.dateTime;
      case 'time':
        return QuestionnaireItemType.time;
      case 'string':
        return QuestionnaireItemType.string;
      case 'text':
        return QuestionnaireItemType.text;
      case 'url':
        return QuestionnaireItemType.url;
      case 'choice':
        return QuestionnaireItemType.choice;
      case 'open-choice':
        return QuestionnaireItemType.open_choice;
      case 'attachment':
        return QuestionnaireItemType.attachment;
      case 'reference':
        return QuestionnaireItemType.reference;
      case 'quantity':
        return QuestionnaireItemType.quantity;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static QuestionnaireItemType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
