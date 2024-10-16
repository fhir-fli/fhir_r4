import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirExtension]
/// Optional Extension Element - found in all resources.
class FhirExtension extends DataType {
  /// Primary constructor for [FhirExtension]

  FhirExtension({
    super.id,
    this.extension_,
    required this.url,
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
    this.valueCodeableReference,
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
    this.valueRatioRange,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExtension.fromJson(Map<String, dynamic> json) {
    return FhirExtension(
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
      url: FhirString.fromJson(
        json['url'] as Map<String, dynamic>,
      ),
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
      valueCodeableReference: json['valueCodeableReference'] != null
          ? CodeableReference.fromJson(
              json['valueCodeableReference'] as Map<String, dynamic>,
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
      valueRatioRange: json['valueRatioRange'] != null
          ? RatioRange.fromJson(
              json['valueRatioRange'] as Map<String, dynamic>,
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
    );
  }

  /// Deserialize [FhirExtension] from a [String]
  /// or [YamlMap] object
  factory FhirExtension.fromYaml(dynamic yaml) => yaml is String
      ? FhirExtension.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirExtension.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('FhirExtension cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirExtension]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExtension.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirExtension.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirExtension';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// Source of the definition for the extension code - a logical name or a
  /// URL.
  final FhirString url;

  /// [valueBase64Binary]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBoolean]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirBoolean? valueBoolean;

  /// [valueCanonical]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirCanonical? valueCanonical;

  /// [valueCode]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirCode? valueCode;

  /// [valueDate]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDecimal? valueDecimal;

  /// [valueId]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirId? valueId;

  /// [valueInstant]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirInstant? valueInstant;

  /// [valueInteger]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirInteger? valueInteger;

  /// [valueMarkdown]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirMarkdown? valueMarkdown;

  /// [valueOid]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirOid? valueOid;

  /// [valuePositiveInt]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirPositiveInt? valuePositiveInt;

  /// [valueString]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirString? valueString;

  /// [valueTime]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirTime? valueTime;

  /// [valueUnsignedInt]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUri]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUri? valueUri;

  /// [valueUrl]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUrl? valueUrl;

  /// [valueUuid]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUuid? valueUuid;

  /// [valueAddress]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Address? valueAddress;

  /// [valueAge]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Age? valueAge;

  /// [valueAnnotation]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Annotation? valueAnnotation;

  /// [valueAttachment]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Attachment? valueAttachment;

  /// [valueCodeableConcept]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final CodeableConcept? valueCodeableConcept;

  /// [valueCodeableReference]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final CodeableReference? valueCodeableReference;

  /// [valueCoding]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Coding? valueCoding;

  /// [valueContactPoint]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final ContactPoint? valueContactPoint;

  /// [valueCount]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Count? valueCount;

  /// [valueDistance]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Distance? valueDistance;

  /// [valueDuration]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDuration? valueDuration;

  /// [valueHumanName]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final HumanName? valueHumanName;

  /// [valueIdentifier]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Identifier? valueIdentifier;

  /// [valueMoney]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Money? valueMoney;

  /// [valuePeriod]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Period? valuePeriod;

  /// [valueQuantity]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Quantity? valueQuantity;

  /// [valueRange]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Range? valueRange;

  /// [valueRatio]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Ratio? valueRatio;

  /// [valueRatioRange]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final RatioRange? valueRatioRange;

  /// [valueReference]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Reference? valueReference;

  /// [valueSampledData]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final SampledData? valueSampledData;

  /// [valueSignature]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Signature? valueSignature;

  /// [valueTiming]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Timing? valueTiming;

  /// [valueContactDetail]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final ContactDetail? valueContactDetail;

  /// [valueContributor]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Contributor? valueContributor;

  /// [valueDataRequirement]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final DataRequirement? valueDataRequirement;

  /// [valueExpression]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final UsageContext? valueUsageContext;

  /// [valueDosage]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final Dosage? valueDosage;
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

    final fieldJson2 = url.toJson();
    json['url'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_url'] = fieldJson2['_value'];
    }

    if (valueBase64Binary != null) {
      final fieldJson3 = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueBase64Binary'] = fieldJson3['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson4 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBoolean'] = fieldJson4['_value'];
      }
    }

    if (valueCanonical != null) {
      final fieldJson5 = valueCanonical!.toJson();
      json['valueCanonical'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueCanonical'] = fieldJson5['_value'];
      }
    }

    if (valueCode != null) {
      final fieldJson6 = valueCode!.toJson();
      json['valueCode'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueCode'] = fieldJson6['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson7 = valueDate!.toJson();
      json['valueDate'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueDate'] = fieldJson7['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson8 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueDateTime'] = fieldJson8['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson9 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueDecimal'] = fieldJson9['_value'];
      }
    }

    if (valueId != null) {
      final fieldJson10 = valueId!.toJson();
      json['valueId'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueId'] = fieldJson10['_value'];
      }
    }

    if (valueInstant != null) {
      final fieldJson11 = valueInstant!.toJson();
      json['valueInstant'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueInstant'] = fieldJson11['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson12 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueInteger'] = fieldJson12['_value'];
      }
    }

    if (valueMarkdown != null) {
      final fieldJson13 = valueMarkdown!.toJson();
      json['valueMarkdown'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueMarkdown'] = fieldJson13['_value'];
      }
    }

    if (valueOid != null) {
      final fieldJson14 = valueOid!.toJson();
      json['valueOid'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueOid'] = fieldJson14['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final fieldJson15 = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_valuePositiveInt'] = fieldJson15['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson16 = valueString!.toJson();
      json['valueString'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_valueString'] = fieldJson16['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson17 = valueTime!.toJson();
      json['valueTime'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_valueTime'] = fieldJson17['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final fieldJson18 = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_valueUnsignedInt'] = fieldJson18['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson19 = valueUri!.toJson();
      json['valueUri'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_valueUri'] = fieldJson19['_value'];
      }
    }

    if (valueUrl != null) {
      final fieldJson20 = valueUrl!.toJson();
      json['valueUrl'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_valueUrl'] = fieldJson20['_value'];
      }
    }

    if (valueUuid != null) {
      final fieldJson21 = valueUuid!.toJson();
      json['valueUuid'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_valueUuid'] = fieldJson21['_value'];
      }
    }

    if (valueAddress != null) {
      final fieldJson22 = valueAddress!.toJson();
      json['valueAddress'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_valueAddress'] = fieldJson22['_value'];
      }
    }

    if (valueAge != null) {
      final fieldJson23 = valueAge!.toJson();
      json['valueAge'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueAge'] = fieldJson23['_value'];
      }
    }

    if (valueAnnotation != null) {
      final fieldJson24 = valueAnnotation!.toJson();
      json['valueAnnotation'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueAnnotation'] = fieldJson24['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson25 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueAttachment'] = fieldJson25['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson26 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson26['_value'];
      }
    }

    if (valueCodeableReference != null) {
      final fieldJson27 = valueCodeableReference!.toJson();
      json['valueCodeableReference'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueCodeableReference'] = fieldJson27['_value'];
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

    if (valueRatioRange != null) {
      final fieldJson40 = valueRatioRange!.toJson();
      json['valueRatioRange'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_valueRatioRange'] = fieldJson40['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson41 = valueReference!.toJson();
      json['valueReference'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_valueReference'] = fieldJson41['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson42 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_valueSampledData'] = fieldJson42['_value'];
      }
    }

    if (valueSignature != null) {
      final fieldJson43 = valueSignature!.toJson();
      json['valueSignature'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_valueSignature'] = fieldJson43['_value'];
      }
    }

    if (valueTiming != null) {
      final fieldJson44 = valueTiming!.toJson();
      json['valueTiming'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_valueTiming'] = fieldJson44['_value'];
      }
    }

    if (valueContactDetail != null) {
      final fieldJson45 = valueContactDetail!.toJson();
      json['valueContactDetail'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_valueContactDetail'] = fieldJson45['_value'];
      }
    }

    if (valueContributor != null) {
      final fieldJson46 = valueContributor!.toJson();
      json['valueContributor'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_valueContributor'] = fieldJson46['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final fieldJson47 = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_valueDataRequirement'] = fieldJson47['_value'];
      }
    }

    if (valueExpression != null) {
      final fieldJson48 = valueExpression!.toJson();
      json['valueExpression'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_valueExpression'] = fieldJson48['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final fieldJson49 = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_valueParameterDefinition'] = fieldJson49['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final fieldJson50 = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_valueRelatedArtifact'] = fieldJson50['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final fieldJson51 = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_valueTriggerDefinition'] = fieldJson51['_value'];
      }
    }

    if (valueUsageContext != null) {
      final fieldJson52 = valueUsageContext!.toJson();
      json['valueUsageContext'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_valueUsageContext'] = fieldJson52['_value'];
      }
    }

    if (valueDosage != null) {
      final fieldJson53 = valueDosage!.toJson();
      json['valueDosage'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_valueDosage'] = fieldJson53['_value'];
      }
    }

    return json;
  }

  @override
  FhirExtension clone() => throw UnimplementedError();
  @override
  FhirExtension copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? url,
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
    CodeableReference? valueCodeableReference,
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
    RatioRange? valueRatioRange,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirExtension(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      url: url ?? this.url,
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
      valueCodeableReference:
          valueCodeableReference ?? this.valueCodeableReference,
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
      valueRatioRange: valueRatioRange ?? this.valueRatioRange,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
