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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinition.empty() => ElementDefinition(
        path: FhirString.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
      case 'defaultValue':
        fields.add(defaultValueX!);
      case 'defaultValueX':
        fields.add(defaultValueX!);
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
      case 'fixed':
        fields.add(fixedX!);
      case 'fixedX':
        fields.add(fixedX!);
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
      case 'pattern':
        fields.add(patternX!);
      case 'patternX':
        fields.add(patternX!);
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
      case 'minValue':
        fields.add(minValueX!);
      case 'minValueX':
        fields.add(minValueX!);
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
      case 'maxValue':
        fields.add(maxValueX!);
      case 'maxValueX':
        fields.add(maxValueX!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'representation':
        {
          if (child is List<PropertyRepresentation>) {
            // Add all elements from passed list
            final newList = [...?representation, ...child];
            return copyWith(representation: newList);
          } else if (child is PropertyRepresentation) {
            // Add single element to existing list or create new list
            final newList = [...?representation, child];
            return copyWith(representation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sliceName':
        {
          if (child is FhirString) {
            return copyWith(sliceName: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sliceIsConstraining':
        {
          if (child is FhirBoolean) {
            return copyWith(sliceIsConstraining: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'label':
        {
          if (child is FhirString) {
            return copyWith(label: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [...?code, child];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'slicing':
        {
          if (child is ElementDefinitionSlicing) {
            return copyWith(slicing: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'short':
        {
          if (child is FhirString) {
            return copyWith(short: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is FhirMarkdown) {
            return copyWith(definition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirMarkdown) {
            return copyWith(comment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requirements':
        {
          if (child is FhirMarkdown) {
            return copyWith(requirements: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alias':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?alias, ...child];
            return copyWith(alias: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?alias, child];
            return copyWith(alias: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'min':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(min: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'max':
        {
          if (child is FhirString) {
            return copyWith(max: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'base':
        {
          if (child is ElementDefinitionBase) {
            return copyWith(base: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is FhirUri) {
            return copyWith(contentReference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<ElementDefinitionType>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is ElementDefinitionType) {
            // Add single element to existing list or create new list
            final newList = [...?type, child];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueX':
        {
          if (child is DefaultValueXElementDefinition) {
            return copyWith(defaultValueX: child);
          } else {
            if (child is FhirBase64Binary) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirCode) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDate) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirId) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirInstant) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirOid) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirString) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirTime) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUri) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUrl) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUuid) {
              return copyWith(defaultValueX: child);
            }
            if (child is Address) {
              return copyWith(defaultValueX: child);
            }
            if (child is Age) {
              return copyWith(defaultValueX: child);
            }
            if (child is Annotation) {
              return copyWith(defaultValueX: child);
            }
            if (child is Attachment) {
              return copyWith(defaultValueX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(defaultValueX: child);
            }
            if (child is CodeableReference) {
              return copyWith(defaultValueX: child);
            }
            if (child is Coding) {
              return copyWith(defaultValueX: child);
            }
            if (child is ContactPoint) {
              return copyWith(defaultValueX: child);
            }
            if (child is Count) {
              return copyWith(defaultValueX: child);
            }
            if (child is Distance) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDuration) {
              return copyWith(defaultValueX: child);
            }
            if (child is HumanName) {
              return copyWith(defaultValueX: child);
            }
            if (child is Identifier) {
              return copyWith(defaultValueX: child);
            }
            if (child is Money) {
              return copyWith(defaultValueX: child);
            }
            if (child is Period) {
              return copyWith(defaultValueX: child);
            }
            if (child is Quantity) {
              return copyWith(defaultValueX: child);
            }
            if (child is Range) {
              return copyWith(defaultValueX: child);
            }
            if (child is Ratio) {
              return copyWith(defaultValueX: child);
            }
            if (child is RatioRange) {
              return copyWith(defaultValueX: child);
            }
            if (child is Reference) {
              return copyWith(defaultValueX: child);
            }
            if (child is SampledData) {
              return copyWith(defaultValueX: child);
            }
            if (child is Signature) {
              return copyWith(defaultValueX: child);
            }
            if (child is Timing) {
              return copyWith(defaultValueX: child);
            }
            if (child is ContactDetail) {
              return copyWith(defaultValueX: child);
            }
            if (child is Contributor) {
              return copyWith(defaultValueX: child);
            }
            if (child is DataRequirement) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirExpression) {
              return copyWith(defaultValueX: child);
            }
            if (child is ParameterDefinition) {
              return copyWith(defaultValueX: child);
            }
            if (child is RelatedArtifact) {
              return copyWith(defaultValueX: child);
            }
            if (child is TriggerDefinition) {
              return copyWith(defaultValueX: child);
            }
            if (child is UsageContext) {
              return copyWith(defaultValueX: child);
            }
            if (child is Dosage) {
              return copyWith(defaultValueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirId':
        {
          if (child is FhirId) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirString':
        {
          if (child is FhirString) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAddress':
        {
          if (child is Address) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAge':
        {
          if (child is Age) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAttachment':
        {
          if (child is Attachment) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableReference':
        {
          if (child is CodeableReference) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCoding':
        {
          if (child is Coding) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCount':
        {
          if (child is Count) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDistance':
        {
          if (child is Distance) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueHumanName':
        {
          if (child is HumanName) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMoney':
        {
          if (child is Money) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePeriod':
        {
          if (child is Period) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueQuantity':
        {
          if (child is Quantity) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRange':
        {
          if (child is Range) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatio':
        {
          if (child is Ratio) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatioRange':
        {
          if (child is RatioRange) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueReference':
        {
          if (child is Reference) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSampledData':
        {
          if (child is SampledData) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSignature':
        {
          if (child is Signature) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTiming':
        {
          if (child is Timing) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContributor':
        {
          if (child is Contributor) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDosage':
        {
          if (child is Dosage) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meaningWhenMissing':
        {
          if (child is FhirMarkdown) {
            return copyWith(meaningWhenMissing: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'orderMeaning':
        {
          if (child is FhirString) {
            return copyWith(orderMeaning: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedX':
        {
          if (child is FixedXElementDefinition) {
            return copyWith(fixedX: child);
          } else {
            if (child is FhirBase64Binary) {
              return copyWith(fixedX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(fixedX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(fixedX: child);
            }
            if (child is FhirCode) {
              return copyWith(fixedX: child);
            }
            if (child is FhirDate) {
              return copyWith(fixedX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(fixedX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(fixedX: child);
            }
            if (child is FhirId) {
              return copyWith(fixedX: child);
            }
            if (child is FhirInstant) {
              return copyWith(fixedX: child);
            }
            if (child is FhirInteger) {
              return copyWith(fixedX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(fixedX: child);
            }
            if (child is FhirOid) {
              return copyWith(fixedX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(fixedX: child);
            }
            if (child is FhirString) {
              return copyWith(fixedX: child);
            }
            if (child is FhirTime) {
              return copyWith(fixedX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(fixedX: child);
            }
            if (child is FhirUri) {
              return copyWith(fixedX: child);
            }
            if (child is FhirUrl) {
              return copyWith(fixedX: child);
            }
            if (child is FhirUuid) {
              return copyWith(fixedX: child);
            }
            if (child is Address) {
              return copyWith(fixedX: child);
            }
            if (child is Age) {
              return copyWith(fixedX: child);
            }
            if (child is Annotation) {
              return copyWith(fixedX: child);
            }
            if (child is Attachment) {
              return copyWith(fixedX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(fixedX: child);
            }
            if (child is CodeableReference) {
              return copyWith(fixedX: child);
            }
            if (child is Coding) {
              return copyWith(fixedX: child);
            }
            if (child is ContactPoint) {
              return copyWith(fixedX: child);
            }
            if (child is Count) {
              return copyWith(fixedX: child);
            }
            if (child is Distance) {
              return copyWith(fixedX: child);
            }
            if (child is FhirDuration) {
              return copyWith(fixedX: child);
            }
            if (child is HumanName) {
              return copyWith(fixedX: child);
            }
            if (child is Identifier) {
              return copyWith(fixedX: child);
            }
            if (child is Money) {
              return copyWith(fixedX: child);
            }
            if (child is Period) {
              return copyWith(fixedX: child);
            }
            if (child is Quantity) {
              return copyWith(fixedX: child);
            }
            if (child is Range) {
              return copyWith(fixedX: child);
            }
            if (child is Ratio) {
              return copyWith(fixedX: child);
            }
            if (child is RatioRange) {
              return copyWith(fixedX: child);
            }
            if (child is Reference) {
              return copyWith(fixedX: child);
            }
            if (child is SampledData) {
              return copyWith(fixedX: child);
            }
            if (child is Signature) {
              return copyWith(fixedX: child);
            }
            if (child is Timing) {
              return copyWith(fixedX: child);
            }
            if (child is ContactDetail) {
              return copyWith(fixedX: child);
            }
            if (child is Contributor) {
              return copyWith(fixedX: child);
            }
            if (child is DataRequirement) {
              return copyWith(fixedX: child);
            }
            if (child is FhirExpression) {
              return copyWith(fixedX: child);
            }
            if (child is ParameterDefinition) {
              return copyWith(fixedX: child);
            }
            if (child is RelatedArtifact) {
              return copyWith(fixedX: child);
            }
            if (child is TriggerDefinition) {
              return copyWith(fixedX: child);
            }
            if (child is UsageContext) {
              return copyWith(fixedX: child);
            }
            if (child is Dosage) {
              return copyWith(fixedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fixedFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirId':
        {
          if (child is FhirId) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirString':
        {
          if (child is FhirString) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAddress':
        {
          if (child is Address) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAge':
        {
          if (child is Age) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAnnotation':
        {
          if (child is Annotation) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedAttachment':
        {
          if (child is Attachment) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCodeableReference':
        {
          if (child is CodeableReference) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCoding':
        {
          if (child is Coding) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedCount':
        {
          if (child is Count) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDistance':
        {
          if (child is Distance) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedHumanName':
        {
          if (child is HumanName) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedIdentifier':
        {
          if (child is Identifier) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedMoney':
        {
          if (child is Money) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedPeriod':
        {
          if (child is Period) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedQuantity':
        {
          if (child is Quantity) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRange':
        {
          if (child is Range) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRatio':
        {
          if (child is Ratio) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRatioRange':
        {
          if (child is RatioRange) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedReference':
        {
          if (child is Reference) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedSampledData':
        {
          if (child is SampledData) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedSignature':
        {
          if (child is Signature) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedTiming':
        {
          if (child is Timing) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedContributor':
        {
          if (child is Contributor) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixedDosage':
        {
          if (child is Dosage) {
            return copyWith(fixedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternX':
        {
          if (child is PatternXElementDefinition) {
            return copyWith(patternX: child);
          } else {
            if (child is FhirBase64Binary) {
              return copyWith(patternX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(patternX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(patternX: child);
            }
            if (child is FhirCode) {
              return copyWith(patternX: child);
            }
            if (child is FhirDate) {
              return copyWith(patternX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(patternX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(patternX: child);
            }
            if (child is FhirId) {
              return copyWith(patternX: child);
            }
            if (child is FhirInstant) {
              return copyWith(patternX: child);
            }
            if (child is FhirInteger) {
              return copyWith(patternX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(patternX: child);
            }
            if (child is FhirOid) {
              return copyWith(patternX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(patternX: child);
            }
            if (child is FhirString) {
              return copyWith(patternX: child);
            }
            if (child is FhirTime) {
              return copyWith(patternX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(patternX: child);
            }
            if (child is FhirUri) {
              return copyWith(patternX: child);
            }
            if (child is FhirUrl) {
              return copyWith(patternX: child);
            }
            if (child is FhirUuid) {
              return copyWith(patternX: child);
            }
            if (child is Address) {
              return copyWith(patternX: child);
            }
            if (child is Age) {
              return copyWith(patternX: child);
            }
            if (child is Annotation) {
              return copyWith(patternX: child);
            }
            if (child is Attachment) {
              return copyWith(patternX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(patternX: child);
            }
            if (child is CodeableReference) {
              return copyWith(patternX: child);
            }
            if (child is Coding) {
              return copyWith(patternX: child);
            }
            if (child is ContactPoint) {
              return copyWith(patternX: child);
            }
            if (child is Count) {
              return copyWith(patternX: child);
            }
            if (child is Distance) {
              return copyWith(patternX: child);
            }
            if (child is FhirDuration) {
              return copyWith(patternX: child);
            }
            if (child is HumanName) {
              return copyWith(patternX: child);
            }
            if (child is Identifier) {
              return copyWith(patternX: child);
            }
            if (child is Money) {
              return copyWith(patternX: child);
            }
            if (child is Period) {
              return copyWith(patternX: child);
            }
            if (child is Quantity) {
              return copyWith(patternX: child);
            }
            if (child is Range) {
              return copyWith(patternX: child);
            }
            if (child is Ratio) {
              return copyWith(patternX: child);
            }
            if (child is RatioRange) {
              return copyWith(patternX: child);
            }
            if (child is Reference) {
              return copyWith(patternX: child);
            }
            if (child is SampledData) {
              return copyWith(patternX: child);
            }
            if (child is Signature) {
              return copyWith(patternX: child);
            }
            if (child is Timing) {
              return copyWith(patternX: child);
            }
            if (child is ContactDetail) {
              return copyWith(patternX: child);
            }
            if (child is Contributor) {
              return copyWith(patternX: child);
            }
            if (child is DataRequirement) {
              return copyWith(patternX: child);
            }
            if (child is FhirExpression) {
              return copyWith(patternX: child);
            }
            if (child is ParameterDefinition) {
              return copyWith(patternX: child);
            }
            if (child is RelatedArtifact) {
              return copyWith(patternX: child);
            }
            if (child is TriggerDefinition) {
              return copyWith(patternX: child);
            }
            if (child is UsageContext) {
              return copyWith(patternX: child);
            }
            if (child is Dosage) {
              return copyWith(patternX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patternFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirId':
        {
          if (child is FhirId) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirString':
        {
          if (child is FhirString) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAddress':
        {
          if (child is Address) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAge':
        {
          if (child is Age) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAnnotation':
        {
          if (child is Annotation) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternAttachment':
        {
          if (child is Attachment) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCodeableReference':
        {
          if (child is CodeableReference) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCoding':
        {
          if (child is Coding) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternCount':
        {
          if (child is Count) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDistance':
        {
          if (child is Distance) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternHumanName':
        {
          if (child is HumanName) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternIdentifier':
        {
          if (child is Identifier) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternMoney':
        {
          if (child is Money) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternPeriod':
        {
          if (child is Period) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternQuantity':
        {
          if (child is Quantity) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRange':
        {
          if (child is Range) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRatio':
        {
          if (child is Ratio) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRatioRange':
        {
          if (child is RatioRange) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternReference':
        {
          if (child is Reference) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternSampledData':
        {
          if (child is SampledData) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternSignature':
        {
          if (child is Signature) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternTiming':
        {
          if (child is Timing) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternContributor':
        {
          if (child is Contributor) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patternDosage':
        {
          if (child is Dosage) {
            return copyWith(patternX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'example':
        {
          if (child is List<ElementDefinitionExample>) {
            // Add all elements from passed list
            final newList = [...?example, ...child];
            return copyWith(example: newList);
          } else if (child is ElementDefinitionExample) {
            // Add single element to existing list or create new list
            final newList = [...?example, child];
            return copyWith(example: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueX':
        {
          if (child is MinValueXElementDefinition) {
            return copyWith(minValueX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(minValueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(minValueX: child);
            }
            if (child is FhirInstant) {
              return copyWith(minValueX: child);
            }
            if (child is FhirTime) {
              return copyWith(minValueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(minValueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(minValueX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(minValueX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(minValueX: child);
            }
            if (child is Quantity) {
              return copyWith(minValueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minValueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minValueQuantity':
        {
          if (child is Quantity) {
            return copyWith(minValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueX':
        {
          if (child is MaxValueXElementDefinition) {
            return copyWith(maxValueX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirInstant) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirTime) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(maxValueX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(maxValueX: child);
            }
            if (child is Quantity) {
              return copyWith(maxValueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxValueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxValueQuantity':
        {
          if (child is Quantity) {
            return copyWith(maxValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxLength':
        {
          if (child is FhirInteger) {
            return copyWith(maxLength: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is List<FhirId>) {
            // Add all elements from passed list
            final newList = [...?condition, ...child];
            return copyWith(condition: newList);
          } else if (child is FhirId) {
            // Add single element to existing list or create new list
            final newList = [...?condition, child];
            return copyWith(condition: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'constraint':
        {
          if (child is List<ElementDefinitionConstraint>) {
            // Add all elements from passed list
            final newList = [...?constraint, ...child];
            return copyWith(constraint: newList);
          } else if (child is ElementDefinitionConstraint) {
            // Add single element to existing list or create new list
            final newList = [...?constraint, child];
            return copyWith(constraint: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mustSupport':
        {
          if (child is FhirBoolean) {
            return copyWith(mustSupport: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isModifier':
        {
          if (child is FhirBoolean) {
            return copyWith(isModifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isModifierReason':
        {
          if (child is FhirString) {
            return copyWith(isModifierReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isSummary':
        {
          if (child is FhirBoolean) {
            return copyWith(isSummary: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'binding':
        {
          if (child is ElementDefinitionBinding) {
            return copyWith(binding: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mapping':
        {
          if (child is List<ElementDefinitionMapping>) {
            // Add all elements from passed list
            final newList = [...?mapping, ...child];
            return copyWith(mapping: newList);
          } else if (child is ElementDefinitionMapping) {
            // Add single element to existing list or create new list
            final newList = [...?mapping, child];
            return copyWith(mapping: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'representation':
        return ['FhirCode'];
      case 'sliceName':
        return ['FhirString'];
      case 'sliceIsConstraining':
        return ['FhirBoolean'];
      case 'label':
        return ['FhirString'];
      case 'code':
        return ['Coding'];
      case 'slicing':
        return ['ElementDefinitionSlicing'];
      case 'short':
        return ['FhirString'];
      case 'definition':
        return ['FhirMarkdown'];
      case 'comment':
        return ['FhirMarkdown'];
      case 'requirements':
        return ['FhirMarkdown'];
      case 'alias':
        return ['FhirString'];
      case 'min':
        return ['FhirUnsignedInt'];
      case 'max':
        return ['FhirString'];
      case 'base':
        return ['ElementDefinitionBase'];
      case 'contentReference':
        return ['FhirUri'];
      case 'type':
        return ['ElementDefinitionType'];
      case 'defaultValue':
      case 'defaultValueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'CodeableReference',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'RatioRange',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
        ];
      case 'defaultValueBase64Binary':
        return ['FhirBase64Binary'];
      case 'defaultValueBoolean':
        return ['FhirBoolean'];
      case 'defaultValueCanonical':
        return ['FhirCanonical'];
      case 'defaultValueCode':
        return ['FhirCode'];
      case 'defaultValueDate':
        return ['FhirDate'];
      case 'defaultValueDateTime':
        return ['FhirDateTime'];
      case 'defaultValueDecimal':
        return ['FhirDecimal'];
      case 'defaultValueId':
        return ['FhirId'];
      case 'defaultValueInstant':
        return ['FhirInstant'];
      case 'defaultValueInteger':
        return ['FhirInteger'];
      case 'defaultValueMarkdown':
        return ['FhirMarkdown'];
      case 'defaultValueOid':
        return ['FhirOid'];
      case 'defaultValuePositiveInt':
        return ['FhirPositiveInt'];
      case 'defaultValueString':
        return ['FhirString'];
      case 'defaultValueTime':
        return ['FhirTime'];
      case 'defaultValueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'defaultValueUri':
        return ['FhirUri'];
      case 'defaultValueUrl':
        return ['FhirUrl'];
      case 'defaultValueUuid':
        return ['FhirUuid'];
      case 'defaultValueAddress':
        return ['Address'];
      case 'defaultValueAge':
        return ['Age'];
      case 'defaultValueAnnotation':
        return ['Annotation'];
      case 'defaultValueAttachment':
        return ['Attachment'];
      case 'defaultValueCodeableConcept':
        return ['CodeableConcept'];
      case 'defaultValueCodeableReference':
        return ['CodeableReference'];
      case 'defaultValueCoding':
        return ['Coding'];
      case 'defaultValueContactPoint':
        return ['ContactPoint'];
      case 'defaultValueCount':
        return ['Count'];
      case 'defaultValueDistance':
        return ['Distance'];
      case 'defaultValueDuration':
        return ['FhirDuration'];
      case 'defaultValueHumanName':
        return ['HumanName'];
      case 'defaultValueIdentifier':
        return ['Identifier'];
      case 'defaultValueMoney':
        return ['Money'];
      case 'defaultValuePeriod':
        return ['Period'];
      case 'defaultValueQuantity':
        return ['Quantity'];
      case 'defaultValueRange':
        return ['Range'];
      case 'defaultValueRatio':
        return ['Ratio'];
      case 'defaultValueRatioRange':
        return ['RatioRange'];
      case 'defaultValueReference':
        return ['Reference'];
      case 'defaultValueSampledData':
        return ['SampledData'];
      case 'defaultValueSignature':
        return ['Signature'];
      case 'defaultValueTiming':
        return ['Timing'];
      case 'defaultValueContactDetail':
        return ['ContactDetail'];
      case 'defaultValueContributor':
        return ['Contributor'];
      case 'defaultValueDataRequirement':
        return ['DataRequirement'];
      case 'defaultValueExpression':
        return ['FhirExpression'];
      case 'defaultValueParameterDefinition':
        return ['ParameterDefinition'];
      case 'defaultValueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'defaultValueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'defaultValueUsageContext':
        return ['UsageContext'];
      case 'defaultValueDosage':
        return ['Dosage'];
      case 'meaningWhenMissing':
        return ['FhirMarkdown'];
      case 'orderMeaning':
        return ['FhirString'];
      case 'fixed':
      case 'fixedX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'CodeableReference',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'RatioRange',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
        ];
      case 'fixedBase64Binary':
        return ['FhirBase64Binary'];
      case 'fixedBoolean':
        return ['FhirBoolean'];
      case 'fixedCanonical':
        return ['FhirCanonical'];
      case 'fixedCode':
        return ['FhirCode'];
      case 'fixedDate':
        return ['FhirDate'];
      case 'fixedDateTime':
        return ['FhirDateTime'];
      case 'fixedDecimal':
        return ['FhirDecimal'];
      case 'fixedId':
        return ['FhirId'];
      case 'fixedInstant':
        return ['FhirInstant'];
      case 'fixedInteger':
        return ['FhirInteger'];
      case 'fixedMarkdown':
        return ['FhirMarkdown'];
      case 'fixedOid':
        return ['FhirOid'];
      case 'fixedPositiveInt':
        return ['FhirPositiveInt'];
      case 'fixedString':
        return ['FhirString'];
      case 'fixedTime':
        return ['FhirTime'];
      case 'fixedUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'fixedUri':
        return ['FhirUri'];
      case 'fixedUrl':
        return ['FhirUrl'];
      case 'fixedUuid':
        return ['FhirUuid'];
      case 'fixedAddress':
        return ['Address'];
      case 'fixedAge':
        return ['Age'];
      case 'fixedAnnotation':
        return ['Annotation'];
      case 'fixedAttachment':
        return ['Attachment'];
      case 'fixedCodeableConcept':
        return ['CodeableConcept'];
      case 'fixedCodeableReference':
        return ['CodeableReference'];
      case 'fixedCoding':
        return ['Coding'];
      case 'fixedContactPoint':
        return ['ContactPoint'];
      case 'fixedCount':
        return ['Count'];
      case 'fixedDistance':
        return ['Distance'];
      case 'fixedDuration':
        return ['FhirDuration'];
      case 'fixedHumanName':
        return ['HumanName'];
      case 'fixedIdentifier':
        return ['Identifier'];
      case 'fixedMoney':
        return ['Money'];
      case 'fixedPeriod':
        return ['Period'];
      case 'fixedQuantity':
        return ['Quantity'];
      case 'fixedRange':
        return ['Range'];
      case 'fixedRatio':
        return ['Ratio'];
      case 'fixedRatioRange':
        return ['RatioRange'];
      case 'fixedReference':
        return ['Reference'];
      case 'fixedSampledData':
        return ['SampledData'];
      case 'fixedSignature':
        return ['Signature'];
      case 'fixedTiming':
        return ['Timing'];
      case 'fixedContactDetail':
        return ['ContactDetail'];
      case 'fixedContributor':
        return ['Contributor'];
      case 'fixedDataRequirement':
        return ['DataRequirement'];
      case 'fixedExpression':
        return ['FhirExpression'];
      case 'fixedParameterDefinition':
        return ['ParameterDefinition'];
      case 'fixedRelatedArtifact':
        return ['RelatedArtifact'];
      case 'fixedTriggerDefinition':
        return ['TriggerDefinition'];
      case 'fixedUsageContext':
        return ['UsageContext'];
      case 'fixedDosage':
        return ['Dosage'];
      case 'pattern':
      case 'patternX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'CodeableReference',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'RatioRange',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
        ];
      case 'patternBase64Binary':
        return ['FhirBase64Binary'];
      case 'patternBoolean':
        return ['FhirBoolean'];
      case 'patternCanonical':
        return ['FhirCanonical'];
      case 'patternCode':
        return ['FhirCode'];
      case 'patternDate':
        return ['FhirDate'];
      case 'patternDateTime':
        return ['FhirDateTime'];
      case 'patternDecimal':
        return ['FhirDecimal'];
      case 'patternId':
        return ['FhirId'];
      case 'patternInstant':
        return ['FhirInstant'];
      case 'patternInteger':
        return ['FhirInteger'];
      case 'patternMarkdown':
        return ['FhirMarkdown'];
      case 'patternOid':
        return ['FhirOid'];
      case 'patternPositiveInt':
        return ['FhirPositiveInt'];
      case 'patternString':
        return ['FhirString'];
      case 'patternTime':
        return ['FhirTime'];
      case 'patternUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'patternUri':
        return ['FhirUri'];
      case 'patternUrl':
        return ['FhirUrl'];
      case 'patternUuid':
        return ['FhirUuid'];
      case 'patternAddress':
        return ['Address'];
      case 'patternAge':
        return ['Age'];
      case 'patternAnnotation':
        return ['Annotation'];
      case 'patternAttachment':
        return ['Attachment'];
      case 'patternCodeableConcept':
        return ['CodeableConcept'];
      case 'patternCodeableReference':
        return ['CodeableReference'];
      case 'patternCoding':
        return ['Coding'];
      case 'patternContactPoint':
        return ['ContactPoint'];
      case 'patternCount':
        return ['Count'];
      case 'patternDistance':
        return ['Distance'];
      case 'patternDuration':
        return ['FhirDuration'];
      case 'patternHumanName':
        return ['HumanName'];
      case 'patternIdentifier':
        return ['Identifier'];
      case 'patternMoney':
        return ['Money'];
      case 'patternPeriod':
        return ['Period'];
      case 'patternQuantity':
        return ['Quantity'];
      case 'patternRange':
        return ['Range'];
      case 'patternRatio':
        return ['Ratio'];
      case 'patternRatioRange':
        return ['RatioRange'];
      case 'patternReference':
        return ['Reference'];
      case 'patternSampledData':
        return ['SampledData'];
      case 'patternSignature':
        return ['Signature'];
      case 'patternTiming':
        return ['Timing'];
      case 'patternContactDetail':
        return ['ContactDetail'];
      case 'patternContributor':
        return ['Contributor'];
      case 'patternDataRequirement':
        return ['DataRequirement'];
      case 'patternExpression':
        return ['FhirExpression'];
      case 'patternParameterDefinition':
        return ['ParameterDefinition'];
      case 'patternRelatedArtifact':
        return ['RelatedArtifact'];
      case 'patternTriggerDefinition':
        return ['TriggerDefinition'];
      case 'patternUsageContext':
        return ['UsageContext'];
      case 'patternDosage':
        return ['Dosage'];
      case 'example':
        return ['ElementDefinitionExample'];
      case 'minValue':
      case 'minValueX':
        return [
          'FhirDate',
          'FhirDateTime',
          'FhirInstant',
          'FhirTime',
          'FhirDecimal',
          'FhirInteger',
          'FhirPositiveInt',
          'FhirUnsignedInt',
          'Quantity',
        ];
      case 'minValueDate':
        return ['FhirDate'];
      case 'minValueDateTime':
        return ['FhirDateTime'];
      case 'minValueInstant':
        return ['FhirInstant'];
      case 'minValueTime':
        return ['FhirTime'];
      case 'minValueDecimal':
        return ['FhirDecimal'];
      case 'minValueInteger':
        return ['FhirInteger'];
      case 'minValuePositiveInt':
        return ['FhirPositiveInt'];
      case 'minValueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'minValueQuantity':
        return ['Quantity'];
      case 'maxValue':
      case 'maxValueX':
        return [
          'FhirDate',
          'FhirDateTime',
          'FhirInstant',
          'FhirTime',
          'FhirDecimal',
          'FhirInteger',
          'FhirPositiveInt',
          'FhirUnsignedInt',
          'Quantity',
        ];
      case 'maxValueDate':
        return ['FhirDate'];
      case 'maxValueDateTime':
        return ['FhirDateTime'];
      case 'maxValueInstant':
        return ['FhirInstant'];
      case 'maxValueTime':
        return ['FhirTime'];
      case 'maxValueDecimal':
        return ['FhirDecimal'];
      case 'maxValueInteger':
        return ['FhirInteger'];
      case 'maxValuePositiveInt':
        return ['FhirPositiveInt'];
      case 'maxValueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'maxValueQuantity':
        return ['Quantity'];
      case 'maxLength':
        return ['FhirInteger'];
      case 'condition':
        return ['FhirId'];
      case 'constraint':
        return ['ElementDefinitionConstraint'];
      case 'mustSupport':
        return ['FhirBoolean'];
      case 'isModifier':
        return ['FhirBoolean'];
      case 'isModifierReason':
        return ['FhirString'];
      case 'isSummary':
        return ['FhirBoolean'];
      case 'binding':
        return ['ElementDefinitionBinding'];
      case 'mapping':
        return ['ElementDefinitionMapping'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'representation':
        {
          return copyWith(
            representation: <PropertyRepresentation>[],
          );
        }
      case 'sliceName':
        {
          return copyWith(
            sliceName: FhirString.empty(),
          );
        }
      case 'sliceIsConstraining':
        {
          return copyWith(
            sliceIsConstraining: FhirBoolean.empty(),
          );
        }
      case 'label':
        {
          return copyWith(
            label: FhirString.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: <Coding>[],
          );
        }
      case 'slicing':
        {
          return copyWith(
            slicing: ElementDefinitionSlicing.empty(),
          );
        }
      case 'short':
        {
          return copyWith(
            short: FhirString.empty(),
          );
        }
      case 'definition':
        {
          return copyWith(
            definition: FhirMarkdown.empty(),
          );
        }
      case 'comment':
        {
          return copyWith(
            comment: FhirMarkdown.empty(),
          );
        }
      case 'requirements':
        {
          return copyWith(
            requirements: FhirMarkdown.empty(),
          );
        }
      case 'alias':
        {
          return copyWith(
            alias: <FhirString>[],
          );
        }
      case 'min':
        {
          return copyWith(
            min: FhirUnsignedInt.empty(),
          );
        }
      case 'max':
        {
          return copyWith(
            max: FhirString.empty(),
          );
        }
      case 'base':
        {
          return copyWith(
            base: ElementDefinitionBase.empty(),
          );
        }
      case 'contentReference':
        {
          return copyWith(
            contentReference: FhirUri.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <ElementDefinitionType>[],
          );
        }
      case 'defaultValue':
      case 'defaultValueX':
      case 'defaultValueBase64Binary':
        {
          return copyWith(
            defaultValueX: FhirBase64Binary.empty(),
          );
        }
      case 'defaultValueBoolean':
        {
          return copyWith(
            defaultValueX: FhirBoolean.empty(),
          );
        }
      case 'defaultValueCanonical':
        {
          return copyWith(
            defaultValueX: FhirCanonical.empty(),
          );
        }
      case 'defaultValueCode':
        {
          return copyWith(
            defaultValueX: FhirCode.empty(),
          );
        }
      case 'defaultValueDate':
        {
          return copyWith(
            defaultValueX: FhirDate.empty(),
          );
        }
      case 'defaultValueDateTime':
        {
          return copyWith(
            defaultValueX: FhirDateTime.empty(),
          );
        }
      case 'defaultValueDecimal':
        {
          return copyWith(
            defaultValueX: FhirDecimal.empty(),
          );
        }
      case 'defaultValueId':
        {
          return copyWith(
            defaultValueX: FhirId.empty(),
          );
        }
      case 'defaultValueInstant':
        {
          return copyWith(
            defaultValueX: FhirInstant.empty(),
          );
        }
      case 'defaultValueInteger':
        {
          return copyWith(
            defaultValueX: FhirInteger.empty(),
          );
        }
      case 'defaultValueMarkdown':
        {
          return copyWith(
            defaultValueX: FhirMarkdown.empty(),
          );
        }
      case 'defaultValueOid':
        {
          return copyWith(
            defaultValueX: FhirOid.empty(),
          );
        }
      case 'defaultValuePositiveInt':
        {
          return copyWith(
            defaultValueX: FhirPositiveInt.empty(),
          );
        }
      case 'defaultValueString':
        {
          return copyWith(
            defaultValueX: FhirString.empty(),
          );
        }
      case 'defaultValueTime':
        {
          return copyWith(
            defaultValueX: FhirTime.empty(),
          );
        }
      case 'defaultValueUnsignedInt':
        {
          return copyWith(
            defaultValueX: FhirUnsignedInt.empty(),
          );
        }
      case 'defaultValueUri':
        {
          return copyWith(
            defaultValueX: FhirUri.empty(),
          );
        }
      case 'defaultValueUrl':
        {
          return copyWith(
            defaultValueX: FhirUrl.empty(),
          );
        }
      case 'defaultValueUuid':
        {
          return copyWith(
            defaultValueX: FhirUuid.empty(),
          );
        }
      case 'defaultValueAddress':
        {
          return copyWith(
            defaultValueX: Address.empty(),
          );
        }
      case 'defaultValueAge':
        {
          return copyWith(
            defaultValueX: Age.empty(),
          );
        }
      case 'defaultValueAnnotation':
        {
          return copyWith(
            defaultValueX: Annotation.empty(),
          );
        }
      case 'defaultValueAttachment':
        {
          return copyWith(
            defaultValueX: Attachment.empty(),
          );
        }
      case 'defaultValueCodeableConcept':
        {
          return copyWith(
            defaultValueX: CodeableConcept.empty(),
          );
        }
      case 'defaultValueCodeableReference':
        {
          return copyWith(
            defaultValueX: CodeableReference.empty(),
          );
        }
      case 'defaultValueCoding':
        {
          return copyWith(
            defaultValueX: Coding.empty(),
          );
        }
      case 'defaultValueContactPoint':
        {
          return copyWith(
            defaultValueX: ContactPoint.empty(),
          );
        }
      case 'defaultValueCount':
        {
          return copyWith(
            defaultValueX: Count.empty(),
          );
        }
      case 'defaultValueDistance':
        {
          return copyWith(
            defaultValueX: Distance.empty(),
          );
        }
      case 'defaultValueDuration':
        {
          return copyWith(
            defaultValueX: FhirDuration.empty(),
          );
        }
      case 'defaultValueHumanName':
        {
          return copyWith(
            defaultValueX: HumanName.empty(),
          );
        }
      case 'defaultValueIdentifier':
        {
          return copyWith(
            defaultValueX: Identifier.empty(),
          );
        }
      case 'defaultValueMoney':
        {
          return copyWith(
            defaultValueX: Money.empty(),
          );
        }
      case 'defaultValuePeriod':
        {
          return copyWith(
            defaultValueX: Period.empty(),
          );
        }
      case 'defaultValueQuantity':
        {
          return copyWith(
            defaultValueX: Quantity.empty(),
          );
        }
      case 'defaultValueRange':
        {
          return copyWith(
            defaultValueX: Range.empty(),
          );
        }
      case 'defaultValueRatio':
        {
          return copyWith(
            defaultValueX: Ratio.empty(),
          );
        }
      case 'defaultValueRatioRange':
        {
          return copyWith(
            defaultValueX: RatioRange.empty(),
          );
        }
      case 'defaultValueReference':
        {
          return copyWith(
            defaultValueX: Reference.empty(),
          );
        }
      case 'defaultValueSampledData':
        {
          return copyWith(
            defaultValueX: SampledData.empty(),
          );
        }
      case 'defaultValueSignature':
        {
          return copyWith(
            defaultValueX: Signature.empty(),
          );
        }
      case 'defaultValueTiming':
        {
          return copyWith(
            defaultValueX: Timing.empty(),
          );
        }
      case 'defaultValueContactDetail':
        {
          return copyWith(
            defaultValueX: ContactDetail.empty(),
          );
        }
      case 'defaultValueContributor':
        {
          return copyWith(
            defaultValueX: Contributor.empty(),
          );
        }
      case 'defaultValueDataRequirement':
        {
          return copyWith(
            defaultValueX: DataRequirement.empty(),
          );
        }
      case 'defaultValueExpression':
        {
          return copyWith(
            defaultValueX: FhirExpression.empty(),
          );
        }
      case 'defaultValueParameterDefinition':
        {
          return copyWith(
            defaultValueX: ParameterDefinition.empty(),
          );
        }
      case 'defaultValueRelatedArtifact':
        {
          return copyWith(
            defaultValueX: RelatedArtifact.empty(),
          );
        }
      case 'defaultValueTriggerDefinition':
        {
          return copyWith(
            defaultValueX: TriggerDefinition.empty(),
          );
        }
      case 'defaultValueUsageContext':
        {
          return copyWith(
            defaultValueX: UsageContext.empty(),
          );
        }
      case 'defaultValueDosage':
        {
          return copyWith(
            defaultValueX: Dosage.empty(),
          );
        }
      case 'meaningWhenMissing':
        {
          return copyWith(
            meaningWhenMissing: FhirMarkdown.empty(),
          );
        }
      case 'orderMeaning':
        {
          return copyWith(
            orderMeaning: FhirString.empty(),
          );
        }
      case 'fixed':
      case 'fixedX':
      case 'fixedBase64Binary':
        {
          return copyWith(
            fixedX: FhirBase64Binary.empty(),
          );
        }
      case 'fixedBoolean':
        {
          return copyWith(
            fixedX: FhirBoolean.empty(),
          );
        }
      case 'fixedCanonical':
        {
          return copyWith(
            fixedX: FhirCanonical.empty(),
          );
        }
      case 'fixedCode':
        {
          return copyWith(
            fixedX: FhirCode.empty(),
          );
        }
      case 'fixedDate':
        {
          return copyWith(
            fixedX: FhirDate.empty(),
          );
        }
      case 'fixedDateTime':
        {
          return copyWith(
            fixedX: FhirDateTime.empty(),
          );
        }
      case 'fixedDecimal':
        {
          return copyWith(
            fixedX: FhirDecimal.empty(),
          );
        }
      case 'fixedId':
        {
          return copyWith(
            fixedX: FhirId.empty(),
          );
        }
      case 'fixedInstant':
        {
          return copyWith(
            fixedX: FhirInstant.empty(),
          );
        }
      case 'fixedInteger':
        {
          return copyWith(
            fixedX: FhirInteger.empty(),
          );
        }
      case 'fixedMarkdown':
        {
          return copyWith(
            fixedX: FhirMarkdown.empty(),
          );
        }
      case 'fixedOid':
        {
          return copyWith(
            fixedX: FhirOid.empty(),
          );
        }
      case 'fixedPositiveInt':
        {
          return copyWith(
            fixedX: FhirPositiveInt.empty(),
          );
        }
      case 'fixedString':
        {
          return copyWith(
            fixedX: FhirString.empty(),
          );
        }
      case 'fixedTime':
        {
          return copyWith(
            fixedX: FhirTime.empty(),
          );
        }
      case 'fixedUnsignedInt':
        {
          return copyWith(
            fixedX: FhirUnsignedInt.empty(),
          );
        }
      case 'fixedUri':
        {
          return copyWith(
            fixedX: FhirUri.empty(),
          );
        }
      case 'fixedUrl':
        {
          return copyWith(
            fixedX: FhirUrl.empty(),
          );
        }
      case 'fixedUuid':
        {
          return copyWith(
            fixedX: FhirUuid.empty(),
          );
        }
      case 'fixedAddress':
        {
          return copyWith(
            fixedX: Address.empty(),
          );
        }
      case 'fixedAge':
        {
          return copyWith(
            fixedX: Age.empty(),
          );
        }
      case 'fixedAnnotation':
        {
          return copyWith(
            fixedX: Annotation.empty(),
          );
        }
      case 'fixedAttachment':
        {
          return copyWith(
            fixedX: Attachment.empty(),
          );
        }
      case 'fixedCodeableConcept':
        {
          return copyWith(
            fixedX: CodeableConcept.empty(),
          );
        }
      case 'fixedCodeableReference':
        {
          return copyWith(
            fixedX: CodeableReference.empty(),
          );
        }
      case 'fixedCoding':
        {
          return copyWith(
            fixedX: Coding.empty(),
          );
        }
      case 'fixedContactPoint':
        {
          return copyWith(
            fixedX: ContactPoint.empty(),
          );
        }
      case 'fixedCount':
        {
          return copyWith(
            fixedX: Count.empty(),
          );
        }
      case 'fixedDistance':
        {
          return copyWith(
            fixedX: Distance.empty(),
          );
        }
      case 'fixedDuration':
        {
          return copyWith(
            fixedX: FhirDuration.empty(),
          );
        }
      case 'fixedHumanName':
        {
          return copyWith(
            fixedX: HumanName.empty(),
          );
        }
      case 'fixedIdentifier':
        {
          return copyWith(
            fixedX: Identifier.empty(),
          );
        }
      case 'fixedMoney':
        {
          return copyWith(
            fixedX: Money.empty(),
          );
        }
      case 'fixedPeriod':
        {
          return copyWith(
            fixedX: Period.empty(),
          );
        }
      case 'fixedQuantity':
        {
          return copyWith(
            fixedX: Quantity.empty(),
          );
        }
      case 'fixedRange':
        {
          return copyWith(
            fixedX: Range.empty(),
          );
        }
      case 'fixedRatio':
        {
          return copyWith(
            fixedX: Ratio.empty(),
          );
        }
      case 'fixedRatioRange':
        {
          return copyWith(
            fixedX: RatioRange.empty(),
          );
        }
      case 'fixedReference':
        {
          return copyWith(
            fixedX: Reference.empty(),
          );
        }
      case 'fixedSampledData':
        {
          return copyWith(
            fixedX: SampledData.empty(),
          );
        }
      case 'fixedSignature':
        {
          return copyWith(
            fixedX: Signature.empty(),
          );
        }
      case 'fixedTiming':
        {
          return copyWith(
            fixedX: Timing.empty(),
          );
        }
      case 'fixedContactDetail':
        {
          return copyWith(
            fixedX: ContactDetail.empty(),
          );
        }
      case 'fixedContributor':
        {
          return copyWith(
            fixedX: Contributor.empty(),
          );
        }
      case 'fixedDataRequirement':
        {
          return copyWith(
            fixedX: DataRequirement.empty(),
          );
        }
      case 'fixedExpression':
        {
          return copyWith(
            fixedX: FhirExpression.empty(),
          );
        }
      case 'fixedParameterDefinition':
        {
          return copyWith(
            fixedX: ParameterDefinition.empty(),
          );
        }
      case 'fixedRelatedArtifact':
        {
          return copyWith(
            fixedX: RelatedArtifact.empty(),
          );
        }
      case 'fixedTriggerDefinition':
        {
          return copyWith(
            fixedX: TriggerDefinition.empty(),
          );
        }
      case 'fixedUsageContext':
        {
          return copyWith(
            fixedX: UsageContext.empty(),
          );
        }
      case 'fixedDosage':
        {
          return copyWith(
            fixedX: Dosage.empty(),
          );
        }
      case 'pattern':
      case 'patternX':
      case 'patternBase64Binary':
        {
          return copyWith(
            patternX: FhirBase64Binary.empty(),
          );
        }
      case 'patternBoolean':
        {
          return copyWith(
            patternX: FhirBoolean.empty(),
          );
        }
      case 'patternCanonical':
        {
          return copyWith(
            patternX: FhirCanonical.empty(),
          );
        }
      case 'patternCode':
        {
          return copyWith(
            patternX: FhirCode.empty(),
          );
        }
      case 'patternDate':
        {
          return copyWith(
            patternX: FhirDate.empty(),
          );
        }
      case 'patternDateTime':
        {
          return copyWith(
            patternX: FhirDateTime.empty(),
          );
        }
      case 'patternDecimal':
        {
          return copyWith(
            patternX: FhirDecimal.empty(),
          );
        }
      case 'patternId':
        {
          return copyWith(
            patternX: FhirId.empty(),
          );
        }
      case 'patternInstant':
        {
          return copyWith(
            patternX: FhirInstant.empty(),
          );
        }
      case 'patternInteger':
        {
          return copyWith(
            patternX: FhirInteger.empty(),
          );
        }
      case 'patternMarkdown':
        {
          return copyWith(
            patternX: FhirMarkdown.empty(),
          );
        }
      case 'patternOid':
        {
          return copyWith(
            patternX: FhirOid.empty(),
          );
        }
      case 'patternPositiveInt':
        {
          return copyWith(
            patternX: FhirPositiveInt.empty(),
          );
        }
      case 'patternString':
        {
          return copyWith(
            patternX: FhirString.empty(),
          );
        }
      case 'patternTime':
        {
          return copyWith(
            patternX: FhirTime.empty(),
          );
        }
      case 'patternUnsignedInt':
        {
          return copyWith(
            patternX: FhirUnsignedInt.empty(),
          );
        }
      case 'patternUri':
        {
          return copyWith(
            patternX: FhirUri.empty(),
          );
        }
      case 'patternUrl':
        {
          return copyWith(
            patternX: FhirUrl.empty(),
          );
        }
      case 'patternUuid':
        {
          return copyWith(
            patternX: FhirUuid.empty(),
          );
        }
      case 'patternAddress':
        {
          return copyWith(
            patternX: Address.empty(),
          );
        }
      case 'patternAge':
        {
          return copyWith(
            patternX: Age.empty(),
          );
        }
      case 'patternAnnotation':
        {
          return copyWith(
            patternX: Annotation.empty(),
          );
        }
      case 'patternAttachment':
        {
          return copyWith(
            patternX: Attachment.empty(),
          );
        }
      case 'patternCodeableConcept':
        {
          return copyWith(
            patternX: CodeableConcept.empty(),
          );
        }
      case 'patternCodeableReference':
        {
          return copyWith(
            patternX: CodeableReference.empty(),
          );
        }
      case 'patternCoding':
        {
          return copyWith(
            patternX: Coding.empty(),
          );
        }
      case 'patternContactPoint':
        {
          return copyWith(
            patternX: ContactPoint.empty(),
          );
        }
      case 'patternCount':
        {
          return copyWith(
            patternX: Count.empty(),
          );
        }
      case 'patternDistance':
        {
          return copyWith(
            patternX: Distance.empty(),
          );
        }
      case 'patternDuration':
        {
          return copyWith(
            patternX: FhirDuration.empty(),
          );
        }
      case 'patternHumanName':
        {
          return copyWith(
            patternX: HumanName.empty(),
          );
        }
      case 'patternIdentifier':
        {
          return copyWith(
            patternX: Identifier.empty(),
          );
        }
      case 'patternMoney':
        {
          return copyWith(
            patternX: Money.empty(),
          );
        }
      case 'patternPeriod':
        {
          return copyWith(
            patternX: Period.empty(),
          );
        }
      case 'patternQuantity':
        {
          return copyWith(
            patternX: Quantity.empty(),
          );
        }
      case 'patternRange':
        {
          return copyWith(
            patternX: Range.empty(),
          );
        }
      case 'patternRatio':
        {
          return copyWith(
            patternX: Ratio.empty(),
          );
        }
      case 'patternRatioRange':
        {
          return copyWith(
            patternX: RatioRange.empty(),
          );
        }
      case 'patternReference':
        {
          return copyWith(
            patternX: Reference.empty(),
          );
        }
      case 'patternSampledData':
        {
          return copyWith(
            patternX: SampledData.empty(),
          );
        }
      case 'patternSignature':
        {
          return copyWith(
            patternX: Signature.empty(),
          );
        }
      case 'patternTiming':
        {
          return copyWith(
            patternX: Timing.empty(),
          );
        }
      case 'patternContactDetail':
        {
          return copyWith(
            patternX: ContactDetail.empty(),
          );
        }
      case 'patternContributor':
        {
          return copyWith(
            patternX: Contributor.empty(),
          );
        }
      case 'patternDataRequirement':
        {
          return copyWith(
            patternX: DataRequirement.empty(),
          );
        }
      case 'patternExpression':
        {
          return copyWith(
            patternX: FhirExpression.empty(),
          );
        }
      case 'patternParameterDefinition':
        {
          return copyWith(
            patternX: ParameterDefinition.empty(),
          );
        }
      case 'patternRelatedArtifact':
        {
          return copyWith(
            patternX: RelatedArtifact.empty(),
          );
        }
      case 'patternTriggerDefinition':
        {
          return copyWith(
            patternX: TriggerDefinition.empty(),
          );
        }
      case 'patternUsageContext':
        {
          return copyWith(
            patternX: UsageContext.empty(),
          );
        }
      case 'patternDosage':
        {
          return copyWith(
            patternX: Dosage.empty(),
          );
        }
      case 'example':
        {
          return copyWith(
            example: <ElementDefinitionExample>[],
          );
        }
      case 'minValue':
      case 'minValueX':
      case 'minValueDate':
        {
          return copyWith(
            minValueX: FhirDate.empty(),
          );
        }
      case 'minValueDateTime':
        {
          return copyWith(
            minValueX: FhirDateTime.empty(),
          );
        }
      case 'minValueInstant':
        {
          return copyWith(
            minValueX: FhirInstant.empty(),
          );
        }
      case 'minValueTime':
        {
          return copyWith(
            minValueX: FhirTime.empty(),
          );
        }
      case 'minValueDecimal':
        {
          return copyWith(
            minValueX: FhirDecimal.empty(),
          );
        }
      case 'minValueInteger':
        {
          return copyWith(
            minValueX: FhirInteger.empty(),
          );
        }
      case 'minValuePositiveInt':
        {
          return copyWith(
            minValueX: FhirPositiveInt.empty(),
          );
        }
      case 'minValueUnsignedInt':
        {
          return copyWith(
            minValueX: FhirUnsignedInt.empty(),
          );
        }
      case 'minValueQuantity':
        {
          return copyWith(
            minValueX: Quantity.empty(),
          );
        }
      case 'maxValue':
      case 'maxValueX':
      case 'maxValueDate':
        {
          return copyWith(
            maxValueX: FhirDate.empty(),
          );
        }
      case 'maxValueDateTime':
        {
          return copyWith(
            maxValueX: FhirDateTime.empty(),
          );
        }
      case 'maxValueInstant':
        {
          return copyWith(
            maxValueX: FhirInstant.empty(),
          );
        }
      case 'maxValueTime':
        {
          return copyWith(
            maxValueX: FhirTime.empty(),
          );
        }
      case 'maxValueDecimal':
        {
          return copyWith(
            maxValueX: FhirDecimal.empty(),
          );
        }
      case 'maxValueInteger':
        {
          return copyWith(
            maxValueX: FhirInteger.empty(),
          );
        }
      case 'maxValuePositiveInt':
        {
          return copyWith(
            maxValueX: FhirPositiveInt.empty(),
          );
        }
      case 'maxValueUnsignedInt':
        {
          return copyWith(
            maxValueX: FhirUnsignedInt.empty(),
          );
        }
      case 'maxValueQuantity':
        {
          return copyWith(
            maxValueX: Quantity.empty(),
          );
        }
      case 'maxLength':
        {
          return copyWith(
            maxLength: FhirInteger.empty(),
          );
        }
      case 'condition':
        {
          return copyWith(
            condition: <FhirId>[],
          );
        }
      case 'constraint':
        {
          return copyWith(
            constraint: <ElementDefinitionConstraint>[],
          );
        }
      case 'mustSupport':
        {
          return copyWith(
            mustSupport: FhirBoolean.empty(),
          );
        }
      case 'isModifier':
        {
          return copyWith(
            isModifier: FhirBoolean.empty(),
          );
        }
      case 'isModifierReason':
        {
          return copyWith(
            isModifierReason: FhirString.empty(),
          );
        }
      case 'isSummary':
        {
          return copyWith(
            isSummary: FhirBoolean.empty(),
          );
        }
      case 'binding':
        {
          return copyWith(
            binding: ElementDefinitionBinding.empty(),
          );
        }
      case 'mapping':
        {
          return copyWith(
            mapping: <ElementDefinitionMapping>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool representation = false,
    bool sliceName = false,
    bool sliceIsConstraining = false,
    bool label = false,
    bool code = false,
    bool slicing = false,
    bool short = false,
    bool definition = false,
    bool comment = false,
    bool requirements = false,
    bool alias = false,
    bool min = false,
    bool max = false,
    bool base = false,
    bool contentReference = false,
    bool type = false,
    bool defaultValue = false,
    bool meaningWhenMissing = false,
    bool orderMeaning = false,
    bool fixed = false,
    bool pattern = false,
    bool example = false,
    bool minValue = false,
    bool maxValue = false,
    bool maxLength = false,
    bool condition = false,
    bool constraint = false,
    bool mustSupport = false,
    bool isModifier = false,
    bool isModifierReason = false,
    bool isSummary = false,
    bool binding = false,
    bool mapping = false,
  }) {
    return ElementDefinition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      path: path,
      representation: representation ? null : this.representation,
      sliceName: sliceName ? null : this.sliceName,
      sliceIsConstraining:
          sliceIsConstraining ? null : this.sliceIsConstraining,
      label: label ? null : this.label,
      code: code ? null : this.code,
      slicing: slicing ? null : this.slicing,
      short: short ? null : this.short,
      definition: definition ? null : this.definition,
      comment: comment ? null : this.comment,
      requirements: requirements ? null : this.requirements,
      alias: alias ? null : this.alias,
      min: min ? null : this.min,
      max: max ? null : this.max,
      base: base ? null : this.base,
      contentReference: contentReference ? null : this.contentReference,
      type: type ? null : this.type,
      defaultValueX: defaultValue ? null : defaultValueX,
      meaningWhenMissing: meaningWhenMissing ? null : this.meaningWhenMissing,
      orderMeaning: orderMeaning ? null : this.orderMeaning,
      fixedX: fixed ? null : fixedX,
      patternX: pattern ? null : patternX,
      example: example ? null : this.example,
      minValueX: minValue ? null : minValueX,
      maxValueX: maxValue ? null : maxValueX,
      maxLength: maxLength ? null : this.maxLength,
      condition: condition ? null : this.condition,
      constraint: constraint ? null : this.constraint,
      mustSupport: mustSupport ? null : this.mustSupport,
      isModifier: isModifier ? null : this.isModifier,
      isModifierReason: isModifierReason ? null : this.isModifierReason,
      isSummary: isSummary ? null : this.isSummary,
      binding: binding ? null : this.binding,
      mapping: mapping ? null : this.mapping,
    );
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
    super.objectPath = 'ElementDefinitionSlicing',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionSlicing.empty() => ElementDefinitionSlicing(
        rules: SlicingRules.values.first,
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'discriminator':
        {
          if (child is List<ElementDefinitionDiscriminator>) {
            // Add all elements from passed list
            final newList = [...?discriminator, ...child];
            return copyWith(discriminator: newList);
          } else if (child is ElementDefinitionDiscriminator) {
            // Add single element to existing list or create new list
            final newList = [...?discriminator, child];
            return copyWith(discriminator: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ordered':
        {
          if (child is FhirBoolean) {
            return copyWith(ordered: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rules':
        {
          if (child is SlicingRules) {
            return copyWith(rules: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'discriminator':
        return ['ElementDefinitionDiscriminator'];
      case 'description':
        return ['FhirString'];
      case 'ordered':
        return ['FhirBoolean'];
      case 'rules':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionSlicing]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionSlicing createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'discriminator':
        {
          return copyWith(
            discriminator: <ElementDefinitionDiscriminator>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'ordered':
        {
          return copyWith(
            ordered: FhirBoolean.empty(),
          );
        }
      case 'rules':
        {
          return copyWith(
            rules: SlicingRules.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionSlicing clear({
    bool id = false,
    bool extension_ = false,
    bool discriminator = false,
    bool description = false,
    bool ordered = false,
  }) {
    return ElementDefinitionSlicing(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      discriminator: discriminator ? null : this.discriminator,
      description: description ? null : this.description,
      ordered: ordered ? null : this.ordered,
      rules: rules,
    );
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
    super.objectPath = 'ElementDefinitionDiscriminator',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionDiscriminator.empty() =>
      ElementDefinitionDiscriminator(
        type: DiscriminatorType.values.first,
        path: FhirString.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is DiscriminatorType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'path':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionDiscriminator]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionDiscriminator createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: DiscriminatorType.empty(),
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionDiscriminator clear({
    bool id = false,
    bool extension_ = false,
  }) {
    return ElementDefinitionDiscriminator(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      type: type,
      path: path,
    );
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
    super.objectPath = 'ElementDefinitionBase',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionBase.empty() => ElementDefinitionBase(
        path: FhirString.empty(),
        min: FhirUnsignedInt.empty(),
        max: FhirString.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'min':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(min: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'max':
        {
          if (child is FhirString) {
            return copyWith(max: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'min':
        return ['FhirUnsignedInt'];
      case 'max':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionBase]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionBase createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'min':
        {
          return copyWith(
            min: FhirUnsignedInt.empty(),
          );
        }
      case 'max':
        {
          return copyWith(
            max: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionBase clear({
    bool id = false,
    bool extension_ = false,
  }) {
    return ElementDefinitionBase(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      path: path,
      min: min,
      max: max,
    );
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
    super.objectPath = 'ElementDefinitionType',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionType.empty() => ElementDefinitionType(
        code: FhirUri.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirUri) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?profile, ...child];
            return copyWith(profile: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [...?profile, child];
            return copyWith(profile: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetProfile':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?targetProfile, ...child];
            return copyWith(targetProfile: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [...?targetProfile, child];
            return copyWith(targetProfile: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'aggregation':
        {
          if (child is List<AggregationMode>) {
            // Add all elements from passed list
            final newList = [...?aggregation, ...child];
            return copyWith(aggregation: newList);
          } else if (child is AggregationMode) {
            // Add single element to existing list or create new list
            final newList = [...?aggregation, child];
            return copyWith(aggregation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'versioning':
        {
          if (child is ReferenceVersionRules) {
            return copyWith(versioning: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'code':
        return ['FhirUri'];
      case 'profile':
        return ['FhirCanonical'];
      case 'targetProfile':
        return ['FhirCanonical'];
      case 'aggregation':
        return ['FhirCode'];
      case 'versioning':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionType]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionType createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: FhirUri.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: <FhirCanonical>[],
          );
        }
      case 'targetProfile':
        {
          return copyWith(
            targetProfile: <FhirCanonical>[],
          );
        }
      case 'aggregation':
        {
          return copyWith(
            aggregation: <AggregationMode>[],
          );
        }
      case 'versioning':
        {
          return copyWith(
            versioning: ReferenceVersionRules.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionType clear({
    bool id = false,
    bool extension_ = false,
    bool profile = false,
    bool targetProfile = false,
    bool aggregation = false,
    bool versioning = false,
  }) {
    return ElementDefinitionType(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      code: code,
      profile: profile ? null : this.profile,
      targetProfile: targetProfile ? null : this.targetProfile,
      aggregation: aggregation ? null : this.aggregation,
      versioning: versioning ? null : this.versioning,
    );
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
    super.objectPath = 'ElementDefinitionExample',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionExample.empty() => ElementDefinitionExample(
        label: FhirString.empty(),
        valueX: FhirBase64Binary.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'label':
        {
          if (child is FhirString) {
            return copyWith(label: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXElementDefinitionExample) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirBase64Binary) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(valueX: child);
            }
            if (child is FhirCode) {
              return copyWith(valueX: child);
            }
            if (child is FhirDate) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(valueX: child);
            }
            if (child is FhirId) {
              return copyWith(valueX: child);
            }
            if (child is FhirInstant) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(valueX: child);
            }
            if (child is FhirOid) {
              return copyWith(valueX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(valueX: child);
            }
            if (child is FhirUri) {
              return copyWith(valueX: child);
            }
            if (child is FhirUrl) {
              return copyWith(valueX: child);
            }
            if (child is FhirUuid) {
              return copyWith(valueX: child);
            }
            if (child is Address) {
              return copyWith(valueX: child);
            }
            if (child is Age) {
              return copyWith(valueX: child);
            }
            if (child is Annotation) {
              return copyWith(valueX: child);
            }
            if (child is Attachment) {
              return copyWith(valueX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(valueX: child);
            }
            if (child is CodeableReference) {
              return copyWith(valueX: child);
            }
            if (child is Coding) {
              return copyWith(valueX: child);
            }
            if (child is ContactPoint) {
              return copyWith(valueX: child);
            }
            if (child is Count) {
              return copyWith(valueX: child);
            }
            if (child is Distance) {
              return copyWith(valueX: child);
            }
            if (child is FhirDuration) {
              return copyWith(valueX: child);
            }
            if (child is HumanName) {
              return copyWith(valueX: child);
            }
            if (child is Identifier) {
              return copyWith(valueX: child);
            }
            if (child is Money) {
              return copyWith(valueX: child);
            }
            if (child is Period) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is Range) {
              return copyWith(valueX: child);
            }
            if (child is Ratio) {
              return copyWith(valueX: child);
            }
            if (child is RatioRange) {
              return copyWith(valueX: child);
            }
            if (child is Reference) {
              return copyWith(valueX: child);
            }
            if (child is SampledData) {
              return copyWith(valueX: child);
            }
            if (child is Signature) {
              return copyWith(valueX: child);
            }
            if (child is Timing) {
              return copyWith(valueX: child);
            }
            if (child is ContactDetail) {
              return copyWith(valueX: child);
            }
            if (child is Contributor) {
              return copyWith(valueX: child);
            }
            if (child is DataRequirement) {
              return copyWith(valueX: child);
            }
            if (child is FhirExpression) {
              return copyWith(valueX: child);
            }
            if (child is ParameterDefinition) {
              return copyWith(valueX: child);
            }
            if (child is RelatedArtifact) {
              return copyWith(valueX: child);
            }
            if (child is TriggerDefinition) {
              return copyWith(valueX: child);
            }
            if (child is UsageContext) {
              return copyWith(valueX: child);
            }
            if (child is Dosage) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirId':
        {
          if (child is FhirId) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is Address) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAge':
        {
          if (child is Age) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableReference':
        {
          if (child is CodeableReference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCount':
        {
          if (child is Count) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDistance':
        {
          if (child is Distance) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanName) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMoney':
        {
          if (child is Money) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatioRange':
        {
          if (child is RatioRange) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSignature':
        {
          if (child is Signature) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTiming':
        {
          if (child is Timing) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContributor':
        {
          if (child is Contributor) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDosage':
        {
          if (child is Dosage) {
            return copyWith(valueX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'label':
        return ['FhirString'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'CodeableReference',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'RatioRange',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64Binary'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueCanonical':
        return ['FhirCanonical'];
      case 'valueCode':
        return ['FhirCode'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueId':
        return ['FhirId'];
      case 'valueInstant':
        return ['FhirInstant'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueMarkdown':
        return ['FhirMarkdown'];
      case 'valueOid':
        return ['FhirOid'];
      case 'valuePositiveInt':
        return ['FhirPositiveInt'];
      case 'valueString':
        return ['FhirString'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueUrl':
        return ['FhirUrl'];
      case 'valueUuid':
        return ['FhirUuid'];
      case 'valueAddress':
        return ['Address'];
      case 'valueAge':
        return ['Age'];
      case 'valueAnnotation':
        return ['Annotation'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueCodeableReference':
        return ['CodeableReference'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueContactPoint':
        return ['ContactPoint'];
      case 'valueCount':
        return ['Count'];
      case 'valueDistance':
        return ['Distance'];
      case 'valueDuration':
        return ['FhirDuration'];
      case 'valueHumanName':
        return ['HumanName'];
      case 'valueIdentifier':
        return ['Identifier'];
      case 'valueMoney':
        return ['Money'];
      case 'valuePeriod':
        return ['Period'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueRatioRange':
        return ['RatioRange'];
      case 'valueReference':
        return ['Reference'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueSignature':
        return ['Signature'];
      case 'valueTiming':
        return ['Timing'];
      case 'valueContactDetail':
        return ['ContactDetail'];
      case 'valueContributor':
        return ['Contributor'];
      case 'valueDataRequirement':
        return ['DataRequirement'];
      case 'valueExpression':
        return ['FhirExpression'];
      case 'valueParameterDefinition':
        return ['ParameterDefinition'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'valueUsageContext':
        return ['UsageContext'];
      case 'valueDosage':
        return ['Dosage'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionExample]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionExample createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'label':
        {
          return copyWith(
            label: FhirString.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          return copyWith(
            valueX: FhirBase64Binary.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueCanonical':
        {
          return copyWith(
            valueX: FhirCanonical.empty(),
          );
        }
      case 'valueCode':
        {
          return copyWith(
            valueX: FhirCode.empty(),
          );
        }
      case 'valueDate':
        {
          return copyWith(
            valueX: FhirDate.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valueDecimal':
        {
          return copyWith(
            valueX: FhirDecimal.empty(),
          );
        }
      case 'valueId':
        {
          return copyWith(
            valueX: FhirId.empty(),
          );
        }
      case 'valueInstant':
        {
          return copyWith(
            valueX: FhirInstant.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueMarkdown':
        {
          return copyWith(
            valueX: FhirMarkdown.empty(),
          );
        }
      case 'valueOid':
        {
          return copyWith(
            valueX: FhirOid.empty(),
          );
        }
      case 'valuePositiveInt':
        {
          return copyWith(
            valueX: FhirPositiveInt.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueUnsignedInt':
        {
          return copyWith(
            valueX: FhirUnsignedInt.empty(),
          );
        }
      case 'valueUri':
        {
          return copyWith(
            valueX: FhirUri.empty(),
          );
        }
      case 'valueUrl':
        {
          return copyWith(
            valueX: FhirUrl.empty(),
          );
        }
      case 'valueUuid':
        {
          return copyWith(
            valueX: FhirUuid.empty(),
          );
        }
      case 'valueAddress':
        {
          return copyWith(
            valueX: Address.empty(),
          );
        }
      case 'valueAge':
        {
          return copyWith(
            valueX: Age.empty(),
          );
        }
      case 'valueAnnotation':
        {
          return copyWith(
            valueX: Annotation.empty(),
          );
        }
      case 'valueAttachment':
        {
          return copyWith(
            valueX: Attachment.empty(),
          );
        }
      case 'valueCodeableConcept':
        {
          return copyWith(
            valueX: CodeableConcept.empty(),
          );
        }
      case 'valueCodeableReference':
        {
          return copyWith(
            valueX: CodeableReference.empty(),
          );
        }
      case 'valueCoding':
        {
          return copyWith(
            valueX: Coding.empty(),
          );
        }
      case 'valueContactPoint':
        {
          return copyWith(
            valueX: ContactPoint.empty(),
          );
        }
      case 'valueCount':
        {
          return copyWith(
            valueX: Count.empty(),
          );
        }
      case 'valueDistance':
        {
          return copyWith(
            valueX: Distance.empty(),
          );
        }
      case 'valueDuration':
        {
          return copyWith(
            valueX: FhirDuration.empty(),
          );
        }
      case 'valueHumanName':
        {
          return copyWith(
            valueX: HumanName.empty(),
          );
        }
      case 'valueIdentifier':
        {
          return copyWith(
            valueX: Identifier.empty(),
          );
        }
      case 'valueMoney':
        {
          return copyWith(
            valueX: Money.empty(),
          );
        }
      case 'valuePeriod':
        {
          return copyWith(
            valueX: Period.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueRange':
        {
          return copyWith(
            valueX: Range.empty(),
          );
        }
      case 'valueRatio':
        {
          return copyWith(
            valueX: Ratio.empty(),
          );
        }
      case 'valueRatioRange':
        {
          return copyWith(
            valueX: RatioRange.empty(),
          );
        }
      case 'valueReference':
        {
          return copyWith(
            valueX: Reference.empty(),
          );
        }
      case 'valueSampledData':
        {
          return copyWith(
            valueX: SampledData.empty(),
          );
        }
      case 'valueSignature':
        {
          return copyWith(
            valueX: Signature.empty(),
          );
        }
      case 'valueTiming':
        {
          return copyWith(
            valueX: Timing.empty(),
          );
        }
      case 'valueContactDetail':
        {
          return copyWith(
            valueX: ContactDetail.empty(),
          );
        }
      case 'valueContributor':
        {
          return copyWith(
            valueX: Contributor.empty(),
          );
        }
      case 'valueDataRequirement':
        {
          return copyWith(
            valueX: DataRequirement.empty(),
          );
        }
      case 'valueExpression':
        {
          return copyWith(
            valueX: FhirExpression.empty(),
          );
        }
      case 'valueParameterDefinition':
        {
          return copyWith(
            valueX: ParameterDefinition.empty(),
          );
        }
      case 'valueRelatedArtifact':
        {
          return copyWith(
            valueX: RelatedArtifact.empty(),
          );
        }
      case 'valueTriggerDefinition':
        {
          return copyWith(
            valueX: TriggerDefinition.empty(),
          );
        }
      case 'valueUsageContext':
        {
          return copyWith(
            valueX: UsageContext.empty(),
          );
        }
      case 'valueDosage':
        {
          return copyWith(
            valueX: Dosage.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionExample clear({
    bool id = false,
    bool extension_ = false,
  }) {
    return ElementDefinitionExample(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      label: label,
      valueX: valueX,
    );
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
    super.objectPath = 'ElementDefinitionConstraint',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionConstraint.empty() => ElementDefinitionConstraint(
        key: FhirId.empty(),
        severity: ConstraintSeverity.values.first,
        human: FhirString.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'key':
        {
          if (child is FhirId) {
            return copyWith(key: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requirements':
        {
          if (child is FhirString) {
            return copyWith(requirements: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'severity':
        {
          if (child is ConstraintSeverity) {
            return copyWith(severity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'human':
        {
          if (child is FhirString) {
            return copyWith(human: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'xpath':
        {
          if (child is FhirString) {
            return copyWith(xpath: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is FhirCanonical) {
            return copyWith(source: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'key':
        return ['FhirId'];
      case 'requirements':
        return ['FhirString'];
      case 'severity':
        return ['FhirCode'];
      case 'human':
        return ['FhirString'];
      case 'expression':
        return ['FhirString'];
      case 'xpath':
        return ['FhirString'];
      case 'source':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionConstraint]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionConstraint createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'key':
        {
          return copyWith(
            key: FhirId.empty(),
          );
        }
      case 'requirements':
        {
          return copyWith(
            requirements: FhirString.empty(),
          );
        }
      case 'severity':
        {
          return copyWith(
            severity: ConstraintSeverity.empty(),
          );
        }
      case 'human':
        {
          return copyWith(
            human: FhirString.empty(),
          );
        }
      case 'expression':
        {
          return copyWith(
            expression: FhirString.empty(),
          );
        }
      case 'xpath':
        {
          return copyWith(
            xpath: FhirString.empty(),
          );
        }
      case 'source':
        {
          return copyWith(
            source: FhirCanonical.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionConstraint clear({
    bool id = false,
    bool extension_ = false,
    bool requirements = false,
    bool expression = false,
    bool xpath = false,
    bool source = false,
  }) {
    return ElementDefinitionConstraint(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      key: key,
      requirements: requirements ? null : this.requirements,
      severity: severity,
      human: human,
      expression: expression ? null : this.expression,
      xpath: xpath ? null : this.xpath,
      source: source ? null : this.source,
    );
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
    super.objectPath = 'ElementDefinitionBinding',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionBinding.empty() => ElementDefinitionBinding(
        strength: BindingStrength.values.first,
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strength':
        {
          if (child is BindingStrength) {
            return copyWith(strength: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSet':
        {
          if (child is FhirCanonical) {
            return copyWith(valueSet: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'strength':
        return ['FhirCode'];
      case 'description':
        return ['FhirString'];
      case 'valueSet':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionBinding]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionBinding createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'strength':
        {
          return copyWith(
            strength: BindingStrength.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'valueSet':
        {
          return copyWith(
            valueSet: FhirCanonical.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionBinding clear({
    bool id = false,
    bool extension_ = false,
    bool description = false,
    bool valueSet = false,
  }) {
    return ElementDefinitionBinding(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      strength: strength,
      description: description ? null : this.description,
      valueSet: valueSet ? null : this.valueSet,
    );
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
    super.objectPath = 'ElementDefinitionMapping',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ElementDefinitionMapping.empty() => ElementDefinitionMapping(
        identity: FhirId.empty(),
        map: FhirString.empty(),
      );

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
  List<FhirBase> getChildrenByName(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identity':
        {
          if (child is FhirId) {
            return copyWith(identity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is FhirCode) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'map':
        {
          if (child is FhirString) {
            return copyWith(map: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'identity':
        return ['FhirId'];
      case 'language':
        return ['FhirCode'];
      case 'map':
        return ['FhirString'];
      case 'comment':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ElementDefinitionMapping]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ElementDefinitionMapping createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'identity':
        {
          return copyWith(
            identity: FhirId.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: FhirCode.empty(),
          );
        }
      case 'map':
        {
          return copyWith(
            map: FhirString.empty(),
          );
        }
      case 'comment':
        {
          return copyWith(
            comment: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementDefinitionMapping clear({
    bool id = false,
    bool extension_ = false,
    bool language = false,
    bool comment = false,
  }) {
    return ElementDefinitionMapping(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      identity: identity,
      language: language ? null : this.language,
      map: map,
      comment: comment ? null : this.comment,
    );
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
