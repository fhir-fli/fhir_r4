import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final List<dynamic> representation;
  final List<PrimitiveElement> Representation;
  final String sliceName;
  final PrimitiveElement SliceName;
  final FhirBoolean sliceIsConstraining;
  final PrimitiveElement SliceIsConstraining;
  final String label;
  final PrimitiveElement Label;
  final List<Coding> code;
  final ElementDefinition_Slicing slicing;
  final String short;
  final PrimitiveElement Short;
  final FhirMarkdown definition;
  final PrimitiveElement Definition;
  final FhirMarkdown comment;
  final PrimitiveElement Comment;
  final FhirMarkdown requirements;
  final PrimitiveElement Requirements;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final FhirUnsignedInt min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final ElementDefinition_Base base;
  final FhirUri contentReference;
  final PrimitiveElement ContentReference;
  final List<ElementDefinitionType> type;
  final String defaultValueBase64Binary;
  final PrimitiveElement DefaultValueBase64Binary;
  final bool defaultValueBoolean;
  final PrimitiveElement DefaultValueBoolean;
  final String defaultValueCanonical;
  final PrimitiveElement DefaultValueCanonical;
  final String defaultValueCode;
  final PrimitiveElement DefaultValueCode;
  final String defaultValueDate;
  final PrimitiveElement DefaultValueDate;
  final String defaultValueDateTime;
  final PrimitiveElement DefaultValueDateTime;
  final double defaultValueDecimal;
  final PrimitiveElement DefaultValueDecimal;
  final String defaultValueId;
  final PrimitiveElement DefaultValueId;
  final String defaultValueInstant;
  final PrimitiveElement DefaultValueInstant;
  final double defaultValueInteger;
  final PrimitiveElement DefaultValueInteger;
  final String defaultValueMarkdown;
  final PrimitiveElement DefaultValueMarkdown;
  final String defaultValueOid;
  final PrimitiveElement DefaultValueOid;
  final double defaultValuePositiveInt;
  final PrimitiveElement DefaultValuePositiveInt;
  final String defaultValueString;
  final PrimitiveElement DefaultValueString;
  final String defaultValueTime;
  final PrimitiveElement DefaultValueTime;
  final double defaultValueUnsignedInt;
  final PrimitiveElement DefaultValueUnsignedInt;
  final String defaultValueUri;
  final PrimitiveElement DefaultValueUri;
  final String defaultValueUrl;
  final PrimitiveElement DefaultValueUrl;
  final String defaultValueUuid;
  final PrimitiveElement DefaultValueUuid;
  final Address defaultValueAddress;
  final Age defaultValueAge;
  final Annotation defaultValueAnnotation;
  final Attachment defaultValueAttachment;
  final CodeableConcept defaultValueCodeableConcept;
  final CodeableReference defaultValueCodeableReference;
  final Coding defaultValueCoding;
  final ContactPoint defaultValueContactPoint;
  final Count defaultValueCount;
  final Distance defaultValueDistance;
  final FhirDuration defaultValueDuration;
  final HumanName defaultValueHumanName;
  final Identifier defaultValueIdentifier;
  final Money defaultValueMoney;
  final Period defaultValuePeriod;
  final Quantity defaultValueQuantity;
  final Range defaultValueRange;
  final Ratio defaultValueRatio;
  final RatioRange defaultValueRatioRange;
  final Reference defaultValueReference;
  final SampledData defaultValueSampledData;
  final Signature defaultValueSignature;
  final Timing defaultValueTiming;
  final ContactDetail defaultValueContactDetail;
  final Contributor defaultValueContributor;
  final DataRequirement defaultValueDataRequirement;
  final FhirExpression defaultValueExpression;
  final ParameterDefinition defaultValueParameterDefinition;
  final RelatedArtifact defaultValueRelatedArtifact;
  final TriggerDefinition defaultValueTriggerDefinition;
  final UsageContext defaultValueUsageContext;
  final Dosage defaultValueDosage;
  final FhirMarkdown meaningWhenMissing;
  final PrimitiveElement MeaningWhenMissing;
  final String orderMeaning;
  final PrimitiveElement OrderMeaning;
  final String fixedBase64Binary;
  final PrimitiveElement FixedBase64Binary;
  final bool fixedBoolean;
  final PrimitiveElement FixedBoolean;
  final String fixedCanonical;
  final PrimitiveElement FixedCanonical;
  final String fixedCode;
  final PrimitiveElement FixedCode;
  final String fixedDate;
  final PrimitiveElement FixedDate;
  final String fixedDateTime;
  final PrimitiveElement FixedDateTime;
  final double fixedDecimal;
  final PrimitiveElement FixedDecimal;
  final String fixedId;
  final PrimitiveElement FixedId;
  final String fixedInstant;
  final PrimitiveElement FixedInstant;
  final double fixedInteger;
  final PrimitiveElement FixedInteger;
  final String fixedMarkdown;
  final PrimitiveElement FixedMarkdown;
  final String fixedOid;
  final PrimitiveElement FixedOid;
  final double fixedPositiveInt;
  final PrimitiveElement FixedPositiveInt;
  final String fixedString;
  final PrimitiveElement FixedString;
  final String fixedTime;
  final PrimitiveElement FixedTime;
  final double fixedUnsignedInt;
  final PrimitiveElement FixedUnsignedInt;
  final String fixedUri;
  final PrimitiveElement FixedUri;
  final String fixedUrl;
  final PrimitiveElement FixedUrl;
  final String fixedUuid;
  final PrimitiveElement FixedUuid;
  final Address fixedAddress;
  final Age fixedAge;
  final Annotation fixedAnnotation;
  final Attachment fixedAttachment;
  final CodeableConcept fixedCodeableConcept;
  final CodeableReference fixedCodeableReference;
  final Coding fixedCoding;
  final ContactPoint fixedContactPoint;
  final Count fixedCount;
  final Distance fixedDistance;
  final FhirDuration fixedDuration;
  final HumanName fixedHumanName;
  final Identifier fixedIdentifier;
  final Money fixedMoney;
  final Period fixedPeriod;
  final Quantity fixedQuantity;
  final Range fixedRange;
  final Ratio fixedRatio;
  final RatioRange fixedRatioRange;
  final Reference fixedReference;
  final SampledData fixedSampledData;
  final Signature fixedSignature;
  final Timing fixedTiming;
  final ContactDetail fixedContactDetail;
  final Contributor fixedContributor;
  final DataRequirement fixedDataRequirement;
  final FhirExpression fixedExpression;
  final ParameterDefinition fixedParameterDefinition;
  final RelatedArtifact fixedRelatedArtifact;
  final TriggerDefinition fixedTriggerDefinition;
  final UsageContext fixedUsageContext;
  final Dosage fixedDosage;
  final String patternBase64Binary;
  final PrimitiveElement PatternBase64Binary;
  final bool patternBoolean;
  final PrimitiveElement PatternBoolean;
  final String patternCanonical;
  final PrimitiveElement PatternCanonical;
  final String patternCode;
  final PrimitiveElement PatternCode;
  final String patternDate;
  final PrimitiveElement PatternDate;
  final String patternDateTime;
  final PrimitiveElement PatternDateTime;
  final double patternDecimal;
  final PrimitiveElement PatternDecimal;
  final String patternId;
  final PrimitiveElement PatternId;
  final String patternInstant;
  final PrimitiveElement PatternInstant;
  final double patternInteger;
  final PrimitiveElement PatternInteger;
  final String patternMarkdown;
  final PrimitiveElement PatternMarkdown;
  final String patternOid;
  final PrimitiveElement PatternOid;
  final double patternPositiveInt;
  final PrimitiveElement PatternPositiveInt;
  final String patternString;
  final PrimitiveElement PatternString;
  final String patternTime;
  final PrimitiveElement PatternTime;
  final double patternUnsignedInt;
  final PrimitiveElement PatternUnsignedInt;
  final String patternUri;
  final PrimitiveElement PatternUri;
  final String patternUrl;
  final PrimitiveElement PatternUrl;
  final String patternUuid;
  final PrimitiveElement PatternUuid;
  final Address patternAddress;
  final Age patternAge;
  final Annotation patternAnnotation;
  final Attachment patternAttachment;
  final CodeableConcept patternCodeableConcept;
  final CodeableReference patternCodeableReference;
  final Coding patternCoding;
  final ContactPoint patternContactPoint;
  final Count patternCount;
  final Distance patternDistance;
  final FhirDuration patternDuration;
  final HumanName patternHumanName;
  final Identifier patternIdentifier;
  final Money patternMoney;
  final Period patternPeriod;
  final Quantity patternQuantity;
  final Range patternRange;
  final Ratio patternRatio;
  final RatioRange patternRatioRange;
  final Reference patternReference;
  final SampledData patternSampledData;
  final Signature patternSignature;
  final Timing patternTiming;
  final ContactDetail patternContactDetail;
  final Contributor patternContributor;
  final DataRequirement patternDataRequirement;
  final FhirExpression patternExpression;
  final ParameterDefinition patternParameterDefinition;
  final RelatedArtifact patternRelatedArtifact;
  final TriggerDefinition patternTriggerDefinition;
  final UsageContext patternUsageContext;
  final Dosage patternDosage;
  final List<ElementDefinitionExample> example;
  final String minValueDate;
  final PrimitiveElement MinValueDate;
  final String minValueDateTime;
  final PrimitiveElement MinValueDateTime;
  final String minValueInstant;
  final PrimitiveElement MinValueInstant;
  final String minValueTime;
  final PrimitiveElement MinValueTime;
  final double minValueDecimal;
  final PrimitiveElement MinValueDecimal;
  final double minValueInteger;
  final PrimitiveElement MinValueInteger;
  final double minValuePositiveInt;
  final PrimitiveElement MinValuePositiveInt;
  final double minValueUnsignedInt;
  final PrimitiveElement MinValueUnsignedInt;
  final Quantity minValueQuantity;
  final String maxValueDate;
  final PrimitiveElement MaxValueDate;
  final String maxValueDateTime;
  final PrimitiveElement MaxValueDateTime;
  final String maxValueInstant;
  final PrimitiveElement MaxValueInstant;
  final String maxValueTime;
  final PrimitiveElement MaxValueTime;
  final double maxValueDecimal;
  final PrimitiveElement MaxValueDecimal;
  final double maxValueInteger;
  final PrimitiveElement MaxValueInteger;
  final double maxValuePositiveInt;
  final PrimitiveElement MaxValuePositiveInt;
  final double maxValueUnsignedInt;
  final PrimitiveElement MaxValueUnsignedInt;
  final Quantity maxValueQuantity;
  final FhirInteger maxLength;
  final PrimitiveElement MaxLength;
  final List<FhirId> condition;
  final List<PrimitiveElement> Condition;
  final List<ElementDefinitionConstraint> constraint;
  final FhirBoolean mustSupport;
  final PrimitiveElement MustSupport;
  final FhirBoolean isModifier;
  final PrimitiveElement IsModifier;
  final String isModifierReason;
  final PrimitiveElement IsModifierReason;
  final FhirBoolean isSummary;
  final PrimitiveElement IsSummary;
  final ElementDefinition_Binding binding;
  final List<ElementDefinitionMapping> mapping;
  const ElementDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.representation,
    this.Representation,
    this.sliceName,
    this.SliceName,
    this.sliceIsConstraining,
    this.SliceIsConstraining,
    this.label,
    this.Label,
    this.code,
    this.slicing,
    this.short,
    this.Short,
    this.definition,
    this.Definition,
    this.comment,
    this.Comment,
    this.requirements,
    this.Requirements,
    this.alias,
    this.Alias,
    this.min,
    this.Min,
    this.max,
    this.Max,
    this.base,
    this.contentReference,
    this.ContentReference,
    this.type,
    this.defaultValueBase64Binary,
    this.DefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.DefaultValueBoolean,
    this.defaultValueCanonical,
    this.DefaultValueCanonical,
    this.defaultValueCode,
    this.DefaultValueCode,
    this.defaultValueDate,
    this.DefaultValueDate,
    this.defaultValueDateTime,
    this.DefaultValueDateTime,
    this.defaultValueDecimal,
    this.DefaultValueDecimal,
    this.defaultValueId,
    this.DefaultValueId,
    this.defaultValueInstant,
    this.DefaultValueInstant,
    this.defaultValueInteger,
    this.DefaultValueInteger,
    this.defaultValueMarkdown,
    this.DefaultValueMarkdown,
    this.defaultValueOid,
    this.DefaultValueOid,
    this.defaultValuePositiveInt,
    this.DefaultValuePositiveInt,
    this.defaultValueString,
    this.DefaultValueString,
    this.defaultValueTime,
    this.DefaultValueTime,
    this.defaultValueUnsignedInt,
    this.DefaultValueUnsignedInt,
    this.defaultValueUri,
    this.DefaultValueUri,
    this.defaultValueUrl,
    this.DefaultValueUrl,
    this.defaultValueUuid,
    this.DefaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCodeableReference,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueRatioRange,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.meaningWhenMissing,
    this.MeaningWhenMissing,
    this.orderMeaning,
    this.OrderMeaning,
    this.fixedBase64Binary,
    this.FixedBase64Binary,
    this.fixedBoolean,
    this.FixedBoolean,
    this.fixedCanonical,
    this.FixedCanonical,
    this.fixedCode,
    this.FixedCode,
    this.fixedDate,
    this.FixedDate,
    this.fixedDateTime,
    this.FixedDateTime,
    this.fixedDecimal,
    this.FixedDecimal,
    this.fixedId,
    this.FixedId,
    this.fixedInstant,
    this.FixedInstant,
    this.fixedInteger,
    this.FixedInteger,
    this.fixedMarkdown,
    this.FixedMarkdown,
    this.fixedOid,
    this.FixedOid,
    this.fixedPositiveInt,
    this.FixedPositiveInt,
    this.fixedString,
    this.FixedString,
    this.fixedTime,
    this.FixedTime,
    this.fixedUnsignedInt,
    this.FixedUnsignedInt,
    this.fixedUri,
    this.FixedUri,
    this.fixedUrl,
    this.FixedUrl,
    this.fixedUuid,
    this.FixedUuid,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedCodeableConcept,
    this.fixedCodeableReference,
    this.fixedCoding,
    this.fixedContactPoint,
    this.fixedCount,
    this.fixedDistance,
    this.fixedDuration,
    this.fixedHumanName,
    this.fixedIdentifier,
    this.fixedMoney,
    this.fixedPeriod,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedRatioRange,
    this.fixedReference,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedTiming,
    this.fixedContactDetail,
    this.fixedContributor,
    this.fixedDataRequirement,
    this.fixedExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.patternBase64Binary,
    this.PatternBase64Binary,
    this.patternBoolean,
    this.PatternBoolean,
    this.patternCanonical,
    this.PatternCanonical,
    this.patternCode,
    this.PatternCode,
    this.patternDate,
    this.PatternDate,
    this.patternDateTime,
    this.PatternDateTime,
    this.patternDecimal,
    this.PatternDecimal,
    this.patternId,
    this.PatternId,
    this.patternInstant,
    this.PatternInstant,
    this.patternInteger,
    this.PatternInteger,
    this.patternMarkdown,
    this.PatternMarkdown,
    this.patternOid,
    this.PatternOid,
    this.patternPositiveInt,
    this.PatternPositiveInt,
    this.patternString,
    this.PatternString,
    this.patternTime,
    this.PatternTime,
    this.patternUnsignedInt,
    this.PatternUnsignedInt,
    this.patternUri,
    this.PatternUri,
    this.patternUrl,
    this.PatternUrl,
    this.patternUuid,
    this.PatternUuid,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternCodeableConcept,
    this.patternCodeableReference,
    this.patternCoding,
    this.patternContactPoint,
    this.patternCount,
    this.patternDistance,
    this.patternDuration,
    this.patternHumanName,
    this.patternIdentifier,
    this.patternMoney,
    this.patternPeriod,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternRatioRange,
    this.patternReference,
    this.patternSampledData,
    this.patternSignature,
    this.patternTiming,
    this.patternContactDetail,
    this.patternContributor,
    this.patternDataRequirement,
    this.patternExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.example,
    this.minValueDate,
    this.MinValueDate,
    this.minValueDateTime,
    this.MinValueDateTime,
    this.minValueInstant,
    this.MinValueInstant,
    this.minValueTime,
    this.MinValueTime,
    this.minValueDecimal,
    this.MinValueDecimal,
    this.minValueInteger,
    this.MinValueInteger,
    this.minValuePositiveInt,
    this.MinValuePositiveInt,
    this.minValueUnsignedInt,
    this.MinValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this.MaxValueDate,
    this.maxValueDateTime,
    this.MaxValueDateTime,
    this.maxValueInstant,
    this.MaxValueInstant,
    this.maxValueTime,
    this.MaxValueTime,
    this.maxValueDecimal,
    this.MaxValueDecimal,
    this.maxValueInteger,
    this.MaxValueInteger,
    this.maxValuePositiveInt,
    this.MaxValuePositiveInt,
    this.maxValueUnsignedInt,
    this.MaxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this.MaxLength,
    this.condition,
    this.Condition,
    this.constraint,
    this.mustSupport,
    this.MustSupport,
    this.isModifier,
    this.IsModifier,
    this.isModifierReason,
    this.IsModifierReason,
    this.isSummary,
    this.IsSummary,
    this.binding,
    this.mapping,
  });
}
