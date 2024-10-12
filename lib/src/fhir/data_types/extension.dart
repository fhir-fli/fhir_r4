import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirExtension]
/// Optional Extension Element - found in all resources.
class FhirExtension extends DataType {
  /// Primary constructor for [FhirExtension]

  FhirExtension({
    super.id,
    super.extension_,
    required this.url,
    this.valueBase64Binary,

    /// Extensions for [valueBase64Binary]
    this.valueBase64BinaryElement,
    this.valueBoolean,

    /// Extensions for [valueBoolean]
    this.valueBooleanElement,
    this.valueCanonical,

    /// Extensions for [valueCanonical]
    this.valueCanonicalElement,
    this.valueCode,

    /// Extensions for [valueCode]
    this.valueCodeElement,
    this.valueDate,

    /// Extensions for [valueDate]
    this.valueDateElement,
    this.valueDateTime,

    /// Extensions for [valueDateTime]
    this.valueDateTimeElement,
    this.valueDecimal,

    /// Extensions for [valueDecimal]
    this.valueDecimalElement,
    this.valueId,

    /// Extensions for [valueId]
    this.valueIdElement,
    this.valueInstant,

    /// Extensions for [valueInstant]
    this.valueInstantElement,
    this.valueInteger,

    /// Extensions for [valueInteger]
    this.valueIntegerElement,
    this.valueMarkdown,

    /// Extensions for [valueMarkdown]
    this.valueMarkdownElement,
    this.valueOid,

    /// Extensions for [valueOid]
    this.valueOidElement,
    this.valuePositiveInt,

    /// Extensions for [valuePositiveInt]
    this.valuePositiveIntElement,
    this.valueString,

    /// Extensions for [valueString]
    this.valueStringElement,
    this.valueTime,

    /// Extensions for [valueTime]
    this.valueTimeElement,
    this.valueUnsignedInt,

    /// Extensions for [valueUnsignedInt]
    this.valueUnsignedIntElement,
    this.valueUri,

    /// Extensions for [valueUri]
    this.valueUriElement,
    this.valueUrl,

    /// Extensions for [valueUrl]
    this.valueUrlElement,
    this.valueUuid,

    /// Extensions for [valueUuid]
    this.valueUuidElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: FhirString.fromJson(json['url']),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>,
            )
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson(json['valueCanonical'])
          : null,
      valueCanonicalElement: json['_valueCanonical'] != null
          ? Element.fromJson(
              json['_valueCanonical'] as Map<String, dynamic>,
            )
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson(json['valueCode'])
          : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(
              json['_valueCode'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(
              json['_valueDate'] as Map<String, dynamic>,
            )
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(
              json['_valueDateTime'] as Map<String, dynamic>,
            )
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(
              json['_valueDecimal'] as Map<String, dynamic>,
            )
          : null,
      valueId:
          json['valueId'] != null ? FhirId.fromJson(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(
              json['_valueId'] as Map<String, dynamic>,
            )
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson(json['valueInstant'])
          : null,
      valueInstantElement: json['_valueInstant'] != null
          ? Element.fromJson(
              json['_valueInstant'] as Map<String, dynamic>,
            )
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(
              json['_valueInteger'] as Map<String, dynamic>,
            )
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson(json['valueMarkdown'])
          : null,
      valueMarkdownElement: json['_valueMarkdown'] != null
          ? Element.fromJson(
              json['_valueMarkdown'] as Map<String, dynamic>,
            )
          : null,
      valueOid:
          json['valueOid'] != null ? FhirOid.fromJson(json['valueOid']) : null,
      valueOidElement: json['_valueOid'] != null
          ? Element.fromJson(
              json['_valueOid'] as Map<String, dynamic>,
            )
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['valuePositiveInt'])
          : null,
      valuePositiveIntElement: json['_valuePositiveInt'] != null
          ? Element.fromJson(
              json['_valuePositiveInt'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(
              json['_valueString'] as Map<String, dynamic>,
            )
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson(json['valueTime'])
          : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(
              json['_valueTime'] as Map<String, dynamic>,
            )
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['valueUnsignedInt'])
          : null,
      valueUnsignedIntElement: json['_valueUnsignedInt'] != null
          ? Element.fromJson(
              json['_valueUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      valueUri:
          json['valueUri'] != null ? FhirUri.fromJson(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(
              json['_valueUri'] as Map<String, dynamic>,
            )
          : null,
      valueUrl:
          json['valueUrl'] != null ? FhirUrl.fromJson(json['valueUrl']) : null,
      valueUrlElement: json['_valueUrl'] != null
          ? Element.fromJson(
              json['_valueUrl'] as Map<String, dynamic>,
            )
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson(json['valueUuid'])
          : null,
      valueUuidElement: json['_valueUuid'] != null
          ? Element.fromJson(
              json['_valueUuid'] as Map<String, dynamic>,
            )
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

  /// Deserialize [FhirExtension] from a [String] or [YamlMap] object
  factory FhirExtension.fromYaml(dynamic yaml) => yaml is String
      ? FhirExtension.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirExtension.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FhirExtension cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirExtension] that takes in a [String]
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

  /// [url]
  /// Source of the definition for the extension code - a logical name or a
  /// URL.
  final FhirString url;

  /// [valueBase64Binary]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirBase64Binary? valueBase64Binary;

  /// Extensions for [valueBase64Binary]
  final Element? valueBase64BinaryElement;

  /// [valueBoolean]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirBoolean? valueBoolean;

  /// Extensions for [valueBoolean]
  final Element? valueBooleanElement;

  /// [valueCanonical]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirCanonical? valueCanonical;

  /// Extensions for [valueCanonical]
  final Element? valueCanonicalElement;

  /// [valueCode]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirCode? valueCode;

  /// Extensions for [valueCode]
  final Element? valueCodeElement;

  /// [valueDate]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDate? valueDate;

  /// Extensions for [valueDate]
  final Element? valueDateElement;

  /// [valueDateTime]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDateTime? valueDateTime;

  /// Extensions for [valueDateTime]
  final Element? valueDateTimeElement;

  /// [valueDecimal]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirDecimal? valueDecimal;

  /// Extensions for [valueDecimal]
  final Element? valueDecimalElement;

  /// [valueId]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirId? valueId;

  /// Extensions for [valueId]
  final Element? valueIdElement;

  /// [valueInstant]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirInstant? valueInstant;

  /// Extensions for [valueInstant]
  final Element? valueInstantElement;

  /// [valueInteger]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirInteger? valueInteger;

  /// Extensions for [valueInteger]
  final Element? valueIntegerElement;

  /// [valueMarkdown]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirMarkdown? valueMarkdown;

  /// Extensions for [valueMarkdown]
  final Element? valueMarkdownElement;

  /// [valueOid]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirOid? valueOid;

  /// Extensions for [valueOid]
  final Element? valueOidElement;

  /// [valuePositiveInt]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirPositiveInt? valuePositiveInt;

  /// Extensions for [valuePositiveInt]
  final Element? valuePositiveIntElement;

  /// [valueString]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirString? valueString;

  /// Extensions for [valueString]
  final Element? valueStringElement;

  /// [valueTime]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirTime? valueTime;

  /// Extensions for [valueTime]
  final Element? valueTimeElement;

  /// [valueUnsignedInt]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUnsignedInt? valueUnsignedInt;

  /// Extensions for [valueUnsignedInt]
  final Element? valueUnsignedIntElement;

  /// [valueUri]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUri? valueUri;

  /// Extensions for [valueUri]
  final Element? valueUriElement;

  /// [valueUrl]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUrl? valueUrl;

  /// Extensions for [valueUrl]
  final Element? valueUrlElement;

  /// [valueUuid]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final FhirUuid? valueUuid;

  /// Extensions for [valueUuid]
  final Element? valueUuidElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['url'] = url.toJson();
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.toJson();
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueCanonical?.value != null) {
      json['valueCanonical'] = valueCanonical!.toJson();
    }
    if (valueCanonicalElement != null) {
      json['_valueCanonical'] = valueCanonicalElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.toJson();
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.toJson();
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueId?.value != null) {
      json['valueId'] = valueId!.toJson();
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueInstant?.value != null) {
      json['valueInstant'] = valueInstant!.toJson();
    }
    if (valueInstantElement != null) {
      json['_valueInstant'] = valueInstantElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueMarkdown?.value != null) {
      json['valueMarkdown'] = valueMarkdown!.toJson();
    }
    if (valueMarkdownElement != null) {
      json['_valueMarkdown'] = valueMarkdownElement!.toJson();
    }
    if (valueOid?.value != null) {
      json['valueOid'] = valueOid!.toJson();
    }
    if (valueOidElement != null) {
      json['_valueOid'] = valueOidElement!.toJson();
    }
    if (valuePositiveInt?.value != null) {
      json['valuePositiveInt'] = valuePositiveInt!.toJson();
    }
    if (valuePositiveIntElement != null) {
      json['_valuePositiveInt'] = valuePositiveIntElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueUnsignedInt?.value != null) {
      json['valueUnsignedInt'] = valueUnsignedInt!.toJson();
    }
    if (valueUnsignedIntElement != null) {
      json['_valueUnsignedInt'] = valueUnsignedIntElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.toJson();
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueUrl?.value != null) {
      json['valueUrl'] = valueUrl!.toJson();
    }
    if (valueUrlElement != null) {
      json['_valueUrl'] = valueUrlElement!.toJson();
    }
    if (valueUuid?.value != null) {
      json['valueUuid'] = valueUuid!.toJson();
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
    if (valueCodeableReference != null) {
      json['valueCodeableReference'] = valueCodeableReference!.toJson();
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
    if (valueRatioRange != null) {
      json['valueRatioRange'] = valueRatioRange!.toJson();
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
