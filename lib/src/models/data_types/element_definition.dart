import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ElementDefinition]
/// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinition extends BackboneType {
  /// Primary constructor for
  /// [ElementDefinition]

  const ElementDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    this.representation,
    this.sliceName,
    this.sliceIsConstraining,
    this.label,
    this.code,
    this.slicing,
    this.short,
    this.definition,
    this.comment,
    this.requirements,
    this.alias,
    this.min,
    this.max,
    this.base,
    this.contentReference,
    this.type,
    this.defaultValueX,
    this.meaningWhenMissing,
    this.orderMeaning,
    this.fixedX,
    this.patternX,
    this.example,
    this.minValueX,
    this.maxValueX,
    this.maxLength,
    this.condition,
    this.constraint,
    this.mustSupport,
    this.isModifier,
    this.isModifierReason,
    this.isSummary,
    this.binding,
    this.mapping,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinition',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ElementDefinition';
    return ElementDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      )!,
      representation: JsonParser.parsePrimitiveList<PropertyRepresentation>(
        json,
        'representation',
        PropertyRepresentation.fromJson,
        '$objectPath.representation',
      ),
      sliceName: JsonParser.parsePrimitive<FhirString>(
        json,
        'sliceName',
        FhirString.fromJson,
        '$objectPath.sliceName',
      ),
      sliceIsConstraining: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'sliceIsConstraining',
        FhirBoolean.fromJson,
        '$objectPath.sliceIsConstraining',
      ),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
        '$objectPath.label',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      slicing: JsonParser.parseObject<ElementDefinitionSlicing>(
        json,
        'slicing',
        ElementDefinitionSlicing.fromJson,
        '$objectPath.slicing',
      ),
      short: JsonParser.parsePrimitive<FhirString>(
        json,
        'short',
        FhirString.fromJson,
        '$objectPath.short',
      ),
      definition: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'definition',
        FhirMarkdown.fromJson,
        '$objectPath.definition',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
        '$objectPath.comment',
      ),
      requirements: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'requirements',
        FhirMarkdown.fromJson,
        '$objectPath.requirements',
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
        '$objectPath.alias',
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      ),
      base: JsonParser.parseObject<ElementDefinitionBase>(
        json,
        'base',
        ElementDefinitionBase.fromJson,
        '$objectPath.base',
      ),
      contentReference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'contentReference',
        FhirUri.fromJson,
        '$objectPath.contentReference',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<ElementDefinitionType>(
            (v) => ElementDefinitionType.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      defaultValueX:
          JsonParser.parsePolymorphic<DefaultValueXElementDefinition>(
        json,
        {
          'defaultValueBase64Binary': FhirBase64Binary.fromJson,
          'defaultValueBoolean': FhirBoolean.fromJson,
          'defaultValueCanonical': FhirCanonical.fromJson,
          'defaultValueCode': FhirCode.fromJson,
          'defaultValueDate': FhirDate.fromJson,
          'defaultValueDateTime': FhirDateTime.fromJson,
          'defaultValueDecimal': FhirDecimal.fromJson,
          'defaultValueId': FhirId.fromJson,
          'defaultValueInstant': FhirInstant.fromJson,
          'defaultValueInteger': FhirInteger.fromJson,
          'defaultValueMarkdown': FhirMarkdown.fromJson,
          'defaultValueOid': FhirOid.fromJson,
          'defaultValuePositiveInt': FhirPositiveInt.fromJson,
          'defaultValueString': FhirString.fromJson,
          'defaultValueTime': FhirTime.fromJson,
          'defaultValueUnsignedInt': FhirUnsignedInt.fromJson,
          'defaultValueUri': FhirUri.fromJson,
          'defaultValueUrl': FhirUrl.fromJson,
          'defaultValueUuid': FhirUuid.fromJson,
          'defaultValueAddress': Address.fromJson,
          'defaultValueAge': Age.fromJson,
          'defaultValueAnnotation': Annotation.fromJson,
          'defaultValueAttachment': Attachment.fromJson,
          'defaultValueCodeableConcept': CodeableConcept.fromJson,
          'defaultValueCodeableReference': CodeableReference.fromJson,
          'defaultValueCoding': Coding.fromJson,
          'defaultValueContactPoint': ContactPoint.fromJson,
          'defaultValueCount': Count.fromJson,
          'defaultValueDistance': Distance.fromJson,
          'defaultValueDuration': FhirDuration.fromJson,
          'defaultValueHumanName': HumanName.fromJson,
          'defaultValueIdentifier': Identifier.fromJson,
          'defaultValueMoney': Money.fromJson,
          'defaultValuePeriod': Period.fromJson,
          'defaultValueQuantity': Quantity.fromJson,
          'defaultValueRange': Range.fromJson,
          'defaultValueRatio': Ratio.fromJson,
          'defaultValueRatioRange': RatioRange.fromJson,
          'defaultValueReference': Reference.fromJson,
          'defaultValueSampledData': SampledData.fromJson,
          'defaultValueSignature': Signature.fromJson,
          'defaultValueTiming': Timing.fromJson,
          'defaultValueContactDetail': ContactDetail.fromJson,
          'defaultValueContributor': Contributor.fromJson,
          'defaultValueDataRequirement': DataRequirement.fromJson,
          'defaultValueExpression': FhirExpression.fromJson,
          'defaultValueParameterDefinition': ParameterDefinition.fromJson,
          'defaultValueRelatedArtifact': RelatedArtifact.fromJson,
          'defaultValueTriggerDefinition': TriggerDefinition.fromJson,
          'defaultValueUsageContext': UsageContext.fromJson,
          'defaultValueDosage': Dosage.fromJson,
        },
        objectPath,
      ),
      meaningWhenMissing: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'meaningWhenMissing',
        FhirMarkdown.fromJson,
        '$objectPath.meaningWhenMissing',
      ),
      orderMeaning: JsonParser.parsePrimitive<FhirString>(
        json,
        'orderMeaning',
        FhirString.fromJson,
        '$objectPath.orderMeaning',
      ),
      fixedX: JsonParser.parsePolymorphic<FixedXElementDefinition>(
        json,
        {
          'fixedBase64Binary': FhirBase64Binary.fromJson,
          'fixedBoolean': FhirBoolean.fromJson,
          'fixedCanonical': FhirCanonical.fromJson,
          'fixedCode': FhirCode.fromJson,
          'fixedDate': FhirDate.fromJson,
          'fixedDateTime': FhirDateTime.fromJson,
          'fixedDecimal': FhirDecimal.fromJson,
          'fixedId': FhirId.fromJson,
          'fixedInstant': FhirInstant.fromJson,
          'fixedInteger': FhirInteger.fromJson,
          'fixedMarkdown': FhirMarkdown.fromJson,
          'fixedOid': FhirOid.fromJson,
          'fixedPositiveInt': FhirPositiveInt.fromJson,
          'fixedString': FhirString.fromJson,
          'fixedTime': FhirTime.fromJson,
          'fixedUnsignedInt': FhirUnsignedInt.fromJson,
          'fixedUri': FhirUri.fromJson,
          'fixedUrl': FhirUrl.fromJson,
          'fixedUuid': FhirUuid.fromJson,
          'fixedAddress': Address.fromJson,
          'fixedAge': Age.fromJson,
          'fixedAnnotation': Annotation.fromJson,
          'fixedAttachment': Attachment.fromJson,
          'fixedCodeableConcept': CodeableConcept.fromJson,
          'fixedCodeableReference': CodeableReference.fromJson,
          'fixedCoding': Coding.fromJson,
          'fixedContactPoint': ContactPoint.fromJson,
          'fixedCount': Count.fromJson,
          'fixedDistance': Distance.fromJson,
          'fixedDuration': FhirDuration.fromJson,
          'fixedHumanName': HumanName.fromJson,
          'fixedIdentifier': Identifier.fromJson,
          'fixedMoney': Money.fromJson,
          'fixedPeriod': Period.fromJson,
          'fixedQuantity': Quantity.fromJson,
          'fixedRange': Range.fromJson,
          'fixedRatio': Ratio.fromJson,
          'fixedRatioRange': RatioRange.fromJson,
          'fixedReference': Reference.fromJson,
          'fixedSampledData': SampledData.fromJson,
          'fixedSignature': Signature.fromJson,
          'fixedTiming': Timing.fromJson,
          'fixedContactDetail': ContactDetail.fromJson,
          'fixedContributor': Contributor.fromJson,
          'fixedDataRequirement': DataRequirement.fromJson,
          'fixedExpression': FhirExpression.fromJson,
          'fixedParameterDefinition': ParameterDefinition.fromJson,
          'fixedRelatedArtifact': RelatedArtifact.fromJson,
          'fixedTriggerDefinition': TriggerDefinition.fromJson,
          'fixedUsageContext': UsageContext.fromJson,
          'fixedDosage': Dosage.fromJson,
        },
        objectPath,
      ),
      patternX: JsonParser.parsePolymorphic<PatternXElementDefinition>(
        json,
        {
          'patternBase64Binary': FhirBase64Binary.fromJson,
          'patternBoolean': FhirBoolean.fromJson,
          'patternCanonical': FhirCanonical.fromJson,
          'patternCode': FhirCode.fromJson,
          'patternDate': FhirDate.fromJson,
          'patternDateTime': FhirDateTime.fromJson,
          'patternDecimal': FhirDecimal.fromJson,
          'patternId': FhirId.fromJson,
          'patternInstant': FhirInstant.fromJson,
          'patternInteger': FhirInteger.fromJson,
          'patternMarkdown': FhirMarkdown.fromJson,
          'patternOid': FhirOid.fromJson,
          'patternPositiveInt': FhirPositiveInt.fromJson,
          'patternString': FhirString.fromJson,
          'patternTime': FhirTime.fromJson,
          'patternUnsignedInt': FhirUnsignedInt.fromJson,
          'patternUri': FhirUri.fromJson,
          'patternUrl': FhirUrl.fromJson,
          'patternUuid': FhirUuid.fromJson,
          'patternAddress': Address.fromJson,
          'patternAge': Age.fromJson,
          'patternAnnotation': Annotation.fromJson,
          'patternAttachment': Attachment.fromJson,
          'patternCodeableConcept': CodeableConcept.fromJson,
          'patternCodeableReference': CodeableReference.fromJson,
          'patternCoding': Coding.fromJson,
          'patternContactPoint': ContactPoint.fromJson,
          'patternCount': Count.fromJson,
          'patternDistance': Distance.fromJson,
          'patternDuration': FhirDuration.fromJson,
          'patternHumanName': HumanName.fromJson,
          'patternIdentifier': Identifier.fromJson,
          'patternMoney': Money.fromJson,
          'patternPeriod': Period.fromJson,
          'patternQuantity': Quantity.fromJson,
          'patternRange': Range.fromJson,
          'patternRatio': Ratio.fromJson,
          'patternRatioRange': RatioRange.fromJson,
          'patternReference': Reference.fromJson,
          'patternSampledData': SampledData.fromJson,
          'patternSignature': Signature.fromJson,
          'patternTiming': Timing.fromJson,
          'patternContactDetail': ContactDetail.fromJson,
          'patternContributor': Contributor.fromJson,
          'patternDataRequirement': DataRequirement.fromJson,
          'patternExpression': FhirExpression.fromJson,
          'patternParameterDefinition': ParameterDefinition.fromJson,
          'patternRelatedArtifact': RelatedArtifact.fromJson,
          'patternTriggerDefinition': TriggerDefinition.fromJson,
          'patternUsageContext': UsageContext.fromJson,
          'patternDosage': Dosage.fromJson,
        },
        objectPath,
      ),
      example: (json['example'] as List<dynamic>?)
          ?.map<ElementDefinitionExample>(
            (v) => ElementDefinitionExample.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.example',
              },
            ),
          )
          .toList(),
      minValueX: JsonParser.parsePolymorphic<MinValueXElementDefinition>(
        json,
        {
          'minValueDate': FhirDate.fromJson,
          'minValueDateTime': FhirDateTime.fromJson,
          'minValueInstant': FhirInstant.fromJson,
          'minValueTime': FhirTime.fromJson,
          'minValueDecimal': FhirDecimal.fromJson,
          'minValueInteger': FhirInteger.fromJson,
          'minValuePositiveInt': FhirPositiveInt.fromJson,
          'minValueUnsignedInt': FhirUnsignedInt.fromJson,
          'minValueQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
      maxValueX: JsonParser.parsePolymorphic<MaxValueXElementDefinition>(
        json,
        {
          'maxValueDate': FhirDate.fromJson,
          'maxValueDateTime': FhirDateTime.fromJson,
          'maxValueInstant': FhirInstant.fromJson,
          'maxValueTime': FhirTime.fromJson,
          'maxValueDecimal': FhirDecimal.fromJson,
          'maxValueInteger': FhirInteger.fromJson,
          'maxValuePositiveInt': FhirPositiveInt.fromJson,
          'maxValueUnsignedInt': FhirUnsignedInt.fromJson,
          'maxValueQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
      maxLength: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'maxLength',
        FhirInteger.fromJson,
        '$objectPath.maxLength',
      ),
      condition: JsonParser.parsePrimitiveList<FhirId>(
        json,
        'condition',
        FhirId.fromJson,
        '$objectPath.condition',
      ),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map<ElementDefinitionConstraint>(
            (v) => ElementDefinitionConstraint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.constraint',
              },
            ),
          )
          .toList(),
      mustSupport: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'mustSupport',
        FhirBoolean.fromJson,
        '$objectPath.mustSupport',
      ),
      isModifier: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isModifier',
        FhirBoolean.fromJson,
        '$objectPath.isModifier',
      ),
      isModifierReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'isModifierReason',
        FhirString.fromJson,
        '$objectPath.isModifierReason',
      ),
      isSummary: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isSummary',
        FhirBoolean.fromJson,
        '$objectPath.isSummary',
      ),
      binding: JsonParser.parseObject<ElementDefinitionBinding>(
        json,
        'binding',
        ElementDefinitionBinding.fromJson,
        '$objectPath.binding',
      ),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map<ElementDefinitionMapping>(
            (v) => ElementDefinitionMapping.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.mapping',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ElementDefinition]
  /// from a [String] or [YamlMap] object
  factory ElementDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinition';

  /// [path]
  /// The path identifies the element and is expressed as a "."-separated
  /// list of ancestor elements, beginning with the name of the resource or
  /// extension.
  final FhirString path;

  /// [representation]
  /// Codes that define how this element is represented in instances, when
  /// the deviation varies from the normal case.
  final List<PropertyRepresentation>? representation;

  /// [sliceName]
  /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element,
  /// used to provide a name to different slices of the same element.
  final FhirString? sliceName;

  /// [sliceIsConstraining]
  /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the
  /// slice is not overriding any slice in an inherited profile. If missing,
  /// the slice might or might not be overriding a slice in an inherited
  /// profile, depending on the sliceName.
  final FhirBoolean? sliceIsConstraining;

  /// [label]
  /// A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  /// user display or form.
  final FhirString? label;

  /// [code]
  /// A code that has the same meaning as the element in a particular
  /// terminology.
  final List<Coding>? code;

  /// [slicing]
  /// Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple
  /// different constraints on a single element in the base resource).
  /// Slicing can be used in any resource that has cardinality ..* on the
  /// base resource, or any resource with a choice of types. The set of
  /// slices is any elements that come after this in the element sequence
  /// that have the same path, until a shorter path occurs (the shorter path
  /// terminates the set).
  final ElementDefinitionSlicing? slicing;

  /// [short]
  /// A concise description of what this element means (e.g. for use in
  /// autogenerated summaries).
  final FhirString? short;

  /// [definition]
  /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing
  /// elements (e.g. constraints), the definition SHALL be consistent with
  /// the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are
  /// reading is specified in ElementDefinition.definition).
  final FhirMarkdown? definition;

  /// [comment]
  /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  final FhirMarkdown? comment;

  /// [requirements]
  /// This element is for traceability of why the element was created and why
  /// the constraints exist as they do. This may be used to point to source
  /// materials or specifications that drove the structure of this element.
  final FhirMarkdown? requirements;

  /// [alias]
  /// Identifies additional names by which this element might also be known.
  final List<FhirString>? alias;

  /// [min]
  /// The minimum number of times this element SHALL appear in the instance.
  final FhirUnsignedInt? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// instance.
  final FhirString? max;

  /// [base]
  /// Information about the base definition of the element, provided to make
  /// it unnecessary for tools to trace the deviation of the element through
  /// the derived and related profiles. When the element definition is not
  /// the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then
  /// the information in provided in the element definition may be different
  /// to the base definition. On the original definition of the element, it
  /// will be same.
  final ElementDefinitionBase? base;

  /// [contentReference]
  /// Identifies an element defined elsewhere in the definition whose content
  /// rules should be applied to the current element. ContentReferences bring
  /// across all the rules that are in the ElementDefinition for the element,
  /// including definitions, cardinality constraints, bindings, invariants
  /// etc.
  final FhirUri? contentReference;

  /// [type]
  /// The data type or resource that the value of this element is permitted
  /// to be.
  final List<ElementDefinitionType>? type;

  /// [defaultValueX]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final DefaultValueXElementDefinition? defaultValueX;

  /// [meaningWhenMissing]
  /// The Implicit meaning that is to be understood when this element is
  /// missing (e.g. 'when this element is missing, the period is ongoing').
  final FhirMarkdown? meaningWhenMissing;

  /// [orderMeaning]
  /// If present, indicates that the order of the repeating element has
  /// meaning and describes what that meaning is. If absent, it means that
  /// the order of the element has no meaning.
  final FhirString? orderMeaning;

  /// [fixedX]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FixedXElementDefinition? fixedX;

  /// [patternX]
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
  final PatternXElementDefinition? patternX;

  /// [example]
  /// A sample value for this element demonstrating the type of information
  /// that would typically be found in the element.
  final List<ElementDefinitionExample>? example;

  /// [minValueX]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MinValueXElementDefinition? minValueX;

  /// [maxValueX]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MaxValueXElementDefinition? maxValueX;

  /// [maxLength]
  /// Indicates the maximum length in characters that is permitted to be
  /// present in conformant instances and which is expected to be supported
  /// by conformant consumers that support the element.
  final FhirInteger? maxLength;

  /// [condition]
  /// A reference to an invariant that may make additional statements about
  /// the cardinality or value in the instance.
  final List<FhirId>? condition;

  /// [constraint]
  /// Formal constraints such as co-occurrence and other constraints that can
  /// be computationally evaluated within the context of the instance.
  final List<ElementDefinitionConstraint>? constraint;

  /// [mustSupport]
  /// If true, implementations that produce or consume resources SHALL
  /// provide "support" for the element in some meaningful way. If false, the
  /// element may be ignored and not supported. If false, whether to populate
  /// or use the data element in any way is at the discretion of the
  /// implementation.
  final FhirBoolean? mustSupport;

  /// [isModifier]
  /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element
  /// cannot be ignored. Typically, this is used for status, negation and
  /// qualification codes. The effect of this is that the element cannot be
  /// ignored by systems: they SHALL either recognize the element and process
  /// it, and/or a pre-determination has been made that it is not relevant to
  /// their particular system.
  final FhirBoolean? isModifier;

  /// [isModifierReason]
  /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  final FhirString? isModifierReason;

  /// [isSummary]
  /// Whether the element should be included if a client requests a search
  /// with the parameter _summary=true.
  final FhirBoolean? isSummary;

  /// [binding]
  /// Binds to a value set if this element is coded (code, Coding,
  /// CodeableConcept, Quantity), or the data types (string, uri).
  final ElementDefinitionBinding? binding;

  /// [mapping]
  /// Identifies a concept from an external specification that roughly
  /// corresponds to this element.
  final List<ElementDefinitionMapping>? mapping;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('path', path);
    addField('representation', representation);
    addField('sliceName', sliceName);
    addField('sliceIsConstraining', sliceIsConstraining);
    addField('label', label);
    addField('code', code);
    addField('slicing', slicing);
    addField('short', short);
    addField('definition', definition);
    addField('comment', comment);
    addField('requirements', requirements);
    addField('alias', alias);
    addField('min', min);
    addField('max', max);
    addField('base', base);
    addField('contentReference', contentReference);
    addField('type', type);
    if (defaultValueX != null) {
      final fhirType = defaultValueX!.fhirType;
      addField('defaultValue${fhirType.capitalize()}', defaultValueX);
    }

    addField('meaningWhenMissing', meaningWhenMissing);
    addField('orderMeaning', orderMeaning);
    if (fixedX != null) {
      final fhirType = fixedX!.fhirType;
      addField('fixed${fhirType.capitalize()}', fixedX);
    }

    if (patternX != null) {
      final fhirType = patternX!.fhirType;
      addField('pattern${fhirType.capitalize()}', patternX);
    }

    addField('example', example);
    if (minValueX != null) {
      final fhirType = minValueX!.fhirType;
      addField('minValue${fhirType.capitalize()}', minValueX);
    }

    if (maxValueX != null) {
      final fhirType = maxValueX!.fhirType;
      addField('maxValue${fhirType.capitalize()}', maxValueX);
    }

    addField('maxLength', maxLength);
    addField('condition', condition);
    addField('constraint', constraint);
    addField('mustSupport', mustSupport);
    addField('isModifier', isModifier);
    addField('isModifierReason', isModifierReason);
    addField('isSummary', isSummary);
    addField('binding', binding);
    addField('mapping', mapping);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'path',
      'representation',
      'sliceName',
      'sliceIsConstraining',
      'label',
      'code',
      'slicing',
      'short',
      'definition',
      'comment',
      'requirements',
      'alias',
      'min',
      'max',
      'base',
      'contentReference',
      'type',
      'defaultValueX',
      'meaningWhenMissing',
      'orderMeaning',
      'fixedX',
      'patternX',
      'example',
      'minValueX',
      'maxValueX',
      'maxLength',
      'condition',
      'constraint',
      'mustSupport',
      'isModifier',
      'isModifierReason',
      'isSummary',
      'binding',
      'mapping',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'path':
        fields.add(path);
      case 'representation':
        if (representation != null) {
          fields.addAll(representation!);
        }
      case 'sliceName':
        if (sliceName != null) {
          fields.add(sliceName!);
        }
      case 'sliceIsConstraining':
        if (sliceIsConstraining != null) {
          fields.add(sliceIsConstraining!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'slicing':
        if (slicing != null) {
          fields.add(slicing!);
        }
      case 'short':
        if (short != null) {
          fields.add(short!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'requirements':
        if (requirements != null) {
          fields.add(requirements!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
        }
      case 'base':
        if (base != null) {
          fields.add(base!);
        }
      case 'contentReference':
        if (contentReference != null) {
          fields.add(contentReference!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'defaultValueBase64Binary':
        if (defaultValueX is FhirBase64Binary) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBoolean':
        if (defaultValueX is FhirBoolean) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCanonical':
        if (defaultValueX is FhirCanonical) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCode':
        if (defaultValueX is FhirCode) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDate':
        if (defaultValueX is FhirDate) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDateTime':
        if (defaultValueX is FhirDateTime) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDecimal':
        if (defaultValueX is FhirDecimal) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueId':
        if (defaultValueX is FhirId) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInstant':
        if (defaultValueX is FhirInstant) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInteger':
        if (defaultValueX is FhirInteger) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMarkdown':
        if (defaultValueX is FhirMarkdown) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueOid':
        if (defaultValueX is FhirOid) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePositiveInt':
        if (defaultValueX is FhirPositiveInt) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueString':
        if (defaultValueX is FhirString) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTime':
        if (defaultValueX is FhirTime) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUnsignedInt':
        if (defaultValueX is FhirUnsignedInt) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUri':
        if (defaultValueX is FhirUri) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUrl':
        if (defaultValueX is FhirUrl) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUuid':
        if (defaultValueX is FhirUuid) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAddress':
        if (defaultValueX is Address) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAge':
        if (defaultValueX is Age) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAnnotation':
        if (defaultValueX is Annotation) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAttachment':
        if (defaultValueX is Attachment) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableConcept':
        if (defaultValueX is CodeableConcept) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableReference':
        if (defaultValueX is CodeableReference) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCoding':
        if (defaultValueX is Coding) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactPoint':
        if (defaultValueX is ContactPoint) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCount':
        if (defaultValueX is Count) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDistance':
        if (defaultValueX is Distance) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDuration':
        if (defaultValueX is FhirDuration) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueHumanName':
        if (defaultValueX is HumanName) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueIdentifier':
        if (defaultValueX is Identifier) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMoney':
        if (defaultValueX is Money) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePeriod':
        if (defaultValueX is Period) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueQuantity':
        if (defaultValueX is Quantity) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRange':
        if (defaultValueX is Range) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatio':
        if (defaultValueX is Ratio) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatioRange':
        if (defaultValueX is RatioRange) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueReference':
        if (defaultValueX is Reference) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSampledData':
        if (defaultValueX is SampledData) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSignature':
        if (defaultValueX is Signature) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTiming':
        if (defaultValueX is Timing) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactDetail':
        if (defaultValueX is ContactDetail) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContributor':
        if (defaultValueX is Contributor) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDataRequirement':
        if (defaultValueX is DataRequirement) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueExpression':
        if (defaultValueX is FhirExpression) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueParameterDefinition':
        if (defaultValueX is ParameterDefinition) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRelatedArtifact':
        if (defaultValueX is RelatedArtifact) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTriggerDefinition':
        if (defaultValueX is TriggerDefinition) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUsageContext':
        if (defaultValueX is UsageContext) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDosage':
        if (defaultValueX is Dosage) {
          fields.add(defaultValueX!);
        }
      case 'meaningWhenMissing':
        if (meaningWhenMissing != null) {
          fields.add(meaningWhenMissing!);
        }
      case 'orderMeaning':
        if (orderMeaning != null) {
          fields.add(orderMeaning!);
        }
      case 'fixedBase64Binary':
        if (fixedX is FhirBase64Binary) {
          fields.add(fixedX!);
        }
      case 'fixedBoolean':
        if (fixedX is FhirBoolean) {
          fields.add(fixedX!);
        }
      case 'fixedCanonical':
        if (fixedX is FhirCanonical) {
          fields.add(fixedX!);
        }
      case 'fixedCode':
        if (fixedX is FhirCode) {
          fields.add(fixedX!);
        }
      case 'fixedDate':
        if (fixedX is FhirDate) {
          fields.add(fixedX!);
        }
      case 'fixedDateTime':
        if (fixedX is FhirDateTime) {
          fields.add(fixedX!);
        }
      case 'fixedDecimal':
        if (fixedX is FhirDecimal) {
          fields.add(fixedX!);
        }
      case 'fixedId':
        if (fixedX is FhirId) {
          fields.add(fixedX!);
        }
      case 'fixedInstant':
        if (fixedX is FhirInstant) {
          fields.add(fixedX!);
        }
      case 'fixedInteger':
        if (fixedX is FhirInteger) {
          fields.add(fixedX!);
        }
      case 'fixedMarkdown':
        if (fixedX is FhirMarkdown) {
          fields.add(fixedX!);
        }
      case 'fixedOid':
        if (fixedX is FhirOid) {
          fields.add(fixedX!);
        }
      case 'fixedPositiveInt':
        if (fixedX is FhirPositiveInt) {
          fields.add(fixedX!);
        }
      case 'fixedString':
        if (fixedX is FhirString) {
          fields.add(fixedX!);
        }
      case 'fixedTime':
        if (fixedX is FhirTime) {
          fields.add(fixedX!);
        }
      case 'fixedUnsignedInt':
        if (fixedX is FhirUnsignedInt) {
          fields.add(fixedX!);
        }
      case 'fixedUri':
        if (fixedX is FhirUri) {
          fields.add(fixedX!);
        }
      case 'fixedUrl':
        if (fixedX is FhirUrl) {
          fields.add(fixedX!);
        }
      case 'fixedUuid':
        if (fixedX is FhirUuid) {
          fields.add(fixedX!);
        }
      case 'fixedAddress':
        if (fixedX is Address) {
          fields.add(fixedX!);
        }
      case 'fixedAge':
        if (fixedX is Age) {
          fields.add(fixedX!);
        }
      case 'fixedAnnotation':
        if (fixedX is Annotation) {
          fields.add(fixedX!);
        }
      case 'fixedAttachment':
        if (fixedX is Attachment) {
          fields.add(fixedX!);
        }
      case 'fixedCodeableConcept':
        if (fixedX is CodeableConcept) {
          fields.add(fixedX!);
        }
      case 'fixedCodeableReference':
        if (fixedX is CodeableReference) {
          fields.add(fixedX!);
        }
      case 'fixedCoding':
        if (fixedX is Coding) {
          fields.add(fixedX!);
        }
      case 'fixedContactPoint':
        if (fixedX is ContactPoint) {
          fields.add(fixedX!);
        }
      case 'fixedCount':
        if (fixedX is Count) {
          fields.add(fixedX!);
        }
      case 'fixedDistance':
        if (fixedX is Distance) {
          fields.add(fixedX!);
        }
      case 'fixedDuration':
        if (fixedX is FhirDuration) {
          fields.add(fixedX!);
        }
      case 'fixedHumanName':
        if (fixedX is HumanName) {
          fields.add(fixedX!);
        }
      case 'fixedIdentifier':
        if (fixedX is Identifier) {
          fields.add(fixedX!);
        }
      case 'fixedMoney':
        if (fixedX is Money) {
          fields.add(fixedX!);
        }
      case 'fixedPeriod':
        if (fixedX is Period) {
          fields.add(fixedX!);
        }
      case 'fixedQuantity':
        if (fixedX is Quantity) {
          fields.add(fixedX!);
        }
      case 'fixedRange':
        if (fixedX is Range) {
          fields.add(fixedX!);
        }
      case 'fixedRatio':
        if (fixedX is Ratio) {
          fields.add(fixedX!);
        }
      case 'fixedRatioRange':
        if (fixedX is RatioRange) {
          fields.add(fixedX!);
        }
      case 'fixedReference':
        if (fixedX is Reference) {
          fields.add(fixedX!);
        }
      case 'fixedSampledData':
        if (fixedX is SampledData) {
          fields.add(fixedX!);
        }
      case 'fixedSignature':
        if (fixedX is Signature) {
          fields.add(fixedX!);
        }
      case 'fixedTiming':
        if (fixedX is Timing) {
          fields.add(fixedX!);
        }
      case 'fixedContactDetail':
        if (fixedX is ContactDetail) {
          fields.add(fixedX!);
        }
      case 'fixedContributor':
        if (fixedX is Contributor) {
          fields.add(fixedX!);
        }
      case 'fixedDataRequirement':
        if (fixedX is DataRequirement) {
          fields.add(fixedX!);
        }
      case 'fixedExpression':
        if (fixedX is FhirExpression) {
          fields.add(fixedX!);
        }
      case 'fixedParameterDefinition':
        if (fixedX is ParameterDefinition) {
          fields.add(fixedX!);
        }
      case 'fixedRelatedArtifact':
        if (fixedX is RelatedArtifact) {
          fields.add(fixedX!);
        }
      case 'fixedTriggerDefinition':
        if (fixedX is TriggerDefinition) {
          fields.add(fixedX!);
        }
      case 'fixedUsageContext':
        if (fixedX is UsageContext) {
          fields.add(fixedX!);
        }
      case 'fixedDosage':
        if (fixedX is Dosage) {
          fields.add(fixedX!);
        }
      case 'patternBase64Binary':
        if (patternX is FhirBase64Binary) {
          fields.add(patternX!);
        }
      case 'patternBoolean':
        if (patternX is FhirBoolean) {
          fields.add(patternX!);
        }
      case 'patternCanonical':
        if (patternX is FhirCanonical) {
          fields.add(patternX!);
        }
      case 'patternCode':
        if (patternX is FhirCode) {
          fields.add(patternX!);
        }
      case 'patternDate':
        if (patternX is FhirDate) {
          fields.add(patternX!);
        }
      case 'patternDateTime':
        if (patternX is FhirDateTime) {
          fields.add(patternX!);
        }
      case 'patternDecimal':
        if (patternX is FhirDecimal) {
          fields.add(patternX!);
        }
      case 'patternId':
        if (patternX is FhirId) {
          fields.add(patternX!);
        }
      case 'patternInstant':
        if (patternX is FhirInstant) {
          fields.add(patternX!);
        }
      case 'patternInteger':
        if (patternX is FhirInteger) {
          fields.add(patternX!);
        }
      case 'patternMarkdown':
        if (patternX is FhirMarkdown) {
          fields.add(patternX!);
        }
      case 'patternOid':
        if (patternX is FhirOid) {
          fields.add(patternX!);
        }
      case 'patternPositiveInt':
        if (patternX is FhirPositiveInt) {
          fields.add(patternX!);
        }
      case 'patternString':
        if (patternX is FhirString) {
          fields.add(patternX!);
        }
      case 'patternTime':
        if (patternX is FhirTime) {
          fields.add(patternX!);
        }
      case 'patternUnsignedInt':
        if (patternX is FhirUnsignedInt) {
          fields.add(patternX!);
        }
      case 'patternUri':
        if (patternX is FhirUri) {
          fields.add(patternX!);
        }
      case 'patternUrl':
        if (patternX is FhirUrl) {
          fields.add(patternX!);
        }
      case 'patternUuid':
        if (patternX is FhirUuid) {
          fields.add(patternX!);
        }
      case 'patternAddress':
        if (patternX is Address) {
          fields.add(patternX!);
        }
      case 'patternAge':
        if (patternX is Age) {
          fields.add(patternX!);
        }
      case 'patternAnnotation':
        if (patternX is Annotation) {
          fields.add(patternX!);
        }
      case 'patternAttachment':
        if (patternX is Attachment) {
          fields.add(patternX!);
        }
      case 'patternCodeableConcept':
        if (patternX is CodeableConcept) {
          fields.add(patternX!);
        }
      case 'patternCodeableReference':
        if (patternX is CodeableReference) {
          fields.add(patternX!);
        }
      case 'patternCoding':
        if (patternX is Coding) {
          fields.add(patternX!);
        }
      case 'patternContactPoint':
        if (patternX is ContactPoint) {
          fields.add(patternX!);
        }
      case 'patternCount':
        if (patternX is Count) {
          fields.add(patternX!);
        }
      case 'patternDistance':
        if (patternX is Distance) {
          fields.add(patternX!);
        }
      case 'patternDuration':
        if (patternX is FhirDuration) {
          fields.add(patternX!);
        }
      case 'patternHumanName':
        if (patternX is HumanName) {
          fields.add(patternX!);
        }
      case 'patternIdentifier':
        if (patternX is Identifier) {
          fields.add(patternX!);
        }
      case 'patternMoney':
        if (patternX is Money) {
          fields.add(patternX!);
        }
      case 'patternPeriod':
        if (patternX is Period) {
          fields.add(patternX!);
        }
      case 'patternQuantity':
        if (patternX is Quantity) {
          fields.add(patternX!);
        }
      case 'patternRange':
        if (patternX is Range) {
          fields.add(patternX!);
        }
      case 'patternRatio':
        if (patternX is Ratio) {
          fields.add(patternX!);
        }
      case 'patternRatioRange':
        if (patternX is RatioRange) {
          fields.add(patternX!);
        }
      case 'patternReference':
        if (patternX is Reference) {
          fields.add(patternX!);
        }
      case 'patternSampledData':
        if (patternX is SampledData) {
          fields.add(patternX!);
        }
      case 'patternSignature':
        if (patternX is Signature) {
          fields.add(patternX!);
        }
      case 'patternTiming':
        if (patternX is Timing) {
          fields.add(patternX!);
        }
      case 'patternContactDetail':
        if (patternX is ContactDetail) {
          fields.add(patternX!);
        }
      case 'patternContributor':
        if (patternX is Contributor) {
          fields.add(patternX!);
        }
      case 'patternDataRequirement':
        if (patternX is DataRequirement) {
          fields.add(patternX!);
        }
      case 'patternExpression':
        if (patternX is FhirExpression) {
          fields.add(patternX!);
        }
      case 'patternParameterDefinition':
        if (patternX is ParameterDefinition) {
          fields.add(patternX!);
        }
      case 'patternRelatedArtifact':
        if (patternX is RelatedArtifact) {
          fields.add(patternX!);
        }
      case 'patternTriggerDefinition':
        if (patternX is TriggerDefinition) {
          fields.add(patternX!);
        }
      case 'patternUsageContext':
        if (patternX is UsageContext) {
          fields.add(patternX!);
        }
      case 'patternDosage':
        if (patternX is Dosage) {
          fields.add(patternX!);
        }
      case 'example':
        if (example != null) {
          fields.addAll(example!);
        }
      case 'minValueDate':
        if (minValueX is FhirDate) {
          fields.add(minValueX!);
        }
      case 'minValueDateTime':
        if (minValueX is FhirDateTime) {
          fields.add(minValueX!);
        }
      case 'minValueInstant':
        if (minValueX is FhirInstant) {
          fields.add(minValueX!);
        }
      case 'minValueTime':
        if (minValueX is FhirTime) {
          fields.add(minValueX!);
        }
      case 'minValueDecimal':
        if (minValueX is FhirDecimal) {
          fields.add(minValueX!);
        }
      case 'minValueInteger':
        if (minValueX is FhirInteger) {
          fields.add(minValueX!);
        }
      case 'minValuePositiveInt':
        if (minValueX is FhirPositiveInt) {
          fields.add(minValueX!);
        }
      case 'minValueUnsignedInt':
        if (minValueX is FhirUnsignedInt) {
          fields.add(minValueX!);
        }
      case 'minValueQuantity':
        if (minValueX is Quantity) {
          fields.add(minValueX!);
        }
      case 'maxValueDate':
        if (maxValueX is FhirDate) {
          fields.add(maxValueX!);
        }
      case 'maxValueDateTime':
        if (maxValueX is FhirDateTime) {
          fields.add(maxValueX!);
        }
      case 'maxValueInstant':
        if (maxValueX is FhirInstant) {
          fields.add(maxValueX!);
        }
      case 'maxValueTime':
        if (maxValueX is FhirTime) {
          fields.add(maxValueX!);
        }
      case 'maxValueDecimal':
        if (maxValueX is FhirDecimal) {
          fields.add(maxValueX!);
        }
      case 'maxValueInteger':
        if (maxValueX is FhirInteger) {
          fields.add(maxValueX!);
        }
      case 'maxValuePositiveInt':
        if (maxValueX is FhirPositiveInt) {
          fields.add(maxValueX!);
        }
      case 'maxValueUnsignedInt':
        if (maxValueX is FhirUnsignedInt) {
          fields.add(maxValueX!);
        }
      case 'maxValueQuantity':
        if (maxValueX is Quantity) {
          fields.add(maxValueX!);
        }
      case 'maxLength':
        if (maxLength != null) {
          fields.add(maxLength!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'constraint':
        if (constraint != null) {
          fields.addAll(constraint!);
        }
      case 'mustSupport':
        if (mustSupport != null) {
          fields.add(mustSupport!);
        }
      case 'isModifier':
        if (isModifier != null) {
          fields.add(isModifier!);
        }
      case 'isModifierReason':
        if (isModifierReason != null) {
          fields.add(isModifierReason!);
        }
      case 'isSummary':
        if (isSummary != null) {
          fields.add(isSummary!);
        }
      case 'binding':
        if (binding != null) {
          fields.add(binding!);
        }
      case 'mapping':
        if (mapping != null) {
          fields.addAll(mapping!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinition clone() => throw UnimplementedError();
  @override
  ElementDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    List<PropertyRepresentation>? representation,
    FhirString? sliceName,
    FhirBoolean? sliceIsConstraining,
    FhirString? label,
    List<Coding>? code,
    ElementDefinitionSlicing? slicing,
    FhirString? short,
    FhirMarkdown? definition,
    FhirMarkdown? comment,
    FhirMarkdown? requirements,
    List<FhirString>? alias,
    FhirUnsignedInt? min,
    FhirString? max,
    ElementDefinitionBase? base,
    FhirUri? contentReference,
    List<ElementDefinitionType>? type,
    DefaultValueXElementDefinition? defaultValueX,
    FhirMarkdown? meaningWhenMissing,
    FhirString? orderMeaning,
    FixedXElementDefinition? fixedX,
    PatternXElementDefinition? patternX,
    List<ElementDefinitionExample>? example,
    MinValueXElementDefinition? minValueX,
    MaxValueXElementDefinition? maxValueX,
    FhirInteger? maxLength,
    List<FhirId>? condition,
    List<ElementDefinitionConstraint>? constraint,
    FhirBoolean? mustSupport,
    FhirBoolean? isModifier,
    FhirString? isModifierReason,
    FhirBoolean? isSummary,
    ElementDefinitionBinding? binding,
    List<ElementDefinitionMapping>? mapping,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinition(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      representation: representation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.representation',
                ),
              )
              .toList() ??
          this.representation,
      sliceName: sliceName?.copyWith(
            objectPath: '$newObjectPath.sliceName',
          ) ??
          this.sliceName,
      sliceIsConstraining: sliceIsConstraining?.copyWith(
            objectPath: '$newObjectPath.sliceIsConstraining',
          ) ??
          this.sliceIsConstraining,
      label: label?.copyWith(
            objectPath: '$newObjectPath.label',
          ) ??
          this.label,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      slicing: slicing?.copyWith(
            objectPath: '$newObjectPath.slicing',
          ) ??
          this.slicing,
      short: short?.copyWith(
            objectPath: '$newObjectPath.short',
          ) ??
          this.short,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
      requirements: requirements?.copyWith(
            objectPath: '$newObjectPath.requirements',
          ) ??
          this.requirements,
      alias: alias
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.alias',
                ),
              )
              .toList() ??
          this.alias,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
      base: base?.copyWith(
            objectPath: '$newObjectPath.base',
          ) ??
          this.base,
      contentReference: contentReference?.copyWith(
            objectPath: '$newObjectPath.contentReference',
          ) ??
          this.contentReference,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      defaultValueX: defaultValueX?.copyWith(
            objectPath: '$newObjectPath.defaultValueX',
          ) as DefaultValueXElementDefinition? ??
          this.defaultValueX,
      meaningWhenMissing: meaningWhenMissing?.copyWith(
            objectPath: '$newObjectPath.meaningWhenMissing',
          ) ??
          this.meaningWhenMissing,
      orderMeaning: orderMeaning?.copyWith(
            objectPath: '$newObjectPath.orderMeaning',
          ) ??
          this.orderMeaning,
      fixedX: fixedX?.copyWith(
            objectPath: '$newObjectPath.fixedX',
          ) as FixedXElementDefinition? ??
          this.fixedX,
      patternX: patternX?.copyWith(
            objectPath: '$newObjectPath.patternX',
          ) as PatternXElementDefinition? ??
          this.patternX,
      example: example
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.example',
                ),
              )
              .toList() ??
          this.example,
      minValueX: minValueX?.copyWith(
            objectPath: '$newObjectPath.minValueX',
          ) as MinValueXElementDefinition? ??
          this.minValueX,
      maxValueX: maxValueX?.copyWith(
            objectPath: '$newObjectPath.maxValueX',
          ) as MaxValueXElementDefinition? ??
          this.maxValueX,
      maxLength: maxLength?.copyWith(
            objectPath: '$newObjectPath.maxLength',
          ) ??
          this.maxLength,
      condition: condition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.condition',
                ),
              )
              .toList() ??
          this.condition,
      constraint: constraint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.constraint',
                ),
              )
              .toList() ??
          this.constraint,
      mustSupport: mustSupport?.copyWith(
            objectPath: '$newObjectPath.mustSupport',
          ) ??
          this.mustSupport,
      isModifier: isModifier?.copyWith(
            objectPath: '$newObjectPath.isModifier',
          ) ??
          this.isModifier,
      isModifierReason: isModifierReason?.copyWith(
            objectPath: '$newObjectPath.isModifierReason',
          ) ??
          this.isModifierReason,
      isSummary: isSummary?.copyWith(
            objectPath: '$newObjectPath.isSummary',
          ) ??
          this.isSummary,
      binding: binding?.copyWith(
            objectPath: '$newObjectPath.binding',
          ) ??
          this.binding,
      mapping: mapping
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.mapping',
                ),
              )
              .toList() ??
          this.mapping,
    );
  }
}

/// [ElementDefinitionSlicing]
/// Indicates that the element is sliced into a set of alternative
/// definitions (i.e. in a structure definition, there are multiple
/// different constraints on a single element in the base resource).
/// Slicing can be used in any resource that has cardinality ..* on the
/// base resource, or any resource with a choice of types. The set of
/// slices is any elements that come after this in the element sequence
/// that have the same path, until a shorter path occurs (the shorter path
/// terminates the set).
class ElementDefinitionSlicing extends Element {
  /// Primary constructor for
  /// [ElementDefinitionSlicing]

  const ElementDefinitionSlicing({
    super.id,
    super.extension_,
    this.discriminator,
    this.description,
    this.ordered,
    required this.rules,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionSlicing',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicing.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionSlicing';
    return ElementDefinitionSlicing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map<ElementDefinitionDiscriminator>(
            (v) => ElementDefinitionDiscriminator.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.discriminator',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      ordered: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'ordered',
        FhirBoolean.fromJson,
        '$objectPath.ordered',
      ),
      rules: JsonParser.parsePrimitive<SlicingRules>(
        json,
        'rules',
        SlicingRules.fromJson,
        '$objectPath.rules',
      )!,
    );
  }

  /// Deserialize [ElementDefinitionSlicing]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionSlicing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionSlicing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionSlicing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionSlicing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionSlicing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionSlicing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionSlicing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionSlicing';

  /// [discriminator]
  /// Designates which child elements are used to discriminate between the
  /// slices when processing an instance. If one or more discriminators are
  /// provided, the value of the child elements in the instance data SHALL
  /// completely distinguish which slice the element in the resource matches
  /// based on the allowed values for those elements in each of the slices.
  final List<ElementDefinitionDiscriminator>? discriminator;

  /// [description]
  /// A human-readable text description of how the slicing works. If there is
  /// no discriminator, this is required to be present to provide whatever
  /// information is possible about how the slices can be differentiated.
  final FhirString? description;

  /// [ordered]
  /// If the matching elements have to occur in the same order as defined in
  /// the profile.
  final FhirBoolean? ordered;

  /// [rules]
  /// Whether additional slices are allowed or not. When the slices are
  /// ordered, profile authors can also say that additional slices are only
  /// allowed at the end.
  final SlicingRules rules;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('discriminator', discriminator);
    addField('description', description);
    addField('ordered', ordered);
    addField('rules', rules);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'discriminator',
      'description',
      'ordered',
      'rules',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'discriminator':
        if (discriminator != null) {
          fields.addAll(discriminator!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'ordered':
        if (ordered != null) {
          fields.add(ordered!);
        }
      case 'rules':
        fields.add(rules);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionSlicing clone() => throw UnimplementedError();
  @override
  ElementDefinitionSlicing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<ElementDefinitionDiscriminator>? discriminator,
    FhirString? description,
    FhirBoolean? ordered,
    SlicingRules? rules,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionSlicing(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      discriminator: discriminator
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.discriminator',
                ),
              )
              .toList() ??
          this.discriminator,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      ordered: ordered?.copyWith(
            objectPath: '$newObjectPath.ordered',
          ) ??
          this.ordered,
      rules: rules?.copyWith(
            objectPath: '$newObjectPath.rules',
          ) ??
          this.rules,
    );
  }
}

/// [ElementDefinitionDiscriminator]
/// Designates which child elements are used to discriminate between the
/// slices when processing an instance. If one or more discriminators are
/// provided, the value of the child elements in the instance data SHALL
/// completely distinguish which slice the element in the resource matches
/// based on the allowed values for those elements in each of the slices.
class ElementDefinitionDiscriminator extends Element {
  /// Primary constructor for
  /// [ElementDefinitionDiscriminator]

  const ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
    required this.type,
    required this.path,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionDiscriminator',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminator.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionDiscriminator';
    return ElementDefinitionDiscriminator(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<DiscriminatorType>(
        json,
        'type',
        DiscriminatorType.fromJson,
        '$objectPath.type',
      )!,
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      )!,
    );
  }

  /// Deserialize [ElementDefinitionDiscriminator]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionDiscriminator.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionDiscriminator '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionDiscriminator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionDiscriminator.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionDiscriminator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionDiscriminator';

  /// [type]
  /// How the element value is interpreted when discrimination is evaluated.
  final DiscriminatorType type;

  /// [path]
  /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element
  /// on which discrimination is based.
  final FhirString path;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('type', type);
    addField('path', path);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'type',
      'path',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'type':
        fields.add(type);
      case 'path':
        fields.add(path);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
  @override
  ElementDefinitionDiscriminator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    DiscriminatorType? type,
    FhirString? path,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionDiscriminator(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
    );
  }
}

/// [ElementDefinitionBase]
/// Information about the base definition of the element, provided to make
/// it unnecessary for tools to trace the deviation of the element through
/// the derived and related profiles. When the element definition is not
/// the original definition of an element - i.g. either in a constraint on
/// another type, or for elements from a super type in a snap shot - then
/// the information in provided in the element definition may be different
/// to the base definition. On the original definition of the element, it
/// will be same.
class ElementDefinitionBase extends Element {
  /// Primary constructor for
  /// [ElementDefinitionBase]

  const ElementDefinitionBase({
    super.id,
    super.extension_,
    required this.path,
    required this.min,
    required this.max,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionBase',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionBase';
    return ElementDefinitionBase(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      )!,
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
        '$objectPath.min',
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      )!,
    );
  }

  /// Deserialize [ElementDefinitionBase]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBase.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionBase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBase';

  /// [path]
  /// The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  /// [StructureDefinition](structuredefinition.html#) without a
  /// StructureDefinition.base.
  final FhirString path;

  /// [min]
  /// Minimum cardinality of the base element identified by the path.
  final FhirUnsignedInt min;

  /// [max]
  /// Maximum cardinality of the base element identified by the path.
  final FhirString max;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('path', path);
    addField('min', min);
    addField('max', max);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'path',
      'min',
      'max',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'path':
        fields.add(path);
      case 'min':
        fields.add(min);
      case 'max':
        fields.add(max);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionBase clone() => throw UnimplementedError();
  @override
  ElementDefinitionBase copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirUnsignedInt? min,
    FhirString? max,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionBase(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
    );
  }
}

/// [ElementDefinitionType]
/// The data type or resource that the value of this element is permitted
/// to be.
class ElementDefinitionType extends Element {
  /// Primary constructor for
  /// [ElementDefinitionType]

  const ElementDefinitionType({
    super.id,
    super.extension_,
    required this.code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.versioning,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionType',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionType';
    return ElementDefinitionType(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirUri>(
        json,
        'code',
        FhirUri.fromJson,
        '$objectPath.code',
      )!,
      profile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'targetProfile',
        FhirCanonical.fromJson,
        '$objectPath.targetProfile',
      ),
      aggregation: JsonParser.parsePrimitiveList<AggregationMode>(
        json,
        'aggregation',
        AggregationMode.fromJson,
        '$objectPath.aggregation',
      ),
      versioning: JsonParser.parsePrimitive<ReferenceVersionRules>(
        json,
        'versioning',
        ReferenceVersionRules.fromJson,
        '$objectPath.versioning',
      ),
    );
  }

  /// Deserialize [ElementDefinitionType]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionType.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionType.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionType.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionType '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionType]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionType.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionType';

  /// [code]
  /// URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri code;

  /// [profile]
  /// Identifies a profile structure or implementation Guide that applies to
  /// the datatype this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the type SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? profile;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [aggregation]
  /// If the type is a reference to another resource, how the resource is or
  /// can be aggregated - is it a contained resource, or a reference, and if
  /// the context is a bundle, is it included in the bundle.
  final List<AggregationMode>? aggregation;

  /// [versioning]
  /// Whether this reference needs to be version specific or version
  /// independent, or whether either can be used.
  final ReferenceVersionRules? versioning;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('code', code);
    addField('profile', profile);
    addField('targetProfile', targetProfile);
    addField('aggregation', aggregation);
    addField('versioning', versioning);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'code',
      'profile',
      'targetProfile',
      'aggregation',
      'versioning',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'code':
        fields.add(code);
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
        }
      case 'targetProfile':
        if (targetProfile != null) {
          fields.addAll(targetProfile!);
        }
      case 'aggregation':
        if (aggregation != null) {
          fields.addAll(aggregation!);
        }
      case 'versioning':
        if (versioning != null) {
          fields.add(versioning!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionType clone() => throw UnimplementedError();
  @override
  ElementDefinitionType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? code,
    List<FhirCanonical>? profile,
    List<FhirCanonical>? targetProfile,
    List<AggregationMode>? aggregation,
    ReferenceVersionRules? versioning,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionType(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      profile: profile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.profile',
                ),
              )
              .toList() ??
          this.profile,
      targetProfile: targetProfile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetProfile',
                ),
              )
              .toList() ??
          this.targetProfile,
      aggregation: aggregation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.aggregation',
                ),
              )
              .toList() ??
          this.aggregation,
      versioning: versioning?.copyWith(
            objectPath: '$newObjectPath.versioning',
          ) ??
          this.versioning,
    );
  }
}

/// [ElementDefinitionExample]
/// A sample value for this element demonstrating the type of information
/// that would typically be found in the element.
class ElementDefinitionExample extends Element {
  /// Primary constructor for
  /// [ElementDefinitionExample]

  const ElementDefinitionExample({
    super.id,
    super.extension_,
    required this.label,
    required this.valueX,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionExample',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionExample';
    return ElementDefinitionExample(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
        '$objectPath.label',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXElementDefinitionExample>(
        json,
        {
          'valueBase64Binary': FhirBase64Binary.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueCanonical': FhirCanonical.fromJson,
          'valueCode': FhirCode.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueId': FhirId.fromJson,
          'valueInstant': FhirInstant.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueMarkdown': FhirMarkdown.fromJson,
          'valueOid': FhirOid.fromJson,
          'valuePositiveInt': FhirPositiveInt.fromJson,
          'valueString': FhirString.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueUnsignedInt': FhirUnsignedInt.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueUrl': FhirUrl.fromJson,
          'valueUuid': FhirUuid.fromJson,
          'valueAddress': Address.fromJson,
          'valueAge': Age.fromJson,
          'valueAnnotation': Annotation.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueCodeableReference': CodeableReference.fromJson,
          'valueCoding': Coding.fromJson,
          'valueContactPoint': ContactPoint.fromJson,
          'valueCount': Count.fromJson,
          'valueDistance': Distance.fromJson,
          'valueDuration': FhirDuration.fromJson,
          'valueHumanName': HumanName.fromJson,
          'valueIdentifier': Identifier.fromJson,
          'valueMoney': Money.fromJson,
          'valuePeriod': Period.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueRatioRange': RatioRange.fromJson,
          'valueReference': Reference.fromJson,
          'valueSampledData': SampledData.fromJson,
          'valueSignature': Signature.fromJson,
          'valueTiming': Timing.fromJson,
          'valueContactDetail': ContactDetail.fromJson,
          'valueContributor': Contributor.fromJson,
          'valueDataRequirement': DataRequirement.fromJson,
          'valueExpression': FhirExpression.fromJson,
          'valueParameterDefinition': ParameterDefinition.fromJson,
          'valueRelatedArtifact': RelatedArtifact.fromJson,
          'valueTriggerDefinition': TriggerDefinition.fromJson,
          'valueUsageContext': UsageContext.fromJson,
          'valueDosage': Dosage.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [ElementDefinitionExample]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionExample.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionExample.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionExample.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionExample '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionExample]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionExample.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionExample.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionExample';

  /// [label]
  /// Describes the purpose of this example amoung the set of examples.
  final FhirString label;

  /// [valueX]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final ValueXElementDefinitionExample valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('label', label);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'label',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'label':
        fields.add(label);
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonical) {
          fields.add(valueX);
        }
      case 'valueCode':
        if (valueX is FhirCode) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueId':
        if (valueX is FhirId) {
          fields.add(valueX);
        }
      case 'valueInstant':
        if (valueX is FhirInstant) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdown) {
          fields.add(valueX);
        }
      case 'valueOid':
        if (valueX is FhirOid) {
          fields.add(valueX);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveInt) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedInt) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueUrl':
        if (valueX is FhirUrl) {
          fields.add(valueX);
        }
      case 'valueUuid':
        if (valueX is FhirUuid) {
          fields.add(valueX);
        }
      case 'valueAddress':
        if (valueX is Address) {
          fields.add(valueX);
        }
      case 'valueAge':
        if (valueX is Age) {
          fields.add(valueX);
        }
      case 'valueAnnotation':
        if (valueX is Annotation) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReference) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueContactPoint':
        if (valueX is ContactPoint) {
          fields.add(valueX);
        }
      case 'valueCount':
        if (valueX is Count) {
          fields.add(valueX);
        }
      case 'valueDistance':
        if (valueX is Distance) {
          fields.add(valueX);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX);
        }
      case 'valueHumanName':
        if (valueX is HumanName) {
          fields.add(valueX);
        }
      case 'valueIdentifier':
        if (valueX is Identifier) {
          fields.add(valueX);
        }
      case 'valueMoney':
        if (valueX is Money) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueRatioRange':
        if (valueX is RatioRange) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX);
        }
      case 'valueSignature':
        if (valueX is Signature) {
          fields.add(valueX);
        }
      case 'valueTiming':
        if (valueX is Timing) {
          fields.add(valueX);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetail) {
          fields.add(valueX);
        }
      case 'valueContributor':
        if (valueX is Contributor) {
          fields.add(valueX);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirement) {
          fields.add(valueX);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinition) {
          fields.add(valueX);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifact) {
          fields.add(valueX);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinition) {
          fields.add(valueX);
        }
      case 'valueUsageContext':
        if (valueX is UsageContext) {
          fields.add(valueX);
        }
      case 'valueDosage':
        if (valueX is Dosage) {
          fields.add(valueX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
  @override
  ElementDefinitionExample copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    ValueXElementDefinitionExample? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionExample(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      label: label?.copyWith(
            objectPath: '$newObjectPath.label',
          ) ??
          this.label,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXElementDefinitionExample? ??
          this.valueX,
    );
  }
}

/// [ElementDefinitionConstraint]
/// Formal constraints such as co-occurrence and other constraints that can
/// be computationally evaluated within the context of the instance.
class ElementDefinitionConstraint extends Element {
  /// Primary constructor for
  /// [ElementDefinitionConstraint]

  const ElementDefinitionConstraint({
    super.id,
    super.extension_,
    required this.key,
    this.requirements,
    required this.severity,
    required this.human,
    this.expression,
    this.xpath,
    this.source,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionConstraint',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionConstraint';
    return ElementDefinitionConstraint(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      key: JsonParser.parsePrimitive<FhirId>(
        json,
        'key',
        FhirId.fromJson,
        '$objectPath.key',
      )!,
      requirements: JsonParser.parsePrimitive<FhirString>(
        json,
        'requirements',
        FhirString.fromJson,
        '$objectPath.requirements',
      ),
      severity: JsonParser.parsePrimitive<ConstraintSeverity>(
        json,
        'severity',
        ConstraintSeverity.fromJson,
        '$objectPath.severity',
      )!,
      human: JsonParser.parsePrimitive<FhirString>(
        json,
        'human',
        FhirString.fromJson,
        '$objectPath.human',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      xpath: JsonParser.parsePrimitive<FhirString>(
        json,
        'xpath',
        FhirString.fromJson,
        '$objectPath.xpath',
      ),
      source: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'source',
        FhirCanonical.fromJson,
        '$objectPath.source',
      ),
    );
  }

  /// Deserialize [ElementDefinitionConstraint]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionConstraint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionConstraint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionConstraint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionConstraint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionConstraint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionConstraint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionConstraint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionConstraint';

  /// [key]
  /// Allows identification of which elements have their cardinalities
  /// impacted by the constraint. Will not be referenced for constraints that
  /// do not affect cardinality.
  final FhirId key;

  /// [requirements]
  /// Description of why this constraint is necessary or appropriate.
  final FhirString? requirements;

  /// [severity]
  /// Identifies the impact constraint violation has on the conformance of
  /// the instance.
  final ConstraintSeverity severity;

  /// [human]
  /// Text that can be used to describe the constraint in messages
  /// identifying that the constraint has been violated.
  final FhirString human;

  /// [expression]
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be
  /// executed to see if this constraint is met.
  final FhirString? expression;

  /// [xpath]
  /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  final FhirString? xpath;

  /// [source]
  /// A reference to the original source of the constraint, for traceability
  /// purposes.
  final FhirCanonical? source;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('key', key);
    addField('requirements', requirements);
    addField('severity', severity);
    addField('human', human);
    addField('expression', expression);
    addField('xpath', xpath);
    addField('source', source);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'key',
      'requirements',
      'severity',
      'human',
      'expression',
      'xpath',
      'source',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'key':
        fields.add(key);
      case 'requirements':
        if (requirements != null) {
          fields.add(requirements!);
        }
      case 'severity':
        fields.add(severity);
      case 'human':
        fields.add(human);
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'xpath':
        if (xpath != null) {
          fields.add(xpath!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionConstraint clone() => throw UnimplementedError();
  @override
  ElementDefinitionConstraint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? key,
    FhirString? requirements,
    ConstraintSeverity? severity,
    FhirString? human,
    FhirString? expression,
    FhirString? xpath,
    FhirCanonical? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionConstraint(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      key: key?.copyWith(
            objectPath: '$newObjectPath.key',
          ) ??
          this.key,
      requirements: requirements?.copyWith(
            objectPath: '$newObjectPath.requirements',
          ) ??
          this.requirements,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      human: human?.copyWith(
            objectPath: '$newObjectPath.human',
          ) ??
          this.human,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      xpath: xpath?.copyWith(
            objectPath: '$newObjectPath.xpath',
          ) ??
          this.xpath,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
    );
  }
}

/// [ElementDefinitionBinding]
/// Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).
class ElementDefinitionBinding extends Element {
  /// Primary constructor for
  /// [ElementDefinitionBinding]

  const ElementDefinitionBinding({
    super.id,
    super.extension_,
    required this.strength,
    this.description,
    this.valueSet,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionBinding',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionBinding';
    return ElementDefinitionBinding(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      strength: JsonParser.parsePrimitive<BindingStrength>(
        json,
        'strength',
        BindingStrength.fromJson,
        '$objectPath.strength',
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
        '$objectPath.valueSet',
      ),
    );
  }

  /// Deserialize [ElementDefinitionBinding]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBinding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBinding';

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [description]
  /// Describes the intended use of this particular set of codes.
  final FhirString? description;

  /// [valueSet]
  /// Refers to the value set that identifies the set of codes the binding
  /// refers to.
  final FhirCanonical? valueSet;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('strength', strength);
    addField('description', description);
    addField('valueSet', valueSet);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'strength',
      'description',
      'valueSet',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'strength':
        fields.add(strength);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'valueSet':
        if (valueSet != null) {
          fields.add(valueSet!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionBinding clone() => throw UnimplementedError();
  @override
  ElementDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    BindingStrength? strength,
    FhirString? description,
    FhirCanonical? valueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionBinding(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      strength: strength?.copyWith(
            objectPath: '$newObjectPath.strength',
          ) ??
          this.strength,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      valueSet: valueSet?.copyWith(
            objectPath: '$newObjectPath.valueSet',
          ) ??
          this.valueSet,
    );
  }
}

/// [ElementDefinitionMapping]
/// Identifies a concept from an external specification that roughly
/// corresponds to this element.
class ElementDefinitionMapping extends Element {
  /// Primary constructor for
  /// [ElementDefinitionMapping]

  const ElementDefinitionMapping({
    super.id,
    super.extension_,
    required this.identity,
    this.language,
    required this.map,
    this.comment,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionMapping',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionMapping';
    return ElementDefinitionMapping(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      identity: JsonParser.parsePrimitive<FhirId>(
        json,
        'identity',
        FhirId.fromJson,
        '$objectPath.identity',
      )!,
      language: JsonParser.parsePrimitive<FhirCode>(
        json,
        'language',
        FhirCode.fromJson,
        '$objectPath.language',
      ),
      map: JsonParser.parsePrimitive<FhirString>(
        json,
        'map',
        FhirString.fromJson,
        '$objectPath.map',
      )!,
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [ElementDefinitionMapping]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionMapping.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionMapping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionMapping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionMapping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionMapping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionMapping.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionMapping';

  /// [identity]
  /// An internal reference to the definition of a mapping.
  final FhirId identity;

  /// [language]
  /// Identifies the computable language in which mapping.map is expressed.
  final FhirCode? language;

  /// [map]
  /// Expresses what part of the target specification corresponds to this
  /// element.
  final FhirString map;

  /// [comment]
  /// Comments that provide information about the mapping or its use.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('identity', identity);
    addField('language', language);
    addField('map', map);
    addField('comment', comment);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'identity',
      'language',
      'map',
      'comment',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'identity':
        fields.add(identity);
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'map':
        fields.add(map);
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ElementDefinitionMapping clone() => throw UnimplementedError();
  @override
  ElementDefinitionMapping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? identity,
    FhirCode? language,
    FhirString? map,
    FhirString? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ElementDefinitionMapping(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      identity: identity?.copyWith(
            objectPath: '$newObjectPath.identity',
          ) ??
          this.identity,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      map: map?.copyWith(
            objectPath: '$newObjectPath.map',
          ) ??
          this.map,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }
}
