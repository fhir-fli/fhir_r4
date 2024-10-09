import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
  }) : super(resourceType: R4ResourceType.Parameters);
  @override
  String get fhirType => 'Parameters';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [parameter] /// A parameter passed to or received from the operation.
  @JsonKey(name: 'parameter')
  final List<ParametersParameter>? parameter;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map<dynamic>((ParametersParameter v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ParametersParameter>((dynamic v) =>
                  ParametersParameter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });
  @override
  String get fhirType => 'ParametersParameter';
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
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.value;
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueCanonical?.value != null) {
      json['valueCanonical'] = valueCanonical!.value;
    }
    if (valueCanonicalElement != null) {
      json['_valueCanonical'] = valueCanonicalElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.value;
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.value;
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueId?.value != null) {
      json['valueId'] = valueId!.value;
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueInstant?.value != null) {
      json['valueInstant'] = valueInstant!.value;
    }
    if (valueInstantElement != null) {
      json['_valueInstant'] = valueInstantElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueMarkdown?.value != null) {
      json['valueMarkdown'] = valueMarkdown!.value;
    }
    if (valueMarkdownElement != null) {
      json['_valueMarkdown'] = valueMarkdownElement!.toJson();
    }
    if (valueOid?.value != null) {
      json['valueOid'] = valueOid!.value;
    }
    if (valueOidElement != null) {
      json['_valueOid'] = valueOidElement!.toJson();
    }
    if (valuePositiveInt?.value != null) {
      json['valuePositiveInt'] = valuePositiveInt!.value;
    }
    if (valuePositiveIntElement != null) {
      json['_valuePositiveInt'] = valuePositiveIntElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueUnsignedInt?.value != null) {
      json['valueUnsignedInt'] = valueUnsignedInt!.value;
    }
    if (valueUnsignedIntElement != null) {
      json['_valueUnsignedInt'] = valueUnsignedIntElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.value;
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueUrl?.value != null) {
      json['valueUrl'] = valueUrl!.value;
    }
    if (valueUrlElement != null) {
      json['_valueUrl'] = valueUrlElement!.toJson();
    }
    if (valueUuid?.value != null) {
      json['valueUuid'] = valueUuid!.value;
    }
    if (valueUuidElement != null) {
      json['_valueUuid'] = valueUuidElement!.toJson();
    }
    if (valueAddress != null) {
      json['valueAddress'] = valueAddress!.toJson();
    }
    if (valueAge != null) {
      json['valueAge'] = valueAge!.toJson();
    }
    if (valueAnnotation != null) {
      json['valueAnnotation'] = valueAnnotation!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueContactPoint != null) {
      json['valueContactPoint'] = valueContactPoint!.toJson();
    }
    if (valueCount != null) {
      json['valueCount'] = valueCount!.toJson();
    }
    if (valueDistance != null) {
      json['valueDistance'] = valueDistance!.toJson();
    }
    if (valueDuration != null) {
      json['valueDuration'] = valueDuration!.toJson();
    }
    if (valueHumanName != null) {
      json['valueHumanName'] = valueHumanName!.toJson();
    }
    if (valueIdentifier != null) {
      json['valueIdentifier'] = valueIdentifier!.toJson();
    }
    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }
    if (valueSignature != null) {
      json['valueSignature'] = valueSignature!.toJson();
    }
    if (valueTiming != null) {
      json['valueTiming'] = valueTiming!.toJson();
    }
    if (valueContactDetail != null) {
      json['valueContactDetail'] = valueContactDetail!.toJson();
    }
    if (valueContributor != null) {
      json['valueContributor'] = valueContributor!.toJson();
    }
    if (valueDataRequirement != null) {
      json['valueDataRequirement'] = valueDataRequirement!.toJson();
    }
    if (valueExpression != null) {
      json['valueExpression'] = valueExpression!.toJson();
    }
    if (valueParameterDefinition != null) {
      json['valueParameterDefinition'] = valueParameterDefinition!.toJson();
    }
    if (valueRelatedArtifact != null) {
      json['valueRelatedArtifact'] = valueRelatedArtifact!.toJson();
    }
    if (valueTriggerDefinition != null) {
      json['valueTriggerDefinition'] = valueTriggerDefinition!.toJson();
    }
    if (valueUsageContext != null) {
      json['valueUsageContext'] = valueUsageContext!.toJson();
    }
    if (valueDosage != null) {
      json['valueDosage'] = valueDosage!.toJson();
    }
    if (valueMeta != null) {
      json['valueMeta'] = valueMeta!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    if (part_ != null && part_!.isNotEmpty) {
      json['part'] =
          part_!.map<dynamic>((ParametersParameter v) => v.toJson()).toList();
    }
    return json;
  }

  factory ParametersParameter.fromJson(Map<String, dynamic> json) {
    return ParametersParameter(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: FhirString(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(json['_valueBase64Binary'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical(json['valueCanonical'])
          : null,
      valueCanonicalElement: json['_valueCanonical'] != null
          ? Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>)
          : null,
      valueCode: json['valueCode'] != null ? FhirCode(json['valueCode']) : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(json['_valueCode'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null ? FhirDate(json['valueDate']) : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueId: json['valueId'] != null ? FhirId(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(json['_valueId'] as Map<String, dynamic>)
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant(json['valueInstant'])
          : null,
      valueInstantElement: json['_valueInstant'] != null
          ? Element.fromJson(json['_valueInstant'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown(json['valueMarkdown'])
          : null,
      valueMarkdownElement: json['_valueMarkdown'] != null
          ? Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>)
          : null,
      valueOid: json['valueOid'] != null ? FhirOid(json['valueOid']) : null,
      valueOidElement: json['_valueOid'] != null
          ? Element.fromJson(json['_valueOid'] as Map<String, dynamic>)
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt(json['valuePositiveInt'])
          : null,
      valuePositiveIntElement: json['_valuePositiveInt'] != null
          ? Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt(json['valueUnsignedInt'])
          : null,
      valueUnsignedIntElement: json['_valueUnsignedInt'] != null
          ? Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>)
          : null,
      valueUri: json['valueUri'] != null ? FhirUri(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueUrl: json['valueUrl'] != null ? FhirUrl(json['valueUrl']) : null,
      valueUrlElement: json['_valueUrl'] != null
          ? Element.fromJson(json['_valueUrl'] as Map<String, dynamic>)
          : null,
      valueUuid: json['valueUuid'] != null ? FhirUuid(json['valueUuid']) : null,
      valueUuidElement: json['_valueUuid'] != null
          ? Element.fromJson(json['_valueUuid'] as Map<String, dynamic>)
          : null,
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(json['valueAddress'] as Map<String, dynamic>)
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(json['valueAge'] as Map<String, dynamic>)
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>)
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(json['valueCount'] as Map<String, dynamic>)
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(json['valueDistance'] as Map<String, dynamic>)
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>)
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>)
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>)
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>)
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(json['valueSignature'] as Map<String, dynamic>)
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(json['valueTiming'] as Map<String, dynamic>)
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>)
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>)
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>)
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>)
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>)
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>)
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>)
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>)
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>)
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(json['valueMeta'] as Map<String, dynamic>)
          : null,
      resource: json['resource'] != null
          ? Resource.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      part_: json['part'] != null
          ? (json['part'] as List<dynamic>)
              .map<ParametersParameter>((dynamic v) =>
                  ParametersParameter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
