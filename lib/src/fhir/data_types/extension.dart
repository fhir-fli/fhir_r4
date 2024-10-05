import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirExtension extends DataType {
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final FhirString? valueCanonical;
  final Element? valueCanonicalElement;
  final FhirString? valueCode;
  final Element? valueCodeElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final FhirString? valueId;
  final Element? valueIdElement;
  final FhirString? valueInstant;
  final Element? valueInstantElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirString? valueOid;
  final Element? valueOidElement;
  final double? valuePositiveInt;
  final Element? valuePositiveIntElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final double? valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final FhirString? valueUrl;
  final Element? valueUrlElement;
  final FhirString? valueUuid;
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
    super.id,
    super.extension_,
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
  });

}



