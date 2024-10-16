import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Parameters]
/// This resource is a non-persisted resource used to pass information into
/// and back from an [operation](operations.html). It has no other use, and
/// there is no RESTful endpoint associated with it.
class Parameters extends Resource {
  /// Primary constructor for [Parameters]

  Parameters({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Parameters,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ParametersParameter>(
                (v) => ParametersParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Parameters] from a [String]
  /// or [YamlMap] object
  factory Parameters.fromYaml(dynamic yaml) => yaml is String
      ? Parameters.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Parameters.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Parameters cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Parameters]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Parameters.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Parameters.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Parameters';

  /// [parameter]
  /// A parameter passed to or received from the operation.
  final List<ParametersParameter>? parameter;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final fieldJson4 = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_parameter'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Parameters clone() => throw UnimplementedError();
  @override
  Parameters copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
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
      language: language ?? this.language,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ParametersParameter]
/// A parameter passed to or received from the operation.
class ParametersParameter extends BackboneElement {
  /// Primary constructor for [ParametersParameter]

  ParametersParameter({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    this.valueBase64Binary,
    this.valueBoolean,
    this.valueCanonical,
    this.valueCode,
    this.valueDate,
    this.valueDateTime,
    this.valueDecimal,
    this.valueId,
    this.valueInstant,
    this.valueInteger,
    this.valueMarkdown,
    this.valueOid,
    this.valuePositiveInt,
    this.valueString,
    this.valueTime,
    this.valueUnsignedInt,
    this.valueUri,
    this.valueUrl,
    this.valueUuid,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParametersParameter.fromJson(Map<String, dynamic> json) {
    return ParametersParameter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueCanonical'],
              '_value': json['_valueCanonical'],
            })
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson({
              'value': json['valueCode'],
              '_value': json['_valueCode'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueId: json['valueId'] != null
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['valueInstant'],
              '_value': json['_valueInstant'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['valueMarkdown'],
              '_value': json['_valueMarkdown'],
            })
          : null,
      valueOid: json['valueOid'] != null
          ? FhirOid.fromJson({
              'value': json['valueOid'],
              '_value': json['_valueOid'],
            })
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['valuePositiveInt'],
              '_value': json['_valuePositiveInt'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['valueUnsignedInt'],
              '_value': json['_valueUnsignedInt'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
          : null,
      valueUrl: json['valueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['valueUrl'],
              '_value': json['_valueUrl'],
            })
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['valueUuid'],
              '_value': json['_valueUuid'],
            })
          : null,
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(
              json['valueAddress'] as Map<String, dynamic>,
            )
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(
              json['valueAge'] as Map<String, dynamic>,
            )
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(
              json['valueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(
              json['valueCount'] as Map<String, dynamic>,
            )
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(
              json['valueDistance'] as Map<String, dynamic>,
            )
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>,
            )
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(
              json['valueHumanName'] as Map<String, dynamic>,
            )
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(
              json['valueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(
              json['valueMoney'] as Map<String, dynamic>,
            )
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(
              json['valueSignature'] as Map<String, dynamic>,
            )
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(
              json['valueTiming'] as Map<String, dynamic>,
            )
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>,
            )
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>,
            )
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(
              json['valueDosage'] as Map<String, dynamic>,
            )
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(
              json['valueMeta'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? Resource.fromJson(
              json['resource'] as Map<String, dynamic>,
            )
          : null,
      part_: json['part'] != null
          ? (json['part'] as List<dynamic>)
              .map<ParametersParameter>(
                (v) => ParametersParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ParametersParameter] from a [String]
  /// or [YamlMap] object
  factory ParametersParameter.fromYaml(dynamic yaml) => yaml is String
      ? ParametersParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ParametersParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ParametersParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ParametersParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ParametersParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ParametersParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ParametersParameter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// The name of the parameter (reference to the operation definition).
  final FhirString name;

  /// [valueBase64Binary]
  /// Conveys the content if the parameter is a data type.
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBoolean]
  /// Conveys the content if the parameter is a data type.
  final FhirBoolean? valueBoolean;

  /// [valueCanonical]
  /// Conveys the content if the parameter is a data type.
  final FhirCanonical? valueCanonical;

  /// [valueCode]
  /// Conveys the content if the parameter is a data type.
  final FhirCode? valueCode;

  /// [valueDate]
  /// Conveys the content if the parameter is a data type.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// Conveys the content if the parameter is a data type.
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// Conveys the content if the parameter is a data type.
  final FhirDecimal? valueDecimal;

  /// [valueId]
  /// Conveys the content if the parameter is a data type.
  final FhirId? valueId;

  /// [valueInstant]
  /// Conveys the content if the parameter is a data type.
  final FhirInstant? valueInstant;

  /// [valueInteger]
  /// Conveys the content if the parameter is a data type.
  final FhirInteger? valueInteger;

  /// [valueMarkdown]
  /// Conveys the content if the parameter is a data type.
  final FhirMarkdown? valueMarkdown;

  /// [valueOid]
  /// Conveys the content if the parameter is a data type.
  final FhirOid? valueOid;

  /// [valuePositiveInt]
  /// Conveys the content if the parameter is a data type.
  final FhirPositiveInt? valuePositiveInt;

  /// [valueString]
  /// Conveys the content if the parameter is a data type.
  final FhirString? valueString;

  /// [valueTime]
  /// Conveys the content if the parameter is a data type.
  final FhirTime? valueTime;

  /// [valueUnsignedInt]
  /// Conveys the content if the parameter is a data type.
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUri]
  /// Conveys the content if the parameter is a data type.
  final FhirUri? valueUri;

  /// [valueUrl]
  /// Conveys the content if the parameter is a data type.
  final FhirUrl? valueUrl;

  /// [valueUuid]
  /// Conveys the content if the parameter is a data type.
  final FhirUuid? valueUuid;

  /// [valueAddress]
  /// Conveys the content if the parameter is a data type.
  final Address? valueAddress;

  /// [valueAge]
  /// Conveys the content if the parameter is a data type.
  final Age? valueAge;

  /// [valueAnnotation]
  /// Conveys the content if the parameter is a data type.
  final Annotation? valueAnnotation;

  /// [valueAttachment]
  /// Conveys the content if the parameter is a data type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept]
  /// Conveys the content if the parameter is a data type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding]
  /// Conveys the content if the parameter is a data type.
  final Coding? valueCoding;

  /// [valueContactPoint]
  /// Conveys the content if the parameter is a data type.
  final ContactPoint? valueContactPoint;

  /// [valueCount]
  /// Conveys the content if the parameter is a data type.
  final Count? valueCount;

  /// [valueDistance]
  /// Conveys the content if the parameter is a data type.
  final Distance? valueDistance;

  /// [valueDuration]
  /// Conveys the content if the parameter is a data type.
  final FhirDuration? valueDuration;

  /// [valueHumanName]
  /// Conveys the content if the parameter is a data type.
  final HumanName? valueHumanName;

  /// [valueIdentifier]
  /// Conveys the content if the parameter is a data type.
  final Identifier? valueIdentifier;

  /// [valueMoney]
  /// Conveys the content if the parameter is a data type.
  final Money? valueMoney;

  /// [valuePeriod]
  /// Conveys the content if the parameter is a data type.
  final Period? valuePeriod;

  /// [valueQuantity]
  /// Conveys the content if the parameter is a data type.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// Conveys the content if the parameter is a data type.
  final Range? valueRange;

  /// [valueRatio]
  /// Conveys the content if the parameter is a data type.
  final Ratio? valueRatio;

  /// [valueReference]
  /// Conveys the content if the parameter is a data type.
  final Reference? valueReference;

  /// [valueSampledData]
  /// Conveys the content if the parameter is a data type.
  final SampledData? valueSampledData;

  /// [valueSignature]
  /// Conveys the content if the parameter is a data type.
  final Signature? valueSignature;

  /// [valueTiming]
  /// Conveys the content if the parameter is a data type.
  final Timing? valueTiming;

  /// [valueContactDetail]
  /// Conveys the content if the parameter is a data type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor]
  /// Conveys the content if the parameter is a data type.
  final Contributor? valueContributor;

  /// [valueDataRequirement]
  /// Conveys the content if the parameter is a data type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression]
  /// Conveys the content if the parameter is a data type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition]
  /// Conveys the content if the parameter is a data type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact]
  /// Conveys the content if the parameter is a data type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition]
  /// Conveys the content if the parameter is a data type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext]
  /// Conveys the content if the parameter is a data type.
  final UsageContext? valueUsageContext;

  /// [valueDosage]
  /// Conveys the content if the parameter is a data type.
  final Dosage? valueDosage;

  /// [valueMeta]
  /// Conveys the content if the parameter is a data type.
  final FhirMeta? valueMeta;

  /// [resource]
  /// If the parameter is a whole resource.
  final Resource? resource;

  /// [part_]
  /// A named part of a multi-part parameter.
  final List<ParametersParameter>? part_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    if (valueBase64Binary != null) {
      final fieldJson4 = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBase64Binary'] = fieldJson4['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson5 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueBoolean'] = fieldJson5['_value'];
      }
    }

    if (valueCanonical != null) {
      final fieldJson6 = valueCanonical!.toJson();
      json['valueCanonical'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueCanonical'] = fieldJson6['_value'];
      }
    }

    if (valueCode != null) {
      final fieldJson7 = valueCode!.toJson();
      json['valueCode'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueCode'] = fieldJson7['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson8 = valueDate!.toJson();
      json['valueDate'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueDate'] = fieldJson8['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson9 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueDateTime'] = fieldJson9['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson10 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueDecimal'] = fieldJson10['_value'];
      }
    }

    if (valueId != null) {
      final fieldJson11 = valueId!.toJson();
      json['valueId'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueId'] = fieldJson11['_value'];
      }
    }

    if (valueInstant != null) {
      final fieldJson12 = valueInstant!.toJson();
      json['valueInstant'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueInstant'] = fieldJson12['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson13 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueInteger'] = fieldJson13['_value'];
      }
    }

    if (valueMarkdown != null) {
      final fieldJson14 = valueMarkdown!.toJson();
      json['valueMarkdown'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueMarkdown'] = fieldJson14['_value'];
      }
    }

    if (valueOid != null) {
      final fieldJson15 = valueOid!.toJson();
      json['valueOid'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_valueOid'] = fieldJson15['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final fieldJson16 = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_valuePositiveInt'] = fieldJson16['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson17 = valueString!.toJson();
      json['valueString'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_valueString'] = fieldJson17['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson18 = valueTime!.toJson();
      json['valueTime'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_valueTime'] = fieldJson18['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final fieldJson19 = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_valueUnsignedInt'] = fieldJson19['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson20 = valueUri!.toJson();
      json['valueUri'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_valueUri'] = fieldJson20['_value'];
      }
    }

    if (valueUrl != null) {
      final fieldJson21 = valueUrl!.toJson();
      json['valueUrl'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_valueUrl'] = fieldJson21['_value'];
      }
    }

    if (valueUuid != null) {
      final fieldJson22 = valueUuid!.toJson();
      json['valueUuid'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_valueUuid'] = fieldJson22['_value'];
      }
    }

    if (valueAddress != null) {
      final fieldJson23 = valueAddress!.toJson();
      json['valueAddress'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueAddress'] = fieldJson23['_value'];
      }
    }

    if (valueAge != null) {
      final fieldJson24 = valueAge!.toJson();
      json['valueAge'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueAge'] = fieldJson24['_value'];
      }
    }

    if (valueAnnotation != null) {
      final fieldJson25 = valueAnnotation!.toJson();
      json['valueAnnotation'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueAnnotation'] = fieldJson25['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson26 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueAttachment'] = fieldJson26['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson27 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson27['_value'];
      }
    }

    if (valueCoding != null) {
      final fieldJson28 = valueCoding!.toJson();
      json['valueCoding'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_valueCoding'] = fieldJson28['_value'];
      }
    }

    if (valueContactPoint != null) {
      final fieldJson29 = valueContactPoint!.toJson();
      json['valueContactPoint'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_valueContactPoint'] = fieldJson29['_value'];
      }
    }

    if (valueCount != null) {
      final fieldJson30 = valueCount!.toJson();
      json['valueCount'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_valueCount'] = fieldJson30['_value'];
      }
    }

    if (valueDistance != null) {
      final fieldJson31 = valueDistance!.toJson();
      json['valueDistance'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_valueDistance'] = fieldJson31['_value'];
      }
    }

    if (valueDuration != null) {
      final fieldJson32 = valueDuration!.toJson();
      json['valueDuration'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_valueDuration'] = fieldJson32['_value'];
      }
    }

    if (valueHumanName != null) {
      final fieldJson33 = valueHumanName!.toJson();
      json['valueHumanName'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_valueHumanName'] = fieldJson33['_value'];
      }
    }

    if (valueIdentifier != null) {
      final fieldJson34 = valueIdentifier!.toJson();
      json['valueIdentifier'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_valueIdentifier'] = fieldJson34['_value'];
      }
    }

    if (valueMoney != null) {
      final fieldJson35 = valueMoney!.toJson();
      json['valueMoney'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_valueMoney'] = fieldJson35['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson36 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_valuePeriod'] = fieldJson36['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson37 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_valueQuantity'] = fieldJson37['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson38 = valueRange!.toJson();
      json['valueRange'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_valueRange'] = fieldJson38['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson39 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_valueRatio'] = fieldJson39['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson40 = valueReference!.toJson();
      json['valueReference'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_valueReference'] = fieldJson40['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson41 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_valueSampledData'] = fieldJson41['_value'];
      }
    }

    if (valueSignature != null) {
      final fieldJson42 = valueSignature!.toJson();
      json['valueSignature'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_valueSignature'] = fieldJson42['_value'];
      }
    }

    if (valueTiming != null) {
      final fieldJson43 = valueTiming!.toJson();
      json['valueTiming'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_valueTiming'] = fieldJson43['_value'];
      }
    }

    if (valueContactDetail != null) {
      final fieldJson44 = valueContactDetail!.toJson();
      json['valueContactDetail'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_valueContactDetail'] = fieldJson44['_value'];
      }
    }

    if (valueContributor != null) {
      final fieldJson45 = valueContributor!.toJson();
      json['valueContributor'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_valueContributor'] = fieldJson45['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final fieldJson46 = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_valueDataRequirement'] = fieldJson46['_value'];
      }
    }

    if (valueExpression != null) {
      final fieldJson47 = valueExpression!.toJson();
      json['valueExpression'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_valueExpression'] = fieldJson47['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final fieldJson48 = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_valueParameterDefinition'] = fieldJson48['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final fieldJson49 = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_valueRelatedArtifact'] = fieldJson49['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final fieldJson50 = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_valueTriggerDefinition'] = fieldJson50['_value'];
      }
    }

    if (valueUsageContext != null) {
      final fieldJson51 = valueUsageContext!.toJson();
      json['valueUsageContext'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_valueUsageContext'] = fieldJson51['_value'];
      }
    }

    if (valueDosage != null) {
      final fieldJson52 = valueDosage!.toJson();
      json['valueDosage'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_valueDosage'] = fieldJson52['_value'];
      }
    }

    if (valueMeta != null) {
      final fieldJson53 = valueMeta!.toJson();
      json['valueMeta'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_valueMeta'] = fieldJson53['_value'];
      }
    }

    if (resource != null) {
      final fieldJson54 = resource!.toJson();
      json['resource'] = fieldJson54['value'];
      if (fieldJson54['_value'] != null) {
        json['_resource'] = fieldJson54['_value'];
      }
    }

    if (part_ != null && part_!.isNotEmpty) {
      final fieldJson55 = part_!.map((e) => e.toJson()).toList();
      json['part'] = fieldJson55.map((e) => e['value']).toList();
      if (fieldJson55.any((e) => e['_value'] != null)) {
        json['_part'] = fieldJson55.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ParametersParameter clone() => throw UnimplementedError();
  @override
  ParametersParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirBase64Binary? valueBase64Binary,
    FhirBoolean? valueBoolean,
    FhirCanonical? valueCanonical,
    FhirCode? valueCode,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirDecimal? valueDecimal,
    FhirId? valueId,
    FhirInstant? valueInstant,
    FhirInteger? valueInteger,
    FhirMarkdown? valueMarkdown,
    FhirOid? valueOid,
    FhirPositiveInt? valuePositiveInt,
    FhirString? valueString,
    FhirTime? valueTime,
    FhirUnsignedInt? valueUnsignedInt,
    FhirUri? valueUri,
    FhirUrl? valueUrl,
    FhirUuid? valueUuid,
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
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCode: valueCode ?? this.valueCode,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueId: valueId ?? this.valueId,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInteger: valueInteger ?? this.valueInteger,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueOid: valueOid ?? this.valueOid,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUri: valueUri ?? this.valueUri,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUuid: valueUuid ?? this.valueUuid,
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
}
