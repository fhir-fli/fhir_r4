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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      defaultValueX:
          JsonParser.parsePolymorphic<DefaultValueXElementDefinition>(json, {
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
      }),
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
      fixedX: JsonParser.parsePolymorphic<FixedXElementDefinition>(json, {
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
      }),
      patternX: JsonParser.parsePolymorphic<PatternXElementDefinition>(json, {
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
      }),
      example: (json['example'] as List<dynamic>?)
          ?.map<ElementDefinitionExample>(
            (v) => ElementDefinitionExample.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      minValueX: JsonParser.parsePolymorphic<MinValueXElementDefinition>(json, {
        'minValueDate': FhirDate.fromJson,
        'minValueDateTime': FhirDateTime.fromJson,
        'minValueInstant': FhirInstant.fromJson,
        'minValueTime': FhirTime.fromJson,
        'minValueDecimal': FhirDecimal.fromJson,
        'minValueInteger': FhirInteger.fromJson,
        'minValuePositiveInt': FhirPositiveInt.fromJson,
        'minValueUnsignedInt': FhirUnsignedInt.fromJson,
        'minValueQuantity': Quantity.fromJson,
      }),
      maxValueX: JsonParser.parsePolymorphic<MaxValueXElementDefinition>(json, {
        'maxValueDate': FhirDate.fromJson,
        'maxValueDateTime': FhirDateTime.fromJson,
        'maxValueInstant': FhirInstant.fromJson,
        'maxValueTime': FhirTime.fromJson,
        'maxValueDecimal': FhirDecimal.fromJson,
        'maxValueInteger': FhirInteger.fromJson,
        'maxValuePositiveInt': FhirPositiveInt.fromJson,
        'maxValueUnsignedInt': FhirUnsignedInt.fromJson,
        'maxValueQuantity': Quantity.fromJson,
      }),
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
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('path', path);
    if (representation != null && representation!.isNotEmpty) {
      final fieldJson0 = representation!.map((e) => e.toJson()).toList();
      json['representation'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_representation'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (sliceName != null) {
      addField('sliceName', sliceName);
    }

    if (sliceIsConstraining != null) {
      addField('sliceIsConstraining', sliceIsConstraining);
    }

    if (label != null) {
      addField('label', label);
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (slicing != null) {
      json['slicing'] = slicing!.toJson();
    }

    if (short != null) {
      addField('short', short);
    }

    if (definition != null) {
      addField('definition', definition);
    }

    if (comment != null) {
      addField('comment', comment);
    }

    if (requirements != null) {
      addField('requirements', requirements);
    }

    if (alias != null && alias!.isNotEmpty) {
      final fieldJson1 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (min != null) {
      addField('min', min);
    }

    if (max != null) {
      addField('max', max);
    }

    if (base != null) {
      json['base'] = base!.toJson();
    }

    if (contentReference != null) {
      addField('contentReference', contentReference);
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (defaultValueX != null) {
      addField(
          'defaultValue${defaultValueX!.fhirType.capitalize()}', defaultValueX);
    }

    if (meaningWhenMissing != null) {
      addField('meaningWhenMissing', meaningWhenMissing);
    }

    if (orderMeaning != null) {
      addField('orderMeaning', orderMeaning);
    }

    if (fixedX != null) {
      addField('fixed${fixedX!.fhirType.capitalize()}', fixedX);
    }

    if (patternX != null) {
      addField('pattern${patternX!.fhirType.capitalize()}', patternX);
    }

    if (example != null && example!.isNotEmpty) {
      json['example'] = example!.map((e) => e.toJson()).toList();
    }

    if (minValueX != null) {
      addField('minValue${minValueX!.fhirType.capitalize()}', minValueX);
    }

    if (maxValueX != null) {
      addField('maxValue${maxValueX!.fhirType.capitalize()}', maxValueX);
    }

    if (maxLength != null) {
      addField('maxLength', maxLength);
    }

    if (condition != null && condition!.isNotEmpty) {
      final fieldJson2 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (constraint != null && constraint!.isNotEmpty) {
      json['constraint'] = constraint!.map((e) => e.toJson()).toList();
    }

    if (mustSupport != null) {
      addField('mustSupport', mustSupport);
    }

    if (isModifier != null) {
      addField('isModifier', isModifier);
    }

    if (isModifierReason != null) {
      addField('isModifierReason', isModifierReason);
    }

    if (isSummary != null) {
      addField('isSummary', isSummary);
    }

    if (binding != null) {
      json['binding'] = binding!.toJson();
    }

    if (mapping != null && mapping!.isNotEmpty) {
      json['mapping'] = mapping!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinition(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map<ElementDefinitionDiscriminator>(
            (v) => ElementDefinitionDiscriminator.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionSlicing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (discriminator != null && discriminator!.isNotEmpty) {
      json['discriminator'] = discriminator!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (ordered != null) {
      addField('ordered', ordered);
    }

    addField('rules', rules);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionSlicing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      discriminator: discriminator ?? this.discriminator,
      description: description ?? this.description,
      ordered: ordered ?? this.ordered,
      rules: rules ?? this.rules,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionDiscriminator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('path', path);
    return json;
  }

  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
  @override
  ElementDefinitionDiscriminator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    DiscriminatorType? type,
    FhirString? path,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionDiscriminator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      path: path ?? this.path,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionBase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('path', path);
    addField('min', min);
    addField('max', max);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionBase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      min: min ?? this.min,
      max: max ?? this.max,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    if (profile != null && profile!.isNotEmpty) {
      final fieldJson0 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (targetProfile != null && targetProfile!.isNotEmpty) {
      final fieldJson1 = targetProfile!.map((e) => e.toJson()).toList();
      json['targetProfile'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_targetProfile'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (aggregation != null && aggregation!.isNotEmpty) {
      final fieldJson2 = aggregation!.map((e) => e.toJson()).toList();
      json['aggregation'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_aggregation'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (versioning != null) {
      addField('versioning', versioning);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionType(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      targetProfile: targetProfile ?? this.targetProfile,
      aggregation: aggregation ?? this.aggregation,
      versioning: versioning ?? this.versioning,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      )!,
      valueX:
          JsonParser.parsePolymorphic<ValueXElementDefinitionExample>(json, {
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
      })!,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionExample.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('label', label);
    addField('value${valueX.fhirType.capitalize()}', valueX);
    return json;
  }

  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
  @override
  ElementDefinitionExample copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    ValueXElementDefinitionExample? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionExample(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      label: label ?? this.label,
      valueX: valueX ?? this.valueX,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionConstraint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('key', key);
    if (requirements != null) {
      addField('requirements', requirements);
    }

    addField('severity', severity);
    addField('human', human);
    if (expression != null) {
      addField('expression', expression);
    }

    if (xpath != null) {
      addField('xpath', xpath);
    }

    if (source != null) {
      addField('source', source);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionConstraint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      key: key ?? this.key,
      requirements: requirements ?? this.requirements,
      severity: severity ?? this.severity,
      human: human ?? this.human,
      expression: expression ?? this.expression,
      xpath: xpath ?? this.xpath,
      source: source ?? this.source,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('strength', strength);
    if (description != null) {
      addField('description', description);
    }

    if (valueSet != null) {
      addField('valueSet', valueSet);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      strength: strength ?? this.strength,
      description: description ?? this.description,
      valueSet: valueSet ?? this.valueSet,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ElementDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('identity', identity);
    if (language != null) {
      addField('language', language);
    }

    addField('map', map);
    if (comment != null) {
      addField('comment', comment);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      identity: identity ?? this.identity,
      language: language ?? this.language,
      map: map ?? this.map,
      comment: comment ?? this.comment,
    );
  }
}
