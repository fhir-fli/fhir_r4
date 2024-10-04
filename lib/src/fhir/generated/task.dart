import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Task {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCanonical instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement instantiatesUriElement;
  final List<Reference> basedOn;
  final Identifier groupIdentifier;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final CodeableConcept businessStatus;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final Reference focus;
  final Reference for_;
  final Reference encounter;
  final Period executionPeriod;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final FhirDateTime lastModified;
  final PrimitiveElement lastModifiedElement;
  final Reference requester;
  final List<CodeableConcept> performerType;
  final Reference owner;
  final Reference location;
  final CodeableConcept reasonCode;
  final Reference reasonReference;
  final List<Reference> insurance;
  final List<Annotation> note;
  final List<Reference> relevantHistory;
  final TaskRestriction restriction;
  final List<TaskInput> input;
  final List<TaskOutput> output;
  const Task({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.basedOn,
    required this.groupIdentifier,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.businessStatus,
    required this.intent,
    required this.intentElement,
    required this.priority,
    required this.priorityElement,
    required this.code,
    required this.description,
    required this.descriptionElement,
    required this.focus,
    required this.for_,
    required this.encounter,
    required this.executionPeriod,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.lastModified,
    required this.lastModifiedElement,
    required this.requester,
    required this.performerType,
    required this.owner,
    required this.location,
    required this.reasonCode,
    required this.reasonReference,
    required this.insurance,
    required this.note,
    required this.relevantHistory,
    required this.restriction,
    required this.input,
    required this.output,
  });
}

@Data()
@JsonCodable()
class TaskRestriction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt repetitions;
  final PrimitiveElement repetitionsElement;
  final Period period;
  final List<Reference> recipient;
  const TaskRestriction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.repetitions,
    required this.repetitionsElement,
    required this.period,
    required this.recipient,
  });
}

@Data()
@JsonCodable()
class TaskInput {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueCanonical;
  final PrimitiveElement valueCanonicalElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final String valueId;
  final PrimitiveElement valueIdElement;
  final String valueInstant;
  final PrimitiveElement valueInstantElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueMarkdown;
  final PrimitiveElement valueMarkdownElement;
  final String valueOid;
  final PrimitiveElement valueOidElement;
  final double valuePositiveInt;
  final PrimitiveElement valuePositiveIntElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final double valueUnsignedInt;
  final PrimitiveElement valueUnsignedIntElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final String valueUrl;
  final PrimitiveElement valueUrlElement;
  final String valueUuid;
  final PrimitiveElement valueUuidElement;
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
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueCanonical,
    required this.valueCanonicalElement,
    required this.valueCode,
    required this.valueCodeElement,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
    required this.valueId,
    required this.valueIdElement,
    required this.valueInstant,
    required this.valueInstantElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueMarkdown,
    required this.valueMarkdownElement,
    required this.valueOid,
    required this.valueOidElement,
    required this.valuePositiveInt,
    required this.valuePositiveIntElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueTime,
    required this.valueTimeElement,
    required this.valueUnsignedInt,
    required this.valueUnsignedIntElement,
    required this.valueUri,
    required this.valueUriElement,
    required this.valueUrl,
    required this.valueUrlElement,
    required this.valueUuid,
    required this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueMeta,
  });
}

@Data()
@JsonCodable()
class TaskOutput {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueCanonical;
  final PrimitiveElement valueCanonicalElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final String valueId;
  final PrimitiveElement valueIdElement;
  final String valueInstant;
  final PrimitiveElement valueInstantElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueMarkdown;
  final PrimitiveElement valueMarkdownElement;
  final String valueOid;
  final PrimitiveElement valueOidElement;
  final double valuePositiveInt;
  final PrimitiveElement valuePositiveIntElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final double valueUnsignedInt;
  final PrimitiveElement valueUnsignedIntElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final String valueUrl;
  final PrimitiveElement valueUrlElement;
  final String valueUuid;
  final PrimitiveElement valueUuidElement;
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
  const TaskOutput({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueCanonical,
    required this.valueCanonicalElement,
    required this.valueCode,
    required this.valueCodeElement,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
    required this.valueId,
    required this.valueIdElement,
    required this.valueInstant,
    required this.valueInstantElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueMarkdown,
    required this.valueMarkdownElement,
    required this.valueOid,
    required this.valueOidElement,
    required this.valuePositiveInt,
    required this.valuePositiveIntElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueTime,
    required this.valueTimeElement,
    required this.valueUnsignedInt,
    required this.valueUnsignedIntElement,
    required this.valueUri,
    required this.valueUriElement,
    required this.valueUrl,
    required this.valueUrlElement,
    required this.valueUuid,
    required this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueMeta,
  });
}


