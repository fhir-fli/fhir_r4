import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinition] /// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinition extends BackboneType {
  ElementDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    this.pathElement,
    this.representation,
    this.representationElement,
    this.sliceName,
    this.sliceNameElement,
    this.sliceIsConstraining,
    this.sliceIsConstrainingElement,
    this.label,
    this.labelElement,
    this.code,
    this.slicing,
    this.short,
    this.shortElement,
    this.definition,
    this.definitionElement,
    this.comment,
    this.commentElement,
    this.requirements,
    this.requirementsElement,
    this.alias,
    this.aliasElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.base,
    this.contentReference,
    this.contentReferenceElement,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
    this.defaultValueUuidElement,
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
    this.meaningWhenMissingElement,
    this.orderMeaning,
    this.orderMeaningElement,
    this.fixedBase64Binary,
    this.fixedBase64BinaryElement,
    this.fixedBoolean,
    this.fixedBooleanElement,
    this.fixedCanonical,
    this.fixedCanonicalElement,
    this.fixedCode,
    this.fixedCodeElement,
    this.fixedDate,
    this.fixedDateElement,
    this.fixedDateTime,
    this.fixedDateTimeElement,
    this.fixedDecimal,
    this.fixedDecimalElement,
    this.fixedId,
    this.fixedIdElement,
    this.fixedInstant,
    this.fixedInstantElement,
    this.fixedInteger,
    this.fixedIntegerElement,
    this.fixedMarkdown,
    this.fixedMarkdownElement,
    this.fixedOid,
    this.fixedOidElement,
    this.fixedPositiveInt,
    this.fixedPositiveIntElement,
    this.fixedString,
    this.fixedStringElement,
    this.fixedTime,
    this.fixedTimeElement,
    this.fixedUnsignedInt,
    this.fixedUnsignedIntElement,
    this.fixedUri,
    this.fixedUriElement,
    this.fixedUrl,
    this.fixedUrlElement,
    this.fixedUuid,
    this.fixedUuidElement,
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
    this.patternBase64BinaryElement,
    this.patternBoolean,
    this.patternBooleanElement,
    this.patternCanonical,
    this.patternCanonicalElement,
    this.patternCode,
    this.patternCodeElement,
    this.patternDate,
    this.patternDateElement,
    this.patternDateTime,
    this.patternDateTimeElement,
    this.patternDecimal,
    this.patternDecimalElement,
    this.patternId,
    this.patternIdElement,
    this.patternInstant,
    this.patternInstantElement,
    this.patternInteger,
    this.patternIntegerElement,
    this.patternMarkdown,
    this.patternMarkdownElement,
    this.patternOid,
    this.patternOidElement,
    this.patternPositiveInt,
    this.patternPositiveIntElement,
    this.patternString,
    this.patternStringElement,
    this.patternTime,
    this.patternTimeElement,
    this.patternUnsignedInt,
    this.patternUnsignedIntElement,
    this.patternUri,
    this.patternUriElement,
    this.patternUrl,
    this.patternUrlElement,
    this.patternUuid,
    this.patternUuidElement,
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
    this.minValueDateElement,
    this.minValueDateTime,
    this.minValueDateTimeElement,
    this.minValueInstant,
    this.minValueInstantElement,
    this.minValueTime,
    this.minValueTimeElement,
    this.minValueDecimal,
    this.minValueDecimalElement,
    this.minValueInteger,
    this.minValueIntegerElement,
    this.minValuePositiveInt,
    this.minValuePositiveIntElement,
    this.minValueUnsignedInt,
    this.minValueUnsignedIntElement,
    this.minValueQuantity,
    this.maxValueDate,
    this.maxValueDateElement,
    this.maxValueDateTime,
    this.maxValueDateTimeElement,
    this.maxValueInstant,
    this.maxValueInstantElement,
    this.maxValueTime,
    this.maxValueTimeElement,
    this.maxValueDecimal,
    this.maxValueDecimalElement,
    this.maxValueInteger,
    this.maxValueIntegerElement,
    this.maxValuePositiveInt,
    this.maxValuePositiveIntElement,
    this.maxValueUnsignedInt,
    this.maxValueUnsignedIntElement,
    this.maxValueQuantity,
    this.maxLength,
    this.maxLengthElement,
    this.condition,
    this.conditionElement,
    this.constraint,
    this.mustSupport,
    this.mustSupportElement,
    this.isModifier,
    this.isModifierElement,
    this.isModifierReason,
    this.isModifierReasonElement,
    this.isSummary,
    this.isSummaryElement,
    this.binding,
    this.mapping,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The path identifies the element and is expressed as a "."-separated list of
  /// ancestor elements, beginning with the name of the resource or extension.
  final FhirString path;
  final Element? pathElement;

  /// [representation] /// Codes that define how this element is represented in instances, when the
  /// deviation varies from the normal case.
  final List<FhirCode>? representation;
  final List<Element>? representationElement;

  /// [sliceName] /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element, used to
  /// provide a name to different slices of the same element.
  final FhirString? sliceName;
  final Element? sliceNameElement;

  /// [sliceIsConstraining] /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the slice
  /// is not overriding any slice in an inherited profile. If missing, the slice
  /// might or might not be overriding a slice in an inherited profile, depending
  /// on the sliceName.
  final FhirBoolean? sliceIsConstraining;
  final Element? sliceIsConstrainingElement;

  /// [label] /// A single preferred label which is the text to display beside the element
  /// indicating its meaning or to use to prompt for the element in a user
  /// display or form.
  final FhirString? label;
  final Element? labelElement;

  /// [code] /// A code that has the same meaning as the element in a particular
  /// terminology.
  final List<Coding>? code;

  /// [slicing] /// Indicates that the element is sliced into a set of alternative definitions
  /// (i.e. in a structure definition, there are multiple different constraints
  /// on a single element in the base resource). Slicing can be used in any
  /// resource that has cardinality ..* on the base resource, or any resource
  /// with a choice of types. The set of slices is any elements that come after
  /// this in the element sequence that have the same path, until a shorter path
  /// occurs (the shorter path terminates the set).
  final Element? slicing;

  /// [short] /// A concise description of what this element means (e.g. for use in
  /// autogenerated summaries).
  final FhirString? short;
  final Element? shortElement;

  /// [definition] /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing elements
  /// (e.g. constraints), the definition SHALL be consistent with the base
  /// definition, but convey the meaning of the element in the particular context
  /// of use of the resource. (Note: The text you are reading is specified in
  /// ElementDefinition.definition).
  final FhirMarkdown? definition;
  final Element? definitionElement;

  /// [comment] /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to proper
  /// use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  final FhirMarkdown? comment;
  final Element? commentElement;

  /// [requirements] /// This element is for traceability of why the element was created and why the
  /// constraints exist as they do. This may be used to point to source materials
  /// or specifications that drove the structure of this element.
  final FhirMarkdown? requirements;
  final Element? requirementsElement;

  /// [alias] /// Identifies additional names by which this element might also be known.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [min] /// The minimum number of times this element SHALL appear in the instance.
  final FhirUnsignedInt? min;
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// instance.
  final FhirString? max;
  final Element? maxElement;

  /// [base] /// Information about the base definition of the element, provided to make it
  /// unnecessary for tools to trace the deviation of the element through the
  /// derived and related profiles. When the element definition is not the
  /// original definition of an element - i.g. either in a constraint on another
  /// type, or for elements from a super type in a snap shot - then the
  /// information in provided in the element definition may be different to the
  /// base definition. On the original definition of the element, it will be
  /// same.
  final Element? base;

  /// [contentReference] /// Identifies an element defined elsewhere in the definition whose content
  /// rules should be applied to the current element. ContentReferences bring
  /// across all the rules that are in the ElementDefinition for the element,
  /// including definitions, cardinality constraints, bindings, invariants etc.
  final FhirUri? contentReference;
  final Element? contentReferenceElement;

  /// [type] /// The data type or resource that the value of this element is permitted to
  /// be.
  final List<Element>? type;

  /// [defaultValueBase64Binary] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBase64Binary? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBoolean? defaultValueBoolean;
  final Element? defaultValueBooleanElement;

  /// [defaultValueCanonical] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCanonical? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;

  /// [defaultValueCode] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCode? defaultValueCode;
  final Element? defaultValueCodeElement;

  /// [defaultValueDate] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDate? defaultValueDate;
  final Element? defaultValueDateElement;

  /// [defaultValueDateTime] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDateTime? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;

  /// [defaultValueDecimal] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDecimal? defaultValueDecimal;
  final Element? defaultValueDecimalElement;

  /// [defaultValueId] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirId? defaultValueId;
  final Element? defaultValueIdElement;

  /// [defaultValueInstant] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInstant? defaultValueInstant;
  final Element? defaultValueInstantElement;

  /// [defaultValueInteger] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInteger? defaultValueInteger;
  final Element? defaultValueIntegerElement;

  /// [defaultValueMarkdown] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirMarkdown? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;

  /// [defaultValueOid] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirOid? defaultValueOid;
  final Element? defaultValueOidElement;

  /// [defaultValuePositiveInt] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirPositiveInt? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;

  /// [defaultValueString] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;

  /// [defaultValueTime] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirTime? defaultValueTime;
  final Element? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUnsignedInt? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;

  /// [defaultValueUri] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUri? defaultValueUri;
  final Element? defaultValueUriElement;

  /// [defaultValueUrl] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUrl? defaultValueUrl;
  final Element? defaultValueUrlElement;

  /// [defaultValueUuid] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUuid? defaultValueUuid;
  final Element? defaultValueUuidElement;

  /// [defaultValueAddress] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Address? defaultValueAddress;

  /// [defaultValueAge] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCodeableReference] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final CodeableReference? defaultValueCodeableReference;

  /// [defaultValueCoding] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Count? defaultValueCount;

  /// [defaultValueDistance] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Range? defaultValueRange;

  /// [defaultValueRatio] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Ratio? defaultValueRatio;

  /// [defaultValueRatioRange] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final RatioRange? defaultValueRatioRange;

  /// [defaultValueReference] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] /// The value that should be used if there is no value stated in the instance
  /// (e.g. 'if not otherwise specified, the abstract is false').
  final Dosage? defaultValueDosage;

  /// [meaningWhenMissing] /// The Implicit meaning that is to be understood when this element is missing
  /// (e.g. 'when this element is missing, the period is ongoing').
  final FhirMarkdown? meaningWhenMissing;
  final Element? meaningWhenMissingElement;

  /// [orderMeaning] /// If present, indicates that the order of the repeating element has meaning
  /// and describes what that meaning is. If absent, it means that the order of
  /// the element has no meaning.
  final FhirString? orderMeaning;
  final Element? orderMeaningElement;

  /// [fixedBase64Binary] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirBase64Binary? fixedBase64Binary;
  final Element? fixedBase64BinaryElement;

  /// [fixedBoolean] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirBoolean? fixedBoolean;
  final Element? fixedBooleanElement;

  /// [fixedCanonical] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirCanonical? fixedCanonical;
  final Element? fixedCanonicalElement;

  /// [fixedCode] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirCode? fixedCode;
  final Element? fixedCodeElement;

  /// [fixedDate] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirDate? fixedDate;
  final Element? fixedDateElement;

  /// [fixedDateTime] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirDateTime? fixedDateTime;
  final Element? fixedDateTimeElement;

  /// [fixedDecimal] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirDecimal? fixedDecimal;
  final Element? fixedDecimalElement;

  /// [fixedId] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirId? fixedId;
  final Element? fixedIdElement;

  /// [fixedInstant] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirInstant? fixedInstant;
  final Element? fixedInstantElement;

  /// [fixedInteger] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirInteger? fixedInteger;
  final Element? fixedIntegerElement;

  /// [fixedMarkdown] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirMarkdown? fixedMarkdown;
  final Element? fixedMarkdownElement;

  /// [fixedOid] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirOid? fixedOid;
  final Element? fixedOidElement;

  /// [fixedPositiveInt] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirPositiveInt? fixedPositiveInt;
  final Element? fixedPositiveIntElement;

  /// [fixedString] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirString? fixedString;
  final Element? fixedStringElement;

  /// [fixedTime] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirTime? fixedTime;
  final Element? fixedTimeElement;

  /// [fixedUnsignedInt] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirUnsignedInt? fixedUnsignedInt;
  final Element? fixedUnsignedIntElement;

  /// [fixedUri] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirUri? fixedUri;
  final Element? fixedUriElement;

  /// [fixedUrl] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirUrl? fixedUrl;
  final Element? fixedUrlElement;

  /// [fixedUuid] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirUuid? fixedUuid;
  final Element? fixedUuidElement;

  /// [fixedAddress] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Address? fixedAddress;

  /// [fixedAge] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Age? fixedAge;

  /// [fixedAnnotation] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Annotation? fixedAnnotation;

  /// [fixedAttachment] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Attachment? fixedAttachment;

  /// [fixedCodeableConcept] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final CodeableConcept? fixedCodeableConcept;

  /// [fixedCodeableReference] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final CodeableReference? fixedCodeableReference;

  /// [fixedCoding] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Coding? fixedCoding;

  /// [fixedContactPoint] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final ContactPoint? fixedContactPoint;

  /// [fixedCount] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Count? fixedCount;

  /// [fixedDistance] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Distance? fixedDistance;

  /// [fixedDuration] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirDuration? fixedDuration;

  /// [fixedHumanName] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final HumanName? fixedHumanName;

  /// [fixedIdentifier] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Identifier? fixedIdentifier;

  /// [fixedMoney] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Money? fixedMoney;

  /// [fixedPeriod] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Period? fixedPeriod;

  /// [fixedQuantity] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Quantity? fixedQuantity;

  /// [fixedRange] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Range? fixedRange;

  /// [fixedRatio] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Ratio? fixedRatio;

  /// [fixedRatioRange] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final RatioRange? fixedRatioRange;

  /// [fixedReference] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Reference? fixedReference;

  /// [fixedSampledData] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final SampledData? fixedSampledData;

  /// [fixedSignature] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Signature? fixedSignature;

  /// [fixedTiming] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Timing? fixedTiming;

  /// [fixedContactDetail] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final ContactDetail? fixedContactDetail;

  /// [fixedContributor] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Contributor? fixedContributor;

  /// [fixedDataRequirement] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final DataRequirement? fixedDataRequirement;

  /// [fixedExpression] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final FhirExpression? fixedExpression;

  /// [fixedParameterDefinition] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final ParameterDefinition? fixedParameterDefinition;

  /// [fixedRelatedArtifact] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final RelatedArtifact? fixedRelatedArtifact;

  /// [fixedTriggerDefinition] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final TriggerDefinition? fixedTriggerDefinition;

  /// [fixedUsageContext] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final UsageContext? fixedUsageContext;

  /// [fixedDosage] /// Specifies a value that SHALL be exactly the value for this element in the
  /// instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent sensitive).
  /// Missing elements/attributes must also be missing.
  final Dosage? fixedDosage;

  /// [patternBase64Binary] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirBase64Binary? patternBase64Binary;
  final Element? patternBase64BinaryElement;

  /// [patternBoolean] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirBoolean? patternBoolean;
  final Element? patternBooleanElement;

  /// [patternCanonical] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirCanonical? patternCanonical;
  final Element? patternCanonicalElement;

  /// [patternCode] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirCode? patternCode;
  final Element? patternCodeElement;

  /// [patternDate] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDate? patternDate;
  final Element? patternDateElement;

  /// [patternDateTime] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDateTime? patternDateTime;
  final Element? patternDateTimeElement;

  /// [patternDecimal] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDecimal? patternDecimal;
  final Element? patternDecimalElement;

  /// [patternId] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirId? patternId;
  final Element? patternIdElement;

  /// [patternInstant] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirInstant? patternInstant;
  final Element? patternInstantElement;

  /// [patternInteger] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirInteger? patternInteger;
  final Element? patternIntegerElement;

  /// [patternMarkdown] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirMarkdown? patternMarkdown;
  final Element? patternMarkdownElement;

  /// [patternOid] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirOid? patternOid;
  final Element? patternOidElement;

  /// [patternPositiveInt] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirPositiveInt? patternPositiveInt;
  final Element? patternPositiveIntElement;

  /// [patternString] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirString? patternString;
  final Element? patternStringElement;

  /// [patternTime] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirTime? patternTime;
  final Element? patternTimeElement;

  /// [patternUnsignedInt] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUnsignedInt? patternUnsignedInt;
  final Element? patternUnsignedIntElement;

  /// [patternUri] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUri? patternUri;
  final Element? patternUriElement;

  /// [patternUrl] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUrl? patternUrl;
  final Element? patternUrlElement;

  /// [patternUuid] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUuid? patternUuid;
  final Element? patternUuidElement;

  /// [patternAddress] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Address? patternAddress;

  /// [patternAge] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Age? patternAge;

  /// [patternAnnotation] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Annotation? patternAnnotation;

  /// [patternAttachment] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Attachment? patternAttachment;

  /// [patternCodeableConcept] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final CodeableConcept? patternCodeableConcept;

  /// [patternCodeableReference] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final CodeableReference? patternCodeableReference;

  /// [patternCoding] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Coding? patternCoding;

  /// [patternContactPoint] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ContactPoint? patternContactPoint;

  /// [patternCount] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Count? patternCount;

  /// [patternDistance] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Distance? patternDistance;

  /// [patternDuration] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDuration? patternDuration;

  /// [patternHumanName] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final HumanName? patternHumanName;

  /// [patternIdentifier] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Identifier? patternIdentifier;

  /// [patternMoney] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Money? patternMoney;

  /// [patternPeriod] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Period? patternPeriod;

  /// [patternQuantity] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Quantity? patternQuantity;

  /// [patternRange] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Range? patternRange;

  /// [patternRatio] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Ratio? patternRatio;

  /// [patternRatioRange] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final RatioRange? patternRatioRange;

  /// [patternReference] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Reference? patternReference;

  /// [patternSampledData] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final SampledData? patternSampledData;

  /// [patternSignature] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Signature? patternSignature;

  /// [patternTiming] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Timing? patternTiming;

  /// [patternContactDetail] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ContactDetail? patternContactDetail;

  /// [patternContributor] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Contributor? patternContributor;

  /// [patternDataRequirement] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final DataRequirement? patternDataRequirement;

  /// [patternExpression] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirExpression? patternExpression;

  /// [patternParameterDefinition] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ParameterDefinition? patternParameterDefinition;

  /// [patternRelatedArtifact] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final RelatedArtifact? patternRelatedArtifact;

  /// [patternTriggerDefinition] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final TriggerDefinition? patternTriggerDefinition;

  /// [patternUsageContext] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final UsageContext? patternUsageContext;

  /// [patternDosage] /// Specifies a value that the value in the instance SHALL follow - that is,
  /// any value in the pattern must be found in the instance. Other additional
  /// values may be found too. This is effectively constraint by example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the value
  /// provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  /// element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  /// value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Dosage? patternDosage;

  /// [example] /// A sample value for this element demonstrating the type of information that
  /// would typically be found in the element.
  final List<Element>? example;

  /// [minValueDate] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDate? minValueDate;
  final Element? minValueDateElement;

  /// [minValueDateTime] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDateTime? minValueDateTime;
  final Element? minValueDateTimeElement;

  /// [minValueInstant] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirInstant? minValueInstant;
  final Element? minValueInstantElement;

  /// [minValueTime] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirTime? minValueTime;
  final Element? minValueTimeElement;

  /// [minValueDecimal] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDecimal? minValueDecimal;
  final Element? minValueDecimalElement;

  /// [minValueInteger] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirInteger? minValueInteger;
  final Element? minValueIntegerElement;

  /// [minValuePositiveInt] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirPositiveInt? minValuePositiveInt;
  final Element? minValuePositiveIntElement;

  /// [minValueUnsignedInt] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirUnsignedInt? minValueUnsignedInt;
  final Element? minValueUnsignedIntElement;

  /// [minValueQuantity] /// The minimum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final Quantity? minValueQuantity;

  /// [maxValueDate] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDate? maxValueDate;
  final Element? maxValueDateElement;

  /// [maxValueDateTime] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDateTime? maxValueDateTime;
  final Element? maxValueDateTimeElement;

  /// [maxValueInstant] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirInstant? maxValueInstant;
  final Element? maxValueInstantElement;

  /// [maxValueTime] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirTime? maxValueTime;
  final Element? maxValueTimeElement;

  /// [maxValueDecimal] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirDecimal? maxValueDecimal;
  final Element? maxValueDecimalElement;

  /// [maxValueInteger] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirInteger? maxValueInteger;
  final Element? maxValueIntegerElement;

  /// [maxValuePositiveInt] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirPositiveInt? maxValuePositiveInt;
  final Element? maxValuePositiveIntElement;

  /// [maxValueUnsignedInt] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final FhirUnsignedInt? maxValueUnsignedInt;
  final Element? maxValueUnsignedIntElement;

  /// [maxValueQuantity] /// The maximum allowed value for the element. The value is inclusive. This is
  /// allowed for the types date, dateTime, instant, time, decimal, integer, and
  /// Quantity.
  final Quantity? maxValueQuantity;

  /// [maxLength] /// Indicates the maximum length in characters that is permitted to be present
  /// in conformant instances and which is expected to be supported by conformant
  /// consumers that support the element.
  final FhirInteger? maxLength;
  final Element? maxLengthElement;

  /// [condition] /// A reference to an invariant that may make additional statements about the
  /// cardinality or value in the instance.
  final List<FhirId>? condition;
  final List<Element>? conditionElement;

  /// [constraint] /// Formal constraints such as co-occurrence and other constraints that can be
  /// computationally evaluated within the context of the instance.
  final List<Element>? constraint;

  /// [mustSupport] /// If true, implementations that produce or consume resources SHALL provide
  /// "support" for the element in some meaningful way. If false, the element may
  /// be ignored and not supported. If false, whether to populate or use the data
  /// element in any way is at the discretion of the implementation.
  final FhirBoolean? mustSupport;
  final Element? mustSupportElement;

  /// [isModifier] /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element cannot
  /// be ignored. Typically, this is used for status, negation and qualification
  /// codes. The effect of this is that the element cannot be ignored by systems:
  /// they SHALL either recognize the element and process it, and/or a
  /// pre-determination has been made that it is not relevant to their particular
  /// system.
  final FhirBoolean? isModifier;
  final Element? isModifierElement;

  /// [isModifierReason] /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  final FhirString? isModifierReason;
  final Element? isModifierReasonElement;

  /// [isSummary] /// Whether the element should be included if a client requests a search with
  /// the parameter _summary=true.
  final FhirBoolean? isSummary;
  final Element? isSummaryElement;

  /// [binding] /// Binds to a value set if this element is coded (code, Coding,
  /// CodeableConcept, Quantity), or the data types (string, uri).
  final Element? binding;

  /// [mapping] /// Identifies a concept from an external specification that roughly
  /// corresponds to this element.
  final List<Element>? mapping;
  @override
  ElementDefinition clone() => throw UnimplementedError();
  ElementDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    Element? pathElement,
    List<FhirCode>? representation,
    List<Element>? representationElement,
    FhirString? sliceName,
    Element? sliceNameElement,
    FhirBoolean? sliceIsConstraining,
    Element? sliceIsConstrainingElement,
    FhirString? label,
    Element? labelElement,
    List<Coding>? code,
    Element? slicing,
    FhirString? short,
    Element? shortElement,
    FhirMarkdown? definition,
    Element? definitionElement,
    FhirMarkdown? comment,
    Element? commentElement,
    FhirMarkdown? requirements,
    Element? requirementsElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    FhirUnsignedInt? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    Element? base,
    FhirUri? contentReference,
    Element? contentReferenceElement,
    List<Element>? type,
    FhirBase64Binary? defaultValueBase64Binary,
    Element? defaultValueBase64BinaryElement,
    FhirBoolean? defaultValueBoolean,
    Element? defaultValueBooleanElement,
    FhirCanonical? defaultValueCanonical,
    Element? defaultValueCanonicalElement,
    FhirCode? defaultValueCode,
    Element? defaultValueCodeElement,
    FhirDate? defaultValueDate,
    Element? defaultValueDateElement,
    FhirDateTime? defaultValueDateTime,
    Element? defaultValueDateTimeElement,
    FhirDecimal? defaultValueDecimal,
    Element? defaultValueDecimalElement,
    FhirId? defaultValueId,
    Element? defaultValueIdElement,
    FhirInstant? defaultValueInstant,
    Element? defaultValueInstantElement,
    FhirInteger? defaultValueInteger,
    Element? defaultValueIntegerElement,
    FhirMarkdown? defaultValueMarkdown,
    Element? defaultValueMarkdownElement,
    FhirOid? defaultValueOid,
    Element? defaultValueOidElement,
    FhirPositiveInt? defaultValuePositiveInt,
    Element? defaultValuePositiveIntElement,
    FhirString? defaultValueString,
    Element? defaultValueStringElement,
    FhirTime? defaultValueTime,
    Element? defaultValueTimeElement,
    FhirUnsignedInt? defaultValueUnsignedInt,
    Element? defaultValueUnsignedIntElement,
    FhirUri? defaultValueUri,
    Element? defaultValueUriElement,
    FhirUrl? defaultValueUrl,
    Element? defaultValueUrlElement,
    FhirUuid? defaultValueUuid,
    Element? defaultValueUuidElement,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    CodeableConcept? defaultValueCodeableConcept,
    CodeableReference? defaultValueCodeableReference,
    Coding? defaultValueCoding,
    ContactPoint? defaultValueContactPoint,
    Count? defaultValueCount,
    Distance? defaultValueDistance,
    FhirDuration? defaultValueDuration,
    HumanName? defaultValueHumanName,
    Identifier? defaultValueIdentifier,
    Money? defaultValueMoney,
    Period? defaultValuePeriod,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    RatioRange? defaultValueRatioRange,
    Reference? defaultValueReference,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    Timing? defaultValueTiming,
    ContactDetail? defaultValueContactDetail,
    Contributor? defaultValueContributor,
    DataRequirement? defaultValueDataRequirement,
    FhirExpression? defaultValueExpression,
    ParameterDefinition? defaultValueParameterDefinition,
    RelatedArtifact? defaultValueRelatedArtifact,
    TriggerDefinition? defaultValueTriggerDefinition,
    UsageContext? defaultValueUsageContext,
    Dosage? defaultValueDosage,
    FhirMarkdown? meaningWhenMissing,
    Element? meaningWhenMissingElement,
    FhirString? orderMeaning,
    Element? orderMeaningElement,
    FhirBase64Binary? fixedBase64Binary,
    Element? fixedBase64BinaryElement,
    FhirBoolean? fixedBoolean,
    Element? fixedBooleanElement,
    FhirCanonical? fixedCanonical,
    Element? fixedCanonicalElement,
    FhirCode? fixedCode,
    Element? fixedCodeElement,
    FhirDate? fixedDate,
    Element? fixedDateElement,
    FhirDateTime? fixedDateTime,
    Element? fixedDateTimeElement,
    FhirDecimal? fixedDecimal,
    Element? fixedDecimalElement,
    FhirId? fixedId,
    Element? fixedIdElement,
    FhirInstant? fixedInstant,
    Element? fixedInstantElement,
    FhirInteger? fixedInteger,
    Element? fixedIntegerElement,
    FhirMarkdown? fixedMarkdown,
    Element? fixedMarkdownElement,
    FhirOid? fixedOid,
    Element? fixedOidElement,
    FhirPositiveInt? fixedPositiveInt,
    Element? fixedPositiveIntElement,
    FhirString? fixedString,
    Element? fixedStringElement,
    FhirTime? fixedTime,
    Element? fixedTimeElement,
    FhirUnsignedInt? fixedUnsignedInt,
    Element? fixedUnsignedIntElement,
    FhirUri? fixedUri,
    Element? fixedUriElement,
    FhirUrl? fixedUrl,
    Element? fixedUrlElement,
    FhirUuid? fixedUuid,
    Element? fixedUuidElement,
    Address? fixedAddress,
    Age? fixedAge,
    Annotation? fixedAnnotation,
    Attachment? fixedAttachment,
    CodeableConcept? fixedCodeableConcept,
    CodeableReference? fixedCodeableReference,
    Coding? fixedCoding,
    ContactPoint? fixedContactPoint,
    Count? fixedCount,
    Distance? fixedDistance,
    FhirDuration? fixedDuration,
    HumanName? fixedHumanName,
    Identifier? fixedIdentifier,
    Money? fixedMoney,
    Period? fixedPeriod,
    Quantity? fixedQuantity,
    Range? fixedRange,
    Ratio? fixedRatio,
    RatioRange? fixedRatioRange,
    Reference? fixedReference,
    SampledData? fixedSampledData,
    Signature? fixedSignature,
    Timing? fixedTiming,
    ContactDetail? fixedContactDetail,
    Contributor? fixedContributor,
    DataRequirement? fixedDataRequirement,
    FhirExpression? fixedExpression,
    ParameterDefinition? fixedParameterDefinition,
    RelatedArtifact? fixedRelatedArtifact,
    TriggerDefinition? fixedTriggerDefinition,
    UsageContext? fixedUsageContext,
    Dosage? fixedDosage,
    FhirBase64Binary? patternBase64Binary,
    Element? patternBase64BinaryElement,
    FhirBoolean? patternBoolean,
    Element? patternBooleanElement,
    FhirCanonical? patternCanonical,
    Element? patternCanonicalElement,
    FhirCode? patternCode,
    Element? patternCodeElement,
    FhirDate? patternDate,
    Element? patternDateElement,
    FhirDateTime? patternDateTime,
    Element? patternDateTimeElement,
    FhirDecimal? patternDecimal,
    Element? patternDecimalElement,
    FhirId? patternId,
    Element? patternIdElement,
    FhirInstant? patternInstant,
    Element? patternInstantElement,
    FhirInteger? patternInteger,
    Element? patternIntegerElement,
    FhirMarkdown? patternMarkdown,
    Element? patternMarkdownElement,
    FhirOid? patternOid,
    Element? patternOidElement,
    FhirPositiveInt? patternPositiveInt,
    Element? patternPositiveIntElement,
    FhirString? patternString,
    Element? patternStringElement,
    FhirTime? patternTime,
    Element? patternTimeElement,
    FhirUnsignedInt? patternUnsignedInt,
    Element? patternUnsignedIntElement,
    FhirUri? patternUri,
    Element? patternUriElement,
    FhirUrl? patternUrl,
    Element? patternUrlElement,
    FhirUuid? patternUuid,
    Element? patternUuidElement,
    Address? patternAddress,
    Age? patternAge,
    Annotation? patternAnnotation,
    Attachment? patternAttachment,
    CodeableConcept? patternCodeableConcept,
    CodeableReference? patternCodeableReference,
    Coding? patternCoding,
    ContactPoint? patternContactPoint,
    Count? patternCount,
    Distance? patternDistance,
    FhirDuration? patternDuration,
    HumanName? patternHumanName,
    Identifier? patternIdentifier,
    Money? patternMoney,
    Period? patternPeriod,
    Quantity? patternQuantity,
    Range? patternRange,
    Ratio? patternRatio,
    RatioRange? patternRatioRange,
    Reference? patternReference,
    SampledData? patternSampledData,
    Signature? patternSignature,
    Timing? patternTiming,
    ContactDetail? patternContactDetail,
    Contributor? patternContributor,
    DataRequirement? patternDataRequirement,
    FhirExpression? patternExpression,
    ParameterDefinition? patternParameterDefinition,
    RelatedArtifact? patternRelatedArtifact,
    TriggerDefinition? patternTriggerDefinition,
    UsageContext? patternUsageContext,
    Dosage? patternDosage,
    List<Element>? example,
    FhirDate? minValueDate,
    Element? minValueDateElement,
    FhirDateTime? minValueDateTime,
    Element? minValueDateTimeElement,
    FhirInstant? minValueInstant,
    Element? minValueInstantElement,
    FhirTime? minValueTime,
    Element? minValueTimeElement,
    FhirDecimal? minValueDecimal,
    Element? minValueDecimalElement,
    FhirInteger? minValueInteger,
    Element? minValueIntegerElement,
    FhirPositiveInt? minValuePositiveInt,
    Element? minValuePositiveIntElement,
    FhirUnsignedInt? minValueUnsignedInt,
    Element? minValueUnsignedIntElement,
    Quantity? minValueQuantity,
    FhirDate? maxValueDate,
    Element? maxValueDateElement,
    FhirDateTime? maxValueDateTime,
    Element? maxValueDateTimeElement,
    FhirInstant? maxValueInstant,
    Element? maxValueInstantElement,
    FhirTime? maxValueTime,
    Element? maxValueTimeElement,
    FhirDecimal? maxValueDecimal,
    Element? maxValueDecimalElement,
    FhirInteger? maxValueInteger,
    Element? maxValueIntegerElement,
    FhirPositiveInt? maxValuePositiveInt,
    Element? maxValuePositiveIntElement,
    FhirUnsignedInt? maxValueUnsignedInt,
    Element? maxValueUnsignedIntElement,
    Quantity? maxValueQuantity,
    FhirInteger? maxLength,
    Element? maxLengthElement,
    List<FhirId>? condition,
    List<Element>? conditionElement,
    List<Element>? constraint,
    FhirBoolean? mustSupport,
    Element? mustSupportElement,
    FhirBoolean? isModifier,
    Element? isModifierElement,
    FhirString? isModifierReason,
    Element? isModifierReasonElement,
    FhirBoolean? isSummary,
    Element? isSummaryElement,
    Element? binding,
    List<Element>? mapping,
  }) {
    return ElementDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      representation: representation ?? this.representation,
      representationElement:
          representationElement ?? this.representationElement,
      sliceName: sliceName ?? this.sliceName,
      sliceNameElement: sliceNameElement ?? this.sliceNameElement,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      sliceIsConstrainingElement:
          sliceIsConstrainingElement ?? this.sliceIsConstrainingElement,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      code: code ?? this.code,
      slicing: slicing ?? this.slicing,
      short: short ?? this.short,
      shortElement: shortElement ?? this.shortElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      requirements: requirements ?? this.requirements,
      requirementsElement: requirementsElement ?? this.requirementsElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      base: base ?? this.base,
      contentReference: contentReference ?? this.contentReference,
      contentReferenceElement:
          contentReferenceElement ?? this.contentReferenceElement,
      type: type ?? this.type,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBase64BinaryElement: defaultValueBase64BinaryElement ??
          this.defaultValueBase64BinaryElement,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueBooleanElement:
          defaultValueBooleanElement ?? this.defaultValueBooleanElement,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCanonicalElement:
          defaultValueCanonicalElement ?? this.defaultValueCanonicalElement,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeElement:
          defaultValueCodeElement ?? this.defaultValueCodeElement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateElement:
          defaultValueDateElement ?? this.defaultValueDateElement,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDateTimeElement:
          defaultValueDateTimeElement ?? this.defaultValueDateTimeElement,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDecimalElement:
          defaultValueDecimalElement ?? this.defaultValueDecimalElement,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdElement:
          defaultValueIdElement ?? this.defaultValueIdElement,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInstantElement:
          defaultValueInstantElement ?? this.defaultValueInstantElement,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueIntegerElement:
          defaultValueIntegerElement ?? this.defaultValueIntegerElement,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMarkdownElement:
          defaultValueMarkdownElement ?? this.defaultValueMarkdownElement,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueOidElement:
          defaultValueOidElement ?? this.defaultValueOidElement,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValuePositiveIntElement:
          defaultValuePositiveIntElement ?? this.defaultValuePositiveIntElement,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueStringElement:
          defaultValueStringElement ?? this.defaultValueStringElement,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTimeElement:
          defaultValueTimeElement ?? this.defaultValueTimeElement,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUnsignedIntElement:
          defaultValueUnsignedIntElement ?? this.defaultValueUnsignedIntElement,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUriElement:
          defaultValueUriElement ?? this.defaultValueUriElement,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUrlElement:
          defaultValueUrlElement ?? this.defaultValueUrlElement,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueUuidElement:
          defaultValueUuidElement ?? this.defaultValueUuidElement,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCodeableReference:
          defaultValueCodeableReference ?? this.defaultValueCodeableReference,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueRatioRange:
          defaultValueRatioRange ?? this.defaultValueRatioRange,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      meaningWhenMissing: meaningWhenMissing ?? this.meaningWhenMissing,
      meaningWhenMissingElement:
          meaningWhenMissingElement ?? this.meaningWhenMissingElement,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      orderMeaningElement: orderMeaningElement ?? this.orderMeaningElement,
      fixedBase64Binary: fixedBase64Binary ?? this.fixedBase64Binary,
      fixedBase64BinaryElement:
          fixedBase64BinaryElement ?? this.fixedBase64BinaryElement,
      fixedBoolean: fixedBoolean ?? this.fixedBoolean,
      fixedBooleanElement: fixedBooleanElement ?? this.fixedBooleanElement,
      fixedCanonical: fixedCanonical ?? this.fixedCanonical,
      fixedCanonicalElement:
          fixedCanonicalElement ?? this.fixedCanonicalElement,
      fixedCode: fixedCode ?? this.fixedCode,
      fixedCodeElement: fixedCodeElement ?? this.fixedCodeElement,
      fixedDate: fixedDate ?? this.fixedDate,
      fixedDateElement: fixedDateElement ?? this.fixedDateElement,
      fixedDateTime: fixedDateTime ?? this.fixedDateTime,
      fixedDateTimeElement: fixedDateTimeElement ?? this.fixedDateTimeElement,
      fixedDecimal: fixedDecimal ?? this.fixedDecimal,
      fixedDecimalElement: fixedDecimalElement ?? this.fixedDecimalElement,
      fixedId: fixedId ?? this.fixedId,
      fixedIdElement: fixedIdElement ?? this.fixedIdElement,
      fixedInstant: fixedInstant ?? this.fixedInstant,
      fixedInstantElement: fixedInstantElement ?? this.fixedInstantElement,
      fixedInteger: fixedInteger ?? this.fixedInteger,
      fixedIntegerElement: fixedIntegerElement ?? this.fixedIntegerElement,
      fixedMarkdown: fixedMarkdown ?? this.fixedMarkdown,
      fixedMarkdownElement: fixedMarkdownElement ?? this.fixedMarkdownElement,
      fixedOid: fixedOid ?? this.fixedOid,
      fixedOidElement: fixedOidElement ?? this.fixedOidElement,
      fixedPositiveInt: fixedPositiveInt ?? this.fixedPositiveInt,
      fixedPositiveIntElement:
          fixedPositiveIntElement ?? this.fixedPositiveIntElement,
      fixedString: fixedString ?? this.fixedString,
      fixedStringElement: fixedStringElement ?? this.fixedStringElement,
      fixedTime: fixedTime ?? this.fixedTime,
      fixedTimeElement: fixedTimeElement ?? this.fixedTimeElement,
      fixedUnsignedInt: fixedUnsignedInt ?? this.fixedUnsignedInt,
      fixedUnsignedIntElement:
          fixedUnsignedIntElement ?? this.fixedUnsignedIntElement,
      fixedUri: fixedUri ?? this.fixedUri,
      fixedUriElement: fixedUriElement ?? this.fixedUriElement,
      fixedUrl: fixedUrl ?? this.fixedUrl,
      fixedUrlElement: fixedUrlElement ?? this.fixedUrlElement,
      fixedUuid: fixedUuid ?? this.fixedUuid,
      fixedUuidElement: fixedUuidElement ?? this.fixedUuidElement,
      fixedAddress: fixedAddress ?? this.fixedAddress,
      fixedAge: fixedAge ?? this.fixedAge,
      fixedAnnotation: fixedAnnotation ?? this.fixedAnnotation,
      fixedAttachment: fixedAttachment ?? this.fixedAttachment,
      fixedCodeableConcept: fixedCodeableConcept ?? this.fixedCodeableConcept,
      fixedCodeableReference:
          fixedCodeableReference ?? this.fixedCodeableReference,
      fixedCoding: fixedCoding ?? this.fixedCoding,
      fixedContactPoint: fixedContactPoint ?? this.fixedContactPoint,
      fixedCount: fixedCount ?? this.fixedCount,
      fixedDistance: fixedDistance ?? this.fixedDistance,
      fixedDuration: fixedDuration ?? this.fixedDuration,
      fixedHumanName: fixedHumanName ?? this.fixedHumanName,
      fixedIdentifier: fixedIdentifier ?? this.fixedIdentifier,
      fixedMoney: fixedMoney ?? this.fixedMoney,
      fixedPeriod: fixedPeriod ?? this.fixedPeriod,
      fixedQuantity: fixedQuantity ?? this.fixedQuantity,
      fixedRange: fixedRange ?? this.fixedRange,
      fixedRatio: fixedRatio ?? this.fixedRatio,
      fixedRatioRange: fixedRatioRange ?? this.fixedRatioRange,
      fixedReference: fixedReference ?? this.fixedReference,
      fixedSampledData: fixedSampledData ?? this.fixedSampledData,
      fixedSignature: fixedSignature ?? this.fixedSignature,
      fixedTiming: fixedTiming ?? this.fixedTiming,
      fixedContactDetail: fixedContactDetail ?? this.fixedContactDetail,
      fixedContributor: fixedContributor ?? this.fixedContributor,
      fixedDataRequirement: fixedDataRequirement ?? this.fixedDataRequirement,
      fixedExpression: fixedExpression ?? this.fixedExpression,
      fixedParameterDefinition:
          fixedParameterDefinition ?? this.fixedParameterDefinition,
      fixedRelatedArtifact: fixedRelatedArtifact ?? this.fixedRelatedArtifact,
      fixedTriggerDefinition:
          fixedTriggerDefinition ?? this.fixedTriggerDefinition,
      fixedUsageContext: fixedUsageContext ?? this.fixedUsageContext,
      fixedDosage: fixedDosage ?? this.fixedDosage,
      patternBase64Binary: patternBase64Binary ?? this.patternBase64Binary,
      patternBase64BinaryElement:
          patternBase64BinaryElement ?? this.patternBase64BinaryElement,
      patternBoolean: patternBoolean ?? this.patternBoolean,
      patternBooleanElement:
          patternBooleanElement ?? this.patternBooleanElement,
      patternCanonical: patternCanonical ?? this.patternCanonical,
      patternCanonicalElement:
          patternCanonicalElement ?? this.patternCanonicalElement,
      patternCode: patternCode ?? this.patternCode,
      patternCodeElement: patternCodeElement ?? this.patternCodeElement,
      patternDate: patternDate ?? this.patternDate,
      patternDateElement: patternDateElement ?? this.patternDateElement,
      patternDateTime: patternDateTime ?? this.patternDateTime,
      patternDateTimeElement:
          patternDateTimeElement ?? this.patternDateTimeElement,
      patternDecimal: patternDecimal ?? this.patternDecimal,
      patternDecimalElement:
          patternDecimalElement ?? this.patternDecimalElement,
      patternId: patternId ?? this.patternId,
      patternIdElement: patternIdElement ?? this.patternIdElement,
      patternInstant: patternInstant ?? this.patternInstant,
      patternInstantElement:
          patternInstantElement ?? this.patternInstantElement,
      patternInteger: patternInteger ?? this.patternInteger,
      patternIntegerElement:
          patternIntegerElement ?? this.patternIntegerElement,
      patternMarkdown: patternMarkdown ?? this.patternMarkdown,
      patternMarkdownElement:
          patternMarkdownElement ?? this.patternMarkdownElement,
      patternOid: patternOid ?? this.patternOid,
      patternOidElement: patternOidElement ?? this.patternOidElement,
      patternPositiveInt: patternPositiveInt ?? this.patternPositiveInt,
      patternPositiveIntElement:
          patternPositiveIntElement ?? this.patternPositiveIntElement,
      patternString: patternString ?? this.patternString,
      patternStringElement: patternStringElement ?? this.patternStringElement,
      patternTime: patternTime ?? this.patternTime,
      patternTimeElement: patternTimeElement ?? this.patternTimeElement,
      patternUnsignedInt: patternUnsignedInt ?? this.patternUnsignedInt,
      patternUnsignedIntElement:
          patternUnsignedIntElement ?? this.patternUnsignedIntElement,
      patternUri: patternUri ?? this.patternUri,
      patternUriElement: patternUriElement ?? this.patternUriElement,
      patternUrl: patternUrl ?? this.patternUrl,
      patternUrlElement: patternUrlElement ?? this.patternUrlElement,
      patternUuid: patternUuid ?? this.patternUuid,
      patternUuidElement: patternUuidElement ?? this.patternUuidElement,
      patternAddress: patternAddress ?? this.patternAddress,
      patternAge: patternAge ?? this.patternAge,
      patternAnnotation: patternAnnotation ?? this.patternAnnotation,
      patternAttachment: patternAttachment ?? this.patternAttachment,
      patternCodeableConcept:
          patternCodeableConcept ?? this.patternCodeableConcept,
      patternCodeableReference:
          patternCodeableReference ?? this.patternCodeableReference,
      patternCoding: patternCoding ?? this.patternCoding,
      patternContactPoint: patternContactPoint ?? this.patternContactPoint,
      patternCount: patternCount ?? this.patternCount,
      patternDistance: patternDistance ?? this.patternDistance,
      patternDuration: patternDuration ?? this.patternDuration,
      patternHumanName: patternHumanName ?? this.patternHumanName,
      patternIdentifier: patternIdentifier ?? this.patternIdentifier,
      patternMoney: patternMoney ?? this.patternMoney,
      patternPeriod: patternPeriod ?? this.patternPeriod,
      patternQuantity: patternQuantity ?? this.patternQuantity,
      patternRange: patternRange ?? this.patternRange,
      patternRatio: patternRatio ?? this.patternRatio,
      patternRatioRange: patternRatioRange ?? this.patternRatioRange,
      patternReference: patternReference ?? this.patternReference,
      patternSampledData: patternSampledData ?? this.patternSampledData,
      patternSignature: patternSignature ?? this.patternSignature,
      patternTiming: patternTiming ?? this.patternTiming,
      patternContactDetail: patternContactDetail ?? this.patternContactDetail,
      patternContributor: patternContributor ?? this.patternContributor,
      patternDataRequirement:
          patternDataRequirement ?? this.patternDataRequirement,
      patternExpression: patternExpression ?? this.patternExpression,
      patternParameterDefinition:
          patternParameterDefinition ?? this.patternParameterDefinition,
      patternRelatedArtifact:
          patternRelatedArtifact ?? this.patternRelatedArtifact,
      patternTriggerDefinition:
          patternTriggerDefinition ?? this.patternTriggerDefinition,
      patternUsageContext: patternUsageContext ?? this.patternUsageContext,
      patternDosage: patternDosage ?? this.patternDosage,
      example: example ?? this.example,
      minValueDate: minValueDate ?? this.minValueDate,
      minValueDateElement: minValueDateElement ?? this.minValueDateElement,
      minValueDateTime: minValueDateTime ?? this.minValueDateTime,
      minValueDateTimeElement:
          minValueDateTimeElement ?? this.minValueDateTimeElement,
      minValueInstant: minValueInstant ?? this.minValueInstant,
      minValueInstantElement:
          minValueInstantElement ?? this.minValueInstantElement,
      minValueTime: minValueTime ?? this.minValueTime,
      minValueTimeElement: minValueTimeElement ?? this.minValueTimeElement,
      minValueDecimal: minValueDecimal ?? this.minValueDecimal,
      minValueDecimalElement:
          minValueDecimalElement ?? this.minValueDecimalElement,
      minValueInteger: minValueInteger ?? this.minValueInteger,
      minValueIntegerElement:
          minValueIntegerElement ?? this.minValueIntegerElement,
      minValuePositiveInt: minValuePositiveInt ?? this.minValuePositiveInt,
      minValuePositiveIntElement:
          minValuePositiveIntElement ?? this.minValuePositiveIntElement,
      minValueUnsignedInt: minValueUnsignedInt ?? this.minValueUnsignedInt,
      minValueUnsignedIntElement:
          minValueUnsignedIntElement ?? this.minValueUnsignedIntElement,
      minValueQuantity: minValueQuantity ?? this.minValueQuantity,
      maxValueDate: maxValueDate ?? this.maxValueDate,
      maxValueDateElement: maxValueDateElement ?? this.maxValueDateElement,
      maxValueDateTime: maxValueDateTime ?? this.maxValueDateTime,
      maxValueDateTimeElement:
          maxValueDateTimeElement ?? this.maxValueDateTimeElement,
      maxValueInstant: maxValueInstant ?? this.maxValueInstant,
      maxValueInstantElement:
          maxValueInstantElement ?? this.maxValueInstantElement,
      maxValueTime: maxValueTime ?? this.maxValueTime,
      maxValueTimeElement: maxValueTimeElement ?? this.maxValueTimeElement,
      maxValueDecimal: maxValueDecimal ?? this.maxValueDecimal,
      maxValueDecimalElement:
          maxValueDecimalElement ?? this.maxValueDecimalElement,
      maxValueInteger: maxValueInteger ?? this.maxValueInteger,
      maxValueIntegerElement:
          maxValueIntegerElement ?? this.maxValueIntegerElement,
      maxValuePositiveInt: maxValuePositiveInt ?? this.maxValuePositiveInt,
      maxValuePositiveIntElement:
          maxValuePositiveIntElement ?? this.maxValuePositiveIntElement,
      maxValueUnsignedInt: maxValueUnsignedInt ?? this.maxValueUnsignedInt,
      maxValueUnsignedIntElement:
          maxValueUnsignedIntElement ?? this.maxValueUnsignedIntElement,
      maxValueQuantity: maxValueQuantity ?? this.maxValueQuantity,
      maxLength: maxLength ?? this.maxLength,
      maxLengthElement: maxLengthElement ?? this.maxLengthElement,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      constraint: constraint ?? this.constraint,
      mustSupport: mustSupport ?? this.mustSupport,
      mustSupportElement: mustSupportElement ?? this.mustSupportElement,
      isModifier: isModifier ?? this.isModifier,
      isModifierElement: isModifierElement ?? this.isModifierElement,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isModifierReasonElement:
          isModifierReasonElement ?? this.isModifierReasonElement,
      isSummary: isSummary ?? this.isSummary,
      isSummaryElement: isSummaryElement ?? this.isSummaryElement,
      binding: binding ?? this.binding,
      mapping: mapping ?? this.mapping,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionSlicing] /// Indicates that the element is sliced into a set of alternative definitions
/// (i.e. in a structure definition, there are multiple different constraints
/// on a single element in the base resource). Slicing can be used in any
/// resource that has cardinality ..* on the base resource, or any resource
/// with a choice of types. The set of slices is any elements that come after
/// this in the element sequence that have the same path, until a shorter path
/// occurs (the shorter path terminates the set).
class ElementDefinitionSlicing extends Element {
  ElementDefinitionSlicing({
    super.id,
    super.extension_,
    this.discriminator,
    this.description,
    this.descriptionElement,
    this.ordered,
    this.orderedElement,
    required this.rules,
    this.rulesElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [discriminator] /// Designates which child elements are used to discriminate between the slices
  /// when processing an instance. If one or more discriminators are provided,
  /// the value of the child elements in the instance data SHALL completely
  /// distinguish which slice the element in the resource matches based on the
  /// allowed values for those elements in each of the slices.
  final List<Element>? discriminator;

  /// [description] /// A human-readable text description of how the slicing works. If there is no
  /// discriminator, this is required to be present to provide whatever
  /// information is possible about how the slices can be differentiated.
  final FhirString? description;
  final Element? descriptionElement;

  /// [ordered] /// If the matching elements have to occur in the same order as defined in the
  /// profile.
  final FhirBoolean? ordered;
  final Element? orderedElement;

  /// [rules] /// Whether additional slices are allowed or not. When the slices are ordered,
  /// profile authors can also say that additional slices are only allowed at the
  /// end.
  final FhirCode rules;
  final Element? rulesElement;
  @override
  ElementDefinitionSlicing clone() => throw UnimplementedError();
  ElementDefinitionSlicing copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Element>? discriminator,
    FhirString? description,
    Element? descriptionElement,
    FhirBoolean? ordered,
    Element? orderedElement,
    FhirCode? rules,
    Element? rulesElement,
  }) {
    return ElementDefinitionSlicing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      discriminator: discriminator ?? this.discriminator,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      ordered: ordered ?? this.ordered,
      orderedElement: orderedElement ?? this.orderedElement,
      rules: rules ?? this.rules,
      rulesElement: rulesElement ?? this.rulesElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionDiscriminator] /// Designates which child elements are used to discriminate between the slices
/// when processing an instance. If one or more discriminators are provided,
/// the value of the child elements in the instance data SHALL completely
/// distinguish which slice the element in the resource matches based on the
/// allowed values for those elements in each of the slices.
class ElementDefinitionDiscriminator extends Element {
  ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    required this.path,
    this.pathElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// How the element value is interpreted when discrimination is evaluated.
  final FhirCode type;
  final Element? typeElement;

  /// [path] /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element on
  /// which discrimination is based.
  final FhirString path;
  final Element? pathElement;
  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
  ElementDefinitionDiscriminator copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? type,
    Element? typeElement,
    FhirString? path,
    Element? pathElement,
  }) {
    return ElementDefinitionDiscriminator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionBase] /// Information about the base definition of the element, provided to make it
/// unnecessary for tools to trace the deviation of the element through the
/// derived and related profiles. When the element definition is not the
/// original definition of an element - i.g. either in a constraint on another
/// type, or for elements from a super type in a snap shot - then the
/// information in provided in the element definition may be different to the
/// base definition. On the original definition of the element, it will be
/// same.
class ElementDefinitionBase extends Element {
  ElementDefinitionBase({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  /// [StructureDefinition](structuredefinition.html#) without a
  /// StructureDefinition.base.
  final FhirString path;
  final Element? pathElement;

  /// [min] /// Minimum cardinality of the base element identified by the path.
  final FhirUnsignedInt min;
  final Element? minElement;

  /// [max] /// Maximum cardinality of the base element identified by the path.
  final FhirString max;
  final Element? maxElement;
  @override
  ElementDefinitionBase clone() => throw UnimplementedError();
  ElementDefinitionBase copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirUnsignedInt? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
  }) {
    return ElementDefinitionBase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionType] /// The data type or resource that the value of this element is permitted to
/// be.
class ElementDefinitionType extends Element {
  ElementDefinitionType({
    super.id,
    super.extension_,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    this.targetProfile,
    this.targetProfileElement,
    this.aggregation,
    this.aggregationElement,
    this.versioning,
    this.versioningElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// URL of Data type or Resource that is a(or the) type used for this element.
  /// References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri code;
  final Element? codeElement;

  /// [profile] /// Identifies a profile structure or implementation Guide that applies to the
  /// datatype this element refers to. If any profiles are specified, then the
  /// content must conform to at least one of them. The URL can be a local
  /// reference - to a contained StructureDefinition, or a reference to another
  /// StructureDefinition or Implementation Guide by a canonical URL. When an
  /// implementation guide is specified, the type SHALL conform to at least one
  /// profile defined in the implementation guide.
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;

  /// [targetProfile] /// Used when the type is "Reference" or "canonical", and identifies a profile
  /// structure or implementation Guide that applies to the target of the
  /// reference this element refers to. If any profiles are specified, then the
  /// content must conform to at least one of them. The URL can be a local
  /// reference - to a contained StructureDefinition, or a reference to another
  /// StructureDefinition or Implementation Guide by a canonical URL. When an
  /// implementation guide is specified, the target resource SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;
  final List<Element>? targetProfileElement;

  /// [aggregation] /// If the type is a reference to another resource, how the resource is or can
  /// be aggregated - is it a contained resource, or a reference, and if the
  /// context is a bundle, is it included in the bundle.
  final List<FhirCode>? aggregation;
  final List<Element>? aggregationElement;

  /// [versioning] /// Whether this reference needs to be version specific or version independent,
  /// or whether either can be used.
  final FhirCode? versioning;
  final Element? versioningElement;
  @override
  ElementDefinitionType clone() => throw UnimplementedError();
  ElementDefinitionType copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? code,
    Element? codeElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    List<FhirCanonical>? targetProfile,
    List<Element>? targetProfileElement,
    List<FhirCode>? aggregation,
    List<Element>? aggregationElement,
    FhirCode? versioning,
    Element? versioningElement,
  }) {
    return ElementDefinitionType(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      targetProfile: targetProfile ?? this.targetProfile,
      targetProfileElement: targetProfileElement ?? this.targetProfileElement,
      aggregation: aggregation ?? this.aggregation,
      aggregationElement: aggregationElement ?? this.aggregationElement,
      versioning: versioning ?? this.versioning,
      versioningElement: versioningElement ?? this.versioningElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionExample] /// A sample value for this element demonstrating the type of information that
/// would typically be found in the element.
class ElementDefinitionExample extends Element {
  ElementDefinitionExample({
    super.id,
    super.extension_,
    required this.label,
    this.labelElement,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueCanonical,
    this.valueCanonicalElement,
    required this.valueCode,
    this.valueCodeElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueId,
    this.valueIdElement,
    required this.valueInstant,
    this.valueInstantElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueMarkdown,
    this.valueMarkdownElement,
    required this.valueOid,
    this.valueOidElement,
    required this.valuePositiveInt,
    this.valuePositiveIntElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueUrl,
    this.valueUrlElement,
    required this.valueUuid,
    this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCodeableReference,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueRatioRange,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [label] /// Describes the purpose of this example amoung the set of examples.
  final FhirString label;
  final Element? labelElement;

  /// [valueBase64Binary] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirCode valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirId valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirInstant valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirOid valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueTime] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirUri valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirUrl valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirUuid valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Address valueAddress;

  /// [valueAge] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Age valueAge;

  /// [valueAnnotation] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Annotation valueAnnotation;

  /// [valueAttachment] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Attachment valueAttachment;

  /// [valueCodeableConcept] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final CodeableConcept valueCodeableConcept;

  /// [valueCodeableReference] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final CodeableReference valueCodeableReference;

  /// [valueCoding] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Coding valueCoding;

  /// [valueContactPoint] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final ContactPoint valueContactPoint;

  /// [valueCount] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Count valueCount;

  /// [valueDistance] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Distance valueDistance;

  /// [valueDuration] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirDuration valueDuration;

  /// [valueHumanName] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final HumanName valueHumanName;

  /// [valueIdentifier] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Identifier valueIdentifier;

  /// [valueMoney] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Money valueMoney;

  /// [valuePeriod] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Period valuePeriod;

  /// [valueQuantity] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Quantity valueQuantity;

  /// [valueRange] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Range valueRange;

  /// [valueRatio] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Ratio valueRatio;

  /// [valueRatioRange] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final RatioRange valueRatioRange;

  /// [valueReference] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Reference valueReference;

  /// [valueSampledData] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final SampledData valueSampledData;

  /// [valueSignature] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Signature valueSignature;

  /// [valueTiming] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Timing valueTiming;

  /// [valueContactDetail] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final ContactDetail valueContactDetail;

  /// [valueContributor] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Contributor valueContributor;

  /// [valueDataRequirement] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final DataRequirement valueDataRequirement;

  /// [valueExpression] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final FhirExpression valueExpression;

  /// [valueParameterDefinition] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final ParameterDefinition valueParameterDefinition;

  /// [valueRelatedArtifact] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final RelatedArtifact valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final TriggerDefinition valueTriggerDefinition;

  /// [valueUsageContext] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final UsageContext valueUsageContext;

  /// [valueDosage] /// The actual value for the element, which must be one of the types allowed
  /// for this element.
  final Dosage valueDosage;
  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
  ElementDefinitionExample copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    Element? labelElement,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirCanonical? valueCanonical,
    Element? valueCanonicalElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirId? valueId,
    Element? valueIdElement,
    FhirInstant? valueInstant,
    Element? valueInstantElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirMarkdown? valueMarkdown,
    Element? valueMarkdownElement,
    FhirOid? valueOid,
    Element? valueOidElement,
    FhirPositiveInt? valuePositiveInt,
    Element? valuePositiveIntElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirUnsignedInt? valueUnsignedInt,
    Element? valueUnsignedIntElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirUrl? valueUrl,
    Element? valueUrlElement,
    FhirUuid? valueUuid,
    Element? valueUuidElement,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    CodeableConcept? valueCodeableConcept,
    CodeableReference? valueCodeableReference,
    Coding? valueCoding,
    ContactPoint? valueContactPoint,
    Count? valueCount,
    Distance? valueDistance,
    FhirDuration? valueDuration,
    HumanName? valueHumanName,
    Identifier? valueIdentifier,
    Money? valueMoney,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    RatioRange? valueRatioRange,
    Reference? valueReference,
    SampledData? valueSampledData,
    Signature? valueSignature,
    Timing? valueTiming,
    ContactDetail? valueContactDetail,
    Contributor? valueContributor,
    DataRequirement? valueDataRequirement,
    FhirExpression? valueExpression,
    ParameterDefinition? valueParameterDefinition,
    RelatedArtifact? valueRelatedArtifact,
    TriggerDefinition? valueTriggerDefinition,
    UsageContext? valueUsageContext,
    Dosage? valueDosage,
  }) {
    return ElementDefinitionExample(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCanonicalElement:
          valueCanonicalElement ?? this.valueCanonicalElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInstantElement: valueInstantElement ?? this.valueInstantElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMarkdownElement: valueMarkdownElement ?? this.valueMarkdownElement,
      valueOid: valueOid ?? this.valueOid,
      valueOidElement: valueOidElement ?? this.valueOidElement,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valuePositiveIntElement:
          valuePositiveIntElement ?? this.valuePositiveIntElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUnsignedIntElement:
          valueUnsignedIntElement ?? this.valueUnsignedIntElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUrlElement: valueUrlElement ?? this.valueUrlElement,
      valueUuid: valueUuid ?? this.valueUuid,
      valueUuidElement: valueUuidElement ?? this.valueUuidElement,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCodeableReference:
          valueCodeableReference ?? this.valueCodeableReference,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueCount: valueCount ?? this.valueCount,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDuration: valueDuration ?? this.valueDuration,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueMoney: valueMoney ?? this.valueMoney,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueRatioRange: valueRatioRange ?? this.valueRatioRange,
      valueReference: valueReference ?? this.valueReference,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueTiming: valueTiming ?? this.valueTiming,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContributor: valueContributor ?? this.valueContributor,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueExpression: valueExpression ?? this.valueExpression,
      valueParameterDefinition:
          valueParameterDefinition ?? this.valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueTriggerDefinition:
          valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueDosage: valueDosage ?? this.valueDosage,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionConstraint] /// Formal constraints such as co-occurrence and other constraints that can be
/// computationally evaluated within the context of the instance.
class ElementDefinitionConstraint extends Element {
  ElementDefinitionConstraint({
    super.id,
    super.extension_,
    required this.key,
    this.keyElement,
    this.requirements,
    this.requirementsElement,
    required this.severity,
    this.severityElement,
    required this.human,
    this.humanElement,
    this.expression,
    this.expressionElement,
    this.xpath,
    this.xpathElement,
    this.source,
    this.sourceElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [key] /// Allows identification of which elements have their cardinalities impacted
  /// by the constraint. Will not be referenced for constraints that do not
  /// affect cardinality.
  final FhirId key;
  final Element? keyElement;

  /// [requirements] /// Description of why this constraint is necessary or appropriate.
  final FhirString? requirements;
  final Element? requirementsElement;

  /// [severity] /// Identifies the impact constraint violation has on the conformance of the
  /// instance.
  final FhirCode severity;
  final Element? severityElement;

  /// [human] /// Text that can be used to describe the constraint in messages identifying
  /// that the constraint has been violated.
  final FhirString human;
  final Element? humanElement;

  /// [expression] /// A [FHIRPath](fhirpath.html) expression of constraint that can be executed
  /// to see if this constraint is met.
  final FhirString? expression;
  final Element? expressionElement;

  /// [xpath] /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  final FhirString? xpath;
  final Element? xpathElement;

  /// [source] /// A reference to the original source of the constraint, for traceability
  /// purposes.
  final FhirCanonical? source;
  final Element? sourceElement;
  @override
  ElementDefinitionConstraint clone() => throw UnimplementedError();
  ElementDefinitionConstraint copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? key,
    Element? keyElement,
    FhirString? requirements,
    Element? requirementsElement,
    FhirCode? severity,
    Element? severityElement,
    FhirString? human,
    Element? humanElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? xpath,
    Element? xpathElement,
    FhirCanonical? source,
    Element? sourceElement,
  }) {
    return ElementDefinitionConstraint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      key: key ?? this.key,
      keyElement: keyElement ?? this.keyElement,
      requirements: requirements ?? this.requirements,
      requirementsElement: requirementsElement ?? this.requirementsElement,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      human: human ?? this.human,
      humanElement: humanElement ?? this.humanElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      xpath: xpath ?? this.xpath,
      xpathElement: xpathElement ?? this.xpathElement,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionBinding] /// Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).
class ElementDefinitionBinding extends Element {
  ElementDefinitionBinding({
    super.id,
    super.extension_,
    required this.strength,
    this.strengthElement,
    this.description,
    this.descriptionElement,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [strength] /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final FhirCode strength;
  final Element? strengthElement;

  /// [description] /// Describes the intended use of this particular set of codes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [valueSet] /// Refers to the value set that identifies the set of codes the binding refers
  /// to.
  final FhirCanonical? valueSet;
  final Element? valueSetElement;
  @override
  ElementDefinitionBinding clone() => throw UnimplementedError();
  ElementDefinitionBinding copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? strength,
    Element? strengthElement,
    FhirString? description,
    Element? descriptionElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
  }) {
    return ElementDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      strength: strength ?? this.strength,
      strengthElement: strengthElement ?? this.strengthElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ElementDefinitionMapping] /// Identifies a concept from an external specification that roughly
/// corresponds to this element.
class ElementDefinitionMapping extends Element {
  ElementDefinitionMapping({
    super.id,
    super.extension_,
    required this.identity,
    this.identityElement,
    this.language,
    this.languageElement,
    required this.map,
    this.mapElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identity] /// An internal reference to the definition of a mapping.
  final FhirId identity;
  final Element? identityElement;

  /// [language] /// Identifies the computable language in which mapping.map is expressed.
  final FhirCode? language;
  final Element? languageElement;

  /// [map] /// Expresses what part of the target specification corresponds to this
  /// element.
  final FhirString map;
  final Element? mapElement;

  /// [comment] /// Comments that provide information about the mapping or its use.
  final FhirString? comment;
  final Element? commentElement;
  @override
  ElementDefinitionMapping clone() => throw UnimplementedError();
  ElementDefinitionMapping copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? identity,
    Element? identityElement,
    FhirCode? language,
    Element? languageElement,
    FhirString? map,
    Element? mapElement,
    FhirString? comment,
    Element? commentElement,
  }) {
    return ElementDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      identity: identity ?? this.identity,
      identityElement: identityElement ?? this.identityElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      map: map ?? this.map,
      mapElement: mapElement ?? this.mapElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}
