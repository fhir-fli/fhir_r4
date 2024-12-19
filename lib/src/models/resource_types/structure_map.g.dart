part of 'structure_map.dart';

/// A value to use if there is no existing value in the source object.
sealed class DefaultValueXStructureMapSource {}

/// A value to use if there is no existing value in the source object.
class Base64BinaryDefaultValueStructureMapSource extends FhirBase64Binary
    implements DefaultValueXStructureMapSource {
  /// Constructor for [Base64BinaryDefaultValueStructureMapSource]
  Base64BinaryDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class BooleanDefaultValueStructureMapSource extends FhirBoolean
    implements DefaultValueXStructureMapSource {
  /// Constructor for [BooleanDefaultValueStructureMapSource]
  BooleanDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class CanonicalDefaultValueStructureMapSource extends FhirCanonical
    implements DefaultValueXStructureMapSource {
  /// Constructor for [CanonicalDefaultValueStructureMapSource]
  CanonicalDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class CodeDefaultValueStructureMapSource extends FhirCode
    implements DefaultValueXStructureMapSource {
  /// Constructor for [CodeDefaultValueStructureMapSource]
  CodeDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DateDefaultValueStructureMapSource extends FhirDate
    implements DefaultValueXStructureMapSource {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateDefaultValueStructureMapSource.fromString(
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
      ) as DateDefaultValueStructureMapSource;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateDefaultValueStructureMapSource.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateDefaultValueStructureMapSource;

  /// Factory constructor for super class
  factory DateDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DateTimeDefaultValueStructureMapSource extends FhirDateTime
    implements DefaultValueXStructureMapSource {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeDefaultValueStructureMapSource.fromString(
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
      ) as DateTimeDefaultValueStructureMapSource;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeDefaultValueStructureMapSource.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeDefaultValueStructureMapSource;

  /// Factory constructor for super class
  factory DateTimeDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DecimalDefaultValueStructureMapSource extends FhirDecimal
    implements DefaultValueXStructureMapSource {
  /// Constructor for [DecimalDefaultValueStructureMapSource]
  DecimalDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class IdDefaultValueStructureMapSource extends FhirId
    implements DefaultValueXStructureMapSource {
  /// Constructor for [IdDefaultValueStructureMapSource]
  IdDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class InstantDefaultValueStructureMapSource extends FhirInstant
    implements DefaultValueXStructureMapSource {
  /// Factory constructor to create a [FhirInstant] from a [String]
  factory InstantDefaultValueStructureMapSource.fromString(
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
      ) as InstantDefaultValueStructureMapSource;

  /// Factory constructor to create a [FhirInstant] from a [DateTime]
  factory InstantDefaultValueStructureMapSource.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirInstant.fromDateTime(input, element: element)
          as InstantDefaultValueStructureMapSource;

  /// Factory constructor for super class
  factory InstantDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInstant.fromJson(json) as InstantDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class IntegerDefaultValueStructureMapSource extends FhirInteger
    implements DefaultValueXStructureMapSource {
  /// Constructor for [IntegerDefaultValueStructureMapSource]
  IntegerDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class MarkdownDefaultValueStructureMapSource extends FhirMarkdown
    implements DefaultValueXStructureMapSource {
  /// Constructor for [MarkdownDefaultValueStructureMapSource]
  MarkdownDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class OidDefaultValueStructureMapSource extends FhirOid
    implements DefaultValueXStructureMapSource {
  /// Constructor for [OidDefaultValueStructureMapSource]
  OidDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory OidDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirOid.fromJson(json) as OidDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class PositiveIntDefaultValueStructureMapSource extends FhirPositiveInt
    implements DefaultValueXStructureMapSource {
  /// Constructor for [PositiveIntDefaultValueStructureMapSource]
  PositiveIntDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class StringDefaultValueStructureMapSource extends FhirString
    implements DefaultValueXStructureMapSource {
  /// Constructor for [StringDefaultValueStructureMapSource]
  StringDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class TimeDefaultValueStructureMapSource extends FhirTime
    implements DefaultValueXStructureMapSource {
  /// Constructor for [TimeDefaultValueStructureMapSource]
  TimeDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory TimeDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirTime.fromJson(json) as TimeDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class UnsignedIntDefaultValueStructureMapSource extends FhirUnsignedInt
    implements DefaultValueXStructureMapSource {
  /// Constructor for [UnsignedIntDefaultValueStructureMapSource]
  UnsignedIntDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class UriDefaultValueStructureMapSource extends FhirUri
    implements DefaultValueXStructureMapSource {
  /// Constructor for [UriDefaultValueStructureMapSource]
  UriDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class UrlDefaultValueStructureMapSource extends FhirUrl
    implements DefaultValueXStructureMapSource {
  /// Constructor for [UrlDefaultValueStructureMapSource]
  UrlDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UrlDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUrl.fromJson(json) as UrlDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class UuidDefaultValueStructureMapSource extends FhirUuid
    implements DefaultValueXStructureMapSource {
  /// Constructor for [UuidDefaultValueStructureMapSource]
  UuidDefaultValueStructureMapSource(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UuidDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUuid.fromJson(json) as UuidDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class AddressDefaultValueStructureMapSource extends Address
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory AddressDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class AgeDefaultValueStructureMapSource extends Age
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory AgeDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class AnnotationDefaultValueStructureMapSource extends Annotation
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory AnnotationDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Annotation.fromJson(json) as AnnotationDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class AttachmentDefaultValueStructureMapSource extends Attachment
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory AttachmentDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class CodeableConceptDefaultValueStructureMapSource extends CodeableConcept
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory CodeableConceptDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class CodingDefaultValueStructureMapSource extends Coding
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory CodingDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ContactPointDefaultValueStructureMapSource extends ContactPoint
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ContactPointDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactPoint.fromJson(json) as ContactPointDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class CountDefaultValueStructureMapSource extends Count
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory CountDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Count.fromJson(json) as CountDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DistanceDefaultValueStructureMapSource extends Distance
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory DistanceDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Distance.fromJson(json) as DistanceDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DurationDefaultValueStructureMapSource extends FhirDuration
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory DurationDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class HumanNameDefaultValueStructureMapSource extends HumanName
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory HumanNameDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      HumanName.fromJson(json) as HumanNameDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class IdentifierDefaultValueStructureMapSource extends Identifier
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory IdentifierDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class MoneyDefaultValueStructureMapSource extends Money
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory MoneyDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class PeriodDefaultValueStructureMapSource extends Period
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory PeriodDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class QuantityDefaultValueStructureMapSource extends Quantity
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory QuantityDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class RangeDefaultValueStructureMapSource extends Range
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory RangeDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class RatioDefaultValueStructureMapSource extends Ratio
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory RatioDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ReferenceDefaultValueStructureMapSource extends Reference
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ReferenceDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class SampledDataDefaultValueStructureMapSource extends SampledData
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory SampledDataDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      SampledData.fromJson(json) as SampledDataDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class SignatureDefaultValueStructureMapSource extends Signature
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory SignatureDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Signature.fromJson(json) as SignatureDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class TimingDefaultValueStructureMapSource extends Timing
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory TimingDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ContactDetailDefaultValueStructureMapSource extends ContactDetail
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ContactDetailDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      ContactDetail.fromJson(json)
          as ContactDetailDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ContributorDefaultValueStructureMapSource extends Contributor
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ContributorDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Contributor.fromJson(json) as ContributorDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DataRequirementDefaultValueStructureMapSource extends DataRequirement
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory DataRequirementDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ExpressionDefaultValueStructureMapSource extends FhirExpression
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ExpressionDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json) as ExpressionDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class ParameterDefinitionDefaultValueStructureMapSource
    extends ParameterDefinition implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory ParameterDefinitionDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      ParameterDefinition.fromJson(json)
          as ParameterDefinitionDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class RelatedArtifactDefaultValueStructureMapSource extends RelatedArtifact
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory RelatedArtifactDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      RelatedArtifact.fromJson(json)
          as RelatedArtifactDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class TriggerDefinitionDefaultValueStructureMapSource extends TriggerDefinition
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory TriggerDefinitionDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      TriggerDefinition.fromJson(json)
          as TriggerDefinitionDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class UsageContextDefaultValueStructureMapSource extends UsageContext
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory UsageContextDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      UsageContext.fromJson(json) as UsageContextDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class DosageDefaultValueStructureMapSource extends Dosage
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory DosageDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      Dosage.fromJson(json) as DosageDefaultValueStructureMapSource;
}

/// A value to use if there is no existing value in the source object.
class MetaDefaultValueStructureMapSource extends FhirMeta
    implements DefaultValueXStructureMapSource {
  /// Factory constructor for super class
  factory MetaDefaultValueStructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMeta.fromJson(json) as MetaDefaultValueStructureMapSource;
}

/// Parameter value - variable or literal.
sealed class ValueXStructureMapParameter {}

/// Parameter value - variable or literal.
class IdValueStructureMapParameter extends FhirId
    implements ValueXStructureMapParameter {
  /// Constructor for [IdValueStructureMapParameter]
  IdValueStructureMapParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IdValueStructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirId.fromJson(json) as IdValueStructureMapParameter;
}

/// Parameter value - variable or literal.
class StringValueStructureMapParameter extends FhirString
    implements ValueXStructureMapParameter {
  /// Constructor for [StringValueStructureMapParameter]
  StringValueStructureMapParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueStructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueStructureMapParameter;
}

/// Parameter value - variable or literal.
class BooleanValueStructureMapParameter extends FhirBoolean
    implements ValueXStructureMapParameter {
  /// Constructor for [BooleanValueStructureMapParameter]
  BooleanValueStructureMapParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueStructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueStructureMapParameter;
}

/// Parameter value - variable or literal.
class IntegerValueStructureMapParameter extends FhirInteger
    implements ValueXStructureMapParameter {
  /// Constructor for [IntegerValueStructureMapParameter]
  IntegerValueStructureMapParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueStructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueStructureMapParameter;
}

/// Parameter value - variable or literal.
class DecimalValueStructureMapParameter extends FhirDecimal
    implements ValueXStructureMapParameter {
  /// Constructor for [DecimalValueStructureMapParameter]
  DecimalValueStructureMapParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueStructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueStructureMapParameter;
}
