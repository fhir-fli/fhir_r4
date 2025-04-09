import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'element_definition.g.dart';

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      )!,
      representation: JsonParser.parsePrimitiveList<PropertyRepresentation>(
        json,
        'representation',
        PropertyRepresentation.fromJson,
      ),
      sliceName: JsonParser.parsePrimitive<FhirString>(
        json,
        'sliceName',
        FhirString.fromJson,
      ),
      sliceIsConstraining: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'sliceIsConstraining',
        FhirBoolean.fromJson,
      ),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      slicing: JsonParser.parseObject<ElementDefinitionSlicing>(
        json,
        'slicing',
        ElementDefinitionSlicing.fromJson,
      ),
      short: JsonParser.parsePrimitive<FhirString>(
        json,
        'short',
        FhirString.fromJson,
      ),
      definition: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'definition',
        FhirMarkdown.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
      ),
      requirements: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'requirements',
        FhirMarkdown.fromJson,
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
      ),
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
      ),
      base: JsonParser.parseObject<ElementDefinitionBase>(
        json,
        'base',
        ElementDefinitionBase.fromJson,
      ),
      contentReference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'contentReference',
        FhirUri.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<ElementDefinitionType>(
            (v) => ElementDefinitionType.fromJson(
              {...v as Map<String, dynamic>},
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
      ),
      meaningWhenMissing: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'meaningWhenMissing',
        FhirMarkdown.fromJson,
      ),
      orderMeaning: JsonParser.parsePrimitive<FhirString>(
        json,
        'orderMeaning',
        FhirString.fromJson,
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
      ),
      example: (json['example'] as List<dynamic>?)
          ?.map<ElementDefinitionExample>(
            (v) => ElementDefinitionExample.fromJson(
              {...v as Map<String, dynamic>},
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
      ),
      maxLength: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'maxLength',
        FhirInteger.fromJson,
      ),
      condition: JsonParser.parsePrimitiveList<FhirId>(
        json,
        'condition',
        FhirId.fromJson,
      ),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map<ElementDefinitionConstraint>(
            (v) => ElementDefinitionConstraint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      mustSupport: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'mustSupport',
        FhirBoolean.fromJson,
      ),
      isModifier: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isModifier',
        FhirBoolean.fromJson,
      ),
      isModifierReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'isModifierReason',
        FhirString.fromJson,
      ),
      isSummary: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isSummary',
        FhirBoolean.fromJson,
      ),
      binding: JsonParser.parseObject<ElementDefinitionBinding>(
        json,
        'binding',
        ElementDefinitionBinding.fromJson,
      ),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map<ElementDefinitionMapping>(
            (v) => ElementDefinitionMapping.fromJson(
              {...v as Map<String, dynamic>},
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

  /// Getter for [defaultValueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get defaultValueBase64Binary =>
      defaultValueX?.isAs<FhirBase64Binary>();

  /// Getter for [defaultValueBoolean] as a FhirBoolean
  FhirBoolean? get defaultValueBoolean => defaultValueX?.isAs<FhirBoolean>();

  /// Getter for [defaultValueCanonical] as a FhirCanonical
  FhirCanonical? get defaultValueCanonical =>
      defaultValueX?.isAs<FhirCanonical>();

  /// Getter for [defaultValueCode] as a FhirCode
  FhirCode? get defaultValueCode => defaultValueX?.isAs<FhirCode>();

  /// Getter for [defaultValueDate] as a FhirDate
  FhirDate? get defaultValueDate => defaultValueX?.isAs<FhirDate>();

  /// Getter for [defaultValueDateTime] as a FhirDateTime
  FhirDateTime? get defaultValueDateTime => defaultValueX?.isAs<FhirDateTime>();

  /// Getter for [defaultValueDecimal] as a FhirDecimal
  FhirDecimal? get defaultValueDecimal => defaultValueX?.isAs<FhirDecimal>();

  /// Getter for [defaultValueId] as a FhirId
  FhirId? get defaultValueId => defaultValueX?.isAs<FhirId>();

  /// Getter for [defaultValueInstant] as a FhirInstant
  FhirInstant? get defaultValueInstant => defaultValueX?.isAs<FhirInstant>();

  /// Getter for [defaultValueInteger] as a FhirInteger
  FhirInteger? get defaultValueInteger => defaultValueX?.isAs<FhirInteger>();

  /// Getter for [defaultValueMarkdown] as a FhirMarkdown
  FhirMarkdown? get defaultValueMarkdown => defaultValueX?.isAs<FhirMarkdown>();

  /// Getter for [defaultValueOid] as a FhirOid
  FhirOid? get defaultValueOid => defaultValueX?.isAs<FhirOid>();

  /// Getter for [defaultValuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get defaultValuePositiveInt =>
      defaultValueX?.isAs<FhirPositiveInt>();

  /// Getter for [defaultValueString] as a FhirString
  FhirString? get defaultValueString => defaultValueX?.isAs<FhirString>();

  /// Getter for [defaultValueTime] as a FhirTime
  FhirTime? get defaultValueTime => defaultValueX?.isAs<FhirTime>();

  /// Getter for [defaultValueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get defaultValueUnsignedInt =>
      defaultValueX?.isAs<FhirUnsignedInt>();

  /// Getter for [defaultValueUri] as a FhirUri
  FhirUri? get defaultValueUri => defaultValueX?.isAs<FhirUri>();

  /// Getter for [defaultValueUrl] as a FhirUrl
  FhirUrl? get defaultValueUrl => defaultValueX?.isAs<FhirUrl>();

  /// Getter for [defaultValueUuid] as a FhirUuid
  FhirUuid? get defaultValueUuid => defaultValueX?.isAs<FhirUuid>();

  /// Getter for [defaultValueAddress] as a Address
  Address? get defaultValueAddress => defaultValueX?.isAs<Address>();

  /// Getter for [defaultValueAge] as a Age
  Age? get defaultValueAge => defaultValueX?.isAs<Age>();

  /// Getter for [defaultValueAnnotation] as a Annotation
  Annotation? get defaultValueAnnotation => defaultValueX?.isAs<Annotation>();

  /// Getter for [defaultValueAttachment] as a Attachment
  Attachment? get defaultValueAttachment => defaultValueX?.isAs<Attachment>();

  /// Getter for [defaultValueCodeableConcept] as a CodeableConcept
  CodeableConcept? get defaultValueCodeableConcept =>
      defaultValueX?.isAs<CodeableConcept>();

  /// Getter for [defaultValueCodeableReference] as a CodeableReference
  CodeableReference? get defaultValueCodeableReference =>
      defaultValueX?.isAs<CodeableReference>();

  /// Getter for [defaultValueCoding] as a Coding
  Coding? get defaultValueCoding => defaultValueX?.isAs<Coding>();

  /// Getter for [defaultValueContactPoint] as a ContactPoint
  ContactPoint? get defaultValueContactPoint =>
      defaultValueX?.isAs<ContactPoint>();

  /// Getter for [defaultValueCount] as a Count
  Count? get defaultValueCount => defaultValueX?.isAs<Count>();

  /// Getter for [defaultValueDistance] as a Distance
  Distance? get defaultValueDistance => defaultValueX?.isAs<Distance>();

  /// Getter for [defaultValueDuration] as a FhirDuration
  FhirDuration? get defaultValueDuration => defaultValueX?.isAs<FhirDuration>();

  /// Getter for [defaultValueHumanName] as a HumanName
  HumanName? get defaultValueHumanName => defaultValueX?.isAs<HumanName>();

  /// Getter for [defaultValueIdentifier] as a Identifier
  Identifier? get defaultValueIdentifier => defaultValueX?.isAs<Identifier>();

  /// Getter for [defaultValueMoney] as a Money
  Money? get defaultValueMoney => defaultValueX?.isAs<Money>();

  /// Getter for [defaultValuePeriod] as a Period
  Period? get defaultValuePeriod => defaultValueX?.isAs<Period>();

  /// Getter for [defaultValueQuantity] as a Quantity
  Quantity? get defaultValueQuantity => defaultValueX?.isAs<Quantity>();

  /// Getter for [defaultValueRange] as a Range
  Range? get defaultValueRange => defaultValueX?.isAs<Range>();

  /// Getter for [defaultValueRatio] as a Ratio
  Ratio? get defaultValueRatio => defaultValueX?.isAs<Ratio>();

  /// Getter for [defaultValueRatioRange] as a RatioRange
  RatioRange? get defaultValueRatioRange => defaultValueX?.isAs<RatioRange>();

  /// Getter for [defaultValueReference] as a Reference
  Reference? get defaultValueReference => defaultValueX?.isAs<Reference>();

  /// Getter for [defaultValueSampledData] as a SampledData
  SampledData? get defaultValueSampledData =>
      defaultValueX?.isAs<SampledData>();

  /// Getter for [defaultValueSignature] as a Signature
  Signature? get defaultValueSignature => defaultValueX?.isAs<Signature>();

  /// Getter for [defaultValueTiming] as a Timing
  Timing? get defaultValueTiming => defaultValueX?.isAs<Timing>();

  /// Getter for [defaultValueContactDetail] as a ContactDetail
  ContactDetail? get defaultValueContactDetail =>
      defaultValueX?.isAs<ContactDetail>();

  /// Getter for [defaultValueContributor] as a Contributor
  Contributor? get defaultValueContributor =>
      defaultValueX?.isAs<Contributor>();

  /// Getter for [defaultValueDataRequirement] as a DataRequirement
  DataRequirement? get defaultValueDataRequirement =>
      defaultValueX?.isAs<DataRequirement>();

  /// Getter for [defaultValueExpression] as a FhirExpression
  FhirExpression? get defaultValueExpression =>
      defaultValueX?.isAs<FhirExpression>();

  /// Getter for [defaultValueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get defaultValueParameterDefinition =>
      defaultValueX?.isAs<ParameterDefinition>();

  /// Getter for [defaultValueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get defaultValueRelatedArtifact =>
      defaultValueX?.isAs<RelatedArtifact>();

  /// Getter for [defaultValueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get defaultValueTriggerDefinition =>
      defaultValueX?.isAs<TriggerDefinition>();

  /// Getter for [defaultValueUsageContext] as a UsageContext
  UsageContext? get defaultValueUsageContext =>
      defaultValueX?.isAs<UsageContext>();

  /// Getter for [defaultValueDosage] as a Dosage
  Dosage? get defaultValueDosage => defaultValueX?.isAs<Dosage>();

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

  /// Getter for [fixedBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get fixedBase64Binary => fixedX?.isAs<FhirBase64Binary>();

  /// Getter for [fixedBoolean] as a FhirBoolean
  FhirBoolean? get fixedBoolean => fixedX?.isAs<FhirBoolean>();

  /// Getter for [fixedCanonical] as a FhirCanonical
  FhirCanonical? get fixedCanonical => fixedX?.isAs<FhirCanonical>();

  /// Getter for [fixedCode] as a FhirCode
  FhirCode? get fixedCode => fixedX?.isAs<FhirCode>();

  /// Getter for [fixedDate] as a FhirDate
  FhirDate? get fixedDate => fixedX?.isAs<FhirDate>();

  /// Getter for [fixedDateTime] as a FhirDateTime
  FhirDateTime? get fixedDateTime => fixedX?.isAs<FhirDateTime>();

  /// Getter for [fixedDecimal] as a FhirDecimal
  FhirDecimal? get fixedDecimal => fixedX?.isAs<FhirDecimal>();

  /// Getter for [fixedId] as a FhirId
  FhirId? get fixedId => fixedX?.isAs<FhirId>();

  /// Getter for [fixedInstant] as a FhirInstant
  FhirInstant? get fixedInstant => fixedX?.isAs<FhirInstant>();

  /// Getter for [fixedInteger] as a FhirInteger
  FhirInteger? get fixedInteger => fixedX?.isAs<FhirInteger>();

  /// Getter for [fixedMarkdown] as a FhirMarkdown
  FhirMarkdown? get fixedMarkdown => fixedX?.isAs<FhirMarkdown>();

  /// Getter for [fixedOid] as a FhirOid
  FhirOid? get fixedOid => fixedX?.isAs<FhirOid>();

  /// Getter for [fixedPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get fixedPositiveInt => fixedX?.isAs<FhirPositiveInt>();

  /// Getter for [fixedString] as a FhirString
  FhirString? get fixedString => fixedX?.isAs<FhirString>();

  /// Getter for [fixedTime] as a FhirTime
  FhirTime? get fixedTime => fixedX?.isAs<FhirTime>();

  /// Getter for [fixedUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get fixedUnsignedInt => fixedX?.isAs<FhirUnsignedInt>();

  /// Getter for [fixedUri] as a FhirUri
  FhirUri? get fixedUri => fixedX?.isAs<FhirUri>();

  /// Getter for [fixedUrl] as a FhirUrl
  FhirUrl? get fixedUrl => fixedX?.isAs<FhirUrl>();

  /// Getter for [fixedUuid] as a FhirUuid
  FhirUuid? get fixedUuid => fixedX?.isAs<FhirUuid>();

  /// Getter for [fixedAddress] as a Address
  Address? get fixedAddress => fixedX?.isAs<Address>();

  /// Getter for [fixedAge] as a Age
  Age? get fixedAge => fixedX?.isAs<Age>();

  /// Getter for [fixedAnnotation] as a Annotation
  Annotation? get fixedAnnotation => fixedX?.isAs<Annotation>();

  /// Getter for [fixedAttachment] as a Attachment
  Attachment? get fixedAttachment => fixedX?.isAs<Attachment>();

  /// Getter for [fixedCodeableConcept] as a CodeableConcept
  CodeableConcept? get fixedCodeableConcept => fixedX?.isAs<CodeableConcept>();

  /// Getter for [fixedCodeableReference] as a CodeableReference
  CodeableReference? get fixedCodeableReference =>
      fixedX?.isAs<CodeableReference>();

  /// Getter for [fixedCoding] as a Coding
  Coding? get fixedCoding => fixedX?.isAs<Coding>();

  /// Getter for [fixedContactPoint] as a ContactPoint
  ContactPoint? get fixedContactPoint => fixedX?.isAs<ContactPoint>();

  /// Getter for [fixedCount] as a Count
  Count? get fixedCount => fixedX?.isAs<Count>();

  /// Getter for [fixedDistance] as a Distance
  Distance? get fixedDistance => fixedX?.isAs<Distance>();

  /// Getter for [fixedDuration] as a FhirDuration
  FhirDuration? get fixedDuration => fixedX?.isAs<FhirDuration>();

  /// Getter for [fixedHumanName] as a HumanName
  HumanName? get fixedHumanName => fixedX?.isAs<HumanName>();

  /// Getter for [fixedIdentifier] as a Identifier
  Identifier? get fixedIdentifier => fixedX?.isAs<Identifier>();

  /// Getter for [fixedMoney] as a Money
  Money? get fixedMoney => fixedX?.isAs<Money>();

  /// Getter for [fixedPeriod] as a Period
  Period? get fixedPeriod => fixedX?.isAs<Period>();

  /// Getter for [fixedQuantity] as a Quantity
  Quantity? get fixedQuantity => fixedX?.isAs<Quantity>();

  /// Getter for [fixedRange] as a Range
  Range? get fixedRange => fixedX?.isAs<Range>();

  /// Getter for [fixedRatio] as a Ratio
  Ratio? get fixedRatio => fixedX?.isAs<Ratio>();

  /// Getter for [fixedRatioRange] as a RatioRange
  RatioRange? get fixedRatioRange => fixedX?.isAs<RatioRange>();

  /// Getter for [fixedReference] as a Reference
  Reference? get fixedReference => fixedX?.isAs<Reference>();

  /// Getter for [fixedSampledData] as a SampledData
  SampledData? get fixedSampledData => fixedX?.isAs<SampledData>();

  /// Getter for [fixedSignature] as a Signature
  Signature? get fixedSignature => fixedX?.isAs<Signature>();

  /// Getter for [fixedTiming] as a Timing
  Timing? get fixedTiming => fixedX?.isAs<Timing>();

  /// Getter for [fixedContactDetail] as a ContactDetail
  ContactDetail? get fixedContactDetail => fixedX?.isAs<ContactDetail>();

  /// Getter for [fixedContributor] as a Contributor
  Contributor? get fixedContributor => fixedX?.isAs<Contributor>();

  /// Getter for [fixedDataRequirement] as a DataRequirement
  DataRequirement? get fixedDataRequirement => fixedX?.isAs<DataRequirement>();

  /// Getter for [fixedExpression] as a FhirExpression
  FhirExpression? get fixedExpression => fixedX?.isAs<FhirExpression>();

  /// Getter for [fixedParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get fixedParameterDefinition =>
      fixedX?.isAs<ParameterDefinition>();

  /// Getter for [fixedRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get fixedRelatedArtifact => fixedX?.isAs<RelatedArtifact>();

  /// Getter for [fixedTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get fixedTriggerDefinition =>
      fixedX?.isAs<TriggerDefinition>();

  /// Getter for [fixedUsageContext] as a UsageContext
  UsageContext? get fixedUsageContext => fixedX?.isAs<UsageContext>();

  /// Getter for [fixedDosage] as a Dosage
  Dosage? get fixedDosage => fixedX?.isAs<Dosage>();

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

  /// Getter for [patternBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get patternBase64Binary =>
      patternX?.isAs<FhirBase64Binary>();

  /// Getter for [patternBoolean] as a FhirBoolean
  FhirBoolean? get patternBoolean => patternX?.isAs<FhirBoolean>();

  /// Getter for [patternCanonical] as a FhirCanonical
  FhirCanonical? get patternCanonical => patternX?.isAs<FhirCanonical>();

  /// Getter for [patternCode] as a FhirCode
  FhirCode? get patternCode => patternX?.isAs<FhirCode>();

  /// Getter for [patternDate] as a FhirDate
  FhirDate? get patternDate => patternX?.isAs<FhirDate>();

  /// Getter for [patternDateTime] as a FhirDateTime
  FhirDateTime? get patternDateTime => patternX?.isAs<FhirDateTime>();

  /// Getter for [patternDecimal] as a FhirDecimal
  FhirDecimal? get patternDecimal => patternX?.isAs<FhirDecimal>();

  /// Getter for [patternId] as a FhirId
  FhirId? get patternId => patternX?.isAs<FhirId>();

  /// Getter for [patternInstant] as a FhirInstant
  FhirInstant? get patternInstant => patternX?.isAs<FhirInstant>();

  /// Getter for [patternInteger] as a FhirInteger
  FhirInteger? get patternInteger => patternX?.isAs<FhirInteger>();

  /// Getter for [patternMarkdown] as a FhirMarkdown
  FhirMarkdown? get patternMarkdown => patternX?.isAs<FhirMarkdown>();

  /// Getter for [patternOid] as a FhirOid
  FhirOid? get patternOid => patternX?.isAs<FhirOid>();

  /// Getter for [patternPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get patternPositiveInt => patternX?.isAs<FhirPositiveInt>();

  /// Getter for [patternString] as a FhirString
  FhirString? get patternString => patternX?.isAs<FhirString>();

  /// Getter for [patternTime] as a FhirTime
  FhirTime? get patternTime => patternX?.isAs<FhirTime>();

  /// Getter for [patternUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get patternUnsignedInt => patternX?.isAs<FhirUnsignedInt>();

  /// Getter for [patternUri] as a FhirUri
  FhirUri? get patternUri => patternX?.isAs<FhirUri>();

  /// Getter for [patternUrl] as a FhirUrl
  FhirUrl? get patternUrl => patternX?.isAs<FhirUrl>();

  /// Getter for [patternUuid] as a FhirUuid
  FhirUuid? get patternUuid => patternX?.isAs<FhirUuid>();

  /// Getter for [patternAddress] as a Address
  Address? get patternAddress => patternX?.isAs<Address>();

  /// Getter for [patternAge] as a Age
  Age? get patternAge => patternX?.isAs<Age>();

  /// Getter for [patternAnnotation] as a Annotation
  Annotation? get patternAnnotation => patternX?.isAs<Annotation>();

  /// Getter for [patternAttachment] as a Attachment
  Attachment? get patternAttachment => patternX?.isAs<Attachment>();

  /// Getter for [patternCodeableConcept] as a CodeableConcept
  CodeableConcept? get patternCodeableConcept =>
      patternX?.isAs<CodeableConcept>();

  /// Getter for [patternCodeableReference] as a CodeableReference
  CodeableReference? get patternCodeableReference =>
      patternX?.isAs<CodeableReference>();

  /// Getter for [patternCoding] as a Coding
  Coding? get patternCoding => patternX?.isAs<Coding>();

  /// Getter for [patternContactPoint] as a ContactPoint
  ContactPoint? get patternContactPoint => patternX?.isAs<ContactPoint>();

  /// Getter for [patternCount] as a Count
  Count? get patternCount => patternX?.isAs<Count>();

  /// Getter for [patternDistance] as a Distance
  Distance? get patternDistance => patternX?.isAs<Distance>();

  /// Getter for [patternDuration] as a FhirDuration
  FhirDuration? get patternDuration => patternX?.isAs<FhirDuration>();

  /// Getter for [patternHumanName] as a HumanName
  HumanName? get patternHumanName => patternX?.isAs<HumanName>();

  /// Getter for [patternIdentifier] as a Identifier
  Identifier? get patternIdentifier => patternX?.isAs<Identifier>();

  /// Getter for [patternMoney] as a Money
  Money? get patternMoney => patternX?.isAs<Money>();

  /// Getter for [patternPeriod] as a Period
  Period? get patternPeriod => patternX?.isAs<Period>();

  /// Getter for [patternQuantity] as a Quantity
  Quantity? get patternQuantity => patternX?.isAs<Quantity>();

  /// Getter for [patternRange] as a Range
  Range? get patternRange => patternX?.isAs<Range>();

  /// Getter for [patternRatio] as a Ratio
  Ratio? get patternRatio => patternX?.isAs<Ratio>();

  /// Getter for [patternRatioRange] as a RatioRange
  RatioRange? get patternRatioRange => patternX?.isAs<RatioRange>();

  /// Getter for [patternReference] as a Reference
  Reference? get patternReference => patternX?.isAs<Reference>();

  /// Getter for [patternSampledData] as a SampledData
  SampledData? get patternSampledData => patternX?.isAs<SampledData>();

  /// Getter for [patternSignature] as a Signature
  Signature? get patternSignature => patternX?.isAs<Signature>();

  /// Getter for [patternTiming] as a Timing
  Timing? get patternTiming => patternX?.isAs<Timing>();

  /// Getter for [patternContactDetail] as a ContactDetail
  ContactDetail? get patternContactDetail => patternX?.isAs<ContactDetail>();

  /// Getter for [patternContributor] as a Contributor
  Contributor? get patternContributor => patternX?.isAs<Contributor>();

  /// Getter for [patternDataRequirement] as a DataRequirement
  DataRequirement? get patternDataRequirement =>
      patternX?.isAs<DataRequirement>();

  /// Getter for [patternExpression] as a FhirExpression
  FhirExpression? get patternExpression => patternX?.isAs<FhirExpression>();

  /// Getter for [patternParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get patternParameterDefinition =>
      patternX?.isAs<ParameterDefinition>();

  /// Getter for [patternRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get patternRelatedArtifact =>
      patternX?.isAs<RelatedArtifact>();

  /// Getter for [patternTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get patternTriggerDefinition =>
      patternX?.isAs<TriggerDefinition>();

  /// Getter for [patternUsageContext] as a UsageContext
  UsageContext? get patternUsageContext => patternX?.isAs<UsageContext>();

  /// Getter for [patternDosage] as a Dosage
  Dosage? get patternDosage => patternX?.isAs<Dosage>();

  /// [example]
  /// A sample value for this element demonstrating the type of information
  /// that would typically be found in the element.
  final List<ElementDefinitionExample>? example;

  /// [minValueX]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MinValueXElementDefinition? minValueX;

  /// Getter for [minValueDate] as a FhirDate
  FhirDate? get minValueDate => minValueX?.isAs<FhirDate>();

  /// Getter for [minValueDateTime] as a FhirDateTime
  FhirDateTime? get minValueDateTime => minValueX?.isAs<FhirDateTime>();

  /// Getter for [minValueInstant] as a FhirInstant
  FhirInstant? get minValueInstant => minValueX?.isAs<FhirInstant>();

  /// Getter for [minValueTime] as a FhirTime
  FhirTime? get minValueTime => minValueX?.isAs<FhirTime>();

  /// Getter for [minValueDecimal] as a FhirDecimal
  FhirDecimal? get minValueDecimal => minValueX?.isAs<FhirDecimal>();

  /// Getter for [minValueInteger] as a FhirInteger
  FhirInteger? get minValueInteger => minValueX?.isAs<FhirInteger>();

  /// Getter for [minValuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get minValuePositiveInt =>
      minValueX?.isAs<FhirPositiveInt>();

  /// Getter for [minValueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get minValueUnsignedInt =>
      minValueX?.isAs<FhirUnsignedInt>();

  /// Getter for [minValueQuantity] as a Quantity
  Quantity? get minValueQuantity => minValueX?.isAs<Quantity>();

  /// [maxValueX]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MaxValueXElementDefinition? maxValueX;

  /// Getter for [maxValueDate] as a FhirDate
  FhirDate? get maxValueDate => maxValueX?.isAs<FhirDate>();

  /// Getter for [maxValueDateTime] as a FhirDateTime
  FhirDateTime? get maxValueDateTime => maxValueX?.isAs<FhirDateTime>();

  /// Getter for [maxValueInstant] as a FhirInstant
  FhirInstant? get maxValueInstant => maxValueX?.isAs<FhirInstant>();

  /// Getter for [maxValueTime] as a FhirTime
  FhirTime? get maxValueTime => maxValueX?.isAs<FhirTime>();

  /// Getter for [maxValueDecimal] as a FhirDecimal
  FhirDecimal? get maxValueDecimal => maxValueX?.isAs<FhirDecimal>();

  /// Getter for [maxValueInteger] as a FhirInteger
  FhirInteger? get maxValueInteger => maxValueX?.isAs<FhirInteger>();

  /// Getter for [maxValuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get maxValuePositiveInt =>
      maxValueX?.isAs<FhirPositiveInt>();

  /// Getter for [maxValueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get maxValueUnsignedInt =>
      maxValueX?.isAs<FhirUnsignedInt>();

  /// Getter for [maxValueQuantity] as a Quantity
  Quantity? get maxValueQuantity => maxValueX?.isAs<Quantity>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'path',
      path,
    );
    addField(
      'representation',
      representation,
    );
    addField(
      'sliceName',
      sliceName,
    );
    addField(
      'sliceIsConstraining',
      sliceIsConstraining,
    );
    addField(
      'label',
      label,
    );
    addField(
      'code',
      code,
    );
    addField(
      'slicing',
      slicing,
    );
    addField(
      'short',
      short,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'requirements',
      requirements,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'min',
      min,
    );
    addField(
      'max',
      max,
    );
    addField(
      'base',
      base,
    );
    addField(
      'contentReference',
      contentReference,
    );
    addField(
      'type',
      type,
    );
    if (defaultValueX != null) {
      final fhirType = defaultValueX!.fhirType;
      addField(
        'defaultValue${fhirType.capitalize()}',
        defaultValueX,
      );
    }

    addField(
      'meaningWhenMissing',
      meaningWhenMissing,
    );
    addField(
      'orderMeaning',
      orderMeaning,
    );
    if (fixedX != null) {
      final fhirType = fixedX!.fhirType;
      addField(
        'fixed${fhirType.capitalize()}',
        fixedX,
      );
    }

    if (patternX != null) {
      final fhirType = patternX!.fhirType;
      addField(
        'pattern${fhirType.capitalize()}',
        patternX,
      );
    }

    addField(
      'example',
      example,
    );
    if (minValueX != null) {
      final fhirType = minValueX!.fhirType;
      addField(
        'minValue${fhirType.capitalize()}',
        minValueX,
      );
    }

    if (maxValueX != null) {
      final fhirType = maxValueX!.fhirType;
      addField(
        'maxValue${fhirType.capitalize()}',
        maxValueX,
      );
    }

    addField(
      'maxLength',
      maxLength,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'constraint',
      constraint,
    );
    addField(
      'mustSupport',
      mustSupport,
    );
    addField(
      'isModifier',
      isModifier,
    );
    addField(
      'isModifierReason',
      isModifierReason,
    );
    addField(
      'isSummary',
      isSummary,
    );
    addField(
      'binding',
      binding,
    );
    addField(
      'mapping',
      mapping,
    );
    return json;
  }

  @override
  ElementDefinition clone() => copyWith();

  /// Copy function for [ElementDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionCopyWith<ElementDefinition> get copyWith =>
      _$ElementDefinitionCopyWithImpl<ElementDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!listEquals<PropertyRepresentation>(
      representation,
      o.representation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sliceName,
      o.sliceName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sliceIsConstraining,
      o.sliceIsConstraining,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      slicing,
      o.slicing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      short,
      o.short,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirements,
      o.requirements,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      min,
      o.min,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      max,
      o.max,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentReference,
      o.contentReference,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionType>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      defaultValueX,
      o.defaultValueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meaningWhenMissing,
      o.meaningWhenMissing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orderMeaning,
      o.orderMeaning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fixedX,
      o.fixedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patternX,
      o.patternX,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionExample>(
      example,
      o.example,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minValueX,
      o.minValueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxValueX,
      o.maxValueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxLength,
      o.maxLength,
    )) {
      return false;
    }
    if (!listEquals<FhirId>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionConstraint>(
      constraint,
      o.constraint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mustSupport,
      o.mustSupport,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isModifier,
      o.isModifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isModifierReason,
      o.isModifierReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isSummary,
      o.isSummary,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      binding,
      o.binding,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionMapping>(
      mapping,
      o.mapping,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicing.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionSlicing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map<ElementDefinitionDiscriminator>(
            (v) => ElementDefinitionDiscriminator.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      ordered: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'ordered',
        FhirBoolean.fromJson,
      ),
      rules: JsonParser.parsePrimitive<SlicingRules>(
        json,
        'rules',
        SlicingRules.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'discriminator',
      discriminator,
    );
    addField(
      'description',
      description,
    );
    addField(
      'ordered',
      ordered,
    );
    addField(
      'rules',
      rules,
    );
    return json;
  }

  @override
  ElementDefinitionSlicing clone() => copyWith();

  /// Copy function for [ElementDefinitionSlicing]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionSlicingCopyWith<ElementDefinitionSlicing> get copyWith =>
      _$ElementDefinitionSlicingCopyWithImpl<ElementDefinitionSlicing>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionSlicing) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionDiscriminator>(
      discriminator,
      o.discriminator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ordered,
      o.ordered,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rules,
      o.rules,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminator.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionDiscriminator(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<DiscriminatorType>(
        json,
        'type',
        DiscriminatorType.fromJson,
      )!,
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'type',
      type,
    );
    addField(
      'path',
      path,
    );
    return json;
  }

  @override
  ElementDefinitionDiscriminator clone() => copyWith();

  /// Copy function for [ElementDefinitionDiscriminator]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionDiscriminatorCopyWith<ElementDefinitionDiscriminator>
      get copyWith => _$ElementDefinitionDiscriminatorCopyWithImpl<
              ElementDefinitionDiscriminator>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionDiscriminator) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionBase(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      )!,
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'path',
      path,
    );
    addField(
      'min',
      min,
    );
    addField(
      'max',
      max,
    );
    return json;
  }

  @override
  ElementDefinitionBase clone() => copyWith();

  /// Copy function for [ElementDefinitionBase]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionBaseCopyWith<ElementDefinitionBase> get copyWith =>
      _$ElementDefinitionBaseCopyWithImpl<ElementDefinitionBase>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionBase) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      min,
      o.min,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      max,
      o.max,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionType(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirUri>(
        json,
        'code',
        FhirUri.fromJson,
      )!,
      profile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'targetProfile',
        FhirCanonical.fromJson,
      ),
      aggregation: JsonParser.parsePrimitiveList<AggregationMode>(
        json,
        'aggregation',
        AggregationMode.fromJson,
      ),
      versioning: JsonParser.parsePrimitive<ReferenceVersionRules>(
        json,
        'versioning',
        ReferenceVersionRules.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'code',
      code,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'targetProfile',
      targetProfile,
    );
    addField(
      'aggregation',
      aggregation,
    );
    addField(
      'versioning',
      versioning,
    );
    return json;
  }

  @override
  ElementDefinitionType clone() => copyWith();

  /// Copy function for [ElementDefinitionType]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionTypeCopyWith<ElementDefinitionType> get copyWith =>
      _$ElementDefinitionTypeCopyWithImpl<ElementDefinitionType>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionType) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      targetProfile,
      o.targetProfile,
    )) {
      return false;
    }
    if (!listEquals<AggregationMode>(
      aggregation,
      o.aggregation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versioning,
      o.versioning,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionExample(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
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

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueCanonical] as a FhirCanonical
  FhirCanonical? get valueCanonical => valueX.isAs<FhirCanonical>();

  /// Getter for [valueCode] as a FhirCode
  FhirCode? get valueCode => valueX.isAs<FhirCode>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueId] as a FhirId
  FhirId? get valueId => valueX.isAs<FhirId>();

  /// Getter for [valueInstant] as a FhirInstant
  FhirInstant? get valueInstant => valueX.isAs<FhirInstant>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueMarkdown] as a FhirMarkdown
  FhirMarkdown? get valueMarkdown => valueX.isAs<FhirMarkdown>();

  /// Getter for [valueOid] as a FhirOid
  FhirOid? get valueOid => valueX.isAs<FhirOid>();

  /// Getter for [valuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get valuePositiveInt => valueX.isAs<FhirPositiveInt>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get valueUnsignedInt => valueX.isAs<FhirUnsignedInt>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueUrl] as a FhirUrl
  FhirUrl? get valueUrl => valueX.isAs<FhirUrl>();

  /// Getter for [valueUuid] as a FhirUuid
  FhirUuid? get valueUuid => valueX.isAs<FhirUuid>();

  /// Getter for [valueAddress] as a Address
  Address? get valueAddress => valueX.isAs<Address>();

  /// Getter for [valueAge] as a Age
  Age? get valueAge => valueX.isAs<Age>();

  /// Getter for [valueAnnotation] as a Annotation
  Annotation? get valueAnnotation => valueX.isAs<Annotation>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueCodeableReference] as a CodeableReference
  CodeableReference? get valueCodeableReference =>
      valueX.isAs<CodeableReference>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueContactPoint] as a ContactPoint
  ContactPoint? get valueContactPoint => valueX.isAs<ContactPoint>();

  /// Getter for [valueCount] as a Count
  Count? get valueCount => valueX.isAs<Count>();

  /// Getter for [valueDistance] as a Distance
  Distance? get valueDistance => valueX.isAs<Distance>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX.isAs<FhirDuration>();

  /// Getter for [valueHumanName] as a HumanName
  HumanName? get valueHumanName => valueX.isAs<HumanName>();

  /// Getter for [valueIdentifier] as a Identifier
  Identifier? get valueIdentifier => valueX.isAs<Identifier>();

  /// Getter for [valueMoney] as a Money
  Money? get valueMoney => valueX.isAs<Money>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueRatioRange] as a RatioRange
  RatioRange? get valueRatioRange => valueX.isAs<RatioRange>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX.isAs<SampledData>();

  /// Getter for [valueSignature] as a Signature
  Signature? get valueSignature => valueX.isAs<Signature>();

  /// Getter for [valueTiming] as a Timing
  Timing? get valueTiming => valueX.isAs<Timing>();

  /// Getter for [valueContactDetail] as a ContactDetail
  ContactDetail? get valueContactDetail => valueX.isAs<ContactDetail>();

  /// Getter for [valueContributor] as a Contributor
  Contributor? get valueContributor => valueX.isAs<Contributor>();

  /// Getter for [valueDataRequirement] as a DataRequirement
  DataRequirement? get valueDataRequirement => valueX.isAs<DataRequirement>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX.isAs<FhirExpression>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get valueParameterDefinition =>
      valueX.isAs<ParameterDefinition>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get valueRelatedArtifact => valueX.isAs<RelatedArtifact>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get valueTriggerDefinition =>
      valueX.isAs<TriggerDefinition>();

  /// Getter for [valueUsageContext] as a UsageContext
  UsageContext? get valueUsageContext => valueX.isAs<UsageContext>();

  /// Getter for [valueDosage] as a Dosage
  Dosage? get valueDosage => valueX.isAs<Dosage>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'label',
      label,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

    return json;
  }

  @override
  ElementDefinitionExample clone() => copyWith();

  /// Copy function for [ElementDefinitionExample]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionExampleCopyWith<ElementDefinitionExample> get copyWith =>
      _$ElementDefinitionExampleCopyWithImpl<ElementDefinitionExample>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionExample) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionConstraint(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      key: JsonParser.parsePrimitive<FhirId>(
        json,
        'key',
        FhirId.fromJson,
      )!,
      requirements: JsonParser.parsePrimitive<FhirString>(
        json,
        'requirements',
        FhirString.fromJson,
      ),
      severity: JsonParser.parsePrimitive<ConstraintSeverity>(
        json,
        'severity',
        ConstraintSeverity.fromJson,
      )!,
      human: JsonParser.parsePrimitive<FhirString>(
        json,
        'human',
        FhirString.fromJson,
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
      ),
      xpath: JsonParser.parsePrimitive<FhirString>(
        json,
        'xpath',
        FhirString.fromJson,
      ),
      source: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'source',
        FhirCanonical.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'key',
      key,
    );
    addField(
      'requirements',
      requirements,
    );
    addField(
      'severity',
      severity,
    );
    addField(
      'human',
      human,
    );
    addField(
      'expression',
      expression,
    );
    addField(
      'xpath',
      xpath,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  @override
  ElementDefinitionConstraint clone() => copyWith();

  /// Copy function for [ElementDefinitionConstraint]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionConstraintCopyWith<ElementDefinitionConstraint>
      get copyWith => _$ElementDefinitionConstraintCopyWithImpl<
              ElementDefinitionConstraint>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionConstraint) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      key,
      o.key,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirements,
      o.requirements,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      human,
      o.human,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      xpath,
      o.xpath,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionBinding(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      strength: JsonParser.parsePrimitive<BindingStrength>(
        json,
        'strength',
        BindingStrength.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'strength',
      strength,
    );
    addField(
      'description',
      description,
    );
    addField(
      'valueSet',
      valueSet,
    );
    return json;
  }

  @override
  ElementDefinitionBinding clone() => copyWith();

  /// Copy function for [ElementDefinitionBinding]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionBindingCopyWith<ElementDefinitionBinding> get copyWith =>
      _$ElementDefinitionBindingCopyWithImpl<ElementDefinitionBinding>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionBinding) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strength,
      o.strength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    return true;
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionMapping(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identity: JsonParser.parsePrimitive<FhirId>(
        json,
        'identity',
        FhirId.fromJson,
      )!,
      language: JsonParser.parsePrimitive<FhirCode>(
        json,
        'language',
        FhirCode.fromJson,
      ),
      map: JsonParser.parsePrimitive<FhirString>(
        json,
        'map',
        FhirString.fromJson,
      )!,
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'identity',
      identity,
    );
    addField(
      'language',
      language,
    );
    addField(
      'map',
      map,
    );
    addField(
      'comment',
      comment,
    );
    return json;
  }

  @override
  ElementDefinitionMapping clone() => copyWith();

  /// Copy function for [ElementDefinitionMapping]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ElementDefinitionMappingCopyWith<ElementDefinitionMapping> get copyWith =>
      _$ElementDefinitionMappingCopyWithImpl<ElementDefinitionMapping>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ElementDefinitionMapping) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identity,
      o.identity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      map,
      o.map,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}
