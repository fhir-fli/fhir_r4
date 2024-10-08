import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'parameters.g.dart';

/// [Parameters] /// This resource is a non-persisted resource used to pass information into and
/// back from an [operation](operations.html). It has no other use, and there
/// is no RESTful endpoint associated with it.
@JsonSerializable()
class Parameters extends Resource {
  Parameters({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Parameters, fhirType: 'Parameters');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [parameter] /// A parameter passed to or received from the operation.
  @JsonKey(name: 'parameter')
  final List<ParametersParameter>? parameter;
  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParametersToJson(this);

  @override
  Parameters clone() => throw UnimplementedError();
  @override
  Parameters copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    List<ParametersParameter>? parameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Parameters(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Parameters.fromYaml(dynamic yaml) => yaml is String
      ? Parameters.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Parameters.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Parameters cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Parameters.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Parameters.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ParametersParameter] /// A parameter passed to or received from the operation.
@JsonSerializable()
class ParametersParameter extends BackboneElement {
  ParametersParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueCanonical,
    this.valueCanonicalElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueId,
    this.valueIdElement,
    this.valueInstant,
    this.valueInstantElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueMarkdown,
    this.valueMarkdownElement,
    this.valueOid,
    this.valueOidElement,
    this.valuePositiveInt,
    this.valuePositiveIntElement,
    this.valueString,
    this.valueStringElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    this.valueUri,
    this.valueUriElement,
    this.valueUrl,
    this.valueUrlElement,
    this.valueUuid,
    this.valueUuidElement,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta,
    this.resource,
    this.part_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ParametersParameter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the parameter (reference to the operation definition).
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [valueBase64Binary] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary? valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueCanonical] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueCanonical')
  final FhirCanonical? valueCanonical;
  @JsonKey(name: '_valueCanonical')
  final Element? valueCanonicalElement;

  /// [valueCode] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueCode')
  final FhirCode? valueCode;
  @JsonKey(name: '_valueCode')
  final Element? valueCodeElement;

  /// [valueDate] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueDateTime] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal? valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueId] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueId')
  final FhirId? valueId;
  @JsonKey(name: '_valueId')
  final Element? valueIdElement;

  /// [valueInstant] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueInstant')
  final FhirInstant? valueInstant;
  @JsonKey(name: '_valueInstant')
  final Element? valueInstantElement;

  /// [valueInteger] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueInteger')
  final FhirInteger? valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueMarkdown')
  final FhirMarkdown? valueMarkdown;
  @JsonKey(name: '_valueMarkdown')
  final Element? valueMarkdownElement;

  /// [valueOid] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueOid')
  final FhirOid? valueOid;
  @JsonKey(name: '_valueOid')
  final Element? valueOidElement;

  /// [valuePositiveInt] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valuePositiveInt')
  final FhirPositiveInt? valuePositiveInt;
  @JsonKey(name: '_valuePositiveInt')
  final Element? valuePositiveIntElement;

  /// [valueString] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueTime] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueTime')
  final FhirTime? valueTime;
  @JsonKey(name: '_valueTime')
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueUnsignedInt')
  final FhirUnsignedInt? valueUnsignedInt;
  @JsonKey(name: '_valueUnsignedInt')
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueUri')
  final FhirUri? valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueUrl] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueUrl')
  final FhirUrl? valueUrl;
  @JsonKey(name: '_valueUrl')
  final Element? valueUrlElement;

  /// [valueUuid] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueUuid')
  final FhirUuid? valueUuid;
  @JsonKey(name: '_valueUuid')
  final Element? valueUuidElement;

  /// [valueAddress] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueAddress')
  final Address? valueAddress;

  /// [valueAge] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueAge')
  final Age? valueAge;

  /// [valueAnnotation] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueAnnotation')
  final Annotation? valueAnnotation;

  /// [valueAttachment] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueCoding')
  final Coding? valueCoding;

  /// [valueContactPoint] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueContactPoint')
  final ContactPoint? valueContactPoint;

  /// [valueCount] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueCount')
  final Count? valueCount;

  /// [valueDistance] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDistance')
  final Distance? valueDistance;

  /// [valueDuration] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDuration')
  final FhirDuration? valueDuration;

  /// [valueHumanName] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueHumanName')
  final HumanName? valueHumanName;

  /// [valueIdentifier] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueIdentifier')
  final Identifier? valueIdentifier;

  /// [valueMoney] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueMoney')
  final Money? valueMoney;

  /// [valuePeriod] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valuePeriod')
  final Period? valuePeriod;

  /// [valueQuantity] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueRange] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueRange')
  final Range? valueRange;

  /// [valueRatio] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueRatio')
  final Ratio? valueRatio;

  /// [valueReference] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueReference')
  final Reference? valueReference;

  /// [valueSampledData] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueSampledData')
  final SampledData? valueSampledData;

  /// [valueSignature] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueSignature')
  final Signature? valueSignature;

  /// [valueTiming] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueTiming')
  final Timing? valueTiming;

  /// [valueContactDetail] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueContactDetail')
  final ContactDetail? valueContactDetail;

  /// [valueContributor] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueContributor')
  final Contributor? valueContributor;

  /// [valueDataRequirement] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDataRequirement')
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueExpression')
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueParameterDefinition')
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueRelatedArtifact')
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueTriggerDefinition')
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueUsageContext')
  final UsageContext? valueUsageContext;

  /// [valueDosage] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueDosage')
  final Dosage? valueDosage;

  /// [valueMeta] /// Conveys the content if the parameter is a data type.
  @JsonKey(name: 'valueMeta')
  final FhirMeta? valueMeta;

  /// [resource] /// If the parameter is a whole resource.
  @JsonKey(name: 'resource')
  final Resource? resource;

  /// [part_] /// A named part of a multi-part parameter.
  @JsonKey(name: 'part')
  final List<ParametersParameter>? part_;
  factory ParametersParameter.fromJson(Map<String, dynamic> json) =>
      _$ParametersParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParametersParameterToJson(this);

  @override
  ParametersParameter clone() => throw UnimplementedError();
  @override
  ParametersParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
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
    FhirMeta? valueMeta,
    Resource? resource,
    List<ParametersParameter>? part_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ParametersParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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
      valueMeta: valueMeta ?? this.valueMeta,
      resource: resource ?? this.resource,
      part_: part_ ?? this.part_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ParametersParameter.fromYaml(dynamic yaml) => yaml is String
      ? ParametersParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ParametersParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ParametersParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ParametersParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ParametersParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
