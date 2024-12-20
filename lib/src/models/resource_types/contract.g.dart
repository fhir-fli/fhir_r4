part of 'contract.dart';

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
sealed class TopicXContractContract extends DataType {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
class CodeableConceptTopicContractContract extends CodeableConcept
    implements TopicXContractContract {
  /// Factory constructor for super class
  factory CodeableConceptTopicContractContract.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptTopicContractContract;
}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
class ReferenceTopicContractContract extends Reference
    implements TopicXContractContract {
  /// Factory constructor for super class
  factory ReferenceTopicContractContract.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTopicContractContract;
}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
sealed class LegallyBindingXContractContract extends DataType {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
class AttachmentLegallyBindingContractContract extends Attachment
    implements LegallyBindingXContractContract {
  /// Factory constructor for super class
  factory AttachmentLegallyBindingContractContract.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentLegallyBindingContractContract;
}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
class ReferenceLegallyBindingContractContract extends Reference
    implements LegallyBindingXContractContract {
  /// Factory constructor for super class
  factory ReferenceLegallyBindingContractContract.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLegallyBindingContractContract;
}

/// The entity that the term applies to.
sealed class TopicXContractTerm extends DataType {}

/// The entity that the term applies to.
class CodeableConceptTopicContractTerm extends CodeableConcept
    implements TopicXContractTerm {
  /// Factory constructor for super class
  factory CodeableConceptTopicContractTerm.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptTopicContractTerm;
}

/// The entity that the term applies to.
class ReferenceTopicContractTerm extends Reference
    implements TopicXContractTerm {
  /// Factory constructor for super class
  factory ReferenceTopicContractTerm.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTopicContractTerm;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
sealed class ValueXContractAnswer extends DataType {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class BooleanValueContractAnswer extends FhirBoolean
    implements ValueXContractAnswer {
  /// Constructor for [BooleanValueContractAnswer]
  BooleanValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class DecimalValueContractAnswer extends FhirDecimal
    implements ValueXContractAnswer {
  /// Constructor for [DecimalValueContractAnswer]
  DecimalValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class IntegerValueContractAnswer extends FhirInteger
    implements ValueXContractAnswer {
  /// Constructor for [IntegerValueContractAnswer]
  IntegerValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class DateValueContractAnswer extends FhirDate implements ValueXContractAnswer {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueContractAnswer.fromString(
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
      ) as DateValueContractAnswer;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueContractAnswer.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element) as DateValueContractAnswer;

  /// Factory constructor for super class
  factory DateValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class DateTimeValueContractAnswer extends FhirDateTime
    implements ValueXContractAnswer {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueContractAnswer.fromString(
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
      ) as DateTimeValueContractAnswer;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueContractAnswer.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueContractAnswer;

  /// Factory constructor for super class
  factory DateTimeValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class TimeValueContractAnswer extends FhirTime implements ValueXContractAnswer {
  /// Constructor for [TimeValueContractAnswer]
  TimeValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class StringValueContractAnswer extends FhirString
    implements ValueXContractAnswer {
  /// Constructor for [StringValueContractAnswer]
  StringValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class UriValueContractAnswer extends FhirUri implements ValueXContractAnswer {
  /// Constructor for [UriValueContractAnswer]
  UriValueContractAnswer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class AttachmentValueContractAnswer extends Attachment
    implements ValueXContractAnswer {
  /// Factory constructor for super class
  factory AttachmentValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class CodingValueContractAnswer extends Coding implements ValueXContractAnswer {
  /// Factory constructor for super class
  factory CodingValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class QuantityValueContractAnswer extends Quantity
    implements ValueXContractAnswer {
  /// Factory constructor for super class
  factory QuantityValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueContractAnswer;
}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
class ReferenceValueContractAnswer extends Reference
    implements ValueXContractAnswer {
  /// Factory constructor for super class
  factory ReferenceValueContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueContractAnswer;
}

/// Specific type of Contract Valued Item that may be priced.
sealed class EntityXContractValuedItem extends DataType {}

/// Specific type of Contract Valued Item that may be priced.
class CodeableConceptEntityContractValuedItem extends CodeableConcept
    implements EntityXContractValuedItem {
  /// Factory constructor for super class
  factory CodeableConceptEntityContractValuedItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptEntityContractValuedItem;
}

/// Specific type of Contract Valued Item that may be priced.
class ReferenceEntityContractValuedItem extends Reference
    implements EntityXContractValuedItem {
  /// Factory constructor for super class
  factory ReferenceEntityContractValuedItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceEntityContractValuedItem;
}

/// When action happens.
sealed class OccurrenceXContractAction extends DataType {}

/// When action happens.
class DateTimeOccurrenceContractAction extends FhirDateTime
    implements OccurrenceXContractAction {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceContractAction.fromString(
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
      ) as DateTimeOccurrenceContractAction;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceContractAction.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceContractAction;

  /// Factory constructor for super class
  factory DateTimeOccurrenceContractAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeOccurrenceContractAction;
}

/// When action happens.
class PeriodOccurrenceContractAction extends Period
    implements OccurrenceXContractAction {
  /// Factory constructor for super class
  factory PeriodOccurrenceContractAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceContractAction;
}

/// When action happens.
class TimingOccurrenceContractAction extends Timing
    implements OccurrenceXContractAction {
  /// Factory constructor for super class
  factory TimingOccurrenceContractAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingOccurrenceContractAction;
}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
sealed class ContentXContractFriendly extends DataType {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
class AttachmentContentContractFriendly extends Attachment
    implements ContentXContractFriendly {
  /// Factory constructor for super class
  factory AttachmentContentContractFriendly.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentContentContractFriendly;
}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
class ReferenceContentContractFriendly extends Reference
    implements ContentXContractFriendly {
  /// Factory constructor for super class
  factory ReferenceContentContractFriendly.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceContentContractFriendly;
}

/// Contract legal text in human renderable form.
sealed class ContentXContractLegal extends DataType {}

/// Contract legal text in human renderable form.
class AttachmentContentContractLegal extends Attachment
    implements ContentXContractLegal {
  /// Factory constructor for super class
  factory AttachmentContentContractLegal.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentContentContractLegal;
}

/// Contract legal text in human renderable form.
class ReferenceContentContractLegal extends Reference
    implements ContentXContractLegal {
  /// Factory constructor for super class
  factory ReferenceContentContractLegal.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceContentContractLegal;
}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
sealed class ContentXContractRule extends DataType {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
class AttachmentContentContractRule extends Attachment
    implements ContentXContractRule {
  /// Factory constructor for super class
  factory AttachmentContentContractRule.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentContentContractRule;
}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
class ReferenceContentContractRule extends Reference
    implements ContentXContractRule {
  /// Factory constructor for super class
  factory ReferenceContentContractRule.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceContentContractRule;
}
