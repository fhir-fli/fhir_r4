import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ServiceRequest {
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
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier requisition;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final CodeableConcept code;
  final List<CodeableConcept> orderDetail;
  final Quantity quantityQuantity;
  final Ratio quantityRatio;
  final Range quantityRange;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final bool asNeededBoolean;
  final PrimitiveElement asNeededBooleanElement;
  final CodeableConcept asNeededCodeableConcept;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final Reference requester;
  final CodeableConcept performerType;
  final List<Reference> performer;
  final List<CodeableConcept> locationCode;
  final List<Reference> locationReference;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> insurance;
  final List<Reference> supportingInfo;
  final List<Reference> specimen;
  final List<CodeableConcept> bodySite;
  final List<Annotation> note;
  final String patientInstruction;
  final PrimitiveElement patientInstructionElement;
  final List<Reference> relevantHistory;
  const ServiceRequest({
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
    required this.replaces,
    required this.requisition,
    required this.status,
    required this.statusElement,
    required this.intent,
    required this.intentElement,
    required this.category,
    required this.priority,
    required this.priorityElement,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.code,
    required this.orderDetail,
    required this.quantityQuantity,
    required this.quantityRatio,
    required this.quantityRange,
    required this.subject,
    required this.encounter,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.occurrenceTiming,
    required this.asNeededBoolean,
    required this.asNeededBooleanElement,
    required this.asNeededCodeableConcept,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.requester,
    required this.performerType,
    required this.performer,
    required this.locationCode,
    required this.locationReference,
    required this.reasonCode,
    required this.reasonReference,
    required this.insurance,
    required this.supportingInfo,
    required this.specimen,
    required this.bodySite,
    required this.note,
    required this.patientInstruction,
    required this.patientInstructionElement,
    required this.relevantHistory,
  });
}


