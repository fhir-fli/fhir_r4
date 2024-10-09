import 'package:json_annotation/json_annotation.dart';

/// Enumeration representing the different item types used in a FHIR Questionnaire.
///
/// The item types represent different types of questions or display elements
/// that can be part of a questionnaire, such as groups, boolean questions, and more.
enum QuestionnaireItemType {
  /// An item with no direct answer but should have at least one child item.
  @JsonValue('group')
  group,

  /// Text for display that will not capture an answer or have child items.
  @JsonValue('display')
  display,

  /// An item that defines a specific answer to be captured, and which may have child items.
  /// The answer provided in the QuestionnaireResponse should be of the defined datatype.
  @JsonValue('question')
  question,

  /// Question with a yes/no answer (valueBoolean).
  @JsonValue('boolean')
  boolean,

  /// Question with a real number answer (valueDecimal).
  ///
  /// There is an extension ('http://hl7.org/fhir/StructureDefinition/questionnaire-unit')
  /// that can be used to computably convey the unit of measure associated with the answer
  /// for use when performing data extraction to an element of type Quantity.
  @JsonValue('decimal')
  decimal,

  /// Question with an integer answer (valueInteger).
  ///
  /// There is an extension ('http://hl7.org/fhir/StructureDefinition/questionnaire-unit')
  /// that can be used to computably convey the unit of measure associated with the answer
  /// for use when performing data extraction to an element of type Quantity.
  @JsonValue('integer')
  integer,

  /// Question with a date answer (valueDate).
  @JsonValue('date')
  date,

  /// Question with a date and time answer (valueDateTime).
  @JsonValue('dateTime')
  dateTime,

  /// Question with a time (hour:minute:second) answer independent of date (valueTime).
  @JsonValue('time')
  time,

  /// Question with a short (few words to short sentence) free-text entry answer (valueString).
  ///
  /// Strings SHOULD NOT contain carriage return or newline characters.
  /// If multi-line answers are needed, use the 'text' type.
  @JsonValue('string')
  string,

  /// Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
  @JsonValue('text')
  text,

  /// Question with a URL (website, FTP site, etc.) answer (valueUri).
  @JsonValue('url')
  url,

  /// Question with a Coding drawn from a list of possible answers
  /// (specified in either the answerOption property or via the valueset referenced in the answerValueSet property) as an answer (valueCoding).
  @JsonValue('choice')
  choice,

  /// Answer is a Coding drawn from a list of possible answers (as with the choice type)
  /// or a free-text entry in a string (valueCoding or valueString).
  @JsonValue('open-choice')
  openChoice,

  /// Question with binary content such as an image, PDF, etc., as an answer (valueAttachment).
  @JsonValue('attachment')
  attachment,

  /// Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
  @JsonValue('reference')
  reference,

  /// Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an answer.
  ///
  /// There is an extension ('http://hl7.org/fhir/StructureDefinition/questionnaire-unit')
  /// that can be used to define what unit should be captured (or the unit that has a ucum conversion from the provided unit).
  @JsonValue('quantity')
  quantity;

  /// Convert a string to a corresponding `QuestionnaireItemType` enum value.
  QuestionnaireItemType? fromString(String str) {
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
        return QuestionnaireItemType.openChoice;
      case 'attachment':
        return QuestionnaireItemType.attachment;
      case 'reference':
        return QuestionnaireItemType.reference;
      case 'quantity':
        return QuestionnaireItemType.quantity;
      default:
        return null;
    }
  }

  /// Convert a JSON dynamic value to a corresponding `QuestionnaireItemType` enum value.
  QuestionnaireItemType? fromJson(dynamic json) {
    if (json is String) {
      return fromString(json);
    } else {
      return null;
    }
  }

  /// Convert this `QuestionnaireItemType` enum value to a string.
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
      case openChoice:
        return 'open-choice';
      case attachment:
        return 'attachment';
      case reference:
        return 'reference';
      case quantity:
        return 'quantity';
    }
  }

  /// Convert this `QuestionnaireItemType` enum value to a JSON-compatible string.
  String toJson() => toString();
}
