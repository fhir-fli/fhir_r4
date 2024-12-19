part of 'questionnaire_response.dart';

/// The answer (or one of the answers) provided by the respondent to the
/// question.
sealed class ValueXQuestionnaireResponseAnswer {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class BooleanValueQuestionnaireResponseAnswer extends FhirBoolean
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [BooleanValueQuestionnaireResponseAnswer]
  BooleanValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class DecimalValueQuestionnaireResponseAnswer extends FhirDecimal
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [DecimalValueQuestionnaireResponseAnswer]
  DecimalValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class IntegerValueQuestionnaireResponseAnswer extends FhirInteger
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [IntegerValueQuestionnaireResponseAnswer]
  IntegerValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class DateValueQuestionnaireResponseAnswer extends FhirDate
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueQuestionnaireResponseAnswer.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateValueQuestionnaireResponseAnswer;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueQuestionnaireResponseAnswer.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueQuestionnaireResponseAnswer;

  /// Factory constructor for super class
  factory DateValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class DateTimeValueQuestionnaireResponseAnswer extends FhirDateTime
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueQuestionnaireResponseAnswer.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeValueQuestionnaireResponseAnswer;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueQuestionnaireResponseAnswer.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueQuestionnaireResponseAnswer;

  /// Factory constructor for super class
  factory DateTimeValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class TimeValueQuestionnaireResponseAnswer extends FhirTime
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [TimeValueQuestionnaireResponseAnswer]
  TimeValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class StringValueQuestionnaireResponseAnswer extends FhirString
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [StringValueQuestionnaireResponseAnswer]
  StringValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class UriValueQuestionnaireResponseAnswer extends FhirUri
    implements ValueXQuestionnaireResponseAnswer {
  /// Constructor for [UriValueQuestionnaireResponseAnswer]
  UriValueQuestionnaireResponseAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class AttachmentValueQuestionnaireResponseAnswer extends Attachment
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor for super class
  factory AttachmentValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class CodingValueQuestionnaireResponseAnswer extends Coding
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor for super class
  factory CodingValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class QuantityValueQuestionnaireResponseAnswer extends Quantity
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor for super class
  factory QuantityValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueQuestionnaireResponseAnswer;
}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
class ReferenceValueQuestionnaireResponseAnswer extends Reference
    implements ValueXQuestionnaireResponseAnswer {
  /// Factory constructor for super class
  factory ReferenceValueQuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueQuestionnaireResponseAnswer;
}
