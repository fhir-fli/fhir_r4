part of 'task.dart';

/// The value of the input parameter as a basic type.
sealed class ValueXTaskInput extends DataType {}

/// The value of the input parameter as a basic type.
class Base64BinaryValueTaskInput extends FhirBase64Binary
    implements ValueXTaskInput {
  /// Constructor for [Base64BinaryValueTaskInput]
  Base64BinaryValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json) as Base64BinaryValueTaskInput;
}

/// The value of the input parameter as a basic type.
class BooleanValueTaskInput extends FhirBoolean implements ValueXTaskInput {
  /// Constructor for [BooleanValueTaskInput]
  BooleanValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueTaskInput;
}

/// The value of the input parameter as a basic type.
class CanonicalValueTaskInput extends FhirCanonical implements ValueXTaskInput {
  /// Constructor for [CanonicalValueTaskInput]
  CanonicalValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalValueTaskInput;
}

/// The value of the input parameter as a basic type.
class CodeValueTaskInput extends FhirCode implements ValueXTaskInput {
  /// Constructor for [CodeValueTaskInput]
  CodeValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DateValueTaskInput extends FhirDate implements ValueXTaskInput {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueTaskInput.fromString(
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
      ) as DateValueTaskInput;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueTaskInput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element) as DateValueTaskInput;

  /// Factory constructor for super class
  factory DateValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DateTimeValueTaskInput extends FhirDateTime implements ValueXTaskInput {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueTaskInput.fromString(
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
      ) as DateTimeValueTaskInput;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueTaskInput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueTaskInput;

  /// Factory constructor for super class
  factory DateTimeValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DecimalValueTaskInput extends FhirDecimal implements ValueXTaskInput {
  /// Constructor for [DecimalValueTaskInput]
  DecimalValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueTaskInput;
}

/// The value of the input parameter as a basic type.
class IdValueTaskInput extends FhirId implements ValueXTaskInput {
  /// Constructor for [IdValueTaskInput]
  IdValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueTaskInput;
}

/// The value of the input parameter as a basic type.
class InstantValueTaskInput extends FhirInstant implements ValueXTaskInput {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantValueTaskInput.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirInstant.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as InstantValueTaskInput;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantValueTaskInput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantValueTaskInput;

  /// Factory constructor for super class
  factory InstantValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantValueTaskInput;
}

/// The value of the input parameter as a basic type.
class IntegerValueTaskInput extends FhirInteger implements ValueXTaskInput {
  /// Constructor for [IntegerValueTaskInput]
  IntegerValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueTaskInput;
}

/// The value of the input parameter as a basic type.
class MarkdownValueTaskInput extends FhirMarkdown implements ValueXTaskInput {
  /// Constructor for [MarkdownValueTaskInput]
  MarkdownValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownValueTaskInput;
}

/// The value of the input parameter as a basic type.
class OidValueTaskInput extends FhirOid implements ValueXTaskInput {
  /// Constructor for [OidValueTaskInput]
  OidValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidValueTaskInput;
}

/// The value of the input parameter as a basic type.
class PositiveIntValueTaskInput extends FhirPositiveInt
    implements ValueXTaskInput {
  /// Constructor for [PositiveIntValueTaskInput]
  PositiveIntValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json) as PositiveIntValueTaskInput;
}

/// The value of the input parameter as a basic type.
class StringValueTaskInput extends FhirString implements ValueXTaskInput {
  /// Constructor for [StringValueTaskInput]
  StringValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueTaskInput;
}

/// The value of the input parameter as a basic type.
class TimeValueTaskInput extends FhirTime implements ValueXTaskInput {
  /// Constructor for [TimeValueTaskInput]
  TimeValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueTaskInput;
}

/// The value of the input parameter as a basic type.
class UnsignedIntValueTaskInput extends FhirUnsignedInt
    implements ValueXTaskInput {
  /// Constructor for [UnsignedIntValueTaskInput]
  UnsignedIntValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json) as UnsignedIntValueTaskInput;
}

/// The value of the input parameter as a basic type.
class UriValueTaskInput extends FhirUri implements ValueXTaskInput {
  /// Constructor for [UriValueTaskInput]
  UriValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueTaskInput;
}

/// The value of the input parameter as a basic type.
class UrlValueTaskInput extends FhirUrl implements ValueXTaskInput {
  /// Constructor for [UrlValueTaskInput]
  UrlValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlValueTaskInput;
}

/// The value of the input parameter as a basic type.
class UuidValueTaskInput extends FhirUuid implements ValueXTaskInput {
  /// Constructor for [UuidValueTaskInput]
  UuidValueTaskInput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidValueTaskInput;
}

/// The value of the input parameter as a basic type.
class AddressValueTaskInput extends Address implements ValueXTaskInput {
  /// Factory constructor for super class
  factory AddressValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressValueTaskInput;
}

/// The value of the input parameter as a basic type.
class AgeValueTaskInput extends Age implements ValueXTaskInput {
  /// Factory constructor for super class
  factory AgeValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeValueTaskInput;
}

/// The value of the input parameter as a basic type.
class AnnotationValueTaskInput extends Annotation implements ValueXTaskInput {
  /// Factory constructor for super class
  factory AnnotationValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationValueTaskInput;
}

/// The value of the input parameter as a basic type.
class AttachmentValueTaskInput extends Attachment implements ValueXTaskInput {
  /// Factory constructor for super class
  factory AttachmentValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueTaskInput;
}

/// The value of the input parameter as a basic type.
class CodeableConceptValueTaskInput extends CodeableConcept
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory CodeableConceptValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptValueTaskInput;
}

/// The value of the input parameter as a basic type.
class CodingValueTaskInput extends Coding implements ValueXTaskInput {
  /// Factory constructor for super class
  factory CodingValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ContactPointValueTaskInput extends ContactPoint
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ContactPointValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointValueTaskInput;
}

/// The value of the input parameter as a basic type.
class CountValueTaskInput extends Count implements ValueXTaskInput {
  /// Factory constructor for super class
  factory CountValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DistanceValueTaskInput extends Distance implements ValueXTaskInput {
  /// Factory constructor for super class
  factory DistanceValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DurationValueTaskInput extends FhirDuration implements ValueXTaskInput {
  /// Factory constructor for super class
  factory DurationValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueTaskInput;
}

/// The value of the input parameter as a basic type.
class HumanNameValueTaskInput extends HumanName implements ValueXTaskInput {
  /// Factory constructor for super class
  factory HumanNameValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameValueTaskInput;
}

/// The value of the input parameter as a basic type.
class IdentifierValueTaskInput extends Identifier implements ValueXTaskInput {
  /// Factory constructor for super class
  factory IdentifierValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierValueTaskInput;
}

/// The value of the input parameter as a basic type.
class MoneyValueTaskInput extends Money implements ValueXTaskInput {
  /// Factory constructor for super class
  factory MoneyValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueTaskInput;
}

/// The value of the input parameter as a basic type.
class PeriodValueTaskInput extends Period implements ValueXTaskInput {
  /// Factory constructor for super class
  factory PeriodValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueTaskInput;
}

/// The value of the input parameter as a basic type.
class QuantityValueTaskInput extends Quantity implements ValueXTaskInput {
  /// Factory constructor for super class
  factory QuantityValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueTaskInput;
}

/// The value of the input parameter as a basic type.
class RangeValueTaskInput extends Range implements ValueXTaskInput {
  /// Factory constructor for super class
  factory RangeValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueTaskInput;
}

/// The value of the input parameter as a basic type.
class RatioValueTaskInput extends Ratio implements ValueXTaskInput {
  /// Factory constructor for super class
  factory RatioValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ReferenceValueTaskInput extends Reference implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ReferenceValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueTaskInput;
}

/// The value of the input parameter as a basic type.
class SampledDataValueTaskInput extends SampledData implements ValueXTaskInput {
  /// Factory constructor for super class
  factory SampledDataValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueTaskInput;
}

/// The value of the input parameter as a basic type.
class SignatureValueTaskInput extends Signature implements ValueXTaskInput {
  /// Factory constructor for super class
  factory SignatureValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureValueTaskInput;
}

/// The value of the input parameter as a basic type.
class TimingValueTaskInput extends Timing implements ValueXTaskInput {
  /// Factory constructor for super class
  factory TimingValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ContactDetailValueTaskInput extends ContactDetail
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ContactDetailValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json) as ContactDetailValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ContributorValueTaskInput extends Contributor implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ContributorValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DataRequirementValueTaskInput extends DataRequirement
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory DataRequirementValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json) as DataRequirementValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ExpressionValueTaskInput extends FhirExpression
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ExpressionValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionValueTaskInput;
}

/// The value of the input parameter as a basic type.
class ParameterDefinitionValueTaskInput extends ParameterDefinition
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory ParameterDefinitionValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json) as ParameterDefinitionValueTaskInput;
}

/// The value of the input parameter as a basic type.
class RelatedArtifactValueTaskInput extends RelatedArtifact
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory RelatedArtifactValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json) as RelatedArtifactValueTaskInput;
}

/// The value of the input parameter as a basic type.
class TriggerDefinitionValueTaskInput extends TriggerDefinition
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory TriggerDefinitionValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json) as TriggerDefinitionValueTaskInput;
}

/// The value of the input parameter as a basic type.
class UsageContextValueTaskInput extends UsageContext
    implements ValueXTaskInput {
  /// Factory constructor for super class
  factory UsageContextValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextValueTaskInput;
}

/// The value of the input parameter as a basic type.
class DosageValueTaskInput extends Dosage implements ValueXTaskInput {
  /// Factory constructor for super class
  factory DosageValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageValueTaskInput;
}

/// The value of the input parameter as a basic type.
class MetaValueTaskInput extends FhirMeta implements ValueXTaskInput {
  /// Factory constructor for super class
  factory MetaValueTaskInput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMeta.fromJson(json) as MetaValueTaskInput;
}

/// The value of the Output parameter as a basic type.
sealed class ValueXTaskOutput extends DataType {}

/// The value of the Output parameter as a basic type.
class Base64BinaryValueTaskOutput extends FhirBase64Binary
    implements ValueXTaskOutput {
  /// Constructor for [Base64BinaryValueTaskOutput]
  Base64BinaryValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json) as Base64BinaryValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class BooleanValueTaskOutput extends FhirBoolean implements ValueXTaskOutput {
  /// Constructor for [BooleanValueTaskOutput]
  BooleanValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class CanonicalValueTaskOutput extends FhirCanonical
    implements ValueXTaskOutput {
  /// Constructor for [CanonicalValueTaskOutput]
  CanonicalValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class CodeValueTaskOutput extends FhirCode implements ValueXTaskOutput {
  /// Constructor for [CodeValueTaskOutput]
  CodeValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DateValueTaskOutput extends FhirDate implements ValueXTaskOutput {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueTaskOutput.fromString(
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
      ) as DateValueTaskOutput;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueTaskOutput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element) as DateValueTaskOutput;

  /// Factory constructor for super class
  factory DateValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DateTimeValueTaskOutput extends FhirDateTime implements ValueXTaskOutput {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueTaskOutput.fromString(
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
      ) as DateTimeValueTaskOutput;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueTaskOutput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueTaskOutput;

  /// Factory constructor for super class
  factory DateTimeValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DecimalValueTaskOutput extends FhirDecimal implements ValueXTaskOutput {
  /// Constructor for [DecimalValueTaskOutput]
  DecimalValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class IdValueTaskOutput extends FhirId implements ValueXTaskOutput {
  /// Constructor for [IdValueTaskOutput]
  IdValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class InstantValueTaskOutput extends FhirInstant implements ValueXTaskOutput {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantValueTaskOutput.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirInstant.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as InstantValueTaskOutput;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantValueTaskOutput.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantValueTaskOutput;

  /// Factory constructor for super class
  factory InstantValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class IntegerValueTaskOutput extends FhirInteger implements ValueXTaskOutput {
  /// Constructor for [IntegerValueTaskOutput]
  IntegerValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class MarkdownValueTaskOutput extends FhirMarkdown implements ValueXTaskOutput {
  /// Constructor for [MarkdownValueTaskOutput]
  MarkdownValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class OidValueTaskOutput extends FhirOid implements ValueXTaskOutput {
  /// Constructor for [OidValueTaskOutput]
  OidValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class PositiveIntValueTaskOutput extends FhirPositiveInt
    implements ValueXTaskOutput {
  /// Constructor for [PositiveIntValueTaskOutput]
  PositiveIntValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json) as PositiveIntValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class StringValueTaskOutput extends FhirString implements ValueXTaskOutput {
  /// Constructor for [StringValueTaskOutput]
  StringValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class TimeValueTaskOutput extends FhirTime implements ValueXTaskOutput {
  /// Constructor for [TimeValueTaskOutput]
  TimeValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class UnsignedIntValueTaskOutput extends FhirUnsignedInt
    implements ValueXTaskOutput {
  /// Constructor for [UnsignedIntValueTaskOutput]
  UnsignedIntValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json) as UnsignedIntValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class UriValueTaskOutput extends FhirUri implements ValueXTaskOutput {
  /// Constructor for [UriValueTaskOutput]
  UriValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class UrlValueTaskOutput extends FhirUrl implements ValueXTaskOutput {
  /// Constructor for [UrlValueTaskOutput]
  UrlValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class UuidValueTaskOutput extends FhirUuid implements ValueXTaskOutput {
  /// Constructor for [UuidValueTaskOutput]
  UuidValueTaskOutput(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class AddressValueTaskOutput extends Address implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory AddressValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class AgeValueTaskOutput extends Age implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory AgeValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class AnnotationValueTaskOutput extends Annotation implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory AnnotationValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class AttachmentValueTaskOutput extends Attachment implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory AttachmentValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class CodeableConceptValueTaskOutput extends CodeableConcept
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory CodeableConceptValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class CodingValueTaskOutput extends Coding implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory CodingValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ContactPointValueTaskOutput extends ContactPoint
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ContactPointValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class CountValueTaskOutput extends Count implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory CountValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DistanceValueTaskOutput extends Distance implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory DistanceValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DurationValueTaskOutput extends FhirDuration implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory DurationValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class HumanNameValueTaskOutput extends HumanName implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory HumanNameValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class IdentifierValueTaskOutput extends Identifier implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory IdentifierValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class MoneyValueTaskOutput extends Money implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory MoneyValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class PeriodValueTaskOutput extends Period implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory PeriodValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class QuantityValueTaskOutput extends Quantity implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory QuantityValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class RangeValueTaskOutput extends Range implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory RangeValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class RatioValueTaskOutput extends Ratio implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory RatioValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ReferenceValueTaskOutput extends Reference implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ReferenceValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class SampledDataValueTaskOutput extends SampledData
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory SampledDataValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class SignatureValueTaskOutput extends Signature implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory SignatureValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class TimingValueTaskOutput extends Timing implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory TimingValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ContactDetailValueTaskOutput extends ContactDetail
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ContactDetailValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json) as ContactDetailValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ContributorValueTaskOutput extends Contributor
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ContributorValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DataRequirementValueTaskOutput extends DataRequirement
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory DataRequirementValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json) as DataRequirementValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ExpressionValueTaskOutput extends FhirExpression
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ExpressionValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class ParameterDefinitionValueTaskOutput extends ParameterDefinition
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory ParameterDefinitionValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json) as ParameterDefinitionValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class RelatedArtifactValueTaskOutput extends RelatedArtifact
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory RelatedArtifactValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json) as RelatedArtifactValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class TriggerDefinitionValueTaskOutput extends TriggerDefinition
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory TriggerDefinitionValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json) as TriggerDefinitionValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class UsageContextValueTaskOutput extends UsageContext
    implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory UsageContextValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class DosageValueTaskOutput extends Dosage implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory DosageValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageValueTaskOutput;
}

/// The value of the Output parameter as a basic type.
class MetaValueTaskOutput extends FhirMeta implements ValueXTaskOutput {
  /// Factory constructor for super class
  factory MetaValueTaskOutput.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMeta.fromJson(json) as MetaValueTaskOutput;
}
