import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition] Captures constraints on each element within the
/// resource, profile, or extension.

@freezed
class ElementDefinition with _$ElementDefinition {
  const ElementDefinition._();

  const factory ElementDefinition({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [path] The path identifies the element and is expressed as a
/// "."-separated list of ancestor elements, beginning with the name of the
/// resource or extension.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [representation] Codes that define how this element is represented in
/// instances, when the deviation varies from the normal case. No extensions
/// are allowed on elements with a representation of 'xmlAttr', no matter what
/// FHIR serialization format is used.

    @JsonKey(name: 'representation') List<List<dynamic>>? representation,
/// [_representation] Extensions for representation

    @JsonKey(name: '_representation') List<PrimitiveElement>? representationElement,
/// [sliceName] The name of this element definition slice, when slicing is
/// working. The name must be a token with no dots or spaces. This is a unique
/// name referring to a specific set of constraints applied to this element,
/// used to provide a name to different slices of the same element.

    @JsonKey(name: 'sliceName') String? sliceName,
/// [_sliceName] Extensions for sliceName

    @JsonKey(name: '_sliceName') PrimitiveElement? sliceNameElement,
/// [sliceIsConstraining] If true, indicates that this slice definition is
/// constraining a slice definition with the same name in an inherited profile.
/// If false, the slice is not overriding any slice in an inherited profile. If
/// missing, the slice might or might not be overriding a slice in an inherited
/// profile, depending on the sliceName.

    @JsonKey(name: 'sliceIsConstraining') FhirBoolean? sliceIsConstraining,
/// [_sliceIsConstraining] Extensions for sliceIsConstraining

    @JsonKey(name: '_sliceIsConstraining') PrimitiveElement? sliceIsConstrainingElement,
/// [label] A single preferred label which is the text to display beside
/// the element indicating its meaning or to use to prompt for the element in a
/// user display or form.

    @JsonKey(name: 'label') String? label,
/// [_label] Extensions for label

    @JsonKey(name: '_label') PrimitiveElement? labelElement,
/// [code] A code that has the same meaning as the element in a particular
/// terminology.

    @JsonKey(name: 'code') List<List<Coding>>? code,
/// [slicing] Indicates that the element is sliced into a set of
/// alternative definitions (i.e. in a structure definition, there are multiple
/// different constraints on a single element in the base resource). Slicing
/// can be used in any resource that has cardinality ..* on the base resource,
/// or any resource with a choice of types. The set of slices is any elements
/// that come after this in the element sequence that have the same path, until
/// a shorter path occurs (the shorter path terminates the set).

    @JsonKey(name: 'slicing') ElementDefinition_Slicing? slicing,
/// [short] A concise description of what this element means (e.g. for use
/// in autogenerated summaries).

    @JsonKey(name: 'short') String? short,
/// [_short] Extensions for short

    @JsonKey(name: '_short') PrimitiveElement? shortElement,
/// [definition] Provides a complete explanation of the meaning of the data
/// element for human readability.  For the case of elements derived from
/// existing elements (e.g. constraints), the definition SHALL be consistent
/// with the base definition, but convey the meaning of the element in the
/// particular context of use of the resource. (Note: The text you are reading
/// is specified in ElementDefinition.definition).

    @JsonKey(name: 'definition') FhirMarkdown? definition,
/// [_definition] Extensions for definition

    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
/// [comment] Explanatory notes and implementation guidance about the data
/// element, including notes about how to use the data properly, exceptions to
/// proper use, etc. (Note: The text you are reading is specified in
/// ElementDefinition.comment).

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [requirements] This element is for traceability of why the element was
/// created and why the constraints exist as they do. This may be used to point
/// to source materials or specifications that drove the structure of this
/// element.

    @JsonKey(name: 'requirements') FhirMarkdown? requirements,
/// [_requirements] Extensions for requirements

    @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
/// [alias] Identifies additional names by which this element might also be
/// known.

    @JsonKey(name: 'alias') List<List<String>>? alias,
/// [_alias] Extensions for alias

    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
/// [min] The minimum number of times this element SHALL appear in the
/// instance.

    @JsonKey(name: 'min') FhirUnsignedInt? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] The maximum number of times this element is permitted to appear
/// in the instance.

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
/// [base] Information about the base definition of the element, provided
/// to make it unnecessary for tools to trace the deviation of the element
/// through the derived and related profiles. When the element definition is
/// not the original definition of an element - e.g. either in a constraint on
/// another type, or for elements from a super type in a snap shot - then the
/// information in provided in the element definition may be different to the
/// base definition. On the original definition of the element, it will be
/// same.

    @JsonKey(name: 'base') ElementDefinition_Base? base,
/// [contentReference] Identifies an element defined elsewhere in the
/// definition whose content rules should be applied to the current element.
/// ContentReferences bring across all the rules that are in the
/// ElementDefinition for the element, including definitions, cardinality
/// constraints, bindings, invariants etc.

    @JsonKey(name: 'contentReference') FhirUri? contentReference,
/// [_contentReference] Extensions for contentReference

    @JsonKey(name: '_contentReference') PrimitiveElement? contentReferenceElement,
/// [type] The data type or resource that the value of this element is
/// permitted to be.

    @JsonKey(name: 'type') List<List<ElementDefinition_Type>>? type,
/// [defaultValueBase64Binary] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueBase64Binary') FhirBase64Binary? defaultValueBase64Binary,
/// [_defaultValueBase64Binary] Extensions for defaultValueBase64Binary

    @JsonKey(name: '_defaultValueBase64Binary') PrimitiveElement? defaultValueBase64BinaryElement,
/// [defaultValueBoolean] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueBoolean') FhirBoolean? defaultValueBoolean,
/// [_defaultValueBoolean] Extensions for defaultValueBoolean

    @JsonKey(name: '_defaultValueBoolean') PrimitiveElement? defaultValueBooleanElement,
/// [defaultValueCanonical] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueCanonical') FhirCanonical? defaultValueCanonical,
/// [_defaultValueCanonical] Extensions for defaultValueCanonical

    @JsonKey(name: '_defaultValueCanonical') PrimitiveElement? defaultValueCanonicalElement,
/// [defaultValueCode] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueCode') FhirCode? defaultValueCode,
/// [_defaultValueCode] Extensions for defaultValueCode

    @JsonKey(name: '_defaultValueCode') PrimitiveElement? defaultValueCodeElement,
/// [defaultValueDate] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueDate') FhirDate? defaultValueDate,
/// [_defaultValueDate] Extensions for defaultValueDate

    @JsonKey(name: '_defaultValueDate') PrimitiveElement? defaultValueDateElement,
/// [defaultValueDateTime] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueDateTime') FhirDateTime? defaultValueDateTime,
/// [_defaultValueDateTime] Extensions for defaultValueDateTime

    @JsonKey(name: '_defaultValueDateTime') PrimitiveElement? defaultValueDateTimeElement,
/// [defaultValueDecimal] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueDecimal') FhirDecimal? defaultValueDecimal,
/// [_defaultValueDecimal] Extensions for defaultValueDecimal

    @JsonKey(name: '_defaultValueDecimal') PrimitiveElement? defaultValueDecimalElement,
/// [defaultValueId] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueId') FhirId? defaultValueId,
/// [_defaultValueId] Extensions for defaultValueId

    @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,
/// [defaultValueInstant] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueInstant') FhirInstant? defaultValueInstant,
/// [_defaultValueInstant] Extensions for defaultValueInstant

    @JsonKey(name: '_defaultValueInstant') PrimitiveElement? defaultValueInstantElement,
/// [defaultValueInteger] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueInteger') FhirInteger? defaultValueInteger,
/// [_defaultValueInteger] Extensions for defaultValueInteger

    @JsonKey(name: '_defaultValueInteger') PrimitiveElement? defaultValueIntegerElement,
/// [defaultValueInteger64] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueInteger64') FhirInteger64? defaultValueInteger64,
/// [_defaultValueInteger64] Extensions for defaultValueInteger64

    @JsonKey(name: '_defaultValueInteger64') PrimitiveElement? defaultValueInteger64Element,
/// [defaultValueMarkdown] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueMarkdown') FhirMarkdown? defaultValueMarkdown,
/// [_defaultValueMarkdown] Extensions for defaultValueMarkdown

    @JsonKey(name: '_defaultValueMarkdown') PrimitiveElement? defaultValueMarkdownElement,
/// [defaultValueOid] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueOid') FhirOid? defaultValueOid,
/// [_defaultValueOid] Extensions for defaultValueOid

    @JsonKey(name: '_defaultValueOid') PrimitiveElement? defaultValueOidElement,
/// [defaultValuePositiveInt] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValuePositiveInt') FhirPositiveInt? defaultValuePositiveInt,
/// [_defaultValuePositiveInt] Extensions for defaultValuePositiveInt

    @JsonKey(name: '_defaultValuePositiveInt') PrimitiveElement? defaultValuePositiveIntElement,
/// [defaultValueString] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueString') String? defaultValueString,
/// [_defaultValueString] Extensions for defaultValueString

    @JsonKey(name: '_defaultValueString') PrimitiveElement? defaultValueStringElement,
/// [defaultValueTime] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueTime') FhirTime? defaultValueTime,
/// [_defaultValueTime] Extensions for defaultValueTime

    @JsonKey(name: '_defaultValueTime') PrimitiveElement? defaultValueTimeElement,
/// [defaultValueUnsignedInt] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueUnsignedInt') FhirUnsignedInt? defaultValueUnsignedInt,
/// [_defaultValueUnsignedInt] Extensions for defaultValueUnsignedInt

    @JsonKey(name: '_defaultValueUnsignedInt') PrimitiveElement? defaultValueUnsignedIntElement,
/// [defaultValueUri] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueUri') FhirUri? defaultValueUri,
/// [_defaultValueUri] Extensions for defaultValueUri

    @JsonKey(name: '_defaultValueUri') PrimitiveElement? defaultValueUriElement,
/// [defaultValueUrl] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueUrl') FhirUrl? defaultValueUrl,
/// [_defaultValueUrl] Extensions for defaultValueUrl

    @JsonKey(name: '_defaultValueUrl') PrimitiveElement? defaultValueUrlElement,
/// [defaultValueUuid] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueUuid') FhirUuid? defaultValueUuid,
/// [_defaultValueUuid] Extensions for defaultValueUuid

    @JsonKey(name: '_defaultValueUuid') PrimitiveElement? defaultValueUuidElement,
/// [defaultValueAddress] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueAddress') Address? defaultValueAddress,
/// [defaultValueAge] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueAge') Age? defaultValueAge,
/// [defaultValueAnnotation] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueAnnotation') Annotation? defaultValueAnnotation,
/// [defaultValueAttachment] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueAttachment') Attachment? defaultValueAttachment,
/// [defaultValueCodeableConcept] The value that should be used if there is
/// no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueCodeableConcept') CodeableConcept? defaultValueCodeableConcept,
/// [defaultValueCodeableReference] The value that should be used if there
/// is no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueCodeableReference') CodeableReference? defaultValueCodeableReference,
/// [defaultValueCoding] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueCoding') Coding? defaultValueCoding,
/// [defaultValueContactPoint] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueContactPoint') ContactPoint? defaultValueContactPoint,
/// [defaultValueCount] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueCount') Count? defaultValueCount,
/// [defaultValueDistance] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueDistance') Distance? defaultValueDistance,
/// [defaultValueDuration] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueDuration') FhirDuration? defaultValueDuration,
/// [defaultValueHumanName] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueHumanName') HumanName? defaultValueHumanName,
/// [defaultValueIdentifier] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueIdentifier') Identifier? defaultValueIdentifier,
/// [defaultValueMoney] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueMoney') Money? defaultValueMoney,
/// [defaultValuePeriod] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValuePeriod') Period? defaultValuePeriod,
/// [defaultValueQuantity] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueQuantity') Quantity? defaultValueQuantity,
/// [defaultValueRange] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueRange') Range? defaultValueRange,
/// [defaultValueRatio] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueRatio') Ratio? defaultValueRatio,
/// [defaultValueRatioRange] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueRatioRange') RatioRange? defaultValueRatioRange,
/// [defaultValueReference] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueReference') Reference? defaultValueReference,
/// [defaultValueSampledData] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueSampledData') SampledData? defaultValueSampledData,
/// [defaultValueSignature] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueSignature') Signature? defaultValueSignature,
/// [defaultValueTiming] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueTiming') Timing? defaultValueTiming,
/// [defaultValueContactDetail] The value that should be used if there is
/// no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueContactDetail') ContactDetail? defaultValueContactDetail,
/// [defaultValueDataRequirement] The value that should be used if there is
/// no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueDataRequirement') DataRequirement? defaultValueDataRequirement,
/// [defaultValueExpression] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueExpression') FhirExpression? defaultValueExpression,
/// [defaultValueParameterDefinition] The value that should be used if
/// there is no value stated in the instance (e.g. 'if not otherwise specified,
/// the abstract is false').

    @JsonKey(name: 'defaultValueParameterDefinition') ParameterDefinition? defaultValueParameterDefinition,
/// [defaultValueRelatedArtifact] The value that should be used if there is
/// no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueRelatedArtifact') RelatedArtifact? defaultValueRelatedArtifact,
/// [defaultValueTriggerDefinition] The value that should be used if there
/// is no value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueTriggerDefinition') TriggerDefinition? defaultValueTriggerDefinition,
/// [defaultValueUsageContext] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueUsageContext') UsageContext? defaultValueUsageContext,
/// [defaultValueAvailability] The value that should be used if there is no
/// value stated in the instance (e.g. 'if not otherwise specified, the
/// abstract is false').

    @JsonKey(name: 'defaultValueAvailability') Availability? defaultValueAvailability,
/// [defaultValueExtendedContactDetail] The value that should be used if
/// there is no value stated in the instance (e.g. 'if not otherwise specified,
/// the abstract is false').

    @JsonKey(name: 'defaultValueExtendedContactDetail') ExtendedContactDetail? defaultValueExtendedContactDetail,
/// [defaultValueDosage] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueDosage') Dosage? defaultValueDosage,
/// [defaultValueMeta] The value that should be used if there is no value
/// stated in the instance (e.g. 'if not otherwise specified, the abstract is
/// false').

    @JsonKey(name: 'defaultValueMeta') FhirMeta? defaultValueMeta,
/// [meaningWhenMissing] The Implicit meaning that is to be understood when
/// this element is missing (e.g. 'when this element is missing, the period is
/// ongoing').

    @JsonKey(name: 'meaningWhenMissing') FhirMarkdown? meaningWhenMissing,
/// [_meaningWhenMissing] Extensions for meaningWhenMissing

    @JsonKey(name: '_meaningWhenMissing') PrimitiveElement? meaningWhenMissingElement,
/// [orderMeaning] If present, indicates that the order of the repeating
/// element has meaning and describes what that meaning is.  If absent, it
/// means that the order of the element has no meaning.

    @JsonKey(name: 'orderMeaning') String? orderMeaning,
/// [_orderMeaning] Extensions for orderMeaning

    @JsonKey(name: '_orderMeaning') PrimitiveElement? orderMeaningElement,
/// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedBase64Binary') FhirBase64Binary? fixedBase64Binary,
/// [_fixedBase64Binary] Extensions for fixedBase64Binary

    @JsonKey(name: '_fixedBase64Binary') PrimitiveElement? fixedBase64BinaryElement,
/// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedBoolean') FhirBoolean? fixedBoolean,
/// [_fixedBoolean] Extensions for fixedBoolean

    @JsonKey(name: '_fixedBoolean') PrimitiveElement? fixedBooleanElement,
/// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedCanonical') FhirCanonical? fixedCanonical,
/// [_fixedCanonical] Extensions for fixedCanonical

    @JsonKey(name: '_fixedCanonical') PrimitiveElement? fixedCanonicalElement,
/// [fixedCode] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedCode') FhirCode? fixedCode,
/// [_fixedCode] Extensions for fixedCode

    @JsonKey(name: '_fixedCode') PrimitiveElement? fixedCodeElement,
/// [fixedDate] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDate') FhirDate? fixedDate,
/// [_fixedDate] Extensions for fixedDate

    @JsonKey(name: '_fixedDate') PrimitiveElement? fixedDateElement,
/// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDateTime') FhirDateTime? fixedDateTime,
/// [_fixedDateTime] Extensions for fixedDateTime

    @JsonKey(name: '_fixedDateTime') PrimitiveElement? fixedDateTimeElement,
/// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDecimal') FhirDecimal? fixedDecimal,
/// [_fixedDecimal] Extensions for fixedDecimal

    @JsonKey(name: '_fixedDecimal') PrimitiveElement? fixedDecimalElement,
/// [fixedId] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedId') FhirId? fixedId,
/// [_fixedId] Extensions for fixedId

    @JsonKey(name: '_fixedId') PrimitiveElement? fixedIdElement,
/// [fixedInstant] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedInstant') FhirInstant? fixedInstant,
/// [_fixedInstant] Extensions for fixedInstant

    @JsonKey(name: '_fixedInstant') PrimitiveElement? fixedInstantElement,
/// [fixedInteger] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedInteger') FhirInteger? fixedInteger,
/// [_fixedInteger] Extensions for fixedInteger

    @JsonKey(name: '_fixedInteger') PrimitiveElement? fixedIntegerElement,
/// [fixedInteger64] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedInteger64') FhirInteger64? fixedInteger64,
/// [_fixedInteger64] Extensions for fixedInteger64

    @JsonKey(name: '_fixedInteger64') PrimitiveElement? fixedInteger64Element,
/// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedMarkdown') FhirMarkdown? fixedMarkdown,
/// [_fixedMarkdown] Extensions for fixedMarkdown

    @JsonKey(name: '_fixedMarkdown') PrimitiveElement? fixedMarkdownElement,
/// [fixedOid] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedOid') FhirOid? fixedOid,
/// [_fixedOid] Extensions for fixedOid

    @JsonKey(name: '_fixedOid') PrimitiveElement? fixedOidElement,
/// [fixedPositiveInt] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedPositiveInt') FhirPositiveInt? fixedPositiveInt,
/// [_fixedPositiveInt] Extensions for fixedPositiveInt

    @JsonKey(name: '_fixedPositiveInt') PrimitiveElement? fixedPositiveIntElement,
/// [fixedString] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedString') String? fixedString,
/// [_fixedString] Extensions for fixedString

    @JsonKey(name: '_fixedString') PrimitiveElement? fixedStringElement,
/// [fixedTime] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedTime') FhirTime? fixedTime,
/// [_fixedTime] Extensions for fixedTime

    @JsonKey(name: '_fixedTime') PrimitiveElement? fixedTimeElement,
/// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedUnsignedInt') FhirUnsignedInt? fixedUnsignedInt,
/// [_fixedUnsignedInt] Extensions for fixedUnsignedInt

    @JsonKey(name: '_fixedUnsignedInt') PrimitiveElement? fixedUnsignedIntElement,
/// [fixedUri] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedUri') FhirUri? fixedUri,
/// [_fixedUri] Extensions for fixedUri

    @JsonKey(name: '_fixedUri') PrimitiveElement? fixedUriElement,
/// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedUrl') FhirUrl? fixedUrl,
/// [_fixedUrl] Extensions for fixedUrl

    @JsonKey(name: '_fixedUrl') PrimitiveElement? fixedUrlElement,
/// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedUuid') FhirUuid? fixedUuid,
/// [_fixedUuid] Extensions for fixedUuid

    @JsonKey(name: '_fixedUuid') PrimitiveElement? fixedUuidElement,
/// [fixedAddress] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedAddress') Address? fixedAddress,
/// [fixedAge] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedAge') Age? fixedAge,
/// [fixedAnnotation] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedAnnotation') Annotation? fixedAnnotation,
/// [fixedAttachment] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedAttachment') Attachment? fixedAttachment,
/// [fixedCodeableConcept] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedCodeableConcept') CodeableConcept? fixedCodeableConcept,
/// [fixedCodeableReference] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedCodeableReference') CodeableReference? fixedCodeableReference,
/// [fixedCoding] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedCoding') Coding? fixedCoding,
/// [fixedContactPoint] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedContactPoint') ContactPoint? fixedContactPoint,
/// [fixedCount] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedCount') Count? fixedCount,
/// [fixedDistance] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDistance') Distance? fixedDistance,
/// [fixedDuration] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDuration') FhirDuration? fixedDuration,
/// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedHumanName') HumanName? fixedHumanName,
/// [fixedIdentifier] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedIdentifier') Identifier? fixedIdentifier,
/// [fixedMoney] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedMoney') Money? fixedMoney,
/// [fixedPeriod] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedPeriod') Period? fixedPeriod,
/// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedQuantity') Quantity? fixedQuantity,
/// [fixedRange] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedRange') Range? fixedRange,
/// [fixedRatio] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedRatio') Ratio? fixedRatio,
/// [fixedRatioRange] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedRatioRange') RatioRange? fixedRatioRange,
/// [fixedReference] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedReference') Reference? fixedReference,
/// [fixedSampledData] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedSampledData') SampledData? fixedSampledData,
/// [fixedSignature] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedSignature') Signature? fixedSignature,
/// [fixedTiming] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedTiming') Timing? fixedTiming,
/// [fixedContactDetail] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedContactDetail') ContactDetail? fixedContactDetail,
/// [fixedDataRequirement] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedDataRequirement') DataRequirement? fixedDataRequirement,
/// [fixedExpression] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedExpression') FhirExpression? fixedExpression,
/// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedParameterDefinition') ParameterDefinition? fixedParameterDefinition,
/// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedRelatedArtifact') RelatedArtifact? fixedRelatedArtifact,
/// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
/// value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedTriggerDefinition') TriggerDefinition? fixedTriggerDefinition,
/// [fixedUsageContext] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedUsageContext') UsageContext? fixedUsageContext,
/// [fixedAvailability] Specifies a value that SHALL be exactly the value
/// for this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedAvailability') Availability? fixedAvailability,
/// [fixedExtendedContactDetail] Specifies a value that SHALL be exactly
/// the value  for this element in the instance, if present. For purposes of
/// comparison, non-significant whitespace is ignored, and all values must be
/// an exact match (case and accent sensitive). Missing elements/attributes
/// must also be missing.

    @JsonKey(name: 'fixedExtendedContactDetail') ExtendedContactDetail? fixedExtendedContactDetail,
/// [fixedDosage] Specifies a value that SHALL be exactly the value  for
/// this element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedDosage') Dosage? fixedDosage,
/// [fixedMeta] Specifies a value that SHALL be exactly the value  for this
/// element in the instance, if present. For purposes of comparison,
/// non-significant whitespace is ignored, and all values must be an exact
/// match (case and accent sensitive). Missing elements/attributes must also be
/// missing.

    @JsonKey(name: 'fixedMeta') FhirMeta? fixedMeta,
/// [patternBase64Binary] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternBase64Binary') FhirBase64Binary? patternBase64Binary,
/// [_patternBase64Binary] Extensions for patternBase64Binary

    @JsonKey(name: '_patternBase64Binary') PrimitiveElement? patternBase64BinaryElement,
/// [patternBoolean] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternBoolean') FhirBoolean? patternBoolean,
/// [_patternBoolean] Extensions for patternBoolean

    @JsonKey(name: '_patternBoolean') PrimitiveElement? patternBooleanElement,
/// [patternCanonical] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCanonical') FhirCanonical? patternCanonical,
/// [_patternCanonical] Extensions for patternCanonical

    @JsonKey(name: '_patternCanonical') PrimitiveElement? patternCanonicalElement,
/// [patternCode] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCode') FhirCode? patternCode,
/// [_patternCode] Extensions for patternCode

    @JsonKey(name: '_patternCode') PrimitiveElement? patternCodeElement,
/// [patternDate] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDate') FhirDate? patternDate,
/// [_patternDate] Extensions for patternDate

    @JsonKey(name: '_patternDate') PrimitiveElement? patternDateElement,
/// [patternDateTime] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDateTime') FhirDateTime? patternDateTime,
/// [_patternDateTime] Extensions for patternDateTime

    @JsonKey(name: '_patternDateTime') PrimitiveElement? patternDateTimeElement,
/// [patternDecimal] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDecimal') FhirDecimal? patternDecimal,
/// [_patternDecimal] Extensions for patternDecimal

    @JsonKey(name: '_patternDecimal') PrimitiveElement? patternDecimalElement,
/// [patternId] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternId') FhirId? patternId,
/// [_patternId] Extensions for patternId

    @JsonKey(name: '_patternId') PrimitiveElement? patternIdElement,
/// [patternInstant] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternInstant') FhirInstant? patternInstant,
/// [_patternInstant] Extensions for patternInstant

    @JsonKey(name: '_patternInstant') PrimitiveElement? patternInstantElement,
/// [patternInteger] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternInteger') FhirInteger? patternInteger,
/// [_patternInteger] Extensions for patternInteger

    @JsonKey(name: '_patternInteger') PrimitiveElement? patternIntegerElement,
/// [patternInteger64] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternInteger64') FhirInteger64? patternInteger64,
/// [_patternInteger64] Extensions for patternInteger64

    @JsonKey(name: '_patternInteger64') PrimitiveElement? patternInteger64Element,
/// [patternMarkdown] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternMarkdown') FhirMarkdown? patternMarkdown,
/// [_patternMarkdown] Extensions for patternMarkdown

    @JsonKey(name: '_patternMarkdown') PrimitiveElement? patternMarkdownElement,
/// [patternOid] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternOid') FhirOid? patternOid,
/// [_patternOid] Extensions for patternOid

    @JsonKey(name: '_patternOid') PrimitiveElement? patternOidElement,
/// [patternPositiveInt] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternPositiveInt') FhirPositiveInt? patternPositiveInt,
/// [_patternPositiveInt] Extensions for patternPositiveInt

    @JsonKey(name: '_patternPositiveInt') PrimitiveElement? patternPositiveIntElement,
/// [patternString] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternString') String? patternString,
/// [_patternString] Extensions for patternString

    @JsonKey(name: '_patternString') PrimitiveElement? patternStringElement,
/// [patternTime] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternTime') FhirTime? patternTime,
/// [_patternTime] Extensions for patternTime

    @JsonKey(name: '_patternTime') PrimitiveElement? patternTimeElement,
/// [patternUnsignedInt] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternUnsignedInt') FhirUnsignedInt? patternUnsignedInt,
/// [_patternUnsignedInt] Extensions for patternUnsignedInt

    @JsonKey(name: '_patternUnsignedInt') PrimitiveElement? patternUnsignedIntElement,
/// [patternUri] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternUri') FhirUri? patternUri,
/// [_patternUri] Extensions for patternUri

    @JsonKey(name: '_patternUri') PrimitiveElement? patternUriElement,
/// [patternUrl] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternUrl') FhirUrl? patternUrl,
/// [_patternUrl] Extensions for patternUrl

    @JsonKey(name: '_patternUrl') PrimitiveElement? patternUrlElement,
/// [patternUuid] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternUuid') FhirUuid? patternUuid,
/// [_patternUuid] Extensions for patternUuid

    @JsonKey(name: '_patternUuid') PrimitiveElement? patternUuidElement,
/// [patternAddress] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternAddress') Address? patternAddress,
/// [patternAge] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternAge') Age? patternAge,
/// [patternAnnotation] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternAnnotation') Annotation? patternAnnotation,
/// [patternAttachment] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternAttachment') Attachment? patternAttachment,
/// [patternCodeableConcept] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCodeableConcept') CodeableConcept? patternCodeableConcept,
/// [patternCodeableReference] Specifies a value that each occurrence of
/// the element in the instance SHALL follow - that is, any value in the
/// pattern must be found in the instance, if the element has a value. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCodeableReference') CodeableReference? patternCodeableReference,
/// [patternCoding] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCoding') Coding? patternCoding,
/// [patternContactPoint] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternContactPoint') ContactPoint? patternContactPoint,
/// [patternCount] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternCount') Count? patternCount,
/// [patternDistance] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDistance') Distance? patternDistance,
/// [patternDuration] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDuration') FhirDuration? patternDuration,
/// [patternHumanName] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternHumanName') HumanName? patternHumanName,
/// [patternIdentifier] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternIdentifier') Identifier? patternIdentifier,
/// [patternMoney] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternMoney') Money? patternMoney,
/// [patternPeriod] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternPeriod') Period? patternPeriod,
/// [patternQuantity] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternQuantity') Quantity? patternQuantity,
/// [patternRange] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternRange') Range? patternRange,
/// [patternRatio] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternRatio') Ratio? patternRatio,
/// [patternRatioRange] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternRatioRange') RatioRange? patternRatioRange,
/// [patternReference] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternReference') Reference? patternReference,
/// [patternSampledData] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternSampledData') SampledData? patternSampledData,
/// [patternSignature] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternSignature') Signature? patternSignature,
/// [patternTiming] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternTiming') Timing? patternTiming,
/// [patternContactDetail] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternContactDetail') ContactDetail? patternContactDetail,
/// [patternDataRequirement] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDataRequirement') DataRequirement? patternDataRequirement,
/// [patternExpression] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternExpression') FhirExpression? patternExpression,
/// [patternParameterDefinition] Specifies a value that each occurrence of
/// the element in the instance SHALL follow - that is, any value in the
/// pattern must be found in the instance, if the element has a value. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternParameterDefinition') ParameterDefinition? patternParameterDefinition,
/// [patternRelatedArtifact] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternRelatedArtifact') RelatedArtifact? patternRelatedArtifact,
/// [patternTriggerDefinition] Specifies a value that each occurrence of
/// the element in the instance SHALL follow - that is, any value in the
/// pattern must be found in the instance, if the element has a value. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternTriggerDefinition') TriggerDefinition? patternTriggerDefinition,
/// [patternUsageContext] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternUsageContext') UsageContext? patternUsageContext,
/// [patternAvailability] Specifies a value that each occurrence of the
/// element in the instance SHALL follow - that is, any value in the pattern
/// must be found in the instance, if the element has a value. Other additional
/// values may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternAvailability') Availability? patternAvailability,
/// [patternExtendedContactDetail] Specifies a value that each occurrence
/// of the element in the instance SHALL follow - that is, any value in the
/// pattern must be found in the instance, if the element has a value. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternExtendedContactDetail') ExtendedContactDetail? patternExtendedContactDetail,
/// [patternDosage] Specifies a value that each occurrence of the element
/// in the instance SHALL follow - that is, any value in the pattern must be
/// found in the instance, if the element has a value. Other additional values
/// may be found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternDosage') Dosage? patternDosage,
/// [patternMeta] Specifies a value that each occurrence of the element in
/// the instance SHALL follow - that is, any value in the pattern must be found
/// in the instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the value
/// provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it means
/// that each element provided in the pattern[x] must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that each
/// property in the pattern must be present in the complex object, and its
/// value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies to
/// all repetitions.  If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for examples of
/// pattern usage and the effect it will have.

    @JsonKey(name: 'patternMeta') FhirMeta? patternMeta,
/// [example] A sample value for this element demonstrating the type of
/// information that would typically be found in the element.

    @JsonKey(name: 'example') List<List<ElementDefinition_Example>>? example,
/// [minValueDate] The minimum allowed value for the element. The value is
/// inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueDate') FhirDate? minValueDate,
/// [_minValueDate] Extensions for minValueDate

    @JsonKey(name: '_minValueDate') PrimitiveElement? minValueDateElement,
/// [minValueDateTime] The minimum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueDateTime') FhirDateTime? minValueDateTime,
/// [_minValueDateTime] Extensions for minValueDateTime

    @JsonKey(name: '_minValueDateTime') PrimitiveElement? minValueDateTimeElement,
/// [minValueInstant] The minimum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueInstant') FhirInstant? minValueInstant,
/// [_minValueInstant] Extensions for minValueInstant

    @JsonKey(name: '_minValueInstant') PrimitiveElement? minValueInstantElement,
/// [minValueTime] The minimum allowed value for the element. The value is
/// inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueTime') FhirTime? minValueTime,
/// [_minValueTime] Extensions for minValueTime

    @JsonKey(name: '_minValueTime') PrimitiveElement? minValueTimeElement,
/// [minValueDecimal] The minimum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueDecimal') FhirDecimal? minValueDecimal,
/// [_minValueDecimal] Extensions for minValueDecimal

    @JsonKey(name: '_minValueDecimal') PrimitiveElement? minValueDecimalElement,
/// [minValueInteger] The minimum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueInteger') FhirInteger? minValueInteger,
/// [_minValueInteger] Extensions for minValueInteger

    @JsonKey(name: '_minValueInteger') PrimitiveElement? minValueIntegerElement,
/// [minValueInteger64] The minimum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'minValueInteger64') FhirInteger64? minValueInteger64,
/// [_minValueInteger64] Extensions for minValueInteger64

    @JsonKey(name: '_minValueInteger64') PrimitiveElement? minValueInteger64Element,
/// [minValuePositiveInt] The minimum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'minValuePositiveInt') FhirPositiveInt? minValuePositiveInt,
/// [_minValuePositiveInt] Extensions for minValuePositiveInt

    @JsonKey(name: '_minValuePositiveInt') PrimitiveElement? minValuePositiveIntElement,
/// [minValueUnsignedInt] The minimum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'minValueUnsignedInt') FhirUnsignedInt? minValueUnsignedInt,
/// [_minValueUnsignedInt] Extensions for minValueUnsignedInt

    @JsonKey(name: '_minValueUnsignedInt') PrimitiveElement? minValueUnsignedIntElement,
/// [minValueQuantity] The minimum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'minValueQuantity') Quantity? minValueQuantity,
/// [maxValueDate] The maximum allowed value for the element. The value is
/// inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueDate') FhirDate? maxValueDate,
/// [_maxValueDate] Extensions for maxValueDate

    @JsonKey(name: '_maxValueDate') PrimitiveElement? maxValueDateElement,
/// [maxValueDateTime] The maximum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueDateTime') FhirDateTime? maxValueDateTime,
/// [_maxValueDateTime] Extensions for maxValueDateTime

    @JsonKey(name: '_maxValueDateTime') PrimitiveElement? maxValueDateTimeElement,
/// [maxValueInstant] The maximum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueInstant') FhirInstant? maxValueInstant,
/// [_maxValueInstant] Extensions for maxValueInstant

    @JsonKey(name: '_maxValueInstant') PrimitiveElement? maxValueInstantElement,
/// [maxValueTime] The maximum allowed value for the element. The value is
/// inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueTime') FhirTime? maxValueTime,
/// [_maxValueTime] Extensions for maxValueTime

    @JsonKey(name: '_maxValueTime') PrimitiveElement? maxValueTimeElement,
/// [maxValueDecimal] The maximum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueDecimal') FhirDecimal? maxValueDecimal,
/// [_maxValueDecimal] Extensions for maxValueDecimal

    @JsonKey(name: '_maxValueDecimal') PrimitiveElement? maxValueDecimalElement,
/// [maxValueInteger] The maximum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueInteger') FhirInteger? maxValueInteger,
/// [_maxValueInteger] Extensions for maxValueInteger

    @JsonKey(name: '_maxValueInteger') PrimitiveElement? maxValueIntegerElement,
/// [maxValueInteger64] The maximum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueInteger64') FhirInteger64? maxValueInteger64,
/// [_maxValueInteger64] Extensions for maxValueInteger64

    @JsonKey(name: '_maxValueInteger64') PrimitiveElement? maxValueInteger64Element,
/// [maxValuePositiveInt] The maximum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'maxValuePositiveInt') FhirPositiveInt? maxValuePositiveInt,
/// [_maxValuePositiveInt] Extensions for maxValuePositiveInt

    @JsonKey(name: '_maxValuePositiveInt') PrimitiveElement? maxValuePositiveIntElement,
/// [maxValueUnsignedInt] The maximum allowed value for the element. The
/// value is inclusive. This is allowed for the types date, dateTime, instant,
/// time, decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueUnsignedInt') FhirUnsignedInt? maxValueUnsignedInt,
/// [_maxValueUnsignedInt] Extensions for maxValueUnsignedInt

    @JsonKey(name: '_maxValueUnsignedInt') PrimitiveElement? maxValueUnsignedIntElement,
/// [maxValueQuantity] The maximum allowed value for the element. The value
/// is inclusive. This is allowed for the types date, dateTime, instant, time,
/// decimal, integer, and Quantity.

    @JsonKey(name: 'maxValueQuantity') Quantity? maxValueQuantity,
/// [maxLength] Indicates the maximum length in characters that is
/// permitted to be present in conformant instances and which is expected to be
/// supported by conformant consumers that support the element. ```maxLength```
/// SHOULD only be used on primitive data types that have a string
/// representation (see
/// [[[http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics]]]).

    @JsonKey(name: 'maxLength') FhirInteger? maxLength,
/// [_maxLength] Extensions for maxLength

    @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
/// [condition] A reference to an invariant that may make additional
/// statements about the cardinality or value in the instance.

    @JsonKey(name: 'condition') List<List<FhirId>>? condition,
/// [_condition] Extensions for condition

    @JsonKey(name: '_condition') List<PrimitiveElement>? conditionElement,
/// [constraint] Formal constraints such as co-occurrence and other
/// constraints that can be computationally evaluated within the context of the
/// instance.

    @JsonKey(name: 'constraint') List<List<ElementDefinition_Constraint>>? constraint,
/// [mustHaveValue] Specifies for a primitive data type that the value of
/// the data type cannot be replaced by an extension.

    @JsonKey(name: 'mustHaveValue') FhirBoolean? mustHaveValue,
/// [_mustHaveValue] Extensions for mustHaveValue

    @JsonKey(name: '_mustHaveValue') PrimitiveElement? mustHaveValueElement,
/// [valueAlternatives] Specifies a list of extensions that can appear in
/// place of a primitive value.

    @JsonKey(name: 'valueAlternatives') List<List<FhirCanonical>>? valueAlternatives,
/// [mustSupport] If true, implementations that produce or consume
/// resources SHALL provide "support" for the element in some meaningful way.
/// Note that this is being phased out and replaced by obligations (see below).
///  If false, the element may be ignored and not supported. If false, whether
/// to populate or use the data element in any way is at the discretion of the
/// implementation.

    @JsonKey(name: 'mustSupport') FhirBoolean? mustSupport,
/// [_mustSupport] Extensions for mustSupport

    @JsonKey(name: '_mustSupport') PrimitiveElement? mustSupportElement,
/// [isModifier] If true, the value of this element affects the
/// interpretation of the element or resource that contains it, and the value
/// of the element cannot be ignored. Typically, this is used for status,
/// negation and qualification codes. The effect of this is that the element
/// cannot be ignored by systems: they SHALL either recognize the element and
/// process it, and/or a pre-determination has been made that it is not
/// relevant to their particular system. When used on the root element in an
/// extension definition, this indicates whether or not the extension is a
/// modifier extension.

    @JsonKey(name: 'isModifier') FhirBoolean? isModifier,
/// [_isModifier] Extensions for isModifier

    @JsonKey(name: '_isModifier') PrimitiveElement? isModifierElement,
/// [isModifierReason] Explains how that element affects the interpretation
/// of the resource or element that contains it.

    @JsonKey(name: 'isModifierReason') String? isModifierReason,
/// [_isModifierReason] Extensions for isModifierReason

    @JsonKey(name: '_isModifierReason') PrimitiveElement? isModifierReasonElement,
/// [isSummary] Whether the element should be included if a client requests
/// a search with the parameter _summary=true.

    @JsonKey(name: 'isSummary') FhirBoolean? isSummary,
/// [_isSummary] Extensions for isSummary

    @JsonKey(name: '_isSummary') PrimitiveElement? isSummaryElement,
/// [binding] Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).

    @JsonKey(name: 'binding') ElementDefinition_Binding? binding,
/// [mapping] Identifies a concept from an external specification that
/// roughly corresponds to this element.

    @JsonKey(name: 'mapping') List<List<ElementDefinition_Mapping>>? mapping,
  }) = _$ElementDefinition;

  @override
  String get fhirType => 'ElementDefinition';

  factory ElementDefinition.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionFromJson(json);

  factory ElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Slicing] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Slicing with _$ElementDefinition_Slicing {
  const ElementDefinition_Slicing._();

  const factory ElementDefinition_Slicing({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [discriminator] Designates which child elements are used to
/// discriminate between the slices when processing an instance. If one or more
/// discriminators are provided, the value of the child elements in the
/// instance data SHALL completely distinguish which slice the element in the
/// resource matches based on the allowed values for those elements in each of
/// the slices.

    @JsonKey(name: 'discriminator') List<List<ElementDefinition_Discriminator>>? discriminator,
/// [description] A human-readable text description of how the slicing
/// works. If there is no discriminator, this is required to be present to
/// provide whatever information is possible about how the slices can be
/// differentiated.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [ordered] If the matching elements have to occur in the same order as
/// defined in the profile.

    @JsonKey(name: 'ordered') FhirBoolean? ordered,
/// [_ordered] Extensions for ordered

    @JsonKey(name: '_ordered') PrimitiveElement? orderedElement,
/// [rules] Whether additional slices are allowed or not. When the slices
/// are ordered, profile authors can also say that additional slices are only
/// allowed at the end.

    @JsonKey(name: 'rules') dynamic? rules,
/// [_rules] Extensions for rules

    @JsonKey(name: '_rules') PrimitiveElement? rulesElement,
  }) = _$ElementDefinition_Slicing;

  @override
  String get fhirType => 'ElementDefinition_Slicing';

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_SlicingFromJson(json);

  factory ElementDefinition_Slicing.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Slicing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Slicing.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Slicing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Slicing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_SlicingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Discriminator] Captures constraints on each element
/// within the resource, profile, or extension.

@freezed
class ElementDefinition_Discriminator with _$ElementDefinition_Discriminator {
  const ElementDefinition_Discriminator._();

  const factory ElementDefinition_Discriminator({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] How the element value is interpreted when discrimination is
/// evaluated.

    @JsonKey(name: 'type') dynamic? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [path] A FHIRPath expression, using [the simple subset of
/// FHIRPath](fhirpath.html#simple), that is used to identify the element on
/// which discrimination is based.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
  }) = _$ElementDefinition_Discriminator;

  @override
  String get fhirType => 'ElementDefinition_Discriminator';

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_DiscriminatorFromJson(json);

  factory ElementDefinition_Discriminator.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Discriminator.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Discriminator.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Discriminator cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Discriminator.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_DiscriminatorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Base] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Base with _$ElementDefinition_Base {
  const ElementDefinition_Base._();

  const factory ElementDefinition_Base({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [path] The Path that identifies the base element - this matches the
/// ElementDefinition.path for that element. Across FHIR, there is only one
/// base definition of any element - that is, an element definition on a
/// [[[StructureDefinition]]] without a StructureDefinition.base.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [min] Minimum cardinality of the base element identified by the path.

    @JsonKey(name: 'min') FhirUnsignedInt? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] Maximum cardinality of the base element identified by the path.

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
  }) = _$ElementDefinition_Base;

  @override
  String get fhirType => 'ElementDefinition_Base';

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_BaseFromJson(json);

  factory ElementDefinition_Base.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Base.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Base.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Base cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Base.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_BaseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Type] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Type with _$ElementDefinition_Type {
  const ElementDefinition_Type._();

  const factory ElementDefinition_Type({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [code] URL of Data type or Resource that is a(or the) type used for
/// this element. References are URLs that are relative to
/// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
/// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
/// allowed in logical models.

    @JsonKey(name: 'code') FhirUri? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [profile] Identifies a profile structure or implementation Guide that
/// applies to the datatype this element refers to. If any profiles are
/// specified, then the content must conform to at least one of them. The URL
/// can be a local reference - to a contained StructureDefinition, or a
/// reference to another StructureDefinition or Implementation Guide by a
/// canonical URL. When an implementation guide is specified, the type SHALL
/// conform to at least one profile defined in the implementation guide.

    @JsonKey(name: 'profile') List<List<FhirCanonical>>? profile,
/// [targetProfile] Used when the type is "Reference" or "canonical", and
/// identifies a profile structure or implementation Guide that applies to the
/// target of the reference this element refers to. If any profiles are
/// specified, then the content must conform to at least one of them. The URL
/// can be a local reference - to a contained StructureDefinition, or a
/// reference to another StructureDefinition or Implementation Guide by a
/// canonical URL. When an implementation guide is specified, the target
/// resource SHALL conform to at least one profile defined in the
/// implementation guide.

    @JsonKey(name: 'targetProfile') List<List<FhirCanonical>>? targetProfile,
/// [aggregation] If the type is a reference to another resource, how the
/// resource is or can be aggregated - is it a contained resource, or a
/// reference, and if the context is a bundle, is it included in the bundle.

    @JsonKey(name: 'aggregation') List<List<dynamic>>? aggregation,
/// [_aggregation] Extensions for aggregation

    @JsonKey(name: '_aggregation') List<PrimitiveElement>? aggregationElement,
/// [versioning] Whether this reference needs to be version specific or
/// version independent, or whether either can be used.

    @JsonKey(name: 'versioning') dynamic? versioning,
/// [_versioning] Extensions for versioning

    @JsonKey(name: '_versioning') PrimitiveElement? versioningElement,
  }) = _$ElementDefinition_Type;

  @override
  String get fhirType => 'ElementDefinition_Type';

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_TypeFromJson(json);

  factory ElementDefinition_Type.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Type.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Type.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Type cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Type.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_TypeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Example] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Example with _$ElementDefinition_Example {
  const ElementDefinition_Example._();

  const factory ElementDefinition_Example({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [label] Describes the purpose of this example among the set of
/// examples.

    @JsonKey(name: 'label') String? label,
/// [_label] Extensions for label

    @JsonKey(name: '_label') PrimitiveElement? labelElement,
/// [valueBase64Binary] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') PrimitiveElement? valueBase64BinaryElement,
/// [valueBoolean] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueCanonical] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
/// [_valueCanonical] Extensions for valueCanonical

    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
/// [valueCode] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
/// [valueDate] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueDateTime] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueDecimal] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueId] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueId') FhirId? valueId,
/// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
/// [valueInstant] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
/// [_valueInstant] Extensions for valueInstant

    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
/// [valueInteger] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueInteger64] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueInteger64') FhirInteger64? valueInteger64,
/// [_valueInteger64] Extensions for valueInteger64

    @JsonKey(name: '_valueInteger64') PrimitiveElement? valueInteger64Element,
/// [valueMarkdown] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
/// [valueOid] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueOid') FhirOid? valueOid,
/// [_valueOid] Extensions for valueOid

    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
/// [valuePositiveInt] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
/// [_valuePositiveInt] Extensions for valuePositiveInt

    @JsonKey(name: '_valuePositiveInt') PrimitiveElement? valuePositiveIntElement,
/// [valueString] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueTime] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueUnsignedInt] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
/// [_valueUnsignedInt] Extensions for valueUnsignedInt

    @JsonKey(name: '_valueUnsignedInt') PrimitiveElement? valueUnsignedIntElement,
/// [valueUri] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
/// [valueUrl] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
/// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
/// [valueUuid] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
/// [_valueUuid] Extensions for valueUuid

    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
/// [valueAddress] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueAddress') Address? valueAddress,
/// [valueAge] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueAge') Age? valueAge,
/// [valueAnnotation] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
/// [valueAttachment] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueCodeableConcept] The actual value for the element, which must be
/// one of the types allowed for this element.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueCodeableReference] The actual value for the element, which must
/// be one of the types allowed for this element.

    @JsonKey(name: 'valueCodeableReference') CodeableReference? valueCodeableReference,
/// [valueCoding] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// [valueContactPoint] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
/// [valueCount] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueCount') Count? valueCount,
/// [valueDistance] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueDistance') Distance? valueDistance,
/// [valueDuration] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
/// [valueHumanName] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
/// [valueIdentifier] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
/// [valueMoney] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueMoney') Money? valueMoney,
/// [valuePeriod] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueQuantity] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueRatioRange] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
/// [valueReference] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [valueSampledData] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// [valueSignature] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueSignature') Signature? valueSignature,
/// [valueTiming] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueTiming') Timing? valueTiming,
/// [valueContactDetail] The actual value for the element, which must be
/// one of the types allowed for this element.

    @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
/// [valueDataRequirement] The actual value for the element, which must be
/// one of the types allowed for this element.

    @JsonKey(name: 'valueDataRequirement') DataRequirement? valueDataRequirement,
/// [valueExpression] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
/// [valueParameterDefinition] The actual value for the element, which must
/// be one of the types allowed for this element.

    @JsonKey(name: 'valueParameterDefinition') ParameterDefinition? valueParameterDefinition,
/// [valueRelatedArtifact] The actual value for the element, which must be
/// one of the types allowed for this element.

    @JsonKey(name: 'valueRelatedArtifact') RelatedArtifact? valueRelatedArtifact,
/// [valueTriggerDefinition] The actual value for the element, which must
/// be one of the types allowed for this element.

    @JsonKey(name: 'valueTriggerDefinition') TriggerDefinition? valueTriggerDefinition,
/// [valueUsageContext] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
/// [valueAvailability] The actual value for the element, which must be one
/// of the types allowed for this element.

    @JsonKey(name: 'valueAvailability') Availability? valueAvailability,
/// [valueExtendedContactDetail] The actual value for the element, which
/// must be one of the types allowed for this element.

    @JsonKey(name: 'valueExtendedContactDetail') ExtendedContactDetail? valueExtendedContactDetail,
/// [valueDosage] The actual value for the element, which must be one of
/// the types allowed for this element.

    @JsonKey(name: 'valueDosage') Dosage? valueDosage,
/// [valueMeta] The actual value for the element, which must be one of the
/// types allowed for this element.

    @JsonKey(name: 'valueMeta') FhirMeta? valueMeta,
  }) = _$ElementDefinition_Example;

  @override
  String get fhirType => 'ElementDefinition_Example';

  factory ElementDefinition_Example.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_ExampleFromJson(json);

  factory ElementDefinition_Example.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Example.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Example.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Example cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Example.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_ExampleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Constraint] Captures constraints on each element
/// within the resource, profile, or extension.

@freezed
class ElementDefinition_Constraint with _$ElementDefinition_Constraint {
  const ElementDefinition_Constraint._();

  const factory ElementDefinition_Constraint({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [key] Allows identification of which elements have their cardinalities
/// impacted by the constraint.  Will not be referenced for constraints that do
/// not affect cardinality.

    @JsonKey(name: 'key') FhirId? key,
/// [_key] Extensions for key

    @JsonKey(name: '_key') PrimitiveElement? keyElement,
/// [requirements] Description of why this constraint is necessary or
/// appropriate.

    @JsonKey(name: 'requirements') FhirMarkdown? requirements,
/// [_requirements] Extensions for requirements

    @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
/// [severity] Identifies the impact constraint violation has on the
/// conformance of the instance.

    @JsonKey(name: 'severity') dynamic? severity,
/// [_severity] Extensions for severity

    @JsonKey(name: '_severity') PrimitiveElement? severityElement,
/// [suppress] If true, indicates that the warning or best practice
/// guideline should be suppressed.

    @JsonKey(name: 'suppress') FhirBoolean? suppress,
/// [_suppress] Extensions for suppress

    @JsonKey(name: '_suppress') PrimitiveElement? suppressElement,
/// [human] Text that can be used to describe the constraint in messages
/// identifying that the constraint has been violated.

    @JsonKey(name: 'human') String? human,
/// [_human] Extensions for human

    @JsonKey(name: '_human') PrimitiveElement? humanElement,
/// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
/// can be executed to see if this constraint is met.

    @JsonKey(name: 'expression') String? expression,
/// [_expression] Extensions for expression

    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
/// [source] A reference to the original source of the constraint, for
/// traceability purposes.

    @JsonKey(name: 'source') FhirCanonical? source,
  }) = _$ElementDefinition_Constraint;

  @override
  String get fhirType => 'ElementDefinition_Constraint';

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_ConstraintFromJson(json);

  factory ElementDefinition_Constraint.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Constraint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Constraint.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Constraint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Constraint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_ConstraintFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Binding] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Binding with _$ElementDefinition_Binding {
  const ElementDefinition_Binding._();

  const factory ElementDefinition_Binding({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [strength] Indicates the degree of conformance expectations associated
/// with this binding - that is, the degree to which the provided value set
/// must be adhered to in the instances.

    @JsonKey(name: 'strength') dynamic? strength,
/// [_strength] Extensions for strength

    @JsonKey(name: '_strength') PrimitiveElement? strengthElement,
/// [description] Describes the intended use of this particular set of
/// codes.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [valueSet] Refers to the value set that identifies the set of codes the
/// binding refers to.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// [additional] Additional bindings that help applications implementing
/// this element. Additional bindings do not replace the main binding but
/// provide more information and/or context.

    @JsonKey(name: 'additional') List<List<ElementDefinition_Additional>>? additional,
  }) = _$ElementDefinition_Binding;

  @override
  String get fhirType => 'ElementDefinition_Binding';

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_BindingFromJson(json);

  factory ElementDefinition_Binding.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Binding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Binding.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Binding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Binding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_BindingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Additional] Captures constraints on each element
/// within the resource, profile, or extension.

@freezed
class ElementDefinition_Additional with _$ElementDefinition_Additional {
  const ElementDefinition_Additional._();

  const factory ElementDefinition_Additional({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [purpose] The use of this additional binding.

    @JsonKey(name: 'purpose') FhirCode? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [valueSet] The valueSet that is being bound for the purpose.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// [documentation] Documentation of the purpose of use of the
/// bindingproviding additional information about how it is intended to be
/// used.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [shortDoco] Concise documentation - for summary tables.

    @JsonKey(name: 'shortDoco') String? shortDoco,
/// [_shortDoco] Extensions for shortDoco

    @JsonKey(name: '_shortDoco') PrimitiveElement? shortDocoElement,
/// [usage] Qualifies the usage of the binding. Typically bindings are
/// qualified by jurisdiction, but they may also be qualified by gender,
/// workflow status, clinical domain etc. The information to decide whether a
/// usege context applies is usually outside the resource, determined by
/// context, and this might present challenges for validation tooling.

    @JsonKey(name: 'usage') List<List<UsageContext>>? usage,
/// [any] Whether the binding applies to all repeats, or just to any one of
/// them. This is only relevant for elements that can repeat.

    @JsonKey(name: 'any') FhirBoolean? any,
/// [_any] Extensions for any

    @JsonKey(name: '_any') PrimitiveElement? anyElement,
  }) = _$ElementDefinition_Additional;

  @override
  String get fhirType => 'ElementDefinition_Additional';

  factory ElementDefinition_Additional.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_AdditionalFromJson(json);

  factory ElementDefinition_Additional.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Additional.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Additional.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Additional cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Additional.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_AdditionalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ElementDefinition_Mapping] Captures constraints on each element within
/// the resource, profile, or extension.

@freezed
class ElementDefinition_Mapping with _$ElementDefinition_Mapping {
  const ElementDefinition_Mapping._();

  const factory ElementDefinition_Mapping({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identity] An internal reference to the definition of a mapping.

    @JsonKey(name: 'identity') FhirId? identity,
/// [_identity] Extensions for identity

    @JsonKey(name: '_identity') PrimitiveElement? identityElement,
/// [language] Identifies the computable language in which mapping.map is
/// expressed.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [map] Expresses what part of the target specification corresponds to
/// this element.

    @JsonKey(name: 'map') String? map,
/// [_map] Extensions for map

    @JsonKey(name: '_map') PrimitiveElement? mapElement,
/// [comment] Comments that provide information about the mapping or its
/// use.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _$ElementDefinition_Mapping;

  @override
  String get fhirType => 'ElementDefinition_Mapping';

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_MappingFromJson(json);

  factory ElementDefinition_Mapping.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition_Mapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition_Mapping.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition_Mapping cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ElementDefinition_Mapping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinition_MappingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

