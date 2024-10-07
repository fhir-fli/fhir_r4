import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirExtension extends DataType {
  final FhirString url;
  final Element? urlElement;
  final FhirBase64Binary? valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirCanonical? valueFhirCanonical;
  final Element? valueFhirCanonicalElement;
  final FhirCode? valueFhirCode;
  final Element? valueFhirCodeElement;
  final FhirDate? valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime? valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirDecimal? valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirId? valueFhirId;
  final Element? valueFhirIdElement;
  final FhirInstant? valueFhirInstant;
  final Element? valueFhirInstantElement;
  final FhirInteger? valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirMarkdown? valueFhirMarkdown;
  final Element? valueFhirMarkdownElement;
  final FhirOid? valueFhirOid;
  final Element? valueFhirOidElement;
  final FhirPositiveInt? valueFhirPositiveInt;
  final Element? valueFhirPositiveIntElement;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final FhirTime? valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirUnsignedInt? valueFhirUnsignedInt;
  final Element? valueFhirUnsignedIntElement;
  final FhirUri? valueFhirUri;
  final Element? valueFhirUriElement;
  final FhirUrl? valueFhirUrl;
  final Element? valueFhirUrlElement;
  final FhirUuid? valueFhirUuid;
  final Element? valueFhirUuidElement;
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
  final FhirDuration? valueFhirDuration;
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
  final FhirExpression? valueFhirExpression;
  final ParameterDefinition? valueParameterDefinition;
  final RelatedArtifact? valueRelatedArtifact;
  final TriggerDefinition? valueTriggerDefinition;
  final UsageContext? valueUsageContext;
  final Dosage? valueDosage;

  FhirExtension({
    super.id,
    super.extension_,
    required this.url,
this.urlElement,
    this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirCanonical,
this.valueFhirCanonicalElement,
    this.valueFhirCode,
this.valueFhirCodeElement,
    this.valueFhirDate,
this.valueFhirDateElement,
    this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    this.valueFhirDecimal,
this.valueFhirDecimalElement,
    this.valueFhirId,
this.valueFhirIdElement,
    this.valueFhirInstant,
this.valueFhirInstantElement,
    this.valueFhirInteger,
this.valueFhirIntegerElement,
    this.valueFhirMarkdown,
this.valueFhirMarkdownElement,
    this.valueFhirOid,
this.valueFhirOidElement,
    this.valueFhirPositiveInt,
this.valueFhirPositiveIntElement,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueFhirTime,
this.valueFhirTimeElement,
    this.valueFhirUnsignedInt,
this.valueFhirUnsignedIntElement,
    this.valueFhirUri,
this.valueFhirUriElement,
    this.valueFhirUrl,
this.valueFhirUrlElement,
    this.valueFhirUuid,
this.valueFhirUuidElement,
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
    this.valueFhirDuration,
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
    this.valueFhirExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
  });

@override
FhirExtension clone() => throw UnimplementedError();
}

