part of 'element_definition.dart';

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
sealed class DefaultValueXElementDefinitionElementDefinition extends DataType {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class Base64BinaryDefaultValueElementDefinitionElementDefinition
    extends FhirBase64Binary
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [Base64BinaryDefaultValueElementDefinitionElementDefinition]
  Base64BinaryDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class BooleanDefaultValueElementDefinitionElementDefinition extends FhirBoolean
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [BooleanDefaultValueElementDefinitionElementDefinition]
  BooleanDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CanonicalDefaultValueElementDefinitionElementDefinition
    extends FhirCanonical
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [CanonicalDefaultValueElementDefinitionElementDefinition]
  CanonicalDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CodeDefaultValueElementDefinitionElementDefinition extends FhirCode
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [CodeDefaultValueElementDefinitionElementDefinition]
  CodeDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json)
          as CodeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DateDefaultValueElementDefinitionElementDefinition extends FhirDate
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateDefaultValueElementDefinitionElementDefinition.fromString(
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
      ) as DateDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateDefaultValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DateTimeDefaultValueElementDefinitionElementDefinition
    extends FhirDateTime
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeDefaultValueElementDefinitionElementDefinition.fromString(
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
      ) as DateTimeDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeDefaultValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateTimeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DecimalDefaultValueElementDefinitionElementDefinition extends FhirDecimal
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [DecimalDefaultValueElementDefinitionElementDefinition]
  DecimalDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json)
          as DecimalDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class IdDefaultValueElementDefinitionElementDefinition extends FhirId
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [IdDefaultValueElementDefinitionElementDefinition]
  IdDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class InstantDefaultValueElementDefinitionElementDefinition extends FhirInstant
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantDefaultValueElementDefinitionElementDefinition.fromString(
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
      ) as InstantDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantDefaultValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantDefaultValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory InstantDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json)
          as InstantDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class IntegerDefaultValueElementDefinitionElementDefinition extends FhirInteger
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [IntegerDefaultValueElementDefinitionElementDefinition]
  IntegerDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json)
          as IntegerDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class MarkdownDefaultValueElementDefinitionElementDefinition
    extends FhirMarkdown
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [MarkdownDefaultValueElementDefinitionElementDefinition]
  MarkdownDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json)
          as MarkdownDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class OidDefaultValueElementDefinitionElementDefinition extends FhirOid
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [OidDefaultValueElementDefinitionElementDefinition]
  OidDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json)
          as OidDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class PositiveIntDefaultValueElementDefinitionElementDefinition
    extends FhirPositiveInt
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [PositiveIntDefaultValueElementDefinitionElementDefinition]
  PositiveIntDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class StringDefaultValueElementDefinitionElementDefinition extends FhirString
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [StringDefaultValueElementDefinitionElementDefinition]
  StringDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class TimeDefaultValueElementDefinitionElementDefinition extends FhirTime
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [TimeDefaultValueElementDefinitionElementDefinition]
  TimeDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json)
          as TimeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class UnsignedIntDefaultValueElementDefinitionElementDefinition
    extends FhirUnsignedInt
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [UnsignedIntDefaultValueElementDefinitionElementDefinition]
  UnsignedIntDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class UriDefaultValueElementDefinitionElementDefinition extends FhirUri
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [UriDefaultValueElementDefinitionElementDefinition]
  UriDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json)
          as UriDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class UrlDefaultValueElementDefinitionElementDefinition extends FhirUrl
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [UrlDefaultValueElementDefinitionElementDefinition]
  UrlDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json)
          as UrlDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class UuidDefaultValueElementDefinitionElementDefinition extends FhirUuid
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Constructor for [UuidDefaultValueElementDefinitionElementDefinition]
  UuidDefaultValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json)
          as UuidDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class AddressDefaultValueElementDefinitionElementDefinition extends Address
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AddressDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json)
          as AddressDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class AgeDefaultValueElementDefinitionElementDefinition extends Age
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AgeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class AnnotationDefaultValueElementDefinitionElementDefinition
    extends Annotation
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AnnotationDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json)
          as AnnotationDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class AttachmentDefaultValueElementDefinitionElementDefinition
    extends Attachment
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AttachmentDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CodeableConceptDefaultValueElementDefinitionElementDefinition
    extends CodeableConcept
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableConceptDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CodeableReferenceDefaultValueElementDefinitionElementDefinition
    extends CodeableReference
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableReferenceDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableReference.fromJson(json)
          as CodeableReferenceDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CodingDefaultValueElementDefinitionElementDefinition extends Coding
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodingDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json)
          as CodingDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ContactPointDefaultValueElementDefinitionElementDefinition
    extends ContactPoint
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactPointDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json)
          as ContactPointDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class CountDefaultValueElementDefinitionElementDefinition extends Count
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CountDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json)
          as CountDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DistanceDefaultValueElementDefinitionElementDefinition extends Distance
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DistanceDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json)
          as DistanceDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DurationDefaultValueElementDefinitionElementDefinition
    extends FhirDuration
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DurationDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class HumanNameDefaultValueElementDefinitionElementDefinition extends HumanName
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory HumanNameDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json)
          as HumanNameDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class IdentifierDefaultValueElementDefinitionElementDefinition
    extends Identifier
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory IdentifierDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json)
          as IdentifierDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class MoneyDefaultValueElementDefinitionElementDefinition extends Money
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory MoneyDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json)
          as MoneyDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class PeriodDefaultValueElementDefinitionElementDefinition extends Period
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory PeriodDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class QuantityDefaultValueElementDefinitionElementDefinition extends Quantity
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory QuantityDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class RangeDefaultValueElementDefinitionElementDefinition extends Range
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RangeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json)
          as RangeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class RatioDefaultValueElementDefinitionElementDefinition extends Ratio
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json)
          as RatioDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class RatioRangeDefaultValueElementDefinitionElementDefinition
    extends RatioRange
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioRangeDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json)
          as RatioRangeDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ReferenceDefaultValueElementDefinitionElementDefinition extends Reference
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ReferenceDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class SampledDataDefaultValueElementDefinitionElementDefinition
    extends SampledData
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SampledDataDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json)
          as SampledDataDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class SignatureDefaultValueElementDefinitionElementDefinition extends Signature
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SignatureDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json)
          as SignatureDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class TimingDefaultValueElementDefinitionElementDefinition extends Timing
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TimingDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json)
          as TimingDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ContactDetailDefaultValueElementDefinitionElementDefinition
    extends ContactDetail
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactDetailDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json)
          as ContactDetailDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ContributorDefaultValueElementDefinitionElementDefinition
    extends Contributor
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContributorDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json)
          as ContributorDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DataRequirementDefaultValueElementDefinitionElementDefinition
    extends DataRequirement
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DataRequirementDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ExpressionDefaultValueElementDefinitionElementDefinition
    extends FhirExpression
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ExpressionDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json)
          as ExpressionDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class ParameterDefinitionDefaultValueElementDefinitionElementDefinition
    extends ParameterDefinition
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ParameterDefinitionDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class RelatedArtifactDefaultValueElementDefinitionElementDefinition
    extends RelatedArtifact
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RelatedArtifactDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json)
          as RelatedArtifactDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class TriggerDefinitionDefaultValueElementDefinitionElementDefinition
    extends TriggerDefinition
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TriggerDefinitionDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class UsageContextDefaultValueElementDefinitionElementDefinition
    extends UsageContext
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory UsageContextDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json)
          as UsageContextDefaultValueElementDefinitionElementDefinition;
}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
class DosageDefaultValueElementDefinitionElementDefinition extends Dosage
    implements DefaultValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DosageDefaultValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json)
          as DosageDefaultValueElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
sealed class FixedXElementDefinitionElementDefinition extends DataType {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class Base64BinaryFixedElementDefinitionElementDefinition
    extends FhirBase64Binary
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [Base64BinaryFixedElementDefinitionElementDefinition]
  Base64BinaryFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class BooleanFixedElementDefinitionElementDefinition extends FhirBoolean
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [BooleanFixedElementDefinitionElementDefinition]
  BooleanFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CanonicalFixedElementDefinitionElementDefinition extends FhirCanonical
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [CanonicalFixedElementDefinitionElementDefinition]
  CanonicalFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CodeFixedElementDefinitionElementDefinition extends FhirCode
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [CodeFixedElementDefinitionElementDefinition]
  CodeFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DateFixedElementDefinitionElementDefinition extends FhirDate
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateFixedElementDefinitionElementDefinition.fromString(
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
      ) as DateFixedElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateFixedElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateFixedElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DateTimeFixedElementDefinitionElementDefinition extends FhirDateTime
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeFixedElementDefinitionElementDefinition.fromString(
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
      ) as DateTimeFixedElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeFixedElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeFixedElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateTimeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DecimalFixedElementDefinitionElementDefinition extends FhirDecimal
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [DecimalFixedElementDefinitionElementDefinition]
  DecimalFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json)
          as DecimalFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class IdFixedElementDefinitionElementDefinition extends FhirId
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [IdFixedElementDefinitionElementDefinition]
  IdFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class InstantFixedElementDefinitionElementDefinition extends FhirInstant
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantFixedElementDefinitionElementDefinition.fromString(
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
      ) as InstantFixedElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantFixedElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantFixedElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory InstantFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json)
          as InstantFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class IntegerFixedElementDefinitionElementDefinition extends FhirInteger
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [IntegerFixedElementDefinitionElementDefinition]
  IntegerFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json)
          as IntegerFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class MarkdownFixedElementDefinitionElementDefinition extends FhirMarkdown
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [MarkdownFixedElementDefinitionElementDefinition]
  MarkdownFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json)
          as MarkdownFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class OidFixedElementDefinitionElementDefinition extends FhirOid
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [OidFixedElementDefinitionElementDefinition]
  OidFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class PositiveIntFixedElementDefinitionElementDefinition extends FhirPositiveInt
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [PositiveIntFixedElementDefinitionElementDefinition]
  PositiveIntFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class StringFixedElementDefinitionElementDefinition extends FhirString
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [StringFixedElementDefinitionElementDefinition]
  StringFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class TimeFixedElementDefinitionElementDefinition extends FhirTime
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [TimeFixedElementDefinitionElementDefinition]
  TimeFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class UnsignedIntFixedElementDefinitionElementDefinition extends FhirUnsignedInt
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [UnsignedIntFixedElementDefinitionElementDefinition]
  UnsignedIntFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class UriFixedElementDefinitionElementDefinition extends FhirUri
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [UriFixedElementDefinitionElementDefinition]
  UriFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class UrlFixedElementDefinitionElementDefinition extends FhirUrl
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [UrlFixedElementDefinitionElementDefinition]
  UrlFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class UuidFixedElementDefinitionElementDefinition extends FhirUuid
    implements FixedXElementDefinitionElementDefinition {
  /// Constructor for [UuidFixedElementDefinitionElementDefinition]
  UuidFixedElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class AddressFixedElementDefinitionElementDefinition extends Address
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AddressFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class AgeFixedElementDefinitionElementDefinition extends Age
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AgeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class AnnotationFixedElementDefinitionElementDefinition extends Annotation
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AnnotationFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json)
          as AnnotationFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class AttachmentFixedElementDefinitionElementDefinition extends Attachment
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AttachmentFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CodeableConceptFixedElementDefinitionElementDefinition
    extends CodeableConcept
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableConceptFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CodeableReferenceFixedElementDefinitionElementDefinition
    extends CodeableReference
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableReferenceFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableReference.fromJson(json)
          as CodeableReferenceFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CodingFixedElementDefinitionElementDefinition extends Coding
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodingFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ContactPointFixedElementDefinitionElementDefinition extends ContactPoint
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactPointFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json)
          as ContactPointFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class CountFixedElementDefinitionElementDefinition extends Count
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CountFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DistanceFixedElementDefinitionElementDefinition extends Distance
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DistanceFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json)
          as DistanceFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DurationFixedElementDefinitionElementDefinition extends FhirDuration
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DurationFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class HumanNameFixedElementDefinitionElementDefinition extends HumanName
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory HumanNameFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json)
          as HumanNameFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class IdentifierFixedElementDefinitionElementDefinition extends Identifier
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory IdentifierFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json)
          as IdentifierFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class MoneyFixedElementDefinitionElementDefinition extends Money
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory MoneyFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class PeriodFixedElementDefinitionElementDefinition extends Period
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory PeriodFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class QuantityFixedElementDefinitionElementDefinition extends Quantity
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory QuantityFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class RangeFixedElementDefinitionElementDefinition extends Range
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RangeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class RatioFixedElementDefinitionElementDefinition extends Ratio
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class RatioRangeFixedElementDefinitionElementDefinition extends RatioRange
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioRangeFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json)
          as RatioRangeFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ReferenceFixedElementDefinitionElementDefinition extends Reference
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ReferenceFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class SampledDataFixedElementDefinitionElementDefinition extends SampledData
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SampledDataFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json)
          as SampledDataFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class SignatureFixedElementDefinitionElementDefinition extends Signature
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SignatureFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json)
          as SignatureFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class TimingFixedElementDefinitionElementDefinition extends Timing
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TimingFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ContactDetailFixedElementDefinitionElementDefinition extends ContactDetail
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactDetailFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json)
          as ContactDetailFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ContributorFixedElementDefinitionElementDefinition extends Contributor
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContributorFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json)
          as ContributorFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DataRequirementFixedElementDefinitionElementDefinition
    extends DataRequirement
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DataRequirementFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ExpressionFixedElementDefinitionElementDefinition extends FhirExpression
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ExpressionFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json)
          as ExpressionFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class ParameterDefinitionFixedElementDefinitionElementDefinition
    extends ParameterDefinition
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ParameterDefinitionFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class RelatedArtifactFixedElementDefinitionElementDefinition
    extends RelatedArtifact
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RelatedArtifactFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json)
          as RelatedArtifactFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class TriggerDefinitionFixedElementDefinitionElementDefinition
    extends TriggerDefinition
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TriggerDefinitionFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class UsageContextFixedElementDefinitionElementDefinition extends UsageContext
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory UsageContextFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json)
          as UsageContextFixedElementDefinitionElementDefinition;
}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
class DosageFixedElementDefinitionElementDefinition extends Dosage
    implements FixedXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DosageFixedElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageFixedElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
sealed class PatternXElementDefinitionElementDefinition extends DataType {}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class Base64BinaryPatternElementDefinitionElementDefinition
    extends FhirBase64Binary
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [Base64BinaryPatternElementDefinitionElementDefinition]
  Base64BinaryPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class BooleanPatternElementDefinitionElementDefinition extends FhirBoolean
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [BooleanPatternElementDefinitionElementDefinition]
  BooleanPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CanonicalPatternElementDefinitionElementDefinition extends FhirCanonical
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [CanonicalPatternElementDefinitionElementDefinition]
  CanonicalPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CodePatternElementDefinitionElementDefinition extends FhirCode
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [CodePatternElementDefinitionElementDefinition]
  CodePatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DatePatternElementDefinitionElementDefinition extends FhirDate
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DatePatternElementDefinitionElementDefinition.fromString(
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
      ) as DatePatternElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DatePatternElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DatePatternElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DatePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DatePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DateTimePatternElementDefinitionElementDefinition extends FhirDateTime
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimePatternElementDefinitionElementDefinition.fromString(
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
      ) as DateTimePatternElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimePatternElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimePatternElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateTimePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DecimalPatternElementDefinitionElementDefinition extends FhirDecimal
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [DecimalPatternElementDefinitionElementDefinition]
  DecimalPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json)
          as DecimalPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class IdPatternElementDefinitionElementDefinition extends FhirId
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [IdPatternElementDefinitionElementDefinition]
  IdPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class InstantPatternElementDefinitionElementDefinition extends FhirInstant
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantPatternElementDefinitionElementDefinition.fromString(
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
      ) as InstantPatternElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantPatternElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantPatternElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory InstantPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json)
          as InstantPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class IntegerPatternElementDefinitionElementDefinition extends FhirInteger
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [IntegerPatternElementDefinitionElementDefinition]
  IntegerPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json)
          as IntegerPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class MarkdownPatternElementDefinitionElementDefinition extends FhirMarkdown
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [MarkdownPatternElementDefinitionElementDefinition]
  MarkdownPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json)
          as MarkdownPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class OidPatternElementDefinitionElementDefinition extends FhirOid
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [OidPatternElementDefinitionElementDefinition]
  OidPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class PositiveIntPatternElementDefinitionElementDefinition
    extends FhirPositiveInt
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [PositiveIntPatternElementDefinitionElementDefinition]
  PositiveIntPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class StringPatternElementDefinitionElementDefinition extends FhirString
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [StringPatternElementDefinitionElementDefinition]
  StringPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class TimePatternElementDefinitionElementDefinition extends FhirTime
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [TimePatternElementDefinitionElementDefinition]
  TimePatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class UnsignedIntPatternElementDefinitionElementDefinition
    extends FhirUnsignedInt
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [UnsignedIntPatternElementDefinitionElementDefinition]
  UnsignedIntPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class UriPatternElementDefinitionElementDefinition extends FhirUri
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [UriPatternElementDefinitionElementDefinition]
  UriPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class UrlPatternElementDefinitionElementDefinition extends FhirUrl
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [UrlPatternElementDefinitionElementDefinition]
  UrlPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class UuidPatternElementDefinitionElementDefinition extends FhirUuid
    implements PatternXElementDefinitionElementDefinition {
  /// Constructor for [UuidPatternElementDefinitionElementDefinition]
  UuidPatternElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class AddressPatternElementDefinitionElementDefinition extends Address
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AddressPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json)
          as AddressPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class AgePatternElementDefinitionElementDefinition extends Age
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AgePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class AnnotationPatternElementDefinitionElementDefinition extends Annotation
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AnnotationPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json)
          as AnnotationPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class AttachmentPatternElementDefinitionElementDefinition extends Attachment
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory AttachmentPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CodeableConceptPatternElementDefinitionElementDefinition
    extends CodeableConcept
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableConceptPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CodeableReferencePatternElementDefinitionElementDefinition
    extends CodeableReference
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodeableReferencePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableReference.fromJson(json)
          as CodeableReferencePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CodingPatternElementDefinitionElementDefinition extends Coding
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CodingPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ContactPointPatternElementDefinitionElementDefinition extends ContactPoint
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactPointPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json)
          as ContactPointPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class CountPatternElementDefinitionElementDefinition extends Count
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory CountPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DistancePatternElementDefinitionElementDefinition extends Distance
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DistancePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json)
          as DistancePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DurationPatternElementDefinitionElementDefinition extends FhirDuration
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DurationPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class HumanNamePatternElementDefinitionElementDefinition extends HumanName
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory HumanNamePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json)
          as HumanNamePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class IdentifierPatternElementDefinitionElementDefinition extends Identifier
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory IdentifierPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json)
          as IdentifierPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class MoneyPatternElementDefinitionElementDefinition extends Money
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory MoneyPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class PeriodPatternElementDefinitionElementDefinition extends Period
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory PeriodPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class QuantityPatternElementDefinitionElementDefinition extends Quantity
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory QuantityPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class RangePatternElementDefinitionElementDefinition extends Range
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RangePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class RatioPatternElementDefinitionElementDefinition extends Ratio
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class RatioRangePatternElementDefinitionElementDefinition extends RatioRange
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RatioRangePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json)
          as RatioRangePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ReferencePatternElementDefinitionElementDefinition extends Reference
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ReferencePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferencePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class SampledDataPatternElementDefinitionElementDefinition extends SampledData
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SampledDataPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json)
          as SampledDataPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class SignaturePatternElementDefinitionElementDefinition extends Signature
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory SignaturePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json)
          as SignaturePatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class TimingPatternElementDefinitionElementDefinition extends Timing
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TimingPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ContactDetailPatternElementDefinitionElementDefinition
    extends ContactDetail
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContactDetailPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json)
          as ContactDetailPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ContributorPatternElementDefinitionElementDefinition extends Contributor
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ContributorPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json)
          as ContributorPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DataRequirementPatternElementDefinitionElementDefinition
    extends DataRequirement
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DataRequirementPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ExpressionPatternElementDefinitionElementDefinition extends FhirExpression
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ExpressionPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json)
          as ExpressionPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class ParameterDefinitionPatternElementDefinitionElementDefinition
    extends ParameterDefinition
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory ParameterDefinitionPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class RelatedArtifactPatternElementDefinitionElementDefinition
    extends RelatedArtifact
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory RelatedArtifactPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json)
          as RelatedArtifactPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class TriggerDefinitionPatternElementDefinitionElementDefinition
    extends TriggerDefinition
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory TriggerDefinitionPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class UsageContextPatternElementDefinitionElementDefinition extends UsageContext
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory UsageContextPatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json)
          as UsageContextPatternElementDefinitionElementDefinition;
}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
class DosagePatternElementDefinitionElementDefinition extends Dosage
    implements PatternXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory DosagePatternElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosagePatternElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
sealed class MinValueXElementDefinitionElementDefinition extends DataType {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DateMinValueElementDefinitionElementDefinition extends FhirDate
    implements MinValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateMinValueElementDefinitionElementDefinition.fromString(
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
      ) as DateMinValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateMinValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateMinValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DateTimeMinValueElementDefinitionElementDefinition extends FhirDateTime
    implements MinValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeMinValueElementDefinitionElementDefinition.fromString(
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
      ) as DateTimeMinValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeMinValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeMinValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateTimeMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class InstantMinValueElementDefinitionElementDefinition extends FhirInstant
    implements MinValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantMinValueElementDefinitionElementDefinition.fromString(
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
      ) as InstantMinValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantMinValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantMinValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory InstantMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json)
          as InstantMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class TimeMinValueElementDefinitionElementDefinition extends FhirTime
    implements MinValueXElementDefinitionElementDefinition {
  /// Constructor for [TimeMinValueElementDefinitionElementDefinition]
  TimeMinValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DecimalMinValueElementDefinitionElementDefinition extends FhirDecimal
    implements MinValueXElementDefinitionElementDefinition {
  /// Constructor for [DecimalMinValueElementDefinitionElementDefinition]
  DecimalMinValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json)
          as DecimalMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class IntegerMinValueElementDefinitionElementDefinition extends FhirInteger
    implements MinValueXElementDefinitionElementDefinition {
  /// Constructor for [IntegerMinValueElementDefinitionElementDefinition]
  IntegerMinValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json)
          as IntegerMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class PositiveIntMinValueElementDefinitionElementDefinition
    extends FhirPositiveInt
    implements MinValueXElementDefinitionElementDefinition {
  /// Constructor for [PositiveIntMinValueElementDefinitionElementDefinition]
  PositiveIntMinValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class UnsignedIntMinValueElementDefinitionElementDefinition
    extends FhirUnsignedInt
    implements MinValueXElementDefinitionElementDefinition {
  /// Constructor for [UnsignedIntMinValueElementDefinitionElementDefinition]
  UnsignedIntMinValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntMinValueElementDefinitionElementDefinition;
}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class QuantityMinValueElementDefinitionElementDefinition extends Quantity
    implements MinValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory QuantityMinValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityMinValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
sealed class MaxValueXElementDefinitionElementDefinition extends DataType {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DateMaxValueElementDefinitionElementDefinition extends FhirDate
    implements MaxValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateMaxValueElementDefinitionElementDefinition.fromString(
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
      ) as DateMaxValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateMaxValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateMaxValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DateTimeMaxValueElementDefinitionElementDefinition extends FhirDateTime
    implements MaxValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeMaxValueElementDefinitionElementDefinition.fromString(
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
      ) as DateTimeMaxValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeMaxValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeMaxValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory DateTimeMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class InstantMaxValueElementDefinitionElementDefinition extends FhirInstant
    implements MaxValueXElementDefinitionElementDefinition {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantMaxValueElementDefinitionElementDefinition.fromString(
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
      ) as InstantMaxValueElementDefinitionElementDefinition;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantMaxValueElementDefinitionElementDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantMaxValueElementDefinitionElementDefinition;

  /// Factory constructor for super class
  factory InstantMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json)
          as InstantMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class TimeMaxValueElementDefinitionElementDefinition extends FhirTime
    implements MaxValueXElementDefinitionElementDefinition {
  /// Constructor for [TimeMaxValueElementDefinitionElementDefinition]
  TimeMaxValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class DecimalMaxValueElementDefinitionElementDefinition extends FhirDecimal
    implements MaxValueXElementDefinitionElementDefinition {
  /// Constructor for [DecimalMaxValueElementDefinitionElementDefinition]
  DecimalMaxValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json)
          as DecimalMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class IntegerMaxValueElementDefinitionElementDefinition extends FhirInteger
    implements MaxValueXElementDefinitionElementDefinition {
  /// Constructor for [IntegerMaxValueElementDefinitionElementDefinition]
  IntegerMaxValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json)
          as IntegerMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class PositiveIntMaxValueElementDefinitionElementDefinition
    extends FhirPositiveInt
    implements MaxValueXElementDefinitionElementDefinition {
  /// Constructor for [PositiveIntMaxValueElementDefinitionElementDefinition]
  PositiveIntMaxValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class UnsignedIntMaxValueElementDefinitionElementDefinition
    extends FhirUnsignedInt
    implements MaxValueXElementDefinitionElementDefinition {
  /// Constructor for [UnsignedIntMaxValueElementDefinitionElementDefinition]
  UnsignedIntMaxValueElementDefinitionElementDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntMaxValueElementDefinitionElementDefinition;
}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
class QuantityMaxValueElementDefinitionElementDefinition extends Quantity
    implements MaxValueXElementDefinitionElementDefinition {
  /// Factory constructor for super class
  factory QuantityMaxValueElementDefinitionElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityMaxValueElementDefinitionElementDefinition;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
sealed class ValueXElementDefinitionExample extends DataType {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class Base64BinaryValueElementDefinitionExample extends FhirBase64Binary
    implements ValueXElementDefinitionExample {
  /// Constructor for [Base64BinaryValueElementDefinitionExample]
  Base64BinaryValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class BooleanValueElementDefinitionExample extends FhirBoolean
    implements ValueXElementDefinitionExample {
  /// Constructor for [BooleanValueElementDefinitionExample]
  BooleanValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CanonicalValueElementDefinitionExample extends FhirCanonical
    implements ValueXElementDefinitionExample {
  /// Constructor for [CanonicalValueElementDefinitionExample]
  CanonicalValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CodeValueElementDefinitionExample extends FhirCode
    implements ValueXElementDefinitionExample {
  /// Constructor for [CodeValueElementDefinitionExample]
  CodeValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DateValueElementDefinitionExample extends FhirDate
    implements ValueXElementDefinitionExample {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueElementDefinitionExample.fromString(
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
      ) as DateValueElementDefinitionExample;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueElementDefinitionExample.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueElementDefinitionExample;

  /// Factory constructor for super class
  factory DateValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DateTimeValueElementDefinitionExample extends FhirDateTime
    implements ValueXElementDefinitionExample {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueElementDefinitionExample.fromString(
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
      ) as DateTimeValueElementDefinitionExample;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueElementDefinitionExample.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueElementDefinitionExample;

  /// Factory constructor for super class
  factory DateTimeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DecimalValueElementDefinitionExample extends FhirDecimal
    implements ValueXElementDefinitionExample {
  /// Constructor for [DecimalValueElementDefinitionExample]
  DecimalValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class IdValueElementDefinitionExample extends FhirId
    implements ValueXElementDefinitionExample {
  /// Constructor for [IdValueElementDefinitionExample]
  IdValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class InstantValueElementDefinitionExample extends FhirInstant
    implements ValueXElementDefinitionExample {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantValueElementDefinitionExample.fromString(
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
      ) as InstantValueElementDefinitionExample;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantValueElementDefinitionExample.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantValueElementDefinitionExample;

  /// Factory constructor for super class
  factory InstantValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class IntegerValueElementDefinitionExample extends FhirInteger
    implements ValueXElementDefinitionExample {
  /// Constructor for [IntegerValueElementDefinitionExample]
  IntegerValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class MarkdownValueElementDefinitionExample extends FhirMarkdown
    implements ValueXElementDefinitionExample {
  /// Constructor for [MarkdownValueElementDefinitionExample]
  MarkdownValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class OidValueElementDefinitionExample extends FhirOid
    implements ValueXElementDefinitionExample {
  /// Constructor for [OidValueElementDefinitionExample]
  OidValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class PositiveIntValueElementDefinitionExample extends FhirPositiveInt
    implements ValueXElementDefinitionExample {
  /// Constructor for [PositiveIntValueElementDefinitionExample]
  PositiveIntValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class StringValueElementDefinitionExample extends FhirString
    implements ValueXElementDefinitionExample {
  /// Constructor for [StringValueElementDefinitionExample]
  StringValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class TimeValueElementDefinitionExample extends FhirTime
    implements ValueXElementDefinitionExample {
  /// Constructor for [TimeValueElementDefinitionExample]
  TimeValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class UnsignedIntValueElementDefinitionExample extends FhirUnsignedInt
    implements ValueXElementDefinitionExample {
  /// Constructor for [UnsignedIntValueElementDefinitionExample]
  UnsignedIntValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class UriValueElementDefinitionExample extends FhirUri
    implements ValueXElementDefinitionExample {
  /// Constructor for [UriValueElementDefinitionExample]
  UriValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class UrlValueElementDefinitionExample extends FhirUrl
    implements ValueXElementDefinitionExample {
  /// Constructor for [UrlValueElementDefinitionExample]
  UrlValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class UuidValueElementDefinitionExample extends FhirUuid
    implements ValueXElementDefinitionExample {
  /// Constructor for [UuidValueElementDefinitionExample]
  UuidValueElementDefinitionExample(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class AddressValueElementDefinitionExample extends Address
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory AddressValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class AgeValueElementDefinitionExample extends Age
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory AgeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class AnnotationValueElementDefinitionExample extends Annotation
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory AnnotationValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class AttachmentValueElementDefinitionExample extends Attachment
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory AttachmentValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CodeableConceptValueElementDefinitionExample extends CodeableConcept
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory CodeableConceptValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CodeableReferenceValueElementDefinitionExample extends CodeableReference
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory CodeableReferenceValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableReference.fromJson(json)
          as CodeableReferenceValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CodingValueElementDefinitionExample extends Coding
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory CodingValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ContactPointValueElementDefinitionExample extends ContactPoint
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ContactPointValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class CountValueElementDefinitionExample extends Count
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory CountValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DistanceValueElementDefinitionExample extends Distance
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory DistanceValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DurationValueElementDefinitionExample extends FhirDuration
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory DurationValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class HumanNameValueElementDefinitionExample extends HumanName
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory HumanNameValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class IdentifierValueElementDefinitionExample extends Identifier
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory IdentifierValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class MoneyValueElementDefinitionExample extends Money
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory MoneyValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class PeriodValueElementDefinitionExample extends Period
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory PeriodValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class QuantityValueElementDefinitionExample extends Quantity
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory QuantityValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class RangeValueElementDefinitionExample extends Range
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory RangeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class RatioValueElementDefinitionExample extends Ratio
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory RatioValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class RatioRangeValueElementDefinitionExample extends RatioRange
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory RatioRangeValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json) as RatioRangeValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ReferenceValueElementDefinitionExample extends Reference
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ReferenceValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class SampledDataValueElementDefinitionExample extends SampledData
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory SampledDataValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class SignatureValueElementDefinitionExample extends Signature
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory SignatureValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class TimingValueElementDefinitionExample extends Timing
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory TimingValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ContactDetailValueElementDefinitionExample extends ContactDetail
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ContactDetailValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json)
          as ContactDetailValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ContributorValueElementDefinitionExample extends Contributor
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ContributorValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DataRequirementValueElementDefinitionExample extends DataRequirement
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory DataRequirementValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ExpressionValueElementDefinitionExample extends FhirExpression
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ExpressionValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class ParameterDefinitionValueElementDefinitionExample
    extends ParameterDefinition implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory ParameterDefinitionValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class RelatedArtifactValueElementDefinitionExample extends RelatedArtifact
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory RelatedArtifactValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json)
          as RelatedArtifactValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class TriggerDefinitionValueElementDefinitionExample extends TriggerDefinition
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory TriggerDefinitionValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class UsageContextValueElementDefinitionExample extends UsageContext
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory UsageContextValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextValueElementDefinitionExample;
}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
class DosageValueElementDefinitionExample extends Dosage
    implements ValueXElementDefinitionExample {
  /// Factory constructor for super class
  factory DosageValueElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageValueElementDefinitionExample;
}
