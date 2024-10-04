import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TaskInput {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueCanonical;
  final PrimitiveElement ValueCanonical;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final String valueId;
  final PrimitiveElement ValueId;
  final String valueInstant;
  final PrimitiveElement ValueInstant;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueMarkdown;
  final PrimitiveElement ValueMarkdown;
  final String valueOid;
  final PrimitiveElement ValueOid;
  final double valuePositiveInt;
  final PrimitiveElement ValuePositiveInt;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final double valueUnsignedInt;
  final PrimitiveElement ValueUnsignedInt;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final String valueUrl;
  final PrimitiveElement ValueUrl;
  final String valueUuid;
  final PrimitiveElement ValueUuid;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueDuration;
  final HumanName valueHumanName;
  final Identifier valueIdentifier;
  final Money valueMoney;
  final Period valuePeriod;
  final Quantity valueQuantity;
  final Range valueRange;
  final Ratio valueRatio;
  final Reference valueReference;
  final SampledData valueSampledData;
  final Signature valueSignature;
  final Timing valueTiming;
  final ContactDetail valueContactDetail;
  final Contributor valueContributor;
  final DataRequirement valueDataRequirement;
  final FhirExpression valueExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueMeta;
  const TaskInput({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.valueBase64Binary,
    this.ValueBase64Binary,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueCanonical,
    this.ValueCanonical,
    this.valueCode,
    this.ValueCode,
    this.valueDate,
    this.ValueDate,
    this.valueDateTime,
    this.ValueDateTime,
    this.valueDecimal,
    this.ValueDecimal,
    this.valueId,
    this.ValueId,
    this.valueInstant,
    this.ValueInstant,
    this.valueInteger,
    this.ValueInteger,
    this.valueMarkdown,
    this.ValueMarkdown,
    this.valueOid,
    this.ValueOid,
    this.valuePositiveInt,
    this.ValuePositiveInt,
    this.valueString,
    this.ValueString,
    this.valueTime,
    this.ValueTime,
    this.valueUnsignedInt,
    this.ValueUnsignedInt,
    this.valueUri,
    this.ValueUri,
    this.valueUrl,
    this.ValueUrl,
    this.valueUuid,
    this.ValueUuid,
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
  });
}
