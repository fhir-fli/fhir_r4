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
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final primitiveList = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_parameter'] = primitiveList.map((e) => e['_value']).toList();
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
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (name != null) {
      final primitiveJson = name!.toJson();
      json['name'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_name'] = primitiveJson['_value'];
      }
    }

    if (valueBase64Binary != null) {
      final primitiveJson = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueBase64Binary'] = primitiveJson['_value'];
      }
    }

    if (valueBoolean != null) {
      final primitiveJson = valueBoolean!.toJson();
      json['valueBoolean'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueBoolean'] = primitiveJson['_value'];
      }
    }

    if (valueCanonical != null) {
      final primitiveJson = valueCanonical!.toJson();
      json['valueCanonical'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueCanonical'] = primitiveJson['_value'];
      }
    }

    if (valueCode != null) {
      final primitiveJson = valueCode!.toJson();
      json['valueCode'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueCode'] = primitiveJson['_value'];
      }
    }

    if (valueDate != null) {
      final primitiveJson = valueDate!.toJson();
      json['valueDate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDate'] = primitiveJson['_value'];
      }
    }

    if (valueDateTime != null) {
      final primitiveJson = valueDateTime!.toJson();
      json['valueDateTime'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDateTime'] = primitiveJson['_value'];
      }
    }

    if (valueDecimal != null) {
      final primitiveJson = valueDecimal!.toJson();
      json['valueDecimal'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDecimal'] = primitiveJson['_value'];
      }
    }

    if (valueId != null) {
      final primitiveJson = valueId!.toJson();
      json['valueId'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueId'] = primitiveJson['_value'];
      }
    }

    if (valueInstant != null) {
      final primitiveJson = valueInstant!.toJson();
      json['valueInstant'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueInstant'] = primitiveJson['_value'];
      }
    }

    if (valueInteger != null) {
      final primitiveJson = valueInteger!.toJson();
      json['valueInteger'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueInteger'] = primitiveJson['_value'];
      }
    }

    if (valueMarkdown != null) {
      final primitiveJson = valueMarkdown!.toJson();
      json['valueMarkdown'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueMarkdown'] = primitiveJson['_value'];
      }
    }

    if (valueOid != null) {
      final primitiveJson = valueOid!.toJson();
      json['valueOid'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueOid'] = primitiveJson['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final primitiveJson = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valuePositiveInt'] = primitiveJson['_value'];
      }
    }

    if (valueString != null) {
      final primitiveJson = valueString!.toJson();
      json['valueString'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueString'] = primitiveJson['_value'];
      }
    }

    if (valueTime != null) {
      final primitiveJson = valueTime!.toJson();
      json['valueTime'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueTime'] = primitiveJson['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final primitiveJson = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueUnsignedInt'] = primitiveJson['_value'];
      }
    }

    if (valueUri != null) {
      final primitiveJson = valueUri!.toJson();
      json['valueUri'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueUri'] = primitiveJson['_value'];
      }
    }

    if (valueUrl != null) {
      final primitiveJson = valueUrl!.toJson();
      json['valueUrl'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueUrl'] = primitiveJson['_value'];
      }
    }

    if (valueUuid != null) {
      final primitiveJson = valueUuid!.toJson();
      json['valueUuid'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueUuid'] = primitiveJson['_value'];
      }
    }

    if (valueAddress != null) {
      final primitiveJson = valueAddress!.toJson();
      json['valueAddress'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueAddress'] = primitiveJson['_value'];
      }
    }

    if (valueAge != null) {
      final primitiveJson = valueAge!.toJson();
      json['valueAge'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueAge'] = primitiveJson['_value'];
      }
    }

    if (valueAnnotation != null) {
      final primitiveJson = valueAnnotation!.toJson();
      json['valueAnnotation'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueAnnotation'] = primitiveJson['_value'];
      }
    }

    if (valueAttachment != null) {
      final primitiveJson = valueAttachment!.toJson();
      json['valueAttachment'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueAttachment'] = primitiveJson['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final primitiveJson = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueCodeableConcept'] = primitiveJson['_value'];
      }
    }

    if (valueCoding != null) {
      final primitiveJson = valueCoding!.toJson();
      json['valueCoding'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueCoding'] = primitiveJson['_value'];
      }
    }

    if (valueContactPoint != null) {
      final primitiveJson = valueContactPoint!.toJson();
      json['valueContactPoint'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueContactPoint'] = primitiveJson['_value'];
      }
    }

    if (valueCount != null) {
      final primitiveJson = valueCount!.toJson();
      json['valueCount'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueCount'] = primitiveJson['_value'];
      }
    }

    if (valueDistance != null) {
      final primitiveJson = valueDistance!.toJson();
      json['valueDistance'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDistance'] = primitiveJson['_value'];
      }
    }

    if (valueDuration != null) {
      final primitiveJson = valueDuration!.toJson();
      json['valueDuration'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDuration'] = primitiveJson['_value'];
      }
    }

    if (valueHumanName != null) {
      final primitiveJson = valueHumanName!.toJson();
      json['valueHumanName'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueHumanName'] = primitiveJson['_value'];
      }
    }

    if (valueIdentifier != null) {
      final primitiveJson = valueIdentifier!.toJson();
      json['valueIdentifier'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueIdentifier'] = primitiveJson['_value'];
      }
    }

    if (valueMoney != null) {
      final primitiveJson = valueMoney!.toJson();
      json['valueMoney'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueMoney'] = primitiveJson['_value'];
      }
    }

    if (valuePeriod != null) {
      final primitiveJson = valuePeriod!.toJson();
      json['valuePeriod'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valuePeriod'] = primitiveJson['_value'];
      }
    }

    if (valueQuantity != null) {
      final primitiveJson = valueQuantity!.toJson();
      json['valueQuantity'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueQuantity'] = primitiveJson['_value'];
      }
    }

    if (valueRange != null) {
      final primitiveJson = valueRange!.toJson();
      json['valueRange'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueRange'] = primitiveJson['_value'];
      }
    }

    if (valueRatio != null) {
      final primitiveJson = valueRatio!.toJson();
      json['valueRatio'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueRatio'] = primitiveJson['_value'];
      }
    }

    if (valueReference != null) {
      final primitiveJson = valueReference!.toJson();
      json['valueReference'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueReference'] = primitiveJson['_value'];
      }
    }

    if (valueSampledData != null) {
      final primitiveJson = valueSampledData!.toJson();
      json['valueSampledData'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueSampledData'] = primitiveJson['_value'];
      }
    }

    if (valueSignature != null) {
      final primitiveJson = valueSignature!.toJson();
      json['valueSignature'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueSignature'] = primitiveJson['_value'];
      }
    }

    if (valueTiming != null) {
      final primitiveJson = valueTiming!.toJson();
      json['valueTiming'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueTiming'] = primitiveJson['_value'];
      }
    }

    if (valueContactDetail != null) {
      final primitiveJson = valueContactDetail!.toJson();
      json['valueContactDetail'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueContactDetail'] = primitiveJson['_value'];
      }
    }

    if (valueContributor != null) {
      final primitiveJson = valueContributor!.toJson();
      json['valueContributor'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueContributor'] = primitiveJson['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final primitiveJson = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDataRequirement'] = primitiveJson['_value'];
      }
    }

    if (valueExpression != null) {
      final primitiveJson = valueExpression!.toJson();
      json['valueExpression'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueExpression'] = primitiveJson['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final primitiveJson = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueParameterDefinition'] = primitiveJson['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final primitiveJson = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueRelatedArtifact'] = primitiveJson['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final primitiveJson = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueTriggerDefinition'] = primitiveJson['_value'];
      }
    }

    if (valueUsageContext != null) {
      final primitiveJson = valueUsageContext!.toJson();
      json['valueUsageContext'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueUsageContext'] = primitiveJson['_value'];
      }
    }

    if (valueDosage != null) {
      final primitiveJson = valueDosage!.toJson();
      json['valueDosage'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueDosage'] = primitiveJson['_value'];
      }
    }

    if (valueMeta != null) {
      final primitiveJson = valueMeta!.toJson();
      json['valueMeta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_valueMeta'] = primitiveJson['_value'];
      }
    }

    if (resource != null) {
      final primitiveJson = resource!.toJson();
      json['resource'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_resource'] = primitiveJson['_value'];
      }
    }

    if (part_ != null && part_!.isNotEmpty) {
      final primitiveList = part_!.map((e) => e.toJson()).toList();
      json['part'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_part'] = primitiveList.map((e) => e['_value']).toList();
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
