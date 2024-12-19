part of 'parameters.dart';

/// Conveys the content if the parameter is a data type.
sealed class ValueXParametersParameter {}

/// Conveys the content if the parameter is a data type.
class Base64BinaryValueParametersParameter extends FhirBase64Binary
    implements ValueXParametersParameter {
  /// Constructor for [Base64BinaryValueParametersParameter]
  Base64BinaryValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json) as Base64BinaryValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class BooleanValueParametersParameter extends FhirBoolean
    implements ValueXParametersParameter {
  /// Constructor for [BooleanValueParametersParameter]
  BooleanValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class CanonicalValueParametersParameter extends FhirCanonical
    implements ValueXParametersParameter {
  /// Constructor for [CanonicalValueParametersParameter]
  CanonicalValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class CodeValueParametersParameter extends FhirCode
    implements ValueXParametersParameter {
  /// Constructor for [CodeValueParametersParameter]
  CodeValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DateValueParametersParameter extends FhirDate
    implements ValueXParametersParameter {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueParametersParameter.fromString(
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
      ) as DateValueParametersParameter;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueParametersParameter.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueParametersParameter;

  /// Factory constructor for super class
  factory DateValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DateTimeValueParametersParameter extends FhirDateTime
    implements ValueXParametersParameter {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueParametersParameter.fromString(
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
      ) as DateTimeValueParametersParameter;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueParametersParameter.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueParametersParameter;

  /// Factory constructor for super class
  factory DateTimeValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DecimalValueParametersParameter extends FhirDecimal
    implements ValueXParametersParameter {
  /// Constructor for [DecimalValueParametersParameter]
  DecimalValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class IdValueParametersParameter extends FhirId
    implements ValueXParametersParameter {
  /// Constructor for [IdValueParametersParameter]
  IdValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class InstantValueParametersParameter extends FhirInstant
    implements ValueXParametersParameter {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantValueParametersParameter.fromString(
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
      ) as InstantValueParametersParameter;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantValueParametersParameter.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantValueParametersParameter;

  /// Factory constructor for super class
  factory InstantValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class IntegerValueParametersParameter extends FhirInteger
    implements ValueXParametersParameter {
  /// Constructor for [IntegerValueParametersParameter]
  IntegerValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class MarkdownValueParametersParameter extends FhirMarkdown
    implements ValueXParametersParameter {
  /// Constructor for [MarkdownValueParametersParameter]
  MarkdownValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class OidValueParametersParameter extends FhirOid
    implements ValueXParametersParameter {
  /// Constructor for [OidValueParametersParameter]
  OidValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class PositiveIntValueParametersParameter extends FhirPositiveInt
    implements ValueXParametersParameter {
  /// Constructor for [PositiveIntValueParametersParameter]
  PositiveIntValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json) as PositiveIntValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class StringValueParametersParameter extends FhirString
    implements ValueXParametersParameter {
  /// Constructor for [StringValueParametersParameter]
  StringValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class TimeValueParametersParameter extends FhirTime
    implements ValueXParametersParameter {
  /// Constructor for [TimeValueParametersParameter]
  TimeValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class UnsignedIntValueParametersParameter extends FhirUnsignedInt
    implements ValueXParametersParameter {
  /// Constructor for [UnsignedIntValueParametersParameter]
  UnsignedIntValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json) as UnsignedIntValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class UriValueParametersParameter extends FhirUri
    implements ValueXParametersParameter {
  /// Constructor for [UriValueParametersParameter]
  UriValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class UrlValueParametersParameter extends FhirUrl
    implements ValueXParametersParameter {
  /// Constructor for [UrlValueParametersParameter]
  UrlValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class UuidValueParametersParameter extends FhirUuid
    implements ValueXParametersParameter {
  /// Constructor for [UuidValueParametersParameter]
  UuidValueParametersParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class AddressValueParametersParameter extends Address
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory AddressValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class AgeValueParametersParameter extends Age
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory AgeValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class AnnotationValueParametersParameter extends Annotation
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory AnnotationValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class AttachmentValueParametersParameter extends Attachment
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory AttachmentValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class CodeableConceptValueParametersParameter extends CodeableConcept
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory CodeableConceptValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class CodingValueParametersParameter extends Coding
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory CodingValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ContactPointValueParametersParameter extends ContactPoint
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ContactPointValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class CountValueParametersParameter extends Count
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory CountValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DistanceValueParametersParameter extends Distance
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory DistanceValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DurationValueParametersParameter extends FhirDuration
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory DurationValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class HumanNameValueParametersParameter extends HumanName
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory HumanNameValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class IdentifierValueParametersParameter extends Identifier
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory IdentifierValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class MoneyValueParametersParameter extends Money
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory MoneyValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class PeriodValueParametersParameter extends Period
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory PeriodValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class QuantityValueParametersParameter extends Quantity
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory QuantityValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class RangeValueParametersParameter extends Range
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory RangeValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class RatioValueParametersParameter extends Ratio
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory RatioValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ReferenceValueParametersParameter extends Reference
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ReferenceValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class SampledDataValueParametersParameter extends SampledData
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory SampledDataValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class SignatureValueParametersParameter extends Signature
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory SignatureValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class TimingValueParametersParameter extends Timing
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory TimingValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ContactDetailValueParametersParameter extends ContactDetail
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ContactDetailValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json) as ContactDetailValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ContributorValueParametersParameter extends Contributor
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ContributorValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DataRequirementValueParametersParameter extends DataRequirement
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory DataRequirementValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json) as DataRequirementValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ExpressionValueParametersParameter extends FhirExpression
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ExpressionValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class ParameterDefinitionValueParametersParameter extends ParameterDefinition
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory ParameterDefinitionValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class RelatedArtifactValueParametersParameter extends RelatedArtifact
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory RelatedArtifactValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json) as RelatedArtifactValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class TriggerDefinitionValueParametersParameter extends TriggerDefinition
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory TriggerDefinitionValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class UsageContextValueParametersParameter extends UsageContext
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory UsageContextValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class DosageValueParametersParameter extends Dosage
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory DosageValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageValueParametersParameter;
}

/// Conveys the content if the parameter is a data type.
class MetaValueParametersParameter extends FhirMeta
    implements ValueXParametersParameter {
  /// Factory constructor for super class
  factory MetaValueParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMeta.fromJson(json) as MetaValueParametersParameter;
}
