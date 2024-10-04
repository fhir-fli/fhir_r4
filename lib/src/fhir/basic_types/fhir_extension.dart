// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

class FhirExtension extends FhirBase {
  final String? id;
  final List<FhirExtension>? extension_;
  final FhirUri? url;
  final Element? urlElement;
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final FhirCanonical? valueCanonical;
  final Element? valueCanonicalElement;
  final FhirCode? valueCode;
  final Element? valueCodeElement;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;
  final FhirId? valueId;
  final Element? valueIdElement;
  final FhirInstant? valueInstant;
  final Element? valueInstantElement;
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;
  final FhirMarkdown? valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirOid? valueOid;
  final Element? valueOidElement;
  final FhirPositiveInt? valuePositiveInt;
  final Element? valuePositiveIntElement;
  final String? valueString;
  final Element? valueStringElement;
  final FhirTime? valueTime;
  final Element? valueTimeElement;
  final FhirUnsignedInt? valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirUri? valueUri;
  final Element? valueUriElement;
  final FhirUrl? valueUrl;
  final Element? valueUrlElement;
  final FhirUuid? valueUuid;
  final Element? valueUuidElement;
  final Address? valueAddress;
  final Age? valueAge;
  final Annotation? valueAnnotation;
  final Attachment? valueAttachment;
  final CodeableConcept? valueCodeableConcept;
  final CodeableReference? valueCodeableReference;
  final Coding? valueCoding;
  final ContactPoint? valueContactPoint;
  final Count? valueCount;
  final Distance? valueDistance;
  final FhirDuration? valueDuration;
  final HumanName? valueHumanName;
  final Identifier? valueIdentifier;
  final Money? valueMoney;
  final Period? valuePeriod;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final Ratio? valueRatio;
  final RatioRange? valueRatioRange;
  final Reference? valueReference;
  final SampledData? valueSampledData;
  final Signature? valueSignature;
  final Timing? valueTiming;
  final ContactDetail? valueContactDetail;
  final Contributor? valueContributor;
  final DataRequirement? valueDataRequirement;
  final FhirExpression? valueExpression;
  final ParameterDefinition? valueParameterDefinition;
  final RelatedArtifact? valueRelatedArtifact;
  final TriggerDefinition? valueTriggerDefinition;
  final UsageContext? valueUsageContext;
  final Dosage? valueDosage;

  FhirExtension({
    this.id,
    this.extension_,
    this.url,
    this.urlElement,
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
    super.fhirType = 'Extension',
  });

  factory FhirExtension.fromYaml(dynamic yaml) => yaml is String
      ? FhirExtension.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirExtension.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirExtension cannot be constructed from input provided.');

  @override
  String toYaml() => json2yaml(toJson());

  factory FhirExtension.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirExtensionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
