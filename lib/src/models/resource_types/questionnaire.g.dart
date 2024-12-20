part of 'questionnaire.dart';

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
sealed class AnswerXQuestionnaireEnableWhen extends DataType {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class BooleanAnswerQuestionnaireEnableWhen extends FhirBoolean
    implements AnswerXQuestionnaireEnableWhen {
  /// Constructor for [BooleanAnswerQuestionnaireEnableWhen]
  BooleanAnswerQuestionnaireEnableWhen(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class DecimalAnswerQuestionnaireEnableWhen extends FhirDecimal
    implements AnswerXQuestionnaireEnableWhen {
  /// Constructor for [DecimalAnswerQuestionnaireEnableWhen]
  DecimalAnswerQuestionnaireEnableWhen(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class IntegerAnswerQuestionnaireEnableWhen extends FhirInteger
    implements AnswerXQuestionnaireEnableWhen {
  /// Constructor for [IntegerAnswerQuestionnaireEnableWhen]
  IntegerAnswerQuestionnaireEnableWhen(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class DateAnswerQuestionnaireEnableWhen extends FhirDate
    implements AnswerXQuestionnaireEnableWhen {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateAnswerQuestionnaireEnableWhen.fromString(
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
      ) as DateAnswerQuestionnaireEnableWhen;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateAnswerQuestionnaireEnableWhen.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateAnswerQuestionnaireEnableWhen;

  /// Factory constructor for super class
  factory DateAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class DateTimeAnswerQuestionnaireEnableWhen extends FhirDateTime
    implements AnswerXQuestionnaireEnableWhen {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeAnswerQuestionnaireEnableWhen.fromString(
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
      ) as DateTimeAnswerQuestionnaireEnableWhen;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeAnswerQuestionnaireEnableWhen.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeAnswerQuestionnaireEnableWhen;

  /// Factory constructor for super class
  factory DateTimeAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class TimeAnswerQuestionnaireEnableWhen extends FhirTime
    implements AnswerXQuestionnaireEnableWhen {
  /// Constructor for [TimeAnswerQuestionnaireEnableWhen]
  TimeAnswerQuestionnaireEnableWhen(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class StringAnswerQuestionnaireEnableWhen extends FhirString
    implements AnswerXQuestionnaireEnableWhen {
  /// Constructor for [StringAnswerQuestionnaireEnableWhen]
  StringAnswerQuestionnaireEnableWhen(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class CodingAnswerQuestionnaireEnableWhen extends Coding
    implements AnswerXQuestionnaireEnableWhen {
  /// Factory constructor for super class
  factory CodingAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class QuantityAnswerQuestionnaireEnableWhen extends Quantity
    implements AnswerXQuestionnaireEnableWhen {
  /// Factory constructor for super class
  factory QuantityAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityAnswerQuestionnaireEnableWhen;
}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
class ReferenceAnswerQuestionnaireEnableWhen extends Reference
    implements AnswerXQuestionnaireEnableWhen {
  /// Factory constructor for super class
  factory ReferenceAnswerQuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceAnswerQuestionnaireEnableWhen;
}

/// A potential answer that's allowed as the answer to this question.
sealed class ValueXQuestionnaireAnswerOption extends DataType {}

/// A potential answer that's allowed as the answer to this question.
class IntegerValueQuestionnaireAnswerOption extends FhirInteger
    implements ValueXQuestionnaireAnswerOption {
  /// Constructor for [IntegerValueQuestionnaireAnswerOption]
  IntegerValueQuestionnaireAnswerOption(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueQuestionnaireAnswerOption;
}

/// A potential answer that's allowed as the answer to this question.
class DateValueQuestionnaireAnswerOption extends FhirDate
    implements ValueXQuestionnaireAnswerOption {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueQuestionnaireAnswerOption.fromString(
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
      ) as DateValueQuestionnaireAnswerOption;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueQuestionnaireAnswerOption.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueQuestionnaireAnswerOption;

  /// Factory constructor for super class
  factory DateValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueQuestionnaireAnswerOption;
}

/// A potential answer that's allowed as the answer to this question.
class TimeValueQuestionnaireAnswerOption extends FhirTime
    implements ValueXQuestionnaireAnswerOption {
  /// Constructor for [TimeValueQuestionnaireAnswerOption]
  TimeValueQuestionnaireAnswerOption(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueQuestionnaireAnswerOption;
}

/// A potential answer that's allowed as the answer to this question.
class StringValueQuestionnaireAnswerOption extends FhirString
    implements ValueXQuestionnaireAnswerOption {
  /// Constructor for [StringValueQuestionnaireAnswerOption]
  StringValueQuestionnaireAnswerOption(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueQuestionnaireAnswerOption;
}

/// A potential answer that's allowed as the answer to this question.
class CodingValueQuestionnaireAnswerOption extends Coding
    implements ValueXQuestionnaireAnswerOption {
  /// Factory constructor for super class
  factory CodingValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueQuestionnaireAnswerOption;
}

/// A potential answer that's allowed as the answer to this question.
class ReferenceValueQuestionnaireAnswerOption extends Reference
    implements ValueXQuestionnaireAnswerOption {
  /// Factory constructor for super class
  factory ReferenceValueQuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueQuestionnaireAnswerOption;
}

/// The actual value to for an initial answer.
sealed class ValueXQuestionnaireInitial extends DataType {}

/// The actual value to for an initial answer.
class BooleanValueQuestionnaireInitial extends FhirBoolean
    implements ValueXQuestionnaireInitial {
  /// Constructor for [BooleanValueQuestionnaireInitial]
  BooleanValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class DecimalValueQuestionnaireInitial extends FhirDecimal
    implements ValueXQuestionnaireInitial {
  /// Constructor for [DecimalValueQuestionnaireInitial]
  DecimalValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class IntegerValueQuestionnaireInitial extends FhirInteger
    implements ValueXQuestionnaireInitial {
  /// Constructor for [IntegerValueQuestionnaireInitial]
  IntegerValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class DateValueQuestionnaireInitial extends FhirDate
    implements ValueXQuestionnaireInitial {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueQuestionnaireInitial.fromString(
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
      ) as DateValueQuestionnaireInitial;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueQuestionnaireInitial.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueQuestionnaireInitial;

  /// Factory constructor for super class
  factory DateValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class DateTimeValueQuestionnaireInitial extends FhirDateTime
    implements ValueXQuestionnaireInitial {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueQuestionnaireInitial.fromString(
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
      ) as DateTimeValueQuestionnaireInitial;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueQuestionnaireInitial.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueQuestionnaireInitial;

  /// Factory constructor for super class
  factory DateTimeValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class TimeValueQuestionnaireInitial extends FhirTime
    implements ValueXQuestionnaireInitial {
  /// Constructor for [TimeValueQuestionnaireInitial]
  TimeValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class StringValueQuestionnaireInitial extends FhirString
    implements ValueXQuestionnaireInitial {
  /// Constructor for [StringValueQuestionnaireInitial]
  StringValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class UriValueQuestionnaireInitial extends FhirUri
    implements ValueXQuestionnaireInitial {
  /// Constructor for [UriValueQuestionnaireInitial]
  UriValueQuestionnaireInitial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class AttachmentValueQuestionnaireInitial extends Attachment
    implements ValueXQuestionnaireInitial {
  /// Factory constructor for super class
  factory AttachmentValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class CodingValueQuestionnaireInitial extends Coding
    implements ValueXQuestionnaireInitial {
  /// Factory constructor for super class
  factory CodingValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class QuantityValueQuestionnaireInitial extends Quantity
    implements ValueXQuestionnaireInitial {
  /// Factory constructor for super class
  factory QuantityValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueQuestionnaireInitial;
}

/// The actual value to for an initial answer.
class ReferenceValueQuestionnaireInitial extends Reference
    implements ValueXQuestionnaireInitial {
  /// Factory constructor for super class
  factory ReferenceValueQuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueQuestionnaireInitial;
}
