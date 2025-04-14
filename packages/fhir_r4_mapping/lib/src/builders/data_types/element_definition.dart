import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        ElementDefinition,
        ElementDefinitionBase,
        ElementDefinitionBinding,
        ElementDefinitionConstraint,
        ElementDefinitionDiscriminator,
        ElementDefinitionExample,
        ElementDefinitionMapping,
        ElementDefinitionSlicing,
        ElementDefinitionType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ElementDefinitionBuilder]
/// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinitionBuilder extends BackboneTypeBuilder {
  /// Primary constructor for
  /// [ElementDefinitionBuilder]

  ElementDefinitionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
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
    super.objectPath = 'ElementDefinitionBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionBuilder.empty() => ElementDefinitionBuilder(
        path: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ElementDefinition';
    return ElementDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      representation:
          JsonParser.parsePrimitiveList<PropertyRepresentationBuilder>(
        json,
        'representation',
        PropertyRepresentationBuilder.fromJson,
        '$objectPath.representation',
      ),
      sliceName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sliceName',
        FhirStringBuilder.fromJson,
        '$objectPath.sliceName',
      ),
      sliceIsConstraining: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'sliceIsConstraining',
        FhirBooleanBuilder.fromJson,
        '$objectPath.sliceIsConstraining',
      ),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      slicing: JsonParser.parseObject<ElementDefinitionSlicingBuilder>(
        json,
        'slicing',
        ElementDefinitionSlicingBuilder.fromJson,
        '$objectPath.slicing',
      ),
      short: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'short',
        FhirStringBuilder.fromJson,
        '$objectPath.short',
      ),
      definition: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'definition',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.definition',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
      requirements: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'requirements',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.requirements',
      ),
      alias: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'alias',
        FhirStringBuilder.fromJson,
        '$objectPath.alias',
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'min',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'max',
        FhirStringBuilder.fromJson,
        '$objectPath.max',
      ),
      base: JsonParser.parseObject<ElementDefinitionBaseBuilder>(
        json,
        'base',
        ElementDefinitionBaseBuilder.fromJson,
        '$objectPath.base',
      ),
      contentReference: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'contentReference',
        FhirUriBuilder.fromJson,
        '$objectPath.contentReference',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<ElementDefinitionTypeBuilder>(
            (v) => ElementDefinitionTypeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      defaultValueX:
          JsonParser.parsePolymorphic<DefaultValueXElementDefinitionBuilder>(
        json,
        {
          'defaultValueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'defaultValueBoolean': FhirBooleanBuilder.fromJson,
          'defaultValueCanonical': FhirCanonicalBuilder.fromJson,
          'defaultValueCode': FhirCodeBuilder.fromJson,
          'defaultValueDate': FhirDateBuilder.fromJson,
          'defaultValueDateTime': FhirDateTimeBuilder.fromJson,
          'defaultValueDecimal': FhirDecimalBuilder.fromJson,
          'defaultValueId': FhirIdBuilder.fromJson,
          'defaultValueInstant': FhirInstantBuilder.fromJson,
          'defaultValueInteger': FhirIntegerBuilder.fromJson,
          'defaultValueMarkdown': FhirMarkdownBuilder.fromJson,
          'defaultValueOid': FhirOidBuilder.fromJson,
          'defaultValuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'defaultValueString': FhirStringBuilder.fromJson,
          'defaultValueTime': FhirTimeBuilder.fromJson,
          'defaultValueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'defaultValueUri': FhirUriBuilder.fromJson,
          'defaultValueUrl': FhirUrlBuilder.fromJson,
          'defaultValueUuid': FhirUuidBuilder.fromJson,
          'defaultValueAddress': AddressBuilder.fromJson,
          'defaultValueAge': AgeBuilder.fromJson,
          'defaultValueAnnotation': AnnotationBuilder.fromJson,
          'defaultValueAttachment': AttachmentBuilder.fromJson,
          'defaultValueCodeableConcept': CodeableConceptBuilder.fromJson,
          'defaultValueCodeableReference': CodeableReferenceBuilder.fromJson,
          'defaultValueCoding': CodingBuilder.fromJson,
          'defaultValueContactPoint': ContactPointBuilder.fromJson,
          'defaultValueCount': CountBuilder.fromJson,
          'defaultValueDistance': DistanceBuilder.fromJson,
          'defaultValueDuration': FhirDurationBuilder.fromJson,
          'defaultValueHumanName': HumanNameBuilder.fromJson,
          'defaultValueIdentifier': IdentifierBuilder.fromJson,
          'defaultValueMoney': MoneyBuilder.fromJson,
          'defaultValuePeriod': PeriodBuilder.fromJson,
          'defaultValueQuantity': QuantityBuilder.fromJson,
          'defaultValueRange': RangeBuilder.fromJson,
          'defaultValueRatio': RatioBuilder.fromJson,
          'defaultValueRatioRange': RatioRangeBuilder.fromJson,
          'defaultValueReference': ReferenceBuilder.fromJson,
          'defaultValueSampledData': SampledDataBuilder.fromJson,
          'defaultValueSignature': SignatureBuilder.fromJson,
          'defaultValueTiming': TimingBuilder.fromJson,
          'defaultValueContactDetail': ContactDetailBuilder.fromJson,
          'defaultValueContributor': ContributorBuilder.fromJson,
          'defaultValueDataRequirement': DataRequirementBuilder.fromJson,
          'defaultValueExpression': FhirExpressionBuilder.fromJson,
          'defaultValueParameterDefinition':
              ParameterDefinitionBuilder.fromJson,
          'defaultValueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'defaultValueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'defaultValueUsageContext': UsageContextBuilder.fromJson,
          'defaultValueDosage': DosageBuilder.fromJson,
        },
        objectPath,
      ),
      meaningWhenMissing: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'meaningWhenMissing',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.meaningWhenMissing',
      ),
      orderMeaning: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'orderMeaning',
        FhirStringBuilder.fromJson,
        '$objectPath.orderMeaning',
      ),
      fixedX: JsonParser.parsePolymorphic<FixedXElementDefinitionBuilder>(
        json,
        {
          'fixedBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'fixedBoolean': FhirBooleanBuilder.fromJson,
          'fixedCanonical': FhirCanonicalBuilder.fromJson,
          'fixedCode': FhirCodeBuilder.fromJson,
          'fixedDate': FhirDateBuilder.fromJson,
          'fixedDateTime': FhirDateTimeBuilder.fromJson,
          'fixedDecimal': FhirDecimalBuilder.fromJson,
          'fixedId': FhirIdBuilder.fromJson,
          'fixedInstant': FhirInstantBuilder.fromJson,
          'fixedInteger': FhirIntegerBuilder.fromJson,
          'fixedMarkdown': FhirMarkdownBuilder.fromJson,
          'fixedOid': FhirOidBuilder.fromJson,
          'fixedPositiveInt': FhirPositiveIntBuilder.fromJson,
          'fixedString': FhirStringBuilder.fromJson,
          'fixedTime': FhirTimeBuilder.fromJson,
          'fixedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'fixedUri': FhirUriBuilder.fromJson,
          'fixedUrl': FhirUrlBuilder.fromJson,
          'fixedUuid': FhirUuidBuilder.fromJson,
          'fixedAddress': AddressBuilder.fromJson,
          'fixedAge': AgeBuilder.fromJson,
          'fixedAnnotation': AnnotationBuilder.fromJson,
          'fixedAttachment': AttachmentBuilder.fromJson,
          'fixedCodeableConcept': CodeableConceptBuilder.fromJson,
          'fixedCodeableReference': CodeableReferenceBuilder.fromJson,
          'fixedCoding': CodingBuilder.fromJson,
          'fixedContactPoint': ContactPointBuilder.fromJson,
          'fixedCount': CountBuilder.fromJson,
          'fixedDistance': DistanceBuilder.fromJson,
          'fixedDuration': FhirDurationBuilder.fromJson,
          'fixedHumanName': HumanNameBuilder.fromJson,
          'fixedIdentifier': IdentifierBuilder.fromJson,
          'fixedMoney': MoneyBuilder.fromJson,
          'fixedPeriod': PeriodBuilder.fromJson,
          'fixedQuantity': QuantityBuilder.fromJson,
          'fixedRange': RangeBuilder.fromJson,
          'fixedRatio': RatioBuilder.fromJson,
          'fixedRatioRange': RatioRangeBuilder.fromJson,
          'fixedReference': ReferenceBuilder.fromJson,
          'fixedSampledData': SampledDataBuilder.fromJson,
          'fixedSignature': SignatureBuilder.fromJson,
          'fixedTiming': TimingBuilder.fromJson,
          'fixedContactDetail': ContactDetailBuilder.fromJson,
          'fixedContributor': ContributorBuilder.fromJson,
          'fixedDataRequirement': DataRequirementBuilder.fromJson,
          'fixedExpression': FhirExpressionBuilder.fromJson,
          'fixedParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'fixedRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'fixedTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'fixedUsageContext': UsageContextBuilder.fromJson,
          'fixedDosage': DosageBuilder.fromJson,
        },
        objectPath,
      ),
      patternX: JsonParser.parsePolymorphic<PatternXElementDefinitionBuilder>(
        json,
        {
          'patternBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'patternBoolean': FhirBooleanBuilder.fromJson,
          'patternCanonical': FhirCanonicalBuilder.fromJson,
          'patternCode': FhirCodeBuilder.fromJson,
          'patternDate': FhirDateBuilder.fromJson,
          'patternDateTime': FhirDateTimeBuilder.fromJson,
          'patternDecimal': FhirDecimalBuilder.fromJson,
          'patternId': FhirIdBuilder.fromJson,
          'patternInstant': FhirInstantBuilder.fromJson,
          'patternInteger': FhirIntegerBuilder.fromJson,
          'patternMarkdown': FhirMarkdownBuilder.fromJson,
          'patternOid': FhirOidBuilder.fromJson,
          'patternPositiveInt': FhirPositiveIntBuilder.fromJson,
          'patternString': FhirStringBuilder.fromJson,
          'patternTime': FhirTimeBuilder.fromJson,
          'patternUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'patternUri': FhirUriBuilder.fromJson,
          'patternUrl': FhirUrlBuilder.fromJson,
          'patternUuid': FhirUuidBuilder.fromJson,
          'patternAddress': AddressBuilder.fromJson,
          'patternAge': AgeBuilder.fromJson,
          'patternAnnotation': AnnotationBuilder.fromJson,
          'patternAttachment': AttachmentBuilder.fromJson,
          'patternCodeableConcept': CodeableConceptBuilder.fromJson,
          'patternCodeableReference': CodeableReferenceBuilder.fromJson,
          'patternCoding': CodingBuilder.fromJson,
          'patternContactPoint': ContactPointBuilder.fromJson,
          'patternCount': CountBuilder.fromJson,
          'patternDistance': DistanceBuilder.fromJson,
          'patternDuration': FhirDurationBuilder.fromJson,
          'patternHumanName': HumanNameBuilder.fromJson,
          'patternIdentifier': IdentifierBuilder.fromJson,
          'patternMoney': MoneyBuilder.fromJson,
          'patternPeriod': PeriodBuilder.fromJson,
          'patternQuantity': QuantityBuilder.fromJson,
          'patternRange': RangeBuilder.fromJson,
          'patternRatio': RatioBuilder.fromJson,
          'patternRatioRange': RatioRangeBuilder.fromJson,
          'patternReference': ReferenceBuilder.fromJson,
          'patternSampledData': SampledDataBuilder.fromJson,
          'patternSignature': SignatureBuilder.fromJson,
          'patternTiming': TimingBuilder.fromJson,
          'patternContactDetail': ContactDetailBuilder.fromJson,
          'patternContributor': ContributorBuilder.fromJson,
          'patternDataRequirement': DataRequirementBuilder.fromJson,
          'patternExpression': FhirExpressionBuilder.fromJson,
          'patternParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'patternRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'patternTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'patternUsageContext': UsageContextBuilder.fromJson,
          'patternDosage': DosageBuilder.fromJson,
        },
        objectPath,
      ),
      example: (json['example'] as List<dynamic>?)
          ?.map<ElementDefinitionExampleBuilder>(
            (v) => ElementDefinitionExampleBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.example',
              },
            ),
          )
          .toList(),
      minValueX: JsonParser.parsePolymorphic<MinValueXElementDefinitionBuilder>(
        json,
        {
          'minValueDate': FhirDateBuilder.fromJson,
          'minValueDateTime': FhirDateTimeBuilder.fromJson,
          'minValueInstant': FhirInstantBuilder.fromJson,
          'minValueTime': FhirTimeBuilder.fromJson,
          'minValueDecimal': FhirDecimalBuilder.fromJson,
          'minValueInteger': FhirIntegerBuilder.fromJson,
          'minValuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'minValueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'minValueQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
      maxValueX: JsonParser.parsePolymorphic<MaxValueXElementDefinitionBuilder>(
        json,
        {
          'maxValueDate': FhirDateBuilder.fromJson,
          'maxValueDateTime': FhirDateTimeBuilder.fromJson,
          'maxValueInstant': FhirInstantBuilder.fromJson,
          'maxValueTime': FhirTimeBuilder.fromJson,
          'maxValueDecimal': FhirDecimalBuilder.fromJson,
          'maxValueInteger': FhirIntegerBuilder.fromJson,
          'maxValuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'maxValueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'maxValueQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
      maxLength: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'maxLength',
        FhirIntegerBuilder.fromJson,
        '$objectPath.maxLength',
      ),
      condition: JsonParser.parsePrimitiveList<FhirIdBuilder>(
        json,
        'condition',
        FhirIdBuilder.fromJson,
        '$objectPath.condition',
      ),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map<ElementDefinitionConstraintBuilder>(
            (v) => ElementDefinitionConstraintBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.constraint',
              },
            ),
          )
          .toList(),
      mustSupport: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'mustSupport',
        FhirBooleanBuilder.fromJson,
        '$objectPath.mustSupport',
      ),
      isModifier: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isModifier',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isModifier',
      ),
      isModifierReason: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'isModifierReason',
        FhirStringBuilder.fromJson,
        '$objectPath.isModifierReason',
      ),
      isSummary: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isSummary',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isSummary',
      ),
      binding: JsonParser.parseObject<ElementDefinitionBindingBuilder>(
        json,
        'binding',
        ElementDefinitionBindingBuilder.fromJson,
        '$objectPath.binding',
      ),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map<ElementDefinitionMappingBuilder>(
            (v) => ElementDefinitionMappingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.mapping',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ElementDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionBuilder.fromJson(json);
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
  FhirStringBuilder? path;

  /// [representation]
  /// Codes that define how this element is represented in instances, when
  /// the deviation varies from the normal case.
  List<PropertyRepresentationBuilder>? representation;

  /// [sliceName]
  /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element,
  /// used to provide a name to different slices of the same element.
  FhirStringBuilder? sliceName;

  /// [sliceIsConstraining]
  /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the
  /// slice is not overriding any slice in an inherited profile. If missing,
  /// the slice might or might not be overriding a slice in an inherited
  /// profile, depending on the sliceName.
  FhirBooleanBuilder? sliceIsConstraining;

  /// [label]
  /// A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  /// user display or form.
  FhirStringBuilder? label;

  /// [code]
  /// A code that has the same meaning as the element in a particular
  /// terminology.
  List<CodingBuilder>? code;

  /// [slicing]
  /// Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple
  /// different constraints on a single element in the base resource).
  /// Slicing can be used in any resource that has cardinality ..* on the
  /// base resource, or any resource with a choice of types. The set of
  /// slices is any elements that come after this in the element sequence
  /// that have the same path, until a shorter path occurs (the shorter path
  /// terminates the set).
  ElementDefinitionSlicingBuilder? slicing;

  /// [short]
  /// A concise description of what this element means (e.g. for use in
  /// autogenerated summaries).
  FhirStringBuilder? short;

  /// [definition]
  /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing
  /// elements (e.g. constraints), the definition SHALL be consistent with
  /// the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are
  /// reading is specified in ElementDefinition.definition).
  FhirMarkdownBuilder? definition;

  /// [comment]
  /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  FhirMarkdownBuilder? comment;

  /// [requirements]
  /// This element is for traceability of why the element was created and why
  /// the constraints exist as they do. This may be used to point to source
  /// materials or specifications that drove the structure of this element.
  FhirMarkdownBuilder? requirements;

  /// [alias]
  /// Identifies additional names by which this element might also be known.
  List<FhirStringBuilder>? alias;

  /// [min]
  /// The minimum number of times this element SHALL appear in the instance.
  FhirUnsignedIntBuilder? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// instance.
  FhirStringBuilder? max;

  /// [base]
  /// Information about the base definition of the element, provided to make
  /// it unnecessary for tools to trace the deviation of the element through
  /// the derived and related profiles. When the element definition is not
  /// the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then
  /// the information in provided in the element definition may be different
  /// to the base definition. On the original definition of the element, it
  /// will be same.
  ElementDefinitionBaseBuilder? base;

  /// [contentReference]
  /// Identifies an element defined elsewhere in the definition whose content
  /// rules should be applied to the current element. ContentReferences bring
  /// across all the rules that are in the ElementDefinition for the element,
  /// including definitions, cardinality constraints, bindings, invariants
  /// etc.
  FhirUriBuilder? contentReference;

  /// [type]
  /// The data type or resource that the value of this element is permitted
  /// to be.
  List<ElementDefinitionTypeBuilder>? type;

  /// [defaultValueX]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  DefaultValueXElementDefinitionBuilder? defaultValueX;

  /// Getter for [defaultValueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get defaultValueBase64Binary =>
      defaultValueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [defaultValueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get defaultValueBoolean =>
      defaultValueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [defaultValueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get defaultValueCanonical =>
      defaultValueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [defaultValueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get defaultValueCode =>
      defaultValueX?.isAs<FhirCodeBuilder>();

  /// Getter for [defaultValueDate] as a FhirDateBuilder
  FhirDateBuilder? get defaultValueDate =>
      defaultValueX?.isAs<FhirDateBuilder>();

  /// Getter for [defaultValueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get defaultValueDateTime =>
      defaultValueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [defaultValueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get defaultValueDecimal =>
      defaultValueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [defaultValueId] as a FhirIdBuilder
  FhirIdBuilder? get defaultValueId => defaultValueX?.isAs<FhirIdBuilder>();

  /// Getter for [defaultValueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get defaultValueInstant =>
      defaultValueX?.isAs<FhirInstantBuilder>();

  /// Getter for [defaultValueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get defaultValueInteger =>
      defaultValueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [defaultValueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get defaultValueMarkdown =>
      defaultValueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [defaultValueOid] as a FhirOidBuilder
  FhirOidBuilder? get defaultValueOid => defaultValueX?.isAs<FhirOidBuilder>();

  /// Getter for [defaultValuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get defaultValuePositiveInt =>
      defaultValueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [defaultValueString] as a FhirStringBuilder
  FhirStringBuilder? get defaultValueString =>
      defaultValueX?.isAs<FhirStringBuilder>();

  /// Getter for [defaultValueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get defaultValueTime =>
      defaultValueX?.isAs<FhirTimeBuilder>();

  /// Getter for [defaultValueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get defaultValueUnsignedInt =>
      defaultValueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [defaultValueUri] as a FhirUriBuilder
  FhirUriBuilder? get defaultValueUri => defaultValueX?.isAs<FhirUriBuilder>();

  /// Getter for [defaultValueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get defaultValueUrl => defaultValueX?.isAs<FhirUrlBuilder>();

  /// Getter for [defaultValueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get defaultValueUuid =>
      defaultValueX?.isAs<FhirUuidBuilder>();

  /// Getter for [defaultValueAddress] as a AddressBuilder
  AddressBuilder? get defaultValueAddress =>
      defaultValueX?.isAs<AddressBuilder>();

  /// Getter for [defaultValueAge] as a AgeBuilder
  AgeBuilder? get defaultValueAge => defaultValueX?.isAs<AgeBuilder>();

  /// Getter for [defaultValueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get defaultValueAnnotation =>
      defaultValueX?.isAs<AnnotationBuilder>();

  /// Getter for [defaultValueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get defaultValueAttachment =>
      defaultValueX?.isAs<AttachmentBuilder>();

  /// Getter for [defaultValueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get defaultValueCodeableConcept =>
      defaultValueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [defaultValueCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get defaultValueCodeableReference =>
      defaultValueX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [defaultValueCoding] as a CodingBuilder
  CodingBuilder? get defaultValueCoding => defaultValueX?.isAs<CodingBuilder>();

  /// Getter for [defaultValueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get defaultValueContactPoint =>
      defaultValueX?.isAs<ContactPointBuilder>();

  /// Getter for [defaultValueCount] as a CountBuilder
  CountBuilder? get defaultValueCount => defaultValueX?.isAs<CountBuilder>();

  /// Getter for [defaultValueDistance] as a DistanceBuilder
  DistanceBuilder? get defaultValueDistance =>
      defaultValueX?.isAs<DistanceBuilder>();

  /// Getter for [defaultValueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get defaultValueDuration =>
      defaultValueX?.isAs<FhirDurationBuilder>();

  /// Getter for [defaultValueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get defaultValueHumanName =>
      defaultValueX?.isAs<HumanNameBuilder>();

  /// Getter for [defaultValueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get defaultValueIdentifier =>
      defaultValueX?.isAs<IdentifierBuilder>();

  /// Getter for [defaultValueMoney] as a MoneyBuilder
  MoneyBuilder? get defaultValueMoney => defaultValueX?.isAs<MoneyBuilder>();

  /// Getter for [defaultValuePeriod] as a PeriodBuilder
  PeriodBuilder? get defaultValuePeriod => defaultValueX?.isAs<PeriodBuilder>();

  /// Getter for [defaultValueQuantity] as a QuantityBuilder
  QuantityBuilder? get defaultValueQuantity =>
      defaultValueX?.isAs<QuantityBuilder>();

  /// Getter for [defaultValueRange] as a RangeBuilder
  RangeBuilder? get defaultValueRange => defaultValueX?.isAs<RangeBuilder>();

  /// Getter for [defaultValueRatio] as a RatioBuilder
  RatioBuilder? get defaultValueRatio => defaultValueX?.isAs<RatioBuilder>();

  /// Getter for [defaultValueRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get defaultValueRatioRange =>
      defaultValueX?.isAs<RatioRangeBuilder>();

  /// Getter for [defaultValueReference] as a ReferenceBuilder
  ReferenceBuilder? get defaultValueReference =>
      defaultValueX?.isAs<ReferenceBuilder>();

  /// Getter for [defaultValueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get defaultValueSampledData =>
      defaultValueX?.isAs<SampledDataBuilder>();

  /// Getter for [defaultValueSignature] as a SignatureBuilder
  SignatureBuilder? get defaultValueSignature =>
      defaultValueX?.isAs<SignatureBuilder>();

  /// Getter for [defaultValueTiming] as a TimingBuilder
  TimingBuilder? get defaultValueTiming => defaultValueX?.isAs<TimingBuilder>();

  /// Getter for [defaultValueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get defaultValueContactDetail =>
      defaultValueX?.isAs<ContactDetailBuilder>();

  /// Getter for [defaultValueContributor] as a ContributorBuilder
  ContributorBuilder? get defaultValueContributor =>
      defaultValueX?.isAs<ContributorBuilder>();

  /// Getter for [defaultValueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get defaultValueDataRequirement =>
      defaultValueX?.isAs<DataRequirementBuilder>();

  /// Getter for [defaultValueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get defaultValueExpression =>
      defaultValueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [defaultValueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get defaultValueParameterDefinition =>
      defaultValueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [defaultValueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get defaultValueRelatedArtifact =>
      defaultValueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [defaultValueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get defaultValueTriggerDefinition =>
      defaultValueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [defaultValueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get defaultValueUsageContext =>
      defaultValueX?.isAs<UsageContextBuilder>();

  /// Getter for [defaultValueDosage] as a DosageBuilder
  DosageBuilder? get defaultValueDosage => defaultValueX?.isAs<DosageBuilder>();

  /// [meaningWhenMissing]
  /// The Implicit meaning that is to be understood when this element is
  /// missing (e.g. 'when this element is missing, the period is ongoing').
  FhirMarkdownBuilder? meaningWhenMissing;

  /// [orderMeaning]
  /// If present, indicates that the order of the repeating element has
  /// meaning and describes what that meaning is. If absent, it means that
  /// the order of the element has no meaning.
  FhirStringBuilder? orderMeaning;

  /// [fixedX]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  FixedXElementDefinitionBuilder? fixedX;

  /// Getter for [fixedBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get fixedBase64Binary =>
      fixedX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [fixedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get fixedBoolean => fixedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [fixedCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get fixedCanonical =>
      fixedX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [fixedCode] as a FhirCodeBuilder
  FhirCodeBuilder? get fixedCode => fixedX?.isAs<FhirCodeBuilder>();

  /// Getter for [fixedDate] as a FhirDateBuilder
  FhirDateBuilder? get fixedDate => fixedX?.isAs<FhirDateBuilder>();

  /// Getter for [fixedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get fixedDateTime => fixedX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [fixedDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get fixedDecimal => fixedX?.isAs<FhirDecimalBuilder>();

  /// Getter for [fixedId] as a FhirIdBuilder
  FhirIdBuilder? get fixedId => fixedX?.isAs<FhirIdBuilder>();

  /// Getter for [fixedInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get fixedInstant => fixedX?.isAs<FhirInstantBuilder>();

  /// Getter for [fixedInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get fixedInteger => fixedX?.isAs<FhirIntegerBuilder>();

  /// Getter for [fixedMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get fixedMarkdown => fixedX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [fixedOid] as a FhirOidBuilder
  FhirOidBuilder? get fixedOid => fixedX?.isAs<FhirOidBuilder>();

  /// Getter for [fixedPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get fixedPositiveInt =>
      fixedX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [fixedString] as a FhirStringBuilder
  FhirStringBuilder? get fixedString => fixedX?.isAs<FhirStringBuilder>();

  /// Getter for [fixedTime] as a FhirTimeBuilder
  FhirTimeBuilder? get fixedTime => fixedX?.isAs<FhirTimeBuilder>();

  /// Getter for [fixedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get fixedUnsignedInt =>
      fixedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [fixedUri] as a FhirUriBuilder
  FhirUriBuilder? get fixedUri => fixedX?.isAs<FhirUriBuilder>();

  /// Getter for [fixedUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get fixedUrl => fixedX?.isAs<FhirUrlBuilder>();

  /// Getter for [fixedUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get fixedUuid => fixedX?.isAs<FhirUuidBuilder>();

  /// Getter for [fixedAddress] as a AddressBuilder
  AddressBuilder? get fixedAddress => fixedX?.isAs<AddressBuilder>();

  /// Getter for [fixedAge] as a AgeBuilder
  AgeBuilder? get fixedAge => fixedX?.isAs<AgeBuilder>();

  /// Getter for [fixedAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get fixedAnnotation => fixedX?.isAs<AnnotationBuilder>();

  /// Getter for [fixedAttachment] as a AttachmentBuilder
  AttachmentBuilder? get fixedAttachment => fixedX?.isAs<AttachmentBuilder>();

  /// Getter for [fixedCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get fixedCodeableConcept =>
      fixedX?.isAs<CodeableConceptBuilder>();

  /// Getter for [fixedCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get fixedCodeableReference =>
      fixedX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [fixedCoding] as a CodingBuilder
  CodingBuilder? get fixedCoding => fixedX?.isAs<CodingBuilder>();

  /// Getter for [fixedContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get fixedContactPoint =>
      fixedX?.isAs<ContactPointBuilder>();

  /// Getter for [fixedCount] as a CountBuilder
  CountBuilder? get fixedCount => fixedX?.isAs<CountBuilder>();

  /// Getter for [fixedDistance] as a DistanceBuilder
  DistanceBuilder? get fixedDistance => fixedX?.isAs<DistanceBuilder>();

  /// Getter for [fixedDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get fixedDuration => fixedX?.isAs<FhirDurationBuilder>();

  /// Getter for [fixedHumanName] as a HumanNameBuilder
  HumanNameBuilder? get fixedHumanName => fixedX?.isAs<HumanNameBuilder>();

  /// Getter for [fixedIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get fixedIdentifier => fixedX?.isAs<IdentifierBuilder>();

  /// Getter for [fixedMoney] as a MoneyBuilder
  MoneyBuilder? get fixedMoney => fixedX?.isAs<MoneyBuilder>();

  /// Getter for [fixedPeriod] as a PeriodBuilder
  PeriodBuilder? get fixedPeriod => fixedX?.isAs<PeriodBuilder>();

  /// Getter for [fixedQuantity] as a QuantityBuilder
  QuantityBuilder? get fixedQuantity => fixedX?.isAs<QuantityBuilder>();

  /// Getter for [fixedRange] as a RangeBuilder
  RangeBuilder? get fixedRange => fixedX?.isAs<RangeBuilder>();

  /// Getter for [fixedRatio] as a RatioBuilder
  RatioBuilder? get fixedRatio => fixedX?.isAs<RatioBuilder>();

  /// Getter for [fixedRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get fixedRatioRange => fixedX?.isAs<RatioRangeBuilder>();

  /// Getter for [fixedReference] as a ReferenceBuilder
  ReferenceBuilder? get fixedReference => fixedX?.isAs<ReferenceBuilder>();

  /// Getter for [fixedSampledData] as a SampledDataBuilder
  SampledDataBuilder? get fixedSampledData =>
      fixedX?.isAs<SampledDataBuilder>();

  /// Getter for [fixedSignature] as a SignatureBuilder
  SignatureBuilder? get fixedSignature => fixedX?.isAs<SignatureBuilder>();

  /// Getter for [fixedTiming] as a TimingBuilder
  TimingBuilder? get fixedTiming => fixedX?.isAs<TimingBuilder>();

  /// Getter for [fixedContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get fixedContactDetail =>
      fixedX?.isAs<ContactDetailBuilder>();

  /// Getter for [fixedContributor] as a ContributorBuilder
  ContributorBuilder? get fixedContributor =>
      fixedX?.isAs<ContributorBuilder>();

  /// Getter for [fixedDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get fixedDataRequirement =>
      fixedX?.isAs<DataRequirementBuilder>();

  /// Getter for [fixedExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get fixedExpression =>
      fixedX?.isAs<FhirExpressionBuilder>();

  /// Getter for [fixedParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get fixedParameterDefinition =>
      fixedX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [fixedRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get fixedRelatedArtifact =>
      fixedX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [fixedTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get fixedTriggerDefinition =>
      fixedX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [fixedUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get fixedUsageContext =>
      fixedX?.isAs<UsageContextBuilder>();

  /// Getter for [fixedDosage] as a DosageBuilder
  DosageBuilder? get fixedDosage => fixedX?.isAs<DosageBuilder>();

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
  PatternXElementDefinitionBuilder? patternX;

  /// Getter for [patternBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get patternBase64Binary =>
      patternX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [patternBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get patternBoolean =>
      patternX?.isAs<FhirBooleanBuilder>();

  /// Getter for [patternCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get patternCanonical =>
      patternX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [patternCode] as a FhirCodeBuilder
  FhirCodeBuilder? get patternCode => patternX?.isAs<FhirCodeBuilder>();

  /// Getter for [patternDate] as a FhirDateBuilder
  FhirDateBuilder? get patternDate => patternX?.isAs<FhirDateBuilder>();

  /// Getter for [patternDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get patternDateTime =>
      patternX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [patternDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get patternDecimal =>
      patternX?.isAs<FhirDecimalBuilder>();

  /// Getter for [patternId] as a FhirIdBuilder
  FhirIdBuilder? get patternId => patternX?.isAs<FhirIdBuilder>();

  /// Getter for [patternInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get patternInstant =>
      patternX?.isAs<FhirInstantBuilder>();

  /// Getter for [patternInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get patternInteger =>
      patternX?.isAs<FhirIntegerBuilder>();

  /// Getter for [patternMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get patternMarkdown =>
      patternX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [patternOid] as a FhirOidBuilder
  FhirOidBuilder? get patternOid => patternX?.isAs<FhirOidBuilder>();

  /// Getter for [patternPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get patternPositiveInt =>
      patternX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [patternString] as a FhirStringBuilder
  FhirStringBuilder? get patternString => patternX?.isAs<FhirStringBuilder>();

  /// Getter for [patternTime] as a FhirTimeBuilder
  FhirTimeBuilder? get patternTime => patternX?.isAs<FhirTimeBuilder>();

  /// Getter for [patternUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get patternUnsignedInt =>
      patternX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [patternUri] as a FhirUriBuilder
  FhirUriBuilder? get patternUri => patternX?.isAs<FhirUriBuilder>();

  /// Getter for [patternUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get patternUrl => patternX?.isAs<FhirUrlBuilder>();

  /// Getter for [patternUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get patternUuid => patternX?.isAs<FhirUuidBuilder>();

  /// Getter for [patternAddress] as a AddressBuilder
  AddressBuilder? get patternAddress => patternX?.isAs<AddressBuilder>();

  /// Getter for [patternAge] as a AgeBuilder
  AgeBuilder? get patternAge => patternX?.isAs<AgeBuilder>();

  /// Getter for [patternAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get patternAnnotation =>
      patternX?.isAs<AnnotationBuilder>();

  /// Getter for [patternAttachment] as a AttachmentBuilder
  AttachmentBuilder? get patternAttachment =>
      patternX?.isAs<AttachmentBuilder>();

  /// Getter for [patternCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get patternCodeableConcept =>
      patternX?.isAs<CodeableConceptBuilder>();

  /// Getter for [patternCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get patternCodeableReference =>
      patternX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [patternCoding] as a CodingBuilder
  CodingBuilder? get patternCoding => patternX?.isAs<CodingBuilder>();

  /// Getter for [patternContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get patternContactPoint =>
      patternX?.isAs<ContactPointBuilder>();

  /// Getter for [patternCount] as a CountBuilder
  CountBuilder? get patternCount => patternX?.isAs<CountBuilder>();

  /// Getter for [patternDistance] as a DistanceBuilder
  DistanceBuilder? get patternDistance => patternX?.isAs<DistanceBuilder>();

  /// Getter for [patternDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get patternDuration =>
      patternX?.isAs<FhirDurationBuilder>();

  /// Getter for [patternHumanName] as a HumanNameBuilder
  HumanNameBuilder? get patternHumanName => patternX?.isAs<HumanNameBuilder>();

  /// Getter for [patternIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get patternIdentifier =>
      patternX?.isAs<IdentifierBuilder>();

  /// Getter for [patternMoney] as a MoneyBuilder
  MoneyBuilder? get patternMoney => patternX?.isAs<MoneyBuilder>();

  /// Getter for [patternPeriod] as a PeriodBuilder
  PeriodBuilder? get patternPeriod => patternX?.isAs<PeriodBuilder>();

  /// Getter for [patternQuantity] as a QuantityBuilder
  QuantityBuilder? get patternQuantity => patternX?.isAs<QuantityBuilder>();

  /// Getter for [patternRange] as a RangeBuilder
  RangeBuilder? get patternRange => patternX?.isAs<RangeBuilder>();

  /// Getter for [patternRatio] as a RatioBuilder
  RatioBuilder? get patternRatio => patternX?.isAs<RatioBuilder>();

  /// Getter for [patternRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get patternRatioRange =>
      patternX?.isAs<RatioRangeBuilder>();

  /// Getter for [patternReference] as a ReferenceBuilder
  ReferenceBuilder? get patternReference => patternX?.isAs<ReferenceBuilder>();

  /// Getter for [patternSampledData] as a SampledDataBuilder
  SampledDataBuilder? get patternSampledData =>
      patternX?.isAs<SampledDataBuilder>();

  /// Getter for [patternSignature] as a SignatureBuilder
  SignatureBuilder? get patternSignature => patternX?.isAs<SignatureBuilder>();

  /// Getter for [patternTiming] as a TimingBuilder
  TimingBuilder? get patternTiming => patternX?.isAs<TimingBuilder>();

  /// Getter for [patternContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get patternContactDetail =>
      patternX?.isAs<ContactDetailBuilder>();

  /// Getter for [patternContributor] as a ContributorBuilder
  ContributorBuilder? get patternContributor =>
      patternX?.isAs<ContributorBuilder>();

  /// Getter for [patternDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get patternDataRequirement =>
      patternX?.isAs<DataRequirementBuilder>();

  /// Getter for [patternExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get patternExpression =>
      patternX?.isAs<FhirExpressionBuilder>();

  /// Getter for [patternParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get patternParameterDefinition =>
      patternX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [patternRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get patternRelatedArtifact =>
      patternX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [patternTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get patternTriggerDefinition =>
      patternX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [patternUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get patternUsageContext =>
      patternX?.isAs<UsageContextBuilder>();

  /// Getter for [patternDosage] as a DosageBuilder
  DosageBuilder? get patternDosage => patternX?.isAs<DosageBuilder>();

  /// [example]
  /// A sample value for this element demonstrating the type of information
  /// that would typically be found in the element.
  List<ElementDefinitionExampleBuilder>? example;

  /// [minValueX]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  MinValueXElementDefinitionBuilder? minValueX;

  /// Getter for [minValueDate] as a FhirDateBuilder
  FhirDateBuilder? get minValueDate => minValueX?.isAs<FhirDateBuilder>();

  /// Getter for [minValueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get minValueDateTime =>
      minValueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [minValueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get minValueInstant =>
      minValueX?.isAs<FhirInstantBuilder>();

  /// Getter for [minValueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get minValueTime => minValueX?.isAs<FhirTimeBuilder>();

  /// Getter for [minValueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get minValueDecimal =>
      minValueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [minValueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get minValueInteger =>
      minValueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [minValuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get minValuePositiveInt =>
      minValueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [minValueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get minValueUnsignedInt =>
      minValueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [minValueQuantity] as a QuantityBuilder
  QuantityBuilder? get minValueQuantity => minValueX?.isAs<QuantityBuilder>();

  /// [maxValueX]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  MaxValueXElementDefinitionBuilder? maxValueX;

  /// Getter for [maxValueDate] as a FhirDateBuilder
  FhirDateBuilder? get maxValueDate => maxValueX?.isAs<FhirDateBuilder>();

  /// Getter for [maxValueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get maxValueDateTime =>
      maxValueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [maxValueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get maxValueInstant =>
      maxValueX?.isAs<FhirInstantBuilder>();

  /// Getter for [maxValueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get maxValueTime => maxValueX?.isAs<FhirTimeBuilder>();

  /// Getter for [maxValueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get maxValueDecimal =>
      maxValueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [maxValueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get maxValueInteger =>
      maxValueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [maxValuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get maxValuePositiveInt =>
      maxValueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [maxValueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get maxValueUnsignedInt =>
      maxValueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [maxValueQuantity] as a QuantityBuilder
  QuantityBuilder? get maxValueQuantity => maxValueX?.isAs<QuantityBuilder>();

  /// [maxLength]
  /// Indicates the maximum length in characters that is permitted to be
  /// present in conformant instances and which is expected to be supported
  /// by conformant consumers that support the element.
  FhirIntegerBuilder? maxLength;

  /// [condition]
  /// A reference to an invariant that may make additional statements about
  /// the cardinality or value in the instance.
  List<FhirIdBuilder>? condition;

  /// [constraint]
  /// Formal constraints such as co-occurrence and other constraints that can
  /// be computationally evaluated within the context of the instance.
  List<ElementDefinitionConstraintBuilder>? constraint;

  /// [mustSupport]
  /// If true, implementations that produce or consume resources SHALL
  /// provide "support" for the element in some meaningful way. If false, the
  /// element may be ignored and not supported. If false, whether to populate
  /// or use the data element in any way is at the discretion of the
  /// implementation.
  FhirBooleanBuilder? mustSupport;

  /// [isModifier]
  /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element
  /// cannot be ignored. Typically, this is used for status, negation and
  /// qualification codes. The effect of this is that the element cannot be
  /// ignored by systems: they SHALL either recognize the element and process
  /// it, and/or a pre-determination has been made that it is not relevant to
  /// their particular system.
  FhirBooleanBuilder? isModifier;

  /// [isModifierReason]
  /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  FhirStringBuilder? isModifierReason;

  /// [isSummary]
  /// Whether the element should be included if a client requests a search
  /// with the parameter _summary=true.
  FhirBooleanBuilder? isSummary;

  /// [binding]
  /// Binds to a value set if this element is coded (code, Coding,
  /// CodeableConcept, Quantity), or the data types (string, uri).
  ElementDefinitionBindingBuilder? binding;

  /// [mapping]
  /// Identifies a concept from an external specification that roughly
  /// corresponds to this element.
  List<ElementDefinitionMappingBuilder>? mapping;

  /// Converts a [ElementDefinitionBuilder]
  /// to [ElementDefinition]
  @override
  ElementDefinition build() => ElementDefinition.fromJson(toJson());

  /// Converts a [ElementDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
      addField(
          'defaultValue${fhirType.capitalizeFirstLetter()}', defaultValueX,);
    }

    addField('meaningWhenMissing', meaningWhenMissing);
    addField('orderMeaning', orderMeaning);
    if (fixedX != null) {
      final fhirType = fixedX!.fhirType;
      addField('fixed${fhirType.capitalizeFirstLetter()}', fixedX);
    }

    if (patternX != null) {
      final fhirType = patternX!.fhirType;
      addField('pattern${fhirType.capitalizeFirstLetter()}', patternX);
    }

    addField('example', example);
    if (minValueX != null) {
      final fhirType = minValueX!.fhirType;
      addField('minValue${fhirType.capitalizeFirstLetter()}', minValueX);
    }

    if (maxValueX != null) {
      final fhirType = maxValueX!.fhirType;
      addField('maxValue${fhirType.capitalizeFirstLetter()}', maxValueX);
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (path != null) {
          fields.add(path!);
        }
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
      case 'defaultValue':
        if (defaultValueX != null) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueX':
        if (defaultValueX != null) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBase64Binary':
        if (defaultValueX is FhirBase64BinaryBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBoolean':
        if (defaultValueX is FhirBooleanBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCanonical':
        if (defaultValueX is FhirCanonicalBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCode':
        if (defaultValueX is FhirCodeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDate':
        if (defaultValueX is FhirDateBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDateTime':
        if (defaultValueX is FhirDateTimeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDecimal':
        if (defaultValueX is FhirDecimalBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueId':
        if (defaultValueX is FhirIdBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInstant':
        if (defaultValueX is FhirInstantBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInteger':
        if (defaultValueX is FhirIntegerBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMarkdown':
        if (defaultValueX is FhirMarkdownBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueOid':
        if (defaultValueX is FhirOidBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePositiveInt':
        if (defaultValueX is FhirPositiveIntBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueString':
        if (defaultValueX is FhirStringBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTime':
        if (defaultValueX is FhirTimeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUnsignedInt':
        if (defaultValueX is FhirUnsignedIntBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUri':
        if (defaultValueX is FhirUriBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUrl':
        if (defaultValueX is FhirUrlBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUuid':
        if (defaultValueX is FhirUuidBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAddress':
        if (defaultValueX is AddressBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAge':
        if (defaultValueX is AgeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAnnotation':
        if (defaultValueX is AnnotationBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAttachment':
        if (defaultValueX is AttachmentBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableConcept':
        if (defaultValueX is CodeableConceptBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableReference':
        if (defaultValueX is CodeableReferenceBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCoding':
        if (defaultValueX is CodingBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactPoint':
        if (defaultValueX is ContactPointBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCount':
        if (defaultValueX is CountBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDistance':
        if (defaultValueX is DistanceBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDuration':
        if (defaultValueX is FhirDurationBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueHumanName':
        if (defaultValueX is HumanNameBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueIdentifier':
        if (defaultValueX is IdentifierBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMoney':
        if (defaultValueX is MoneyBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePeriod':
        if (defaultValueX is PeriodBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueQuantity':
        if (defaultValueX is QuantityBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRange':
        if (defaultValueX is RangeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatio':
        if (defaultValueX is RatioBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatioRange':
        if (defaultValueX is RatioRangeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueReference':
        if (defaultValueX is ReferenceBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSampledData':
        if (defaultValueX is SampledDataBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSignature':
        if (defaultValueX is SignatureBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTiming':
        if (defaultValueX is TimingBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactDetail':
        if (defaultValueX is ContactDetailBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContributor':
        if (defaultValueX is ContributorBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDataRequirement':
        if (defaultValueX is DataRequirementBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueExpression':
        if (defaultValueX is FhirExpressionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueParameterDefinition':
        if (defaultValueX is ParameterDefinitionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRelatedArtifact':
        if (defaultValueX is RelatedArtifactBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTriggerDefinition':
        if (defaultValueX is TriggerDefinitionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUsageContext':
        if (defaultValueX is UsageContextBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDosage':
        if (defaultValueX is DosageBuilder) {
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
      case 'fixed':
        if (fixedX != null) {
          fields.add(fixedX!);
        }
      case 'fixedX':
        if (fixedX != null) {
          fields.add(fixedX!);
        }
      case 'fixedBase64Binary':
        if (fixedX is FhirBase64BinaryBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedBoolean':
        if (fixedX is FhirBooleanBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCanonical':
        if (fixedX is FhirCanonicalBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCode':
        if (fixedX is FhirCodeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDate':
        if (fixedX is FhirDateBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDateTime':
        if (fixedX is FhirDateTimeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDecimal':
        if (fixedX is FhirDecimalBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedId':
        if (fixedX is FhirIdBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedInstant':
        if (fixedX is FhirInstantBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedInteger':
        if (fixedX is FhirIntegerBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedMarkdown':
        if (fixedX is FhirMarkdownBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedOid':
        if (fixedX is FhirOidBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedPositiveInt':
        if (fixedX is FhirPositiveIntBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedString':
        if (fixedX is FhirStringBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedTime':
        if (fixedX is FhirTimeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedUnsignedInt':
        if (fixedX is FhirUnsignedIntBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedUri':
        if (fixedX is FhirUriBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedUrl':
        if (fixedX is FhirUrlBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedUuid':
        if (fixedX is FhirUuidBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedAddress':
        if (fixedX is AddressBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedAge':
        if (fixedX is AgeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedAnnotation':
        if (fixedX is AnnotationBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedAttachment':
        if (fixedX is AttachmentBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCodeableConcept':
        if (fixedX is CodeableConceptBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCodeableReference':
        if (fixedX is CodeableReferenceBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCoding':
        if (fixedX is CodingBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedContactPoint':
        if (fixedX is ContactPointBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedCount':
        if (fixedX is CountBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDistance':
        if (fixedX is DistanceBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDuration':
        if (fixedX is FhirDurationBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedHumanName':
        if (fixedX is HumanNameBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedIdentifier':
        if (fixedX is IdentifierBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedMoney':
        if (fixedX is MoneyBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedPeriod':
        if (fixedX is PeriodBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedQuantity':
        if (fixedX is QuantityBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedRange':
        if (fixedX is RangeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedRatio':
        if (fixedX is RatioBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedRatioRange':
        if (fixedX is RatioRangeBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedReference':
        if (fixedX is ReferenceBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedSampledData':
        if (fixedX is SampledDataBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedSignature':
        if (fixedX is SignatureBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedTiming':
        if (fixedX is TimingBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedContactDetail':
        if (fixedX is ContactDetailBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedContributor':
        if (fixedX is ContributorBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDataRequirement':
        if (fixedX is DataRequirementBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedExpression':
        if (fixedX is FhirExpressionBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedParameterDefinition':
        if (fixedX is ParameterDefinitionBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedRelatedArtifact':
        if (fixedX is RelatedArtifactBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedTriggerDefinition':
        if (fixedX is TriggerDefinitionBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedUsageContext':
        if (fixedX is UsageContextBuilder) {
          fields.add(fixedX!);
        }
      case 'fixedDosage':
        if (fixedX is DosageBuilder) {
          fields.add(fixedX!);
        }
      case 'pattern':
        if (patternX != null) {
          fields.add(patternX!);
        }
      case 'patternX':
        if (patternX != null) {
          fields.add(patternX!);
        }
      case 'patternBase64Binary':
        if (patternX is FhirBase64BinaryBuilder) {
          fields.add(patternX!);
        }
      case 'patternBoolean':
        if (patternX is FhirBooleanBuilder) {
          fields.add(patternX!);
        }
      case 'patternCanonical':
        if (patternX is FhirCanonicalBuilder) {
          fields.add(patternX!);
        }
      case 'patternCode':
        if (patternX is FhirCodeBuilder) {
          fields.add(patternX!);
        }
      case 'patternDate':
        if (patternX is FhirDateBuilder) {
          fields.add(patternX!);
        }
      case 'patternDateTime':
        if (patternX is FhirDateTimeBuilder) {
          fields.add(patternX!);
        }
      case 'patternDecimal':
        if (patternX is FhirDecimalBuilder) {
          fields.add(patternX!);
        }
      case 'patternId':
        if (patternX is FhirIdBuilder) {
          fields.add(patternX!);
        }
      case 'patternInstant':
        if (patternX is FhirInstantBuilder) {
          fields.add(patternX!);
        }
      case 'patternInteger':
        if (patternX is FhirIntegerBuilder) {
          fields.add(patternX!);
        }
      case 'patternMarkdown':
        if (patternX is FhirMarkdownBuilder) {
          fields.add(patternX!);
        }
      case 'patternOid':
        if (patternX is FhirOidBuilder) {
          fields.add(patternX!);
        }
      case 'patternPositiveInt':
        if (patternX is FhirPositiveIntBuilder) {
          fields.add(patternX!);
        }
      case 'patternString':
        if (patternX is FhirStringBuilder) {
          fields.add(patternX!);
        }
      case 'patternTime':
        if (patternX is FhirTimeBuilder) {
          fields.add(patternX!);
        }
      case 'patternUnsignedInt':
        if (patternX is FhirUnsignedIntBuilder) {
          fields.add(patternX!);
        }
      case 'patternUri':
        if (patternX is FhirUriBuilder) {
          fields.add(patternX!);
        }
      case 'patternUrl':
        if (patternX is FhirUrlBuilder) {
          fields.add(patternX!);
        }
      case 'patternUuid':
        if (patternX is FhirUuidBuilder) {
          fields.add(patternX!);
        }
      case 'patternAddress':
        if (patternX is AddressBuilder) {
          fields.add(patternX!);
        }
      case 'patternAge':
        if (patternX is AgeBuilder) {
          fields.add(patternX!);
        }
      case 'patternAnnotation':
        if (patternX is AnnotationBuilder) {
          fields.add(patternX!);
        }
      case 'patternAttachment':
        if (patternX is AttachmentBuilder) {
          fields.add(patternX!);
        }
      case 'patternCodeableConcept':
        if (patternX is CodeableConceptBuilder) {
          fields.add(patternX!);
        }
      case 'patternCodeableReference':
        if (patternX is CodeableReferenceBuilder) {
          fields.add(patternX!);
        }
      case 'patternCoding':
        if (patternX is CodingBuilder) {
          fields.add(patternX!);
        }
      case 'patternContactPoint':
        if (patternX is ContactPointBuilder) {
          fields.add(patternX!);
        }
      case 'patternCount':
        if (patternX is CountBuilder) {
          fields.add(patternX!);
        }
      case 'patternDistance':
        if (patternX is DistanceBuilder) {
          fields.add(patternX!);
        }
      case 'patternDuration':
        if (patternX is FhirDurationBuilder) {
          fields.add(patternX!);
        }
      case 'patternHumanName':
        if (patternX is HumanNameBuilder) {
          fields.add(patternX!);
        }
      case 'patternIdentifier':
        if (patternX is IdentifierBuilder) {
          fields.add(patternX!);
        }
      case 'patternMoney':
        if (patternX is MoneyBuilder) {
          fields.add(patternX!);
        }
      case 'patternPeriod':
        if (patternX is PeriodBuilder) {
          fields.add(patternX!);
        }
      case 'patternQuantity':
        if (patternX is QuantityBuilder) {
          fields.add(patternX!);
        }
      case 'patternRange':
        if (patternX is RangeBuilder) {
          fields.add(patternX!);
        }
      case 'patternRatio':
        if (patternX is RatioBuilder) {
          fields.add(patternX!);
        }
      case 'patternRatioRange':
        if (patternX is RatioRangeBuilder) {
          fields.add(patternX!);
        }
      case 'patternReference':
        if (patternX is ReferenceBuilder) {
          fields.add(patternX!);
        }
      case 'patternSampledData':
        if (patternX is SampledDataBuilder) {
          fields.add(patternX!);
        }
      case 'patternSignature':
        if (patternX is SignatureBuilder) {
          fields.add(patternX!);
        }
      case 'patternTiming':
        if (patternX is TimingBuilder) {
          fields.add(patternX!);
        }
      case 'patternContactDetail':
        if (patternX is ContactDetailBuilder) {
          fields.add(patternX!);
        }
      case 'patternContributor':
        if (patternX is ContributorBuilder) {
          fields.add(patternX!);
        }
      case 'patternDataRequirement':
        if (patternX is DataRequirementBuilder) {
          fields.add(patternX!);
        }
      case 'patternExpression':
        if (patternX is FhirExpressionBuilder) {
          fields.add(patternX!);
        }
      case 'patternParameterDefinition':
        if (patternX is ParameterDefinitionBuilder) {
          fields.add(patternX!);
        }
      case 'patternRelatedArtifact':
        if (patternX is RelatedArtifactBuilder) {
          fields.add(patternX!);
        }
      case 'patternTriggerDefinition':
        if (patternX is TriggerDefinitionBuilder) {
          fields.add(patternX!);
        }
      case 'patternUsageContext':
        if (patternX is UsageContextBuilder) {
          fields.add(patternX!);
        }
      case 'patternDosage':
        if (patternX is DosageBuilder) {
          fields.add(patternX!);
        }
      case 'example':
        if (example != null) {
          fields.addAll(example!);
        }
      case 'minValue':
        if (minValueX != null) {
          fields.add(minValueX!);
        }
      case 'minValueX':
        if (minValueX != null) {
          fields.add(minValueX!);
        }
      case 'minValueDate':
        if (minValueX is FhirDateBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueDateTime':
        if (minValueX is FhirDateTimeBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueInstant':
        if (minValueX is FhirInstantBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueTime':
        if (minValueX is FhirTimeBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueDecimal':
        if (minValueX is FhirDecimalBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueInteger':
        if (minValueX is FhirIntegerBuilder) {
          fields.add(minValueX!);
        }
      case 'minValuePositiveInt':
        if (minValueX is FhirPositiveIntBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueUnsignedInt':
        if (minValueX is FhirUnsignedIntBuilder) {
          fields.add(minValueX!);
        }
      case 'minValueQuantity':
        if (minValueX is QuantityBuilder) {
          fields.add(minValueX!);
        }
      case 'maxValue':
        if (maxValueX != null) {
          fields.add(maxValueX!);
        }
      case 'maxValueX':
        if (maxValueX != null) {
          fields.add(maxValueX!);
        }
      case 'maxValueDate':
        if (maxValueX is FhirDateBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueDateTime':
        if (maxValueX is FhirDateTimeBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueInstant':
        if (maxValueX is FhirInstantBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueTime':
        if (maxValueX is FhirTimeBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueDecimal':
        if (maxValueX is FhirDecimalBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueInteger':
        if (maxValueX is FhirIntegerBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValuePositiveInt':
        if (maxValueX is FhirPositiveIntBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueUnsignedInt':
        if (maxValueX is FhirUnsignedIntBuilder) {
          fields.add(maxValueX!);
        }
      case 'maxValueQuantity':
        if (maxValueX is QuantityBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'representation':
        {
          if (child is List<PropertyRepresentationBuilder>) {
            // Replace or create new list
            representation = child;
            return;
          } else if (child is PropertyRepresentationBuilder) {
            // Add single element to existing list or create new list
            representation = [
              ...(representation ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <PropertyRepresentationBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = PropertyRepresentationBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              representation = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PropertyRepresentationBuilder(stringValue);
                representation = [
                  ...(representation ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sliceName':
        {
          if (child is FhirStringBuilder) {
            sliceName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                sliceName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sliceIsConstraining':
        {
          if (child is FhirBooleanBuilder) {
            sliceIsConstraining = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                sliceIsConstraining = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'slicing':
        {
          if (child is ElementDefinitionSlicingBuilder) {
            slicing = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'short':
        {
          if (child is FhirStringBuilder) {
            short = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                short = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is FhirMarkdownBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requirements':
        {
          if (child is FhirMarkdownBuilder) {
            requirements = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                requirements = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alias':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            alias = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            alias = [
              ...(alias ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              alias = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                alias = [
                  ...(alias ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'min':
        {
          if (child is FhirUnsignedIntBuilder) {
            min = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  min = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'max':
        {
          if (child is FhirStringBuilder) {
            max = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                max = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'base':
        {
          if (child is ElementDefinitionBaseBuilder) {
            base = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentReference':
        {
          if (child is FhirUriBuilder) {
            contentReference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                contentReference = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<ElementDefinitionTypeBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is ElementDefinitionTypeBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValue':
      case 'defaultValueX':
        {
          if (child is DefaultValueXElementDefinitionBuilder) {
            defaultValueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AddressBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AgeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CodingBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CountBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RangeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RatioBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is TimingBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContributorBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DosageBuilder) {
              defaultValueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCode':
        {
          if (child is FhirCodeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDate':
        {
          if (child is FhirDateBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueId':
        {
          if (child is FhirIdBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueInstant':
        {
          if (child is FhirInstantBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueInteger':
        {
          if (child is FhirIntegerBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueOid':
        {
          if (child is FhirOidBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueString':
        {
          if (child is FhirStringBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTime':
        {
          if (child is FhirTimeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUri':
        {
          if (child is FhirUriBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUrl':
        {
          if (child is FhirUrlBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUuid':
        {
          if (child is FhirUuidBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAddress':
        {
          if (child is AddressBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAge':
        {
          if (child is AgeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAnnotation':
        {
          if (child is AnnotationBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAttachment':
        {
          if (child is AttachmentBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCoding':
        {
          if (child is CodingBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactPoint':
        {
          if (child is ContactPointBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCount':
        {
          if (child is CountBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDistance':
        {
          if (child is DistanceBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDuration':
        {
          if (child is FhirDurationBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueHumanName':
        {
          if (child is HumanNameBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueIdentifier':
        {
          if (child is IdentifierBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMoney':
        {
          if (child is MoneyBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePeriod':
        {
          if (child is PeriodBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueQuantity':
        {
          if (child is QuantityBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRange':
        {
          if (child is RangeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatio':
        {
          if (child is RatioBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatioRange':
        {
          if (child is RatioRangeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueReference':
        {
          if (child is ReferenceBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSampledData':
        {
          if (child is SampledDataBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSignature':
        {
          if (child is SignatureBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTiming':
        {
          if (child is TimingBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContributor':
        {
          if (child is ContributorBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueExpression':
        {
          if (child is FhirExpressionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUsageContext':
        {
          if (child is UsageContextBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDosage':
        {
          if (child is DosageBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meaningWhenMissing':
        {
          if (child is FhirMarkdownBuilder) {
            meaningWhenMissing = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                meaningWhenMissing = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orderMeaning':
        {
          if (child is FhirStringBuilder) {
            orderMeaning = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                orderMeaning = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fixed':
      case 'fixedX':
        {
          if (child is FixedXElementDefinitionBuilder) {
            fixedX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              fixedX = child;
              return;
            }
            if (child is AddressBuilder) {
              fixedX = child;
              return;
            }
            if (child is AgeBuilder) {
              fixedX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              fixedX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              fixedX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              fixedX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              fixedX = child;
              return;
            }
            if (child is CodingBuilder) {
              fixedX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              fixedX = child;
              return;
            }
            if (child is CountBuilder) {
              fixedX = child;
              return;
            }
            if (child is DistanceBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              fixedX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              fixedX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              fixedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              fixedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              fixedX = child;
              return;
            }
            if (child is QuantityBuilder) {
              fixedX = child;
              return;
            }
            if (child is RangeBuilder) {
              fixedX = child;
              return;
            }
            if (child is RatioBuilder) {
              fixedX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              fixedX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              fixedX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              fixedX = child;
              return;
            }
            if (child is SignatureBuilder) {
              fixedX = child;
              return;
            }
            if (child is TimingBuilder) {
              fixedX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              fixedX = child;
              return;
            }
            if (child is ContributorBuilder) {
              fixedX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              fixedX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              fixedX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              fixedX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              fixedX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              fixedX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              fixedX = child;
              return;
            }
            if (child is DosageBuilder) {
              fixedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fixedBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCode':
        {
          if (child is FhirCodeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDate':
        {
          if (child is FhirDateBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDecimal':
        {
          if (child is FhirDecimalBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedId':
        {
          if (child is FhirIdBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedInstant':
        {
          if (child is FhirInstantBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedInteger':
        {
          if (child is FhirIntegerBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedOid':
        {
          if (child is FhirOidBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedString':
        {
          if (child is FhirStringBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedTime':
        {
          if (child is FhirTimeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUri':
        {
          if (child is FhirUriBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUrl':
        {
          if (child is FhirUrlBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUuid':
        {
          if (child is FhirUuidBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAddress':
        {
          if (child is AddressBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAge':
        {
          if (child is AgeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAnnotation':
        {
          if (child is AnnotationBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAttachment':
        {
          if (child is AttachmentBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCoding':
        {
          if (child is CodingBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContactPoint':
        {
          if (child is ContactPointBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCount':
        {
          if (child is CountBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDistance':
        {
          if (child is DistanceBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDuration':
        {
          if (child is FhirDurationBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedHumanName':
        {
          if (child is HumanNameBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedIdentifier':
        {
          if (child is IdentifierBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedMoney':
        {
          if (child is MoneyBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedPeriod':
        {
          if (child is PeriodBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedQuantity':
        {
          if (child is QuantityBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRange':
        {
          if (child is RangeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRatio':
        {
          if (child is RatioBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRatioRange':
        {
          if (child is RatioRangeBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedReference':
        {
          if (child is ReferenceBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedSampledData':
        {
          if (child is SampledDataBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedSignature':
        {
          if (child is SignatureBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedTiming':
        {
          if (child is TimingBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContactDetail':
        {
          if (child is ContactDetailBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContributor':
        {
          if (child is ContributorBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedExpression':
        {
          if (child is FhirExpressionBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUsageContext':
        {
          if (child is UsageContextBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDosage':
        {
          if (child is DosageBuilder) {
            fixedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'pattern':
      case 'patternX':
        {
          if (child is PatternXElementDefinitionBuilder) {
            patternX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              patternX = child;
              return;
            }
            if (child is AddressBuilder) {
              patternX = child;
              return;
            }
            if (child is AgeBuilder) {
              patternX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              patternX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              patternX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              patternX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              patternX = child;
              return;
            }
            if (child is CodingBuilder) {
              patternX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              patternX = child;
              return;
            }
            if (child is CountBuilder) {
              patternX = child;
              return;
            }
            if (child is DistanceBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              patternX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              patternX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              patternX = child;
              return;
            }
            if (child is MoneyBuilder) {
              patternX = child;
              return;
            }
            if (child is PeriodBuilder) {
              patternX = child;
              return;
            }
            if (child is QuantityBuilder) {
              patternX = child;
              return;
            }
            if (child is RangeBuilder) {
              patternX = child;
              return;
            }
            if (child is RatioBuilder) {
              patternX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              patternX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              patternX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              patternX = child;
              return;
            }
            if (child is SignatureBuilder) {
              patternX = child;
              return;
            }
            if (child is TimingBuilder) {
              patternX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              patternX = child;
              return;
            }
            if (child is ContributorBuilder) {
              patternX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              patternX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              patternX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              patternX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              patternX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              patternX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              patternX = child;
              return;
            }
            if (child is DosageBuilder) {
              patternX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patternBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternBoolean':
        {
          if (child is FhirBooleanBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCode':
        {
          if (child is FhirCodeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDate':
        {
          if (child is FhirDateBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDecimal':
        {
          if (child is FhirDecimalBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternId':
        {
          if (child is FhirIdBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternInstant':
        {
          if (child is FhirInstantBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternInteger':
        {
          if (child is FhirIntegerBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternOid':
        {
          if (child is FhirOidBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternString':
        {
          if (child is FhirStringBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternTime':
        {
          if (child is FhirTimeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUri':
        {
          if (child is FhirUriBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUrl':
        {
          if (child is FhirUrlBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUuid':
        {
          if (child is FhirUuidBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAddress':
        {
          if (child is AddressBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAge':
        {
          if (child is AgeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAnnotation':
        {
          if (child is AnnotationBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAttachment':
        {
          if (child is AttachmentBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCoding':
        {
          if (child is CodingBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContactPoint':
        {
          if (child is ContactPointBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCount':
        {
          if (child is CountBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDistance':
        {
          if (child is DistanceBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDuration':
        {
          if (child is FhirDurationBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternHumanName':
        {
          if (child is HumanNameBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternIdentifier':
        {
          if (child is IdentifierBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternMoney':
        {
          if (child is MoneyBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternPeriod':
        {
          if (child is PeriodBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternQuantity':
        {
          if (child is QuantityBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRange':
        {
          if (child is RangeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRatio':
        {
          if (child is RatioBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRatioRange':
        {
          if (child is RatioRangeBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternReference':
        {
          if (child is ReferenceBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternSampledData':
        {
          if (child is SampledDataBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternSignature':
        {
          if (child is SignatureBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternTiming':
        {
          if (child is TimingBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContactDetail':
        {
          if (child is ContactDetailBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContributor':
        {
          if (child is ContributorBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternExpression':
        {
          if (child is FhirExpressionBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUsageContext':
        {
          if (child is UsageContextBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDosage':
        {
          if (child is DosageBuilder) {
            patternX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'example':
        {
          if (child is List<ElementDefinitionExampleBuilder>) {
            // Replace or create new list
            example = child;
            return;
          } else if (child is ElementDefinitionExampleBuilder) {
            // Add single element to existing list or create new list
            example = [
              ...(example ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minValue':
      case 'minValueX':
        {
          if (child is MinValueXElementDefinitionBuilder) {
            minValueX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              minValueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              minValueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              minValueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minValueDate':
        {
          if (child is FhirDateBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueInstant':
        {
          if (child is FhirInstantBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueTime':
        {
          if (child is FhirTimeBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueInteger':
        {
          if (child is FhirIntegerBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueQuantity':
        {
          if (child is QuantityBuilder) {
            minValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValue':
      case 'maxValueX':
        {
          if (child is MaxValueXElementDefinitionBuilder) {
            maxValueX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              maxValueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              maxValueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              maxValueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxValueDate':
        {
          if (child is FhirDateBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueInstant':
        {
          if (child is FhirInstantBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueTime':
        {
          if (child is FhirTimeBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueInteger':
        {
          if (child is FhirIntegerBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueQuantity':
        {
          if (child is QuantityBuilder) {
            maxValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxLength':
        {
          if (child is FhirIntegerBuilder) {
            maxLength = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  maxLength = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<FhirIdBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is FhirIdBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirIdBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirIdBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              condition = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                condition = [
                  ...(condition ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'constraint':
        {
          if (child is List<ElementDefinitionConstraintBuilder>) {
            // Replace or create new list
            constraint = child;
            return;
          } else if (child is ElementDefinitionConstraintBuilder) {
            // Add single element to existing list or create new list
            constraint = [
              ...(constraint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mustSupport':
        {
          if (child is FhirBooleanBuilder) {
            mustSupport = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                mustSupport = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isModifier':
        {
          if (child is FhirBooleanBuilder) {
            isModifier = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isModifier = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isModifierReason':
        {
          if (child is FhirStringBuilder) {
            isModifierReason = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                isModifierReason = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isSummary':
        {
          if (child is FhirBooleanBuilder) {
            isSummary = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isSummary = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'binding':
        {
          if (child is ElementDefinitionBindingBuilder) {
            binding = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mapping':
        {
          if (child is List<ElementDefinitionMappingBuilder>) {
            // Replace or create new list
            mapping = child;
            return;
          } else if (child is ElementDefinitionMappingBuilder) {
            // Add single element to existing list or create new list
            mapping = [
              ...(mapping ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'representation':
        return ['FhirCodeEnumBuilder'];
      case 'sliceName':
        return ['FhirStringBuilder'];
      case 'sliceIsConstraining':
        return ['FhirBooleanBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodingBuilder'];
      case 'slicing':
        return ['ElementDefinitionSlicingBuilder'];
      case 'short':
        return ['FhirStringBuilder'];
      case 'definition':
        return ['FhirMarkdownBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      case 'requirements':
        return ['FhirMarkdownBuilder'];
      case 'alias':
        return ['FhirStringBuilder'];
      case 'min':
        return ['FhirUnsignedIntBuilder'];
      case 'max':
        return ['FhirStringBuilder'];
      case 'base':
        return ['ElementDefinitionBaseBuilder'];
      case 'contentReference':
        return ['FhirUriBuilder'];
      case 'type':
        return ['ElementDefinitionTypeBuilder'];
      case 'defaultValue':
      case 'defaultValueX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder',
        ];
      case 'defaultValueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'defaultValueBoolean':
        return ['FhirBooleanBuilder'];
      case 'defaultValueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'defaultValueCode':
        return ['FhirCodeBuilder'];
      case 'defaultValueDate':
        return ['FhirDateBuilder'];
      case 'defaultValueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'defaultValueDecimal':
        return ['FhirDecimalBuilder'];
      case 'defaultValueId':
        return ['FhirIdBuilder'];
      case 'defaultValueInstant':
        return ['FhirInstantBuilder'];
      case 'defaultValueInteger':
        return ['FhirIntegerBuilder'];
      case 'defaultValueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'defaultValueOid':
        return ['FhirOidBuilder'];
      case 'defaultValuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'defaultValueString':
        return ['FhirStringBuilder'];
      case 'defaultValueTime':
        return ['FhirTimeBuilder'];
      case 'defaultValueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'defaultValueUri':
        return ['FhirUriBuilder'];
      case 'defaultValueUrl':
        return ['FhirUrlBuilder'];
      case 'defaultValueUuid':
        return ['FhirUuidBuilder'];
      case 'defaultValueAddress':
        return ['AddressBuilder'];
      case 'defaultValueAge':
        return ['AgeBuilder'];
      case 'defaultValueAnnotation':
        return ['AnnotationBuilder'];
      case 'defaultValueAttachment':
        return ['AttachmentBuilder'];
      case 'defaultValueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'defaultValueCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'defaultValueCoding':
        return ['CodingBuilder'];
      case 'defaultValueContactPoint':
        return ['ContactPointBuilder'];
      case 'defaultValueCount':
        return ['CountBuilder'];
      case 'defaultValueDistance':
        return ['DistanceBuilder'];
      case 'defaultValueDuration':
        return ['FhirDurationBuilder'];
      case 'defaultValueHumanName':
        return ['HumanNameBuilder'];
      case 'defaultValueIdentifier':
        return ['IdentifierBuilder'];
      case 'defaultValueMoney':
        return ['MoneyBuilder'];
      case 'defaultValuePeriod':
        return ['PeriodBuilder'];
      case 'defaultValueQuantity':
        return ['QuantityBuilder'];
      case 'defaultValueRange':
        return ['RangeBuilder'];
      case 'defaultValueRatio':
        return ['RatioBuilder'];
      case 'defaultValueRatioRange':
        return ['RatioRangeBuilder'];
      case 'defaultValueReference':
        return ['ReferenceBuilder'];
      case 'defaultValueSampledData':
        return ['SampledDataBuilder'];
      case 'defaultValueSignature':
        return ['SignatureBuilder'];
      case 'defaultValueTiming':
        return ['TimingBuilder'];
      case 'defaultValueContactDetail':
        return ['ContactDetailBuilder'];
      case 'defaultValueContributor':
        return ['ContributorBuilder'];
      case 'defaultValueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'defaultValueExpression':
        return ['FhirExpressionBuilder'];
      case 'defaultValueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'defaultValueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'defaultValueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'defaultValueUsageContext':
        return ['UsageContextBuilder'];
      case 'defaultValueDosage':
        return ['DosageBuilder'];
      case 'meaningWhenMissing':
        return ['FhirMarkdownBuilder'];
      case 'orderMeaning':
        return ['FhirStringBuilder'];
      case 'fixed':
      case 'fixedX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder',
        ];
      case 'fixedBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'fixedBoolean':
        return ['FhirBooleanBuilder'];
      case 'fixedCanonical':
        return ['FhirCanonicalBuilder'];
      case 'fixedCode':
        return ['FhirCodeBuilder'];
      case 'fixedDate':
        return ['FhirDateBuilder'];
      case 'fixedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'fixedDecimal':
        return ['FhirDecimalBuilder'];
      case 'fixedId':
        return ['FhirIdBuilder'];
      case 'fixedInstant':
        return ['FhirInstantBuilder'];
      case 'fixedInteger':
        return ['FhirIntegerBuilder'];
      case 'fixedMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'fixedOid':
        return ['FhirOidBuilder'];
      case 'fixedPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'fixedString':
        return ['FhirStringBuilder'];
      case 'fixedTime':
        return ['FhirTimeBuilder'];
      case 'fixedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'fixedUri':
        return ['FhirUriBuilder'];
      case 'fixedUrl':
        return ['FhirUrlBuilder'];
      case 'fixedUuid':
        return ['FhirUuidBuilder'];
      case 'fixedAddress':
        return ['AddressBuilder'];
      case 'fixedAge':
        return ['AgeBuilder'];
      case 'fixedAnnotation':
        return ['AnnotationBuilder'];
      case 'fixedAttachment':
        return ['AttachmentBuilder'];
      case 'fixedCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'fixedCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'fixedCoding':
        return ['CodingBuilder'];
      case 'fixedContactPoint':
        return ['ContactPointBuilder'];
      case 'fixedCount':
        return ['CountBuilder'];
      case 'fixedDistance':
        return ['DistanceBuilder'];
      case 'fixedDuration':
        return ['FhirDurationBuilder'];
      case 'fixedHumanName':
        return ['HumanNameBuilder'];
      case 'fixedIdentifier':
        return ['IdentifierBuilder'];
      case 'fixedMoney':
        return ['MoneyBuilder'];
      case 'fixedPeriod':
        return ['PeriodBuilder'];
      case 'fixedQuantity':
        return ['QuantityBuilder'];
      case 'fixedRange':
        return ['RangeBuilder'];
      case 'fixedRatio':
        return ['RatioBuilder'];
      case 'fixedRatioRange':
        return ['RatioRangeBuilder'];
      case 'fixedReference':
        return ['ReferenceBuilder'];
      case 'fixedSampledData':
        return ['SampledDataBuilder'];
      case 'fixedSignature':
        return ['SignatureBuilder'];
      case 'fixedTiming':
        return ['TimingBuilder'];
      case 'fixedContactDetail':
        return ['ContactDetailBuilder'];
      case 'fixedContributor':
        return ['ContributorBuilder'];
      case 'fixedDataRequirement':
        return ['DataRequirementBuilder'];
      case 'fixedExpression':
        return ['FhirExpressionBuilder'];
      case 'fixedParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'fixedRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'fixedTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'fixedUsageContext':
        return ['UsageContextBuilder'];
      case 'fixedDosage':
        return ['DosageBuilder'];
      case 'pattern':
      case 'patternX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder',
        ];
      case 'patternBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'patternBoolean':
        return ['FhirBooleanBuilder'];
      case 'patternCanonical':
        return ['FhirCanonicalBuilder'];
      case 'patternCode':
        return ['FhirCodeBuilder'];
      case 'patternDate':
        return ['FhirDateBuilder'];
      case 'patternDateTime':
        return ['FhirDateTimeBuilder'];
      case 'patternDecimal':
        return ['FhirDecimalBuilder'];
      case 'patternId':
        return ['FhirIdBuilder'];
      case 'patternInstant':
        return ['FhirInstantBuilder'];
      case 'patternInteger':
        return ['FhirIntegerBuilder'];
      case 'patternMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'patternOid':
        return ['FhirOidBuilder'];
      case 'patternPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'patternString':
        return ['FhirStringBuilder'];
      case 'patternTime':
        return ['FhirTimeBuilder'];
      case 'patternUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'patternUri':
        return ['FhirUriBuilder'];
      case 'patternUrl':
        return ['FhirUrlBuilder'];
      case 'patternUuid':
        return ['FhirUuidBuilder'];
      case 'patternAddress':
        return ['AddressBuilder'];
      case 'patternAge':
        return ['AgeBuilder'];
      case 'patternAnnotation':
        return ['AnnotationBuilder'];
      case 'patternAttachment':
        return ['AttachmentBuilder'];
      case 'patternCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'patternCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'patternCoding':
        return ['CodingBuilder'];
      case 'patternContactPoint':
        return ['ContactPointBuilder'];
      case 'patternCount':
        return ['CountBuilder'];
      case 'patternDistance':
        return ['DistanceBuilder'];
      case 'patternDuration':
        return ['FhirDurationBuilder'];
      case 'patternHumanName':
        return ['HumanNameBuilder'];
      case 'patternIdentifier':
        return ['IdentifierBuilder'];
      case 'patternMoney':
        return ['MoneyBuilder'];
      case 'patternPeriod':
        return ['PeriodBuilder'];
      case 'patternQuantity':
        return ['QuantityBuilder'];
      case 'patternRange':
        return ['RangeBuilder'];
      case 'patternRatio':
        return ['RatioBuilder'];
      case 'patternRatioRange':
        return ['RatioRangeBuilder'];
      case 'patternReference':
        return ['ReferenceBuilder'];
      case 'patternSampledData':
        return ['SampledDataBuilder'];
      case 'patternSignature':
        return ['SignatureBuilder'];
      case 'patternTiming':
        return ['TimingBuilder'];
      case 'patternContactDetail':
        return ['ContactDetailBuilder'];
      case 'patternContributor':
        return ['ContributorBuilder'];
      case 'patternDataRequirement':
        return ['DataRequirementBuilder'];
      case 'patternExpression':
        return ['FhirExpressionBuilder'];
      case 'patternParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'patternRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'patternTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'patternUsageContext':
        return ['UsageContextBuilder'];
      case 'patternDosage':
        return ['DosageBuilder'];
      case 'example':
        return ['ElementDefinitionExampleBuilder'];
      case 'minValue':
      case 'minValueX':
        return [
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirInstantBuilder',
          'FhirTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIntegerBuilder',
          'FhirPositiveIntBuilder',
          'FhirUnsignedIntBuilder',
          'QuantityBuilder',
        ];
      case 'minValueDate':
        return ['FhirDateBuilder'];
      case 'minValueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'minValueInstant':
        return ['FhirInstantBuilder'];
      case 'minValueTime':
        return ['FhirTimeBuilder'];
      case 'minValueDecimal':
        return ['FhirDecimalBuilder'];
      case 'minValueInteger':
        return ['FhirIntegerBuilder'];
      case 'minValuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'minValueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'minValueQuantity':
        return ['QuantityBuilder'];
      case 'maxValue':
      case 'maxValueX':
        return [
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirInstantBuilder',
          'FhirTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIntegerBuilder',
          'FhirPositiveIntBuilder',
          'FhirUnsignedIntBuilder',
          'QuantityBuilder',
        ];
      case 'maxValueDate':
        return ['FhirDateBuilder'];
      case 'maxValueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'maxValueInstant':
        return ['FhirInstantBuilder'];
      case 'maxValueTime':
        return ['FhirTimeBuilder'];
      case 'maxValueDecimal':
        return ['FhirDecimalBuilder'];
      case 'maxValueInteger':
        return ['FhirIntegerBuilder'];
      case 'maxValuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'maxValueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'maxValueQuantity':
        return ['QuantityBuilder'];
      case 'maxLength':
        return ['FhirIntegerBuilder'];
      case 'condition':
        return ['FhirIdBuilder'];
      case 'constraint':
        return ['ElementDefinitionConstraintBuilder'];
      case 'mustSupport':
        return ['FhirBooleanBuilder'];
      case 'isModifier':
        return ['FhirBooleanBuilder'];
      case 'isModifierReason':
        return ['FhirStringBuilder'];
      case 'isSummary':
        return ['FhirBooleanBuilder'];
      case 'binding':
        return ['ElementDefinitionBindingBuilder'];
      case 'mapping':
        return ['ElementDefinitionMappingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'representation':
        {
          representation = <PropertyRepresentationBuilder>[];
          return;
        }
      case 'sliceName':
        {
          sliceName = FhirStringBuilder.empty();
          return;
        }
      case 'sliceIsConstraining':
        {
          sliceIsConstraining = FhirBooleanBuilder.empty();
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodingBuilder>[];
          return;
        }
      case 'slicing':
        {
          slicing = ElementDefinitionSlicingBuilder.empty();
          return;
        }
      case 'short':
        {
          short = FhirStringBuilder.empty();
          return;
        }
      case 'definition':
        {
          definition = FhirMarkdownBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
          return;
        }
      case 'requirements':
        {
          requirements = FhirMarkdownBuilder.empty();
          return;
        }
      case 'alias':
        {
          alias = <FhirStringBuilder>[];
          return;
        }
      case 'min':
        {
          min = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'max':
        {
          max = FhirStringBuilder.empty();
          return;
        }
      case 'base':
        {
          base = ElementDefinitionBaseBuilder.empty();
          return;
        }
      case 'contentReference':
        {
          contentReference = FhirUriBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <ElementDefinitionTypeBuilder>[];
          return;
        }
      case 'defaultValue':
      case 'defaultValueX':
      case 'defaultValueBase64Binary':
        {
          defaultValueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'defaultValueBoolean':
        {
          defaultValueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'defaultValueCanonical':
        {
          defaultValueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'defaultValueCode':
        {
          defaultValueX = FhirCodeBuilder.empty();
          return;
        }
      case 'defaultValueDate':
        {
          defaultValueX = FhirDateBuilder.empty();
          return;
        }
      case 'defaultValueDateTime':
        {
          defaultValueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'defaultValueDecimal':
        {
          defaultValueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'defaultValueId':
        {
          defaultValueX = FhirIdBuilder.empty();
          return;
        }
      case 'defaultValueInstant':
        {
          defaultValueX = FhirInstantBuilder.empty();
          return;
        }
      case 'defaultValueInteger':
        {
          defaultValueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'defaultValueMarkdown':
        {
          defaultValueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'defaultValueOid':
        {
          defaultValueX = FhirOidBuilder.empty();
          return;
        }
      case 'defaultValuePositiveInt':
        {
          defaultValueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'defaultValueString':
        {
          defaultValueX = FhirStringBuilder.empty();
          return;
        }
      case 'defaultValueTime':
        {
          defaultValueX = FhirTimeBuilder.empty();
          return;
        }
      case 'defaultValueUnsignedInt':
        {
          defaultValueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'defaultValueUri':
        {
          defaultValueX = FhirUriBuilder.empty();
          return;
        }
      case 'defaultValueUrl':
        {
          defaultValueX = FhirUrlBuilder.empty();
          return;
        }
      case 'defaultValueUuid':
        {
          defaultValueX = FhirUuidBuilder.empty();
          return;
        }
      case 'defaultValueAddress':
        {
          defaultValueX = AddressBuilder.empty();
          return;
        }
      case 'defaultValueAge':
        {
          defaultValueX = AgeBuilder.empty();
          return;
        }
      case 'defaultValueAnnotation':
        {
          defaultValueX = AnnotationBuilder.empty();
          return;
        }
      case 'defaultValueAttachment':
        {
          defaultValueX = AttachmentBuilder.empty();
          return;
        }
      case 'defaultValueCodeableConcept':
        {
          defaultValueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'defaultValueCodeableReference':
        {
          defaultValueX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'defaultValueCoding':
        {
          defaultValueX = CodingBuilder.empty();
          return;
        }
      case 'defaultValueContactPoint':
        {
          defaultValueX = ContactPointBuilder.empty();
          return;
        }
      case 'defaultValueCount':
        {
          defaultValueX = CountBuilder.empty();
          return;
        }
      case 'defaultValueDistance':
        {
          defaultValueX = DistanceBuilder.empty();
          return;
        }
      case 'defaultValueDuration':
        {
          defaultValueX = FhirDurationBuilder.empty();
          return;
        }
      case 'defaultValueHumanName':
        {
          defaultValueX = HumanNameBuilder.empty();
          return;
        }
      case 'defaultValueIdentifier':
        {
          defaultValueX = IdentifierBuilder.empty();
          return;
        }
      case 'defaultValueMoney':
        {
          defaultValueX = MoneyBuilder.empty();
          return;
        }
      case 'defaultValuePeriod':
        {
          defaultValueX = PeriodBuilder.empty();
          return;
        }
      case 'defaultValueQuantity':
        {
          defaultValueX = QuantityBuilder.empty();
          return;
        }
      case 'defaultValueRange':
        {
          defaultValueX = RangeBuilder.empty();
          return;
        }
      case 'defaultValueRatio':
        {
          defaultValueX = RatioBuilder.empty();
          return;
        }
      case 'defaultValueRatioRange':
        {
          defaultValueX = RatioRangeBuilder.empty();
          return;
        }
      case 'defaultValueReference':
        {
          defaultValueX = ReferenceBuilder.empty();
          return;
        }
      case 'defaultValueSampledData':
        {
          defaultValueX = SampledDataBuilder.empty();
          return;
        }
      case 'defaultValueSignature':
        {
          defaultValueX = SignatureBuilder.empty();
          return;
        }
      case 'defaultValueTiming':
        {
          defaultValueX = TimingBuilder.empty();
          return;
        }
      case 'defaultValueContactDetail':
        {
          defaultValueX = ContactDetailBuilder.empty();
          return;
        }
      case 'defaultValueContributor':
        {
          defaultValueX = ContributorBuilder.empty();
          return;
        }
      case 'defaultValueDataRequirement':
        {
          defaultValueX = DataRequirementBuilder.empty();
          return;
        }
      case 'defaultValueExpression':
        {
          defaultValueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'defaultValueParameterDefinition':
        {
          defaultValueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'defaultValueRelatedArtifact':
        {
          defaultValueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'defaultValueTriggerDefinition':
        {
          defaultValueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'defaultValueUsageContext':
        {
          defaultValueX = UsageContextBuilder.empty();
          return;
        }
      case 'defaultValueDosage':
        {
          defaultValueX = DosageBuilder.empty();
          return;
        }
      case 'meaningWhenMissing':
        {
          meaningWhenMissing = FhirMarkdownBuilder.empty();
          return;
        }
      case 'orderMeaning':
        {
          orderMeaning = FhirStringBuilder.empty();
          return;
        }
      case 'fixed':
      case 'fixedX':
      case 'fixedBase64Binary':
        {
          fixedX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'fixedBoolean':
        {
          fixedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'fixedCanonical':
        {
          fixedX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'fixedCode':
        {
          fixedX = FhirCodeBuilder.empty();
          return;
        }
      case 'fixedDate':
        {
          fixedX = FhirDateBuilder.empty();
          return;
        }
      case 'fixedDateTime':
        {
          fixedX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'fixedDecimal':
        {
          fixedX = FhirDecimalBuilder.empty();
          return;
        }
      case 'fixedId':
        {
          fixedX = FhirIdBuilder.empty();
          return;
        }
      case 'fixedInstant':
        {
          fixedX = FhirInstantBuilder.empty();
          return;
        }
      case 'fixedInteger':
        {
          fixedX = FhirIntegerBuilder.empty();
          return;
        }
      case 'fixedMarkdown':
        {
          fixedX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'fixedOid':
        {
          fixedX = FhirOidBuilder.empty();
          return;
        }
      case 'fixedPositiveInt':
        {
          fixedX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'fixedString':
        {
          fixedX = FhirStringBuilder.empty();
          return;
        }
      case 'fixedTime':
        {
          fixedX = FhirTimeBuilder.empty();
          return;
        }
      case 'fixedUnsignedInt':
        {
          fixedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'fixedUri':
        {
          fixedX = FhirUriBuilder.empty();
          return;
        }
      case 'fixedUrl':
        {
          fixedX = FhirUrlBuilder.empty();
          return;
        }
      case 'fixedUuid':
        {
          fixedX = FhirUuidBuilder.empty();
          return;
        }
      case 'fixedAddress':
        {
          fixedX = AddressBuilder.empty();
          return;
        }
      case 'fixedAge':
        {
          fixedX = AgeBuilder.empty();
          return;
        }
      case 'fixedAnnotation':
        {
          fixedX = AnnotationBuilder.empty();
          return;
        }
      case 'fixedAttachment':
        {
          fixedX = AttachmentBuilder.empty();
          return;
        }
      case 'fixedCodeableConcept':
        {
          fixedX = CodeableConceptBuilder.empty();
          return;
        }
      case 'fixedCodeableReference':
        {
          fixedX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'fixedCoding':
        {
          fixedX = CodingBuilder.empty();
          return;
        }
      case 'fixedContactPoint':
        {
          fixedX = ContactPointBuilder.empty();
          return;
        }
      case 'fixedCount':
        {
          fixedX = CountBuilder.empty();
          return;
        }
      case 'fixedDistance':
        {
          fixedX = DistanceBuilder.empty();
          return;
        }
      case 'fixedDuration':
        {
          fixedX = FhirDurationBuilder.empty();
          return;
        }
      case 'fixedHumanName':
        {
          fixedX = HumanNameBuilder.empty();
          return;
        }
      case 'fixedIdentifier':
        {
          fixedX = IdentifierBuilder.empty();
          return;
        }
      case 'fixedMoney':
        {
          fixedX = MoneyBuilder.empty();
          return;
        }
      case 'fixedPeriod':
        {
          fixedX = PeriodBuilder.empty();
          return;
        }
      case 'fixedQuantity':
        {
          fixedX = QuantityBuilder.empty();
          return;
        }
      case 'fixedRange':
        {
          fixedX = RangeBuilder.empty();
          return;
        }
      case 'fixedRatio':
        {
          fixedX = RatioBuilder.empty();
          return;
        }
      case 'fixedRatioRange':
        {
          fixedX = RatioRangeBuilder.empty();
          return;
        }
      case 'fixedReference':
        {
          fixedX = ReferenceBuilder.empty();
          return;
        }
      case 'fixedSampledData':
        {
          fixedX = SampledDataBuilder.empty();
          return;
        }
      case 'fixedSignature':
        {
          fixedX = SignatureBuilder.empty();
          return;
        }
      case 'fixedTiming':
        {
          fixedX = TimingBuilder.empty();
          return;
        }
      case 'fixedContactDetail':
        {
          fixedX = ContactDetailBuilder.empty();
          return;
        }
      case 'fixedContributor':
        {
          fixedX = ContributorBuilder.empty();
          return;
        }
      case 'fixedDataRequirement':
        {
          fixedX = DataRequirementBuilder.empty();
          return;
        }
      case 'fixedExpression':
        {
          fixedX = FhirExpressionBuilder.empty();
          return;
        }
      case 'fixedParameterDefinition':
        {
          fixedX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'fixedRelatedArtifact':
        {
          fixedX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'fixedTriggerDefinition':
        {
          fixedX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'fixedUsageContext':
        {
          fixedX = UsageContextBuilder.empty();
          return;
        }
      case 'fixedDosage':
        {
          fixedX = DosageBuilder.empty();
          return;
        }
      case 'pattern':
      case 'patternX':
      case 'patternBase64Binary':
        {
          patternX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'patternBoolean':
        {
          patternX = FhirBooleanBuilder.empty();
          return;
        }
      case 'patternCanonical':
        {
          patternX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'patternCode':
        {
          patternX = FhirCodeBuilder.empty();
          return;
        }
      case 'patternDate':
        {
          patternX = FhirDateBuilder.empty();
          return;
        }
      case 'patternDateTime':
        {
          patternX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'patternDecimal':
        {
          patternX = FhirDecimalBuilder.empty();
          return;
        }
      case 'patternId':
        {
          patternX = FhirIdBuilder.empty();
          return;
        }
      case 'patternInstant':
        {
          patternX = FhirInstantBuilder.empty();
          return;
        }
      case 'patternInteger':
        {
          patternX = FhirIntegerBuilder.empty();
          return;
        }
      case 'patternMarkdown':
        {
          patternX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'patternOid':
        {
          patternX = FhirOidBuilder.empty();
          return;
        }
      case 'patternPositiveInt':
        {
          patternX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'patternString':
        {
          patternX = FhirStringBuilder.empty();
          return;
        }
      case 'patternTime':
        {
          patternX = FhirTimeBuilder.empty();
          return;
        }
      case 'patternUnsignedInt':
        {
          patternX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'patternUri':
        {
          patternX = FhirUriBuilder.empty();
          return;
        }
      case 'patternUrl':
        {
          patternX = FhirUrlBuilder.empty();
          return;
        }
      case 'patternUuid':
        {
          patternX = FhirUuidBuilder.empty();
          return;
        }
      case 'patternAddress':
        {
          patternX = AddressBuilder.empty();
          return;
        }
      case 'patternAge':
        {
          patternX = AgeBuilder.empty();
          return;
        }
      case 'patternAnnotation':
        {
          patternX = AnnotationBuilder.empty();
          return;
        }
      case 'patternAttachment':
        {
          patternX = AttachmentBuilder.empty();
          return;
        }
      case 'patternCodeableConcept':
        {
          patternX = CodeableConceptBuilder.empty();
          return;
        }
      case 'patternCodeableReference':
        {
          patternX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'patternCoding':
        {
          patternX = CodingBuilder.empty();
          return;
        }
      case 'patternContactPoint':
        {
          patternX = ContactPointBuilder.empty();
          return;
        }
      case 'patternCount':
        {
          patternX = CountBuilder.empty();
          return;
        }
      case 'patternDistance':
        {
          patternX = DistanceBuilder.empty();
          return;
        }
      case 'patternDuration':
        {
          patternX = FhirDurationBuilder.empty();
          return;
        }
      case 'patternHumanName':
        {
          patternX = HumanNameBuilder.empty();
          return;
        }
      case 'patternIdentifier':
        {
          patternX = IdentifierBuilder.empty();
          return;
        }
      case 'patternMoney':
        {
          patternX = MoneyBuilder.empty();
          return;
        }
      case 'patternPeriod':
        {
          patternX = PeriodBuilder.empty();
          return;
        }
      case 'patternQuantity':
        {
          patternX = QuantityBuilder.empty();
          return;
        }
      case 'patternRange':
        {
          patternX = RangeBuilder.empty();
          return;
        }
      case 'patternRatio':
        {
          patternX = RatioBuilder.empty();
          return;
        }
      case 'patternRatioRange':
        {
          patternX = RatioRangeBuilder.empty();
          return;
        }
      case 'patternReference':
        {
          patternX = ReferenceBuilder.empty();
          return;
        }
      case 'patternSampledData':
        {
          patternX = SampledDataBuilder.empty();
          return;
        }
      case 'patternSignature':
        {
          patternX = SignatureBuilder.empty();
          return;
        }
      case 'patternTiming':
        {
          patternX = TimingBuilder.empty();
          return;
        }
      case 'patternContactDetail':
        {
          patternX = ContactDetailBuilder.empty();
          return;
        }
      case 'patternContributor':
        {
          patternX = ContributorBuilder.empty();
          return;
        }
      case 'patternDataRequirement':
        {
          patternX = DataRequirementBuilder.empty();
          return;
        }
      case 'patternExpression':
        {
          patternX = FhirExpressionBuilder.empty();
          return;
        }
      case 'patternParameterDefinition':
        {
          patternX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'patternRelatedArtifact':
        {
          patternX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'patternTriggerDefinition':
        {
          patternX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'patternUsageContext':
        {
          patternX = UsageContextBuilder.empty();
          return;
        }
      case 'patternDosage':
        {
          patternX = DosageBuilder.empty();
          return;
        }
      case 'example':
        {
          example = <ElementDefinitionExampleBuilder>[];
          return;
        }
      case 'minValue':
      case 'minValueX':
      case 'minValueDate':
        {
          minValueX = FhirDateBuilder.empty();
          return;
        }
      case 'minValueDateTime':
        {
          minValueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'minValueInstant':
        {
          minValueX = FhirInstantBuilder.empty();
          return;
        }
      case 'minValueTime':
        {
          minValueX = FhirTimeBuilder.empty();
          return;
        }
      case 'minValueDecimal':
        {
          minValueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'minValueInteger':
        {
          minValueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'minValuePositiveInt':
        {
          minValueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'minValueUnsignedInt':
        {
          minValueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'minValueQuantity':
        {
          minValueX = QuantityBuilder.empty();
          return;
        }
      case 'maxValue':
      case 'maxValueX':
      case 'maxValueDate':
        {
          maxValueX = FhirDateBuilder.empty();
          return;
        }
      case 'maxValueDateTime':
        {
          maxValueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'maxValueInstant':
        {
          maxValueX = FhirInstantBuilder.empty();
          return;
        }
      case 'maxValueTime':
        {
          maxValueX = FhirTimeBuilder.empty();
          return;
        }
      case 'maxValueDecimal':
        {
          maxValueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'maxValueInteger':
        {
          maxValueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'maxValuePositiveInt':
        {
          maxValueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'maxValueUnsignedInt':
        {
          maxValueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'maxValueQuantity':
        {
          maxValueX = QuantityBuilder.empty();
          return;
        }
      case 'maxLength':
        {
          maxLength = FhirIntegerBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = <FhirIdBuilder>[];
          return;
        }
      case 'constraint':
        {
          constraint = <ElementDefinitionConstraintBuilder>[];
          return;
        }
      case 'mustSupport':
        {
          mustSupport = FhirBooleanBuilder.empty();
          return;
        }
      case 'isModifier':
        {
          isModifier = FhirBooleanBuilder.empty();
          return;
        }
      case 'isModifierReason':
        {
          isModifierReason = FhirStringBuilder.empty();
          return;
        }
      case 'isSummary':
        {
          isSummary = FhirBooleanBuilder.empty();
          return;
        }
      case 'binding':
        {
          binding = ElementDefinitionBindingBuilder.empty();
          return;
        }
      case 'mapping':
        {
          mapping = <ElementDefinitionMappingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? path,
    List<PropertyRepresentationBuilder>? representation,
    FhirStringBuilder? sliceName,
    FhirBooleanBuilder? sliceIsConstraining,
    FhirStringBuilder? label,
    List<CodingBuilder>? code,
    ElementDefinitionSlicingBuilder? slicing,
    FhirStringBuilder? short,
    FhirMarkdownBuilder? definition,
    FhirMarkdownBuilder? comment,
    FhirMarkdownBuilder? requirements,
    List<FhirStringBuilder>? alias,
    FhirUnsignedIntBuilder? min,
    FhirStringBuilder? max,
    ElementDefinitionBaseBuilder? base,
    FhirUriBuilder? contentReference,
    List<ElementDefinitionTypeBuilder>? type,
    DefaultValueXElementDefinitionBuilder? defaultValueX,
    FhirMarkdownBuilder? meaningWhenMissing,
    FhirStringBuilder? orderMeaning,
    FixedXElementDefinitionBuilder? fixedX,
    PatternXElementDefinitionBuilder? patternX,
    List<ElementDefinitionExampleBuilder>? example,
    MinValueXElementDefinitionBuilder? minValueX,
    MaxValueXElementDefinitionBuilder? maxValueX,
    FhirIntegerBuilder? maxLength,
    List<FhirIdBuilder>? condition,
    List<ElementDefinitionConstraintBuilder>? constraint,
    FhirBooleanBuilder? mustSupport,
    FhirBooleanBuilder? isModifier,
    FhirStringBuilder? isModifierReason,
    FhirBooleanBuilder? isSummary,
    ElementDefinitionBindingBuilder? binding,
    List<ElementDefinitionMappingBuilder>? mapping,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      representation: representation ?? this.representation,
      sliceName: sliceName ?? this.sliceName,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      label: label ?? this.label,
      code: code ?? this.code,
      slicing: slicing ?? this.slicing,
      short: short ?? this.short,
      definition: definition ?? this.definition,
      comment: comment ?? this.comment,
      requirements: requirements ?? this.requirements,
      alias: alias ?? this.alias,
      min: min ?? this.min,
      max: max ?? this.max,
      base: base ?? this.base,
      contentReference: contentReference ?? this.contentReference,
      type: type ?? this.type,
      defaultValueX: defaultValueX ?? this.defaultValueX,
      meaningWhenMissing: meaningWhenMissing ?? this.meaningWhenMissing,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      fixedX: fixedX ?? this.fixedX,
      patternX: patternX ?? this.patternX,
      example: example ?? this.example,
      minValueX: minValueX ?? this.minValueX,
      maxValueX: maxValueX ?? this.maxValueX,
      maxLength: maxLength ?? this.maxLength,
      condition: condition ?? this.condition,
      constraint: constraint ?? this.constraint,
      mustSupport: mustSupport ?? this.mustSupport,
      isModifier: isModifier ?? this.isModifier,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isSummary: isSummary ?? this.isSummary,
      binding: binding ?? this.binding,
      mapping: mapping ?? this.mapping,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<PropertyRepresentationBuilder>(
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
    if (!listEquals<CodingBuilder>(
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
    if (!listEquals<FhirStringBuilder>(
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
    if (!listEquals<ElementDefinitionTypeBuilder>(
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
    if (!listEquals<ElementDefinitionExampleBuilder>(
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
    if (!listEquals<FhirIdBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionConstraintBuilder>(
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
    if (!listEquals<ElementDefinitionMappingBuilder>(
      mapping,
      o.mapping,
    )) {
      return false;
    }
    return true;
  }
}

/// [ElementDefinitionSlicingBuilder]
/// Indicates that the element is sliced into a set of alternative
/// definitions (i.e. in a structure definition, there are multiple
/// different constraints on a single element in the base resource).
/// Slicing can be used in any resource that has cardinality ..* on the
/// base resource, or any resource with a choice of types. The set of
/// slices is any elements that come after this in the element sequence
/// that have the same path, until a shorter path occurs (the shorter path
/// terminates the set).
class ElementDefinitionSlicingBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionSlicingBuilder]

  ElementDefinitionSlicingBuilder({
    super.id,
    super.extension_,
    this.discriminator,
    this.description,
    this.ordered,
    this.rules,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionSlicingBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionSlicingBuilder.empty() =>
      ElementDefinitionSlicingBuilder(
        rules: SlicingRulesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionSlicing';
    return ElementDefinitionSlicingBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map<ElementDefinitionDiscriminatorBuilder>(
            (v) => ElementDefinitionDiscriminatorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.discriminator',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      ordered: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'ordered',
        FhirBooleanBuilder.fromJson,
        '$objectPath.ordered',
      ),
      rules: JsonParser.parsePrimitive<SlicingRulesBuilder>(
        json,
        'rules',
        SlicingRulesBuilder.fromJson,
        '$objectPath.rules',
      ),
    );
  }

  /// Deserialize [ElementDefinitionSlicingBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionSlicingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionSlicingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionSlicingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionSlicingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionSlicingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionSlicingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionSlicingBuilder.fromJson(json);
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
  List<ElementDefinitionDiscriminatorBuilder>? discriminator;

  /// [description]
  /// A human-readable text description of how the slicing works. If there is
  /// no discriminator, this is required to be present to provide whatever
  /// information is possible about how the slices can be differentiated.
  FhirStringBuilder? description;

  /// [ordered]
  /// If the matching elements have to occur in the same order as defined in
  /// the profile.
  FhirBooleanBuilder? ordered;

  /// [rules]
  /// Whether additional slices are allowed or not. When the slices are
  /// ordered, profile authors can also say that additional slices are only
  /// allowed at the end.
  SlicingRulesBuilder? rules;

  /// Converts a [ElementDefinitionSlicingBuilder]
  /// to [ElementDefinitionSlicing]
  @override
  ElementDefinitionSlicing build() =>
      ElementDefinitionSlicing.fromJson(toJson());

  /// Converts a [ElementDefinitionSlicingBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (rules != null) {
          fields.add(rules!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'discriminator':
        {
          if (child is List<ElementDefinitionDiscriminatorBuilder>) {
            // Replace or create new list
            discriminator = child;
            return;
          } else if (child is ElementDefinitionDiscriminatorBuilder) {
            // Add single element to existing list or create new list
            discriminator = [
              ...(discriminator ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ordered':
        {
          if (child is FhirBooleanBuilder) {
            ordered = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                ordered = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rules':
        {
          if (child is SlicingRulesBuilder) {
            rules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SlicingRulesBuilder(stringValue);
                rules = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'discriminator':
        return ['ElementDefinitionDiscriminatorBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'ordered':
        return ['FhirBooleanBuilder'];
      case 'rules':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionSlicingBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'discriminator':
        {
          discriminator = <ElementDefinitionDiscriminatorBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'ordered':
        {
          ordered = FhirBooleanBuilder.empty();
          return;
        }
      case 'rules':
        {
          rules = SlicingRulesBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionSlicingBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionSlicingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<ElementDefinitionDiscriminatorBuilder>? discriminator,
    FhirStringBuilder? description,
    FhirBooleanBuilder? ordered,
    SlicingRulesBuilder? rules,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionSlicingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      discriminator: discriminator ?? this.discriminator,
      description: description ?? this.description,
      ordered: ordered ?? this.ordered,
      rules: rules ?? this.rules,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionSlicingBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<ElementDefinitionDiscriminatorBuilder>(
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

/// [ElementDefinitionDiscriminatorBuilder]
/// Designates which child elements are used to discriminate between the
/// slices when processing an instance. If one or more discriminators are
/// provided, the value of the child elements in the instance data SHALL
/// completely distinguish which slice the element in the resource matches
/// based on the allowed values for those elements in each of the slices.
class ElementDefinitionDiscriminatorBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionDiscriminatorBuilder]

  ElementDefinitionDiscriminatorBuilder({
    super.id,
    super.extension_,
    this.type,
    this.path,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionDiscriminatorBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionDiscriminatorBuilder.empty() =>
      ElementDefinitionDiscriminatorBuilder(
        type: DiscriminatorTypeBuilder.values.first,
        path: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionDiscriminator';
    return ElementDefinitionDiscriminatorBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<DiscriminatorTypeBuilder>(
        json,
        'type',
        DiscriminatorTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
    );
  }

  /// Deserialize [ElementDefinitionDiscriminatorBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionDiscriminatorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionDiscriminatorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionDiscriminatorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionDiscriminatorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionDiscriminatorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionDiscriminatorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionDiscriminatorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionDiscriminator';

  /// [type]
  /// How the element value is interpreted when discrimination is evaluated.
  DiscriminatorTypeBuilder? type;

  /// [path]
  /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element
  /// on which discrimination is based.
  FhirStringBuilder? path;

  /// Converts a [ElementDefinitionDiscriminatorBuilder]
  /// to [ElementDefinitionDiscriminator]
  @override
  ElementDefinitionDiscriminator build() =>
      ElementDefinitionDiscriminator.fromJson(toJson());

  /// Converts a [ElementDefinitionDiscriminatorBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is DiscriminatorTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DiscriminatorTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionDiscriminatorBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = DiscriminatorTypeBuilder.empty();
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionDiscriminatorBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionDiscriminatorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    DiscriminatorTypeBuilder? type,
    FhirStringBuilder? path,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionDiscriminatorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      path: path ?? this.path,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionDiscriminatorBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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

/// [ElementDefinitionBaseBuilder]
/// Information about the base definition of the element, provided to make
/// it unnecessary for tools to trace the deviation of the element through
/// the derived and related profiles. When the element definition is not
/// the original definition of an element - i.g. either in a constraint on
/// another type, or for elements from a super type in a snap shot - then
/// the information in provided in the element definition may be different
/// to the base definition. On the original definition of the element, it
/// will be same.
class ElementDefinitionBaseBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionBaseBuilder]

  ElementDefinitionBaseBuilder({
    super.id,
    super.extension_,
    this.path,
    this.min,
    this.max,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionBaseBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionBaseBuilder.empty() => ElementDefinitionBaseBuilder(
        path: FhirStringBuilder.empty(),
        min: FhirUnsignedIntBuilder.empty(),
        max: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBaseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionBase';
    return ElementDefinitionBaseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'min',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'max',
        FhirStringBuilder.fromJson,
        '$objectPath.max',
      ),
    );
  }

  /// Deserialize [ElementDefinitionBaseBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBaseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBaseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBaseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBaseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBaseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBaseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionBaseBuilder.fromJson(json);
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
  FhirStringBuilder? path;

  /// [min]
  /// Minimum cardinality of the base element identified by the path.
  FhirUnsignedIntBuilder? min;

  /// [max]
  /// Maximum cardinality of the base element identified by the path.
  FhirStringBuilder? max;

  /// Converts a [ElementDefinitionBaseBuilder]
  /// to [ElementDefinitionBase]
  @override
  ElementDefinitionBase build() => ElementDefinitionBase.fromJson(toJson());

  /// Converts a [ElementDefinitionBaseBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (path != null) {
          fields.add(path!);
        }
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'min':
        {
          if (child is FhirUnsignedIntBuilder) {
            min = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  min = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'max':
        {
          if (child is FhirStringBuilder) {
            max = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                max = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'min':
        return ['FhirUnsignedIntBuilder'];
      case 'max':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionBaseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'min':
        {
          min = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'max':
        {
          max = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionBaseBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionBaseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? path,
    FhirUnsignedIntBuilder? min,
    FhirStringBuilder? max,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionBaseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      min: min ?? this.min,
      max: max ?? this.max,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionBaseBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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

/// [ElementDefinitionTypeBuilder]
/// The data type or resource that the value of this element is permitted
/// to be.
class ElementDefinitionTypeBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionTypeBuilder]

  ElementDefinitionTypeBuilder({
    super.id,
    super.extension_,
    this.code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.versioning,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionTypeBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionTypeBuilder.empty() => ElementDefinitionTypeBuilder(
        code: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionType';
    return ElementDefinitionTypeBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'code',
        FhirUriBuilder.fromJson,
        '$objectPath.code',
      ),
      profile: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'profile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.profile',
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'targetProfile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.targetProfile',
      ),
      aggregation: JsonParser.parsePrimitiveList<AggregationModeBuilder>(
        json,
        'aggregation',
        AggregationModeBuilder.fromJson,
        '$objectPath.aggregation',
      ),
      versioning: JsonParser.parsePrimitive<ReferenceVersionRulesBuilder>(
        json,
        'versioning',
        ReferenceVersionRulesBuilder.fromJson,
        '$objectPath.versioning',
      ),
    );
  }

  /// Deserialize [ElementDefinitionTypeBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionTypeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionTypeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionTypeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionTypeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionTypeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionTypeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionTypeBuilder.fromJson(json);
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
  FhirUriBuilder? code;

  /// [profile]
  /// Identifies a profile structure or implementation Guide that applies to
  /// the datatype this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the type SHALL conform to at
  /// least one profile defined in the implementation guide.
  List<FhirCanonicalBuilder>? profile;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  List<FhirCanonicalBuilder>? targetProfile;

  /// [aggregation]
  /// If the type is a reference to another resource, how the resource is or
  /// can be aggregated - is it a contained resource, or a reference, and if
  /// the context is a bundle, is it included in the bundle.
  List<AggregationModeBuilder>? aggregation;

  /// [versioning]
  /// Whether this reference needs to be version specific or version
  /// independent, or whether either can be used.
  ReferenceVersionRulesBuilder? versioning;

  /// Converts a [ElementDefinitionTypeBuilder]
  /// to [ElementDefinitionType]
  @override
  ElementDefinitionType build() => ElementDefinitionType.fromJson(toJson());

  /// Converts a [ElementDefinitionTypeBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (code != null) {
          fields.add(code!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is FhirUriBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            profile = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            profile = [
              ...(profile ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              profile = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                profile = [
                  ...(profile ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetProfile':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            targetProfile = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            targetProfile = [
              ...(targetProfile ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              targetProfile = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                targetProfile = [
                  ...(targetProfile ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'aggregation':
        {
          if (child is List<AggregationModeBuilder>) {
            // Replace or create new list
            aggregation = child;
            return;
          } else if (child is AggregationModeBuilder) {
            // Add single element to existing list or create new list
            aggregation = [
              ...(aggregation ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <AggregationModeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = AggregationModeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              aggregation = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AggregationModeBuilder(stringValue);
                aggregation = [
                  ...(aggregation ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versioning':
        {
          if (child is ReferenceVersionRulesBuilder) {
            versioning = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ReferenceVersionRulesBuilder(stringValue);
                versioning = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['FhirUriBuilder'];
      case 'profile':
        return ['FhirCanonicalBuilder'];
      case 'targetProfile':
        return ['FhirCanonicalBuilder'];
      case 'aggregation':
        return ['FhirCodeEnumBuilder'];
      case 'versioning':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionTypeBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'code':
        {
          code = FhirUriBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = <FhirCanonicalBuilder>[];
          return;
        }
      case 'targetProfile':
        {
          targetProfile = <FhirCanonicalBuilder>[];
          return;
        }
      case 'aggregation':
        {
          aggregation = <AggregationModeBuilder>[];
          return;
        }
      case 'versioning':
        {
          versioning = ReferenceVersionRulesBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionTypeBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionTypeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirUriBuilder? code,
    List<FhirCanonicalBuilder>? profile,
    List<FhirCanonicalBuilder>? targetProfile,
    List<AggregationModeBuilder>? aggregation,
    ReferenceVersionRulesBuilder? versioning,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionTypeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      targetProfile: targetProfile ?? this.targetProfile,
      aggregation: aggregation ?? this.aggregation,
      versioning: versioning ?? this.versioning,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionTypeBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<FhirCanonicalBuilder>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      targetProfile,
      o.targetProfile,
    )) {
      return false;
    }
    if (!listEquals<AggregationModeBuilder>(
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

/// [ElementDefinitionExampleBuilder]
/// A sample value for this element demonstrating the type of information
/// that would typically be found in the element.
class ElementDefinitionExampleBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionExampleBuilder]

  ElementDefinitionExampleBuilder({
    super.id,
    super.extension_,
    this.label,
    this.valueX,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionExampleBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionExampleBuilder.empty() =>
      ElementDefinitionExampleBuilder(
        label: FhirStringBuilder.empty(),
        valueX: FhirBase64BinaryBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExampleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionExample';
    return ElementDefinitionExampleBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXElementDefinitionExampleBuilder>(
        json,
        {
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueCanonical': FhirCanonicalBuilder.fromJson,
          'valueCode': FhirCodeBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueId': FhirIdBuilder.fromJson,
          'valueInstant': FhirInstantBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueMarkdown': FhirMarkdownBuilder.fromJson,
          'valueOid': FhirOidBuilder.fromJson,
          'valuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueUrl': FhirUrlBuilder.fromJson,
          'valueUuid': FhirUuidBuilder.fromJson,
          'valueAddress': AddressBuilder.fromJson,
          'valueAge': AgeBuilder.fromJson,
          'valueAnnotation': AnnotationBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueCodeableReference': CodeableReferenceBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueContactPoint': ContactPointBuilder.fromJson,
          'valueCount': CountBuilder.fromJson,
          'valueDistance': DistanceBuilder.fromJson,
          'valueDuration': FhirDurationBuilder.fromJson,
          'valueHumanName': HumanNameBuilder.fromJson,
          'valueIdentifier': IdentifierBuilder.fromJson,
          'valueMoney': MoneyBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueRatioRange': RatioRangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueSignature': SignatureBuilder.fromJson,
          'valueTiming': TimingBuilder.fromJson,
          'valueContactDetail': ContactDetailBuilder.fromJson,
          'valueContributor': ContributorBuilder.fromJson,
          'valueDataRequirement': DataRequirementBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
          'valueParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'valueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'valueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'valueUsageContext': UsageContextBuilder.fromJson,
          'valueDosage': DosageBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ElementDefinitionExampleBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionExampleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionExampleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionExampleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionExampleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionExampleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionExampleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionExampleBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionExample';

  /// [label]
  /// Describes the purpose of this example amoung the set of examples.
  FhirStringBuilder? label;

  /// [valueX]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  ValueXElementDefinitionExampleBuilder? valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get valueCanonical =>
      valueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueId] as a FhirIdBuilder
  FhirIdBuilder? get valueId => valueX?.isAs<FhirIdBuilder>();

  /// Getter for [valueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get valueInstant => valueX?.isAs<FhirInstantBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get valueMarkdown => valueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [valueOid] as a FhirOidBuilder
  FhirOidBuilder? get valueOid => valueX?.isAs<FhirOidBuilder>();

  /// Getter for [valuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get valuePositiveInt =>
      valueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get valueUnsignedInt =>
      valueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get valueUrl => valueX?.isAs<FhirUrlBuilder>();

  /// Getter for [valueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get valueUuid => valueX?.isAs<FhirUuidBuilder>();

  /// Getter for [valueAddress] as a AddressBuilder
  AddressBuilder? get valueAddress => valueX?.isAs<AddressBuilder>();

  /// Getter for [valueAge] as a AgeBuilder
  AgeBuilder? get valueAge => valueX?.isAs<AgeBuilder>();

  /// Getter for [valueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get valueAnnotation => valueX?.isAs<AnnotationBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get valueCodeableReference =>
      valueX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get valueContactPoint =>
      valueX?.isAs<ContactPointBuilder>();

  /// Getter for [valueCount] as a CountBuilder
  CountBuilder? get valueCount => valueX?.isAs<CountBuilder>();

  /// Getter for [valueDistance] as a DistanceBuilder
  DistanceBuilder? get valueDistance => valueX?.isAs<DistanceBuilder>();

  /// Getter for [valueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get valueDuration => valueX?.isAs<FhirDurationBuilder>();

  /// Getter for [valueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get valueHumanName => valueX?.isAs<HumanNameBuilder>();

  /// Getter for [valueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get valueIdentifier => valueX?.isAs<IdentifierBuilder>();

  /// Getter for [valueMoney] as a MoneyBuilder
  MoneyBuilder? get valueMoney => valueX?.isAs<MoneyBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get valueRatioRange => valueX?.isAs<RatioRangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueSignature] as a SignatureBuilder
  SignatureBuilder? get valueSignature => valueX?.isAs<SignatureBuilder>();

  /// Getter for [valueTiming] as a TimingBuilder
  TimingBuilder? get valueTiming => valueX?.isAs<TimingBuilder>();

  /// Getter for [valueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get valueContactDetail =>
      valueX?.isAs<ContactDetailBuilder>();

  /// Getter for [valueContributor] as a ContributorBuilder
  ContributorBuilder? get valueContributor =>
      valueX?.isAs<ContributorBuilder>();

  /// Getter for [valueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get valueDataRequirement =>
      valueX?.isAs<DataRequirementBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get valueParameterDefinition =>
      valueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get valueRelatedArtifact =>
      valueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get valueTriggerDefinition =>
      valueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [valueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get valueUsageContext =>
      valueX?.isAs<UsageContextBuilder>();

  /// Getter for [valueDosage] as a DosageBuilder
  DosageBuilder? get valueDosage => valueX?.isAs<DosageBuilder>();

  /// Converts a [ElementDefinitionExampleBuilder]
  /// to [ElementDefinitionExample]
  @override
  ElementDefinitionExample build() =>
      ElementDefinitionExample.fromJson(toJson());

  /// Converts a [ElementDefinitionExampleBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('label', label);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (label != null) {
          fields.add(label!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonicalBuilder) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirIdBuilder) {
          fields.add(valueX!);
        }
      case 'valueInstant':
        if (valueX is FhirInstantBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdownBuilder) {
          fields.add(valueX!);
        }
      case 'valueOid':
        if (valueX is FhirOidBuilder) {
          fields.add(valueX!);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrlBuilder) {
          fields.add(valueX!);
        }
      case 'valueUuid':
        if (valueX is FhirUuidBuilder) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is AddressBuilder) {
          fields.add(valueX!);
        }
      case 'valueAge':
        if (valueX is AgeBuilder) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is AnnotationBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactPoint':
        if (valueX is ContactPointBuilder) {
          fields.add(valueX!);
        }
      case 'valueCount':
        if (valueX is CountBuilder) {
          fields.add(valueX!);
        }
      case 'valueDistance':
        if (valueX is DistanceBuilder) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDurationBuilder) {
          fields.add(valueX!);
        }
      case 'valueHumanName':
        if (valueX is HumanNameBuilder) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is IdentifierBuilder) {
          fields.add(valueX!);
        }
      case 'valueMoney':
        if (valueX is MoneyBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatioRange':
        if (valueX is RatioRangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueSignature':
        if (valueX is SignatureBuilder) {
          fields.add(valueX!);
        }
      case 'valueTiming':
        if (valueX is TimingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueContributor':
        if (valueX is ContributorBuilder) {
          fields.add(valueX!);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirementBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifactBuilder) {
          fields.add(valueX!);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueUsageContext':
        if (valueX is UsageContextBuilder) {
          fields.add(valueX!);
        }
      case 'valueDosage':
        if (valueX is DosageBuilder) {
          fields.add(valueX!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXElementDefinitionExampleBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              valueX = child;
              return;
            }
            if (child is AddressBuilder) {
              valueX = child;
              return;
            }
            if (child is AgeBuilder) {
              valueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              valueX = child;
              return;
            }
            if (child is CountBuilder) {
              valueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              valueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              valueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              valueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              valueX = child;
              return;
            }
            if (child is TimingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is ContributorBuilder) {
              valueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              valueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              valueX = child;
              return;
            }
            if (child is DosageBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueId':
        {
          if (child is FhirIdBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInstant':
        {
          if (child is FhirInstantBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueOid':
        {
          if (child is FhirOidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUrl':
        {
          if (child is FhirUrlBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUuid':
        {
          if (child is FhirUuidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is AddressBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAge':
        {
          if (child is AgeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is AnnotationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPointBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCount':
        {
          if (child is CountBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDistance':
        {
          if (child is DistanceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDuration':
        {
          if (child is FhirDurationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanNameBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueIdentifier':
        {
          if (child is IdentifierBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMoney':
        {
          if (child is MoneyBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatioRange':
        {
          if (child is RatioRangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSignature':
        {
          if (child is SignatureBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTiming':
        {
          if (child is TimingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContributor':
        {
          if (child is ContributorBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContextBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDosage':
        {
          if (child is DosageBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueId':
        return ['FhirIdBuilder'];
      case 'valueInstant':
        return ['FhirInstantBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'valueOid':
        return ['FhirOidBuilder'];
      case 'valuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueUrl':
        return ['FhirUrlBuilder'];
      case 'valueUuid':
        return ['FhirUuidBuilder'];
      case 'valueAddress':
        return ['AddressBuilder'];
      case 'valueAge':
        return ['AgeBuilder'];
      case 'valueAnnotation':
        return ['AnnotationBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueContactPoint':
        return ['ContactPointBuilder'];
      case 'valueCount':
        return ['CountBuilder'];
      case 'valueDistance':
        return ['DistanceBuilder'];
      case 'valueDuration':
        return ['FhirDurationBuilder'];
      case 'valueHumanName':
        return ['HumanNameBuilder'];
      case 'valueIdentifier':
        return ['IdentifierBuilder'];
      case 'valueMoney':
        return ['MoneyBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueRatioRange':
        return ['RatioRangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueSignature':
        return ['SignatureBuilder'];
      case 'valueTiming':
        return ['TimingBuilder'];
      case 'valueContactDetail':
        return ['ContactDetailBuilder'];
      case 'valueContributor':
        return ['ContributorBuilder'];
      case 'valueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'valueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'valueUsageContext':
        return ['UsageContextBuilder'];
      case 'valueDosage':
        return ['DosageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionExampleBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueCanonical':
        {
          valueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueId':
        {
          valueX = FhirIdBuilder.empty();
          return;
        }
      case 'valueInstant':
        {
          valueX = FhirInstantBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueMarkdown':
        {
          valueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'valueOid':
        {
          valueX = FhirOidBuilder.empty();
          return;
        }
      case 'valuePositiveInt':
        {
          valueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueUnsignedInt':
        {
          valueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueUrl':
        {
          valueX = FhirUrlBuilder.empty();
          return;
        }
      case 'valueUuid':
        {
          valueX = FhirUuidBuilder.empty();
          return;
        }
      case 'valueAddress':
        {
          valueX = AddressBuilder.empty();
          return;
        }
      case 'valueAge':
        {
          valueX = AgeBuilder.empty();
          return;
        }
      case 'valueAnnotation':
        {
          valueX = AnnotationBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueCodeableReference':
        {
          valueX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueContactPoint':
        {
          valueX = ContactPointBuilder.empty();
          return;
        }
      case 'valueCount':
        {
          valueX = CountBuilder.empty();
          return;
        }
      case 'valueDistance':
        {
          valueX = DistanceBuilder.empty();
          return;
        }
      case 'valueDuration':
        {
          valueX = FhirDurationBuilder.empty();
          return;
        }
      case 'valueHumanName':
        {
          valueX = HumanNameBuilder.empty();
          return;
        }
      case 'valueIdentifier':
        {
          valueX = IdentifierBuilder.empty();
          return;
        }
      case 'valueMoney':
        {
          valueX = MoneyBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueRatioRange':
        {
          valueX = RatioRangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueSignature':
        {
          valueX = SignatureBuilder.empty();
          return;
        }
      case 'valueTiming':
        {
          valueX = TimingBuilder.empty();
          return;
        }
      case 'valueContactDetail':
        {
          valueX = ContactDetailBuilder.empty();
          return;
        }
      case 'valueContributor':
        {
          valueX = ContributorBuilder.empty();
          return;
        }
      case 'valueDataRequirement':
        {
          valueX = DataRequirementBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'valueParameterDefinition':
        {
          valueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'valueRelatedArtifact':
        {
          valueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'valueTriggerDefinition':
        {
          valueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'valueUsageContext':
        {
          valueX = UsageContextBuilder.empty();
          return;
        }
      case 'valueDosage':
        {
          valueX = DosageBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionExampleBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionExampleBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? label,
    ValueXElementDefinitionExampleBuilder? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionExampleBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      label: label ?? this.label,
      valueX: valueX ?? this.valueX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionExampleBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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

/// [ElementDefinitionConstraintBuilder]
/// Formal constraints such as co-occurrence and other constraints that can
/// be computationally evaluated within the context of the instance.
class ElementDefinitionConstraintBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionConstraintBuilder]

  ElementDefinitionConstraintBuilder({
    super.id,
    super.extension_,
    this.key,
    this.requirements,
    this.severity,
    this.human,
    this.expression,
    this.xpath,
    this.source,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionConstraintBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionConstraintBuilder.empty() =>
      ElementDefinitionConstraintBuilder(
        key: FhirIdBuilder.empty(),
        severity: ConstraintSeverityBuilder.values.first,
        human: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraintBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionConstraint';
    return ElementDefinitionConstraintBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      key: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'key',
        FhirIdBuilder.fromJson,
        '$objectPath.key',
      ),
      requirements: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'requirements',
        FhirStringBuilder.fromJson,
        '$objectPath.requirements',
      ),
      severity: JsonParser.parsePrimitive<ConstraintSeverityBuilder>(
        json,
        'severity',
        ConstraintSeverityBuilder.fromJson,
        '$objectPath.severity',
      ),
      human: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'human',
        FhirStringBuilder.fromJson,
        '$objectPath.human',
      ),
      expression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
      xpath: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'xpath',
        FhirStringBuilder.fromJson,
        '$objectPath.xpath',
      ),
      source: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'source',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.source',
      ),
    );
  }

  /// Deserialize [ElementDefinitionConstraintBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionConstraintBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionConstraintBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionConstraintBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionConstraintBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionConstraintBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionConstraintBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionConstraintBuilder.fromJson(json);
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
  FhirIdBuilder? key;

  /// [requirements]
  /// Description of why this constraint is necessary or appropriate.
  FhirStringBuilder? requirements;

  /// [severity]
  /// Identifies the impact constraint violation has on the conformance of
  /// the instance.
  ConstraintSeverityBuilder? severity;

  /// [human]
  /// Text that can be used to describe the constraint in messages
  /// identifying that the constraint has been violated.
  FhirStringBuilder? human;

  /// [expression]
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be
  /// executed to see if this constraint is met.
  FhirStringBuilder? expression;

  /// [xpath]
  /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  FhirStringBuilder? xpath;

  /// [source]
  /// A reference to the original source of the constraint, for traceability
  /// purposes.
  FhirCanonicalBuilder? source;

  /// Converts a [ElementDefinitionConstraintBuilder]
  /// to [ElementDefinitionConstraint]
  @override
  ElementDefinitionConstraint build() =>
      ElementDefinitionConstraint.fromJson(toJson());

  /// Converts a [ElementDefinitionConstraintBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (key != null) {
          fields.add(key!);
        }
      case 'requirements':
        if (requirements != null) {
          fields.add(requirements!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'human':
        if (human != null) {
          fields.add(human!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'key':
        {
          if (child is FhirIdBuilder) {
            key = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                key = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requirements':
        {
          if (child is FhirStringBuilder) {
            requirements = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                requirements = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'severity':
        {
          if (child is ConstraintSeverityBuilder) {
            severity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConstraintSeverityBuilder(stringValue);
                severity = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'human':
        {
          if (child is FhirStringBuilder) {
            human = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                human = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirStringBuilder) {
            expression = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                expression = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'xpath':
        {
          if (child is FhirStringBuilder) {
            xpath = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                xpath = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is FhirCanonicalBuilder) {
            source = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                source = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'key':
        return ['FhirIdBuilder'];
      case 'requirements':
        return ['FhirStringBuilder'];
      case 'severity':
        return ['FhirCodeEnumBuilder'];
      case 'human':
        return ['FhirStringBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      case 'xpath':
        return ['FhirStringBuilder'];
      case 'source':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionConstraintBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'key':
        {
          key = FhirIdBuilder.empty();
          return;
        }
      case 'requirements':
        {
          requirements = FhirStringBuilder.empty();
          return;
        }
      case 'severity':
        {
          severity = ConstraintSeverityBuilder.empty();
          return;
        }
      case 'human':
        {
          human = FhirStringBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirStringBuilder.empty();
          return;
        }
      case 'xpath':
        {
          xpath = FhirStringBuilder.empty();
          return;
        }
      case 'source':
        {
          source = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionConstraintBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionConstraintBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirIdBuilder? key,
    FhirStringBuilder? requirements,
    ConstraintSeverityBuilder? severity,
    FhirStringBuilder? human,
    FhirStringBuilder? expression,
    FhirStringBuilder? xpath,
    FhirCanonicalBuilder? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionConstraintBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      key: key ?? this.key,
      requirements: requirements ?? this.requirements,
      severity: severity ?? this.severity,
      human: human ?? this.human,
      expression: expression ?? this.expression,
      xpath: xpath ?? this.xpath,
      source: source ?? this.source,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionConstraintBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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

/// [ElementDefinitionBindingBuilder]
/// Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).
class ElementDefinitionBindingBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionBindingBuilder]

  ElementDefinitionBindingBuilder({
    super.id,
    super.extension_,
    this.strength,
    this.description,
    this.valueSet,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionBindingBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionBindingBuilder.empty() =>
      ElementDefinitionBindingBuilder(
        strength: BindingStrengthBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBindingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionBinding';
    return ElementDefinitionBindingBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      strength: JsonParser.parsePrimitive<BindingStrengthBuilder>(
        json,
        'strength',
        BindingStrengthBuilder.fromJson,
        '$objectPath.strength',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'valueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.valueSet',
      ),
    );
  }

  /// Deserialize [ElementDefinitionBindingBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBindingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBindingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBindingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBindingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBindingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBindingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionBindingBuilder.fromJson(json);
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
  BindingStrengthBuilder? strength;

  /// [description]
  /// Describes the intended use of this particular set of codes.
  FhirStringBuilder? description;

  /// [valueSet]
  /// Refers to the value set that identifies the set of codes the binding
  /// refers to.
  FhirCanonicalBuilder? valueSet;

  /// Converts a [ElementDefinitionBindingBuilder]
  /// to [ElementDefinitionBinding]
  @override
  ElementDefinitionBinding build() =>
      ElementDefinitionBinding.fromJson(toJson());

  /// Converts a [ElementDefinitionBindingBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (strength != null) {
          fields.add(strength!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strength':
        {
          if (child is BindingStrengthBuilder) {
            strength = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = BindingStrengthBuilder(stringValue);
                strength = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueSet':
        {
          if (child is FhirCanonicalBuilder) {
            valueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                valueSet = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'strength':
        return ['FhirCodeEnumBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'valueSet':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionBindingBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'strength':
        {
          strength = BindingStrengthBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'valueSet':
        {
          valueSet = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionBindingBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionBindingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    BindingStrengthBuilder? strength,
    FhirStringBuilder? description,
    FhirCanonicalBuilder? valueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionBindingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      strength: strength ?? this.strength,
      description: description ?? this.description,
      valueSet: valueSet ?? this.valueSet,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionBindingBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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

/// [ElementDefinitionMappingBuilder]
/// Identifies a concept from an external specification that roughly
/// corresponds to this element.
class ElementDefinitionMappingBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [ElementDefinitionMappingBuilder]

  ElementDefinitionMappingBuilder({
    super.id,
    super.extension_,
    this.identity,
    this.language,
    this.map,
    this.comment,
    super.disallowExtensions,
    super.objectPath = 'ElementDefinitionMappingBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ElementDefinitionMappingBuilder.empty() =>
      ElementDefinitionMappingBuilder(
        identity: FhirIdBuilder.empty(),
        map: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMappingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ElementDefinitionMapping';
    return ElementDefinitionMappingBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      identity: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'identity',
        FhirIdBuilder.fromJson,
        '$objectPath.identity',
      ),
      language: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'language',
        FhirCodeBuilder.fromJson,
        '$objectPath.language',
      ),
      map: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'map',
        FhirStringBuilder.fromJson,
        '$objectPath.map',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [ElementDefinitionMappingBuilder]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionMappingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionMappingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionMappingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionMappingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionMappingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionMappingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementDefinitionMappingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionMapping';

  /// [identity]
  /// An internal reference to the definition of a mapping.
  FhirIdBuilder? identity;

  /// [language]
  /// Identifies the computable language in which mapping.map is expressed.
  FhirCodeBuilder? language;

  /// [map]
  /// Expresses what part of the target specification corresponds to this
  /// element.
  FhirStringBuilder? map;

  /// [comment]
  /// Comments that provide information about the mapping or its use.
  FhirStringBuilder? comment;

  /// Converts a [ElementDefinitionMappingBuilder]
  /// to [ElementDefinitionMapping]
  @override
  ElementDefinitionMapping build() =>
      ElementDefinitionMapping.fromJson(toJson());

  /// Converts a [ElementDefinitionMappingBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (identity != null) {
          fields.add(identity!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'map':
        if (map != null) {
          fields.add(map!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identity':
        {
          if (child is FhirIdBuilder) {
            identity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                identity = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is FhirCodeBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                language = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'map':
        {
          if (child is FhirStringBuilder) {
            map = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                map = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'identity':
        return ['FhirIdBuilder'];
      case 'language':
        return ['FhirCodeBuilder'];
      case 'map':
        return ['FhirStringBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionMappingBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'identity':
        {
          identity = FhirIdBuilder.empty();
          return;
        }
      case 'language':
        {
          language = FhirCodeBuilder.empty();
          return;
        }
      case 'map':
        {
          map = FhirStringBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ElementDefinitionMappingBuilder clone() => throw UnimplementedError();
  @override
  ElementDefinitionMappingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirIdBuilder? identity,
    FhirCodeBuilder? language,
    FhirStringBuilder? map,
    FhirStringBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ElementDefinitionMappingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      identity: identity ?? this.identity,
      language: language ?? this.language,
      map: map ?? this.map,
      comment: comment ?? this.comment,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ElementDefinitionMappingBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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
