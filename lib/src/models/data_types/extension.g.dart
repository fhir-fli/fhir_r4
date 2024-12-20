part of 'extension.dart';

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
sealed class ValueXExtensionExtension extends DataType {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class Base64BinaryValueExtensionExtension extends FhirBase64Binary
    implements ValueXExtensionExtension {
  /// Constructor for [Base64BinaryValueExtensionExtension]
  Base64BinaryValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json) as Base64BinaryValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class BooleanValueExtensionExtension extends FhirBoolean
    implements ValueXExtensionExtension {
  /// Constructor for [BooleanValueExtensionExtension]
  BooleanValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CanonicalValueExtensionExtension extends FhirCanonical
    implements ValueXExtensionExtension {
  /// Constructor for [CanonicalValueExtensionExtension]
  CanonicalValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CodeValueExtensionExtension extends FhirCode
    implements ValueXExtensionExtension {
  /// Constructor for [CodeValueExtensionExtension]
  CodeValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DateValueExtensionExtension extends FhirDate
    implements ValueXExtensionExtension {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueExtensionExtension.fromString(
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
      ) as DateValueExtensionExtension;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueExtensionExtension.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueExtensionExtension;

  /// Factory constructor for super class
  factory DateValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DateTimeValueExtensionExtension extends FhirDateTime
    implements ValueXExtensionExtension {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueExtensionExtension.fromString(
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
      ) as DateTimeValueExtensionExtension;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueExtensionExtension.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueExtensionExtension;

  /// Factory constructor for super class
  factory DateTimeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DecimalValueExtensionExtension extends FhirDecimal
    implements ValueXExtensionExtension {
  /// Constructor for [DecimalValueExtensionExtension]
  DecimalValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class IdValueExtensionExtension extends FhirId
    implements ValueXExtensionExtension {
  /// Constructor for [IdValueExtensionExtension]
  IdValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class InstantValueExtensionExtension extends FhirInstant
    implements ValueXExtensionExtension {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantValueExtensionExtension.fromString(
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
      ) as InstantValueExtensionExtension;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantValueExtensionExtension.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantValueExtensionExtension;

  /// Factory constructor for super class
  factory InstantValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class IntegerValueExtensionExtension extends FhirInteger
    implements ValueXExtensionExtension {
  /// Constructor for [IntegerValueExtensionExtension]
  IntegerValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class MarkdownValueExtensionExtension extends FhirMarkdown
    implements ValueXExtensionExtension {
  /// Constructor for [MarkdownValueExtensionExtension]
  MarkdownValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class OidValueExtensionExtension extends FhirOid
    implements ValueXExtensionExtension {
  /// Constructor for [OidValueExtensionExtension]
  OidValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class PositiveIntValueExtensionExtension extends FhirPositiveInt
    implements ValueXExtensionExtension {
  /// Constructor for [PositiveIntValueExtensionExtension]
  PositiveIntValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json) as PositiveIntValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class StringValueExtensionExtension extends FhirString
    implements ValueXExtensionExtension {
  /// Constructor for [StringValueExtensionExtension]
  StringValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class TimeValueExtensionExtension extends FhirTime
    implements ValueXExtensionExtension {
  /// Constructor for [TimeValueExtensionExtension]
  TimeValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class UnsignedIntValueExtensionExtension extends FhirUnsignedInt
    implements ValueXExtensionExtension {
  /// Constructor for [UnsignedIntValueExtensionExtension]
  UnsignedIntValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json) as UnsignedIntValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class UriValueExtensionExtension extends FhirUri
    implements ValueXExtensionExtension {
  /// Constructor for [UriValueExtensionExtension]
  UriValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class UrlValueExtensionExtension extends FhirUrl
    implements ValueXExtensionExtension {
  /// Constructor for [UrlValueExtensionExtension]
  UrlValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class UuidValueExtensionExtension extends FhirUuid
    implements ValueXExtensionExtension {
  /// Constructor for [UuidValueExtensionExtension]
  UuidValueExtensionExtension(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class AddressValueExtensionExtension extends Address
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory AddressValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class AgeValueExtensionExtension extends Age
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory AgeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class AnnotationValueExtensionExtension extends Annotation
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory AnnotationValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class AttachmentValueExtensionExtension extends Attachment
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory AttachmentValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CodeableConceptValueExtensionExtension extends CodeableConcept
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory CodeableConceptValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CodeableReferenceValueExtensionExtension extends CodeableReference
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory CodeableReferenceValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableReference.fromJson(json)
          as CodeableReferenceValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CodingValueExtensionExtension extends Coding
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory CodingValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ContactPointValueExtensionExtension extends ContactPoint
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ContactPointValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class CountValueExtensionExtension extends Count
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory CountValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DistanceValueExtensionExtension extends Distance
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory DistanceValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DurationValueExtensionExtension extends FhirDuration
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory DurationValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class HumanNameValueExtensionExtension extends HumanName
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory HumanNameValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class IdentifierValueExtensionExtension extends Identifier
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory IdentifierValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class MoneyValueExtensionExtension extends Money
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory MoneyValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class PeriodValueExtensionExtension extends Period
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory PeriodValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class QuantityValueExtensionExtension extends Quantity
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory QuantityValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class RangeValueExtensionExtension extends Range
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory RangeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class RatioValueExtensionExtension extends Ratio
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory RatioValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class RatioRangeValueExtensionExtension extends RatioRange
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory RatioRangeValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json) as RatioRangeValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ReferenceValueExtensionExtension extends Reference
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ReferenceValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class SampledDataValueExtensionExtension extends SampledData
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory SampledDataValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class SignatureValueExtensionExtension extends Signature
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory SignatureValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class TimingValueExtensionExtension extends Timing
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory TimingValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ContactDetailValueExtensionExtension extends ContactDetail
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ContactDetailValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json) as ContactDetailValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ContributorValueExtensionExtension extends Contributor
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ContributorValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DataRequirementValueExtensionExtension extends DataRequirement
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory DataRequirementValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json) as DataRequirementValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ExpressionValueExtensionExtension extends FhirExpression
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ExpressionValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class ParameterDefinitionValueExtensionExtension extends ParameterDefinition
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory ParameterDefinitionValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class RelatedArtifactValueExtensionExtension extends RelatedArtifact
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory RelatedArtifactValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json) as RelatedArtifactValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class TriggerDefinitionValueExtensionExtension extends TriggerDefinition
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory TriggerDefinitionValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class UsageContextValueExtensionExtension extends UsageContext
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory UsageContextValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextValueExtensionExtension;
}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
class DosageValueExtensionExtension extends Dosage
    implements ValueXExtensionExtension {
  /// Factory constructor for super class
  factory DosageValueExtensionExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageValueExtensionExtension;
}
