import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Medication {
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
  final CodeableConcept code;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference manufacturer;
  final CodeableConcept form;
  final Ratio amount;
  final List<MedicationIngredient> ingredient;
  final MedicationBatch batch;
  const Medication({
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
    required this.code,
    required this.status,
    required this.statusElement,
    required this.manufacturer,
    required this.form,
    required this.amount,
    required this.ingredient,
    required this.batch,
  });
}

@Data()
@JsonCodable()
class MedicationIngredient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean isActive;
  final PrimitiveElement isActiveElement;
  final Ratio strength;
  const MedicationIngredient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.isActive,
    required this.isActiveElement,
    required this.strength,
  });
}

@Data()
@JsonCodable()
class MedicationBatch {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String lotNumber;
  final PrimitiveElement lotNumberElement;
  final FhirDateTime expirationDate;
  final PrimitiveElement expirationDateElement;
  const MedicationBatch({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.lotNumber,
    required this.lotNumberElement,
    required this.expirationDate,
    required this.expirationDateElement,
  });
}

@Data()
@JsonCodable()
class MedicationAdministration {
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
  final List<FhirUri> instantiates;
  final List<PrimitiveElement> instantiatesElement;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> statusReason;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final List<Reference> supportingInformation;
  final String effectiveDateTime;
  final PrimitiveElement effectiveDateTimeElement;
  final Period effectivePeriod;
  final List<MedicationAdministrationPerformer> performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final Reference request;
  final List<Reference> device;
  final List<Annotation> note;
  final MedicationAdministrationDosage dosage;
  final List<Reference> eventHistory;
  const MedicationAdministration({
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
    required this.instantiates,
    required this.instantiatesElement,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    required this.context,
    required this.supportingInformation,
    required this.effectiveDateTime,
    required this.effectiveDateTimeElement,
    required this.effectivePeriod,
    required this.performer,
    required this.reasonCode,
    required this.reasonReference,
    required this.request,
    required this.device,
    required this.note,
    required this.dosage,
    required this.eventHistory,
  });
}

@Data()
@JsonCodable()
class MedicationAdministrationPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  const MedicationAdministrationPerformer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.function_,
    required this.actor,
  });
}

@Data()
@JsonCodable()
class MedicationAdministrationDosage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String text;
  final PrimitiveElement textElement;
  final CodeableConcept site;
  final CodeableConcept route;
  final CodeableConcept method;
  final Quantity dose;
  final Ratio rateRatio;
  final Quantity rateQuantity;
  const MedicationAdministrationDosage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.text,
    required this.textElement,
    required this.site,
    required this.route,
    required this.method,
    required this.dose,
    required this.rateRatio,
    required this.rateQuantity,
  });
}

@Data()
@JsonCodable()
class MedicationDispense {
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
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReasonCodeableConcept;
  final Reference statusReasonReference;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final List<Reference> supportingInformation;
  final List<MedicationDispensePerformer> performer;
  final Reference location;
  final List<Reference> authorizingPrescription;
  final CodeableConcept type;
  final Quantity quantity;
  final Quantity daysSupply;
  final FhirDateTime whenPrepared;
  final PrimitiveElement whenPreparedElement;
  final FhirDateTime whenHandedOver;
  final PrimitiveElement whenHandedOverElement;
  final Reference destination;
  final List<Reference> receiver;
  final List<Annotation> note;
  final List<Dosage> dosageInstruction;
  final MedicationDispenseSubstitution substitution;
  final List<Reference> detectedIssue;
  final List<Reference> eventHistory;
  const MedicationDispense({
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
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.statusReasonCodeableConcept,
    required this.statusReasonReference,
    required this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    required this.context,
    required this.supportingInformation,
    required this.performer,
    required this.location,
    required this.authorizingPrescription,
    required this.type,
    required this.quantity,
    required this.daysSupply,
    required this.whenPrepared,
    required this.whenPreparedElement,
    required this.whenHandedOver,
    required this.whenHandedOverElement,
    required this.destination,
    required this.receiver,
    required this.note,
    required this.dosageInstruction,
    required this.substitution,
    required this.detectedIssue,
    required this.eventHistory,
  });
}

@Data()
@JsonCodable()
class MedicationDispensePerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  const MedicationDispensePerformer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.function_,
    required this.actor,
  });
}

@Data()
@JsonCodable()
class MedicationDispenseSubstitution {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean wasSubstituted;
  final PrimitiveElement wasSubstitutedElement;
  final CodeableConcept type;
  final List<CodeableConcept> reason;
  final List<Reference> responsibleParty;
  const MedicationDispenseSubstitution({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.wasSubstituted,
    required this.wasSubstitutedElement,
    required this.type,
    required this.reason,
    required this.responsibleParty,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledge {
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
  final CodeableConcept code;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference manufacturer;
  final CodeableConcept doseForm;
  final Quantity amount;
  final List<String> synonym;
  final List<PrimitiveElement> synonymElement;
  final List<MedicationKnowledgeRelatedMedicationKnowledge> relatedMedicationKnowledge;
  final List<Reference> associatedMedication;
  final List<CodeableConcept> productType;
  final List<MedicationKnowledgeMonograph> monograph;
  final List<MedicationKnowledgeIngredient> ingredient;
  final FhirMarkdown preparationInstruction;
  final PrimitiveElement preparationInstructionElement;
  final List<CodeableConcept> intendedRoute;
  final List<MedicationKnowledgeCost> cost;
  final List<MedicationKnowledgeMonitoringProgram> monitoringProgram;
  final List<MedicationKnowledgeAdministrationGuidelines> administrationGuidelines;
  final List<MedicationKnowledgeMedicineClassification> medicineClassification;
  final MedicationKnowledgePackaging packaging;
  final List<MedicationKnowledgeDrugCharacteristic> drugCharacteristic;
  final List<Reference> contraindication;
  final List<MedicationKnowledgeRegulatory> regulatory;
  final List<MedicationKnowledgeKinetics> kinetics;
  const MedicationKnowledge({
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
    required this.code,
    required this.status,
    required this.statusElement,
    required this.manufacturer,
    required this.doseForm,
    required this.amount,
    required this.synonym,
    required this.synonymElement,
    required this.relatedMedicationKnowledge,
    required this.associatedMedication,
    required this.productType,
    required this.monograph,
    required this.ingredient,
    required this.preparationInstruction,
    required this.preparationInstructionElement,
    required this.intendedRoute,
    required this.cost,
    required this.monitoringProgram,
    required this.administrationGuidelines,
    required this.medicineClassification,
    required this.packaging,
    required this.drugCharacteristic,
    required this.contraindication,
    required this.regulatory,
    required this.kinetics,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeRelatedMedicationKnowledge {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> reference;
  const MedicationKnowledgeRelatedMedicationKnowledge({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.reference,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeMonograph {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference source;
  const MedicationKnowledgeMonograph({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.source,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeIngredient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean isActive;
  final PrimitiveElement isActiveElement;
  final Ratio strength;
  const MedicationKnowledgeIngredient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.isActive,
    required this.isActiveElement,
    required this.strength,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeCost {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String source;
  final PrimitiveElement sourceElement;
  final Money cost;
  const MedicationKnowledgeCost({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.source,
    required this.sourceElement,
    required this.cost,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeMonitoringProgram {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String name;
  final PrimitiveElement nameElement;
  const MedicationKnowledgeMonitoringProgram({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.name,
    required this.nameElement,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeAdministrationGuidelines {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<MedicationKnowledgeDosage> dosage;
  final CodeableConcept indicationCodeableConcept;
  final Reference indicationReference;
  final List<MedicationKnowledgePatientCharacteristics> patientCharacteristics;
  const MedicationKnowledgeAdministrationGuidelines({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.dosage,
    required this.indicationCodeableConcept,
    required this.indicationReference,
    required this.patientCharacteristics,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeDosage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Dosage> dosage;
  const MedicationKnowledgeDosage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.dosage,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgePatientCharacteristics {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept characteristicCodeableConcept;
  final Quantity characteristicQuantity;
  final List<String> value;
  final List<PrimitiveElement> valueElement;
  const MedicationKnowledgePatientCharacteristics({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.characteristicCodeableConcept,
    required this.characteristicQuantity,
    required this.value,
    required this.valueElement,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeMedicineClassification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classification;
  const MedicationKnowledgeMedicineClassification({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.classification,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgePackaging {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Quantity quantity;
  const MedicationKnowledgePackaging({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.quantity,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeDrugCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final Quantity valueQuantity;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  const MedicationKnowledgeDrugCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueString,
    required this.valueStringElement,
    required this.valueQuantity,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeRegulatory {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference regulatoryAuthority;
  final List<MedicationKnowledgeSubstitution> substitution;
  final List<MedicationKnowledgeSchedule> schedule;
  final MedicationKnowledgeMaxDispense maxDispense;
  const MedicationKnowledgeRegulatory({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.regulatoryAuthority,
    required this.substitution,
    required this.schedule,
    required this.maxDispense,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeSubstitution {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirBoolean allowed;
  final PrimitiveElement allowedElement;
  const MedicationKnowledgeSubstitution({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.allowed,
    required this.allowedElement,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeSchedule {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept schedule;
  const MedicationKnowledgeSchedule({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.schedule,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeMaxDispense {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final FhirDuration period;
  const MedicationKnowledgeMaxDispense({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.quantity,
    required this.period,
  });
}

@Data()
@JsonCodable()
class MedicationKnowledgeKinetics {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Quantity> areaUnderCurve;
  final List<Quantity> lethalDose50;
  final FhirDuration halfLifePeriod;
  const MedicationKnowledgeKinetics({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.areaUnderCurve,
    required this.lethalDose50,
    required this.halfLifePeriod,
  });
}

@Data()
@JsonCodable()
class MedicationRequest {
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
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final bool reportedBoolean;
  final PrimitiveElement reportedBooleanElement;
  final Reference reportedReference;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference encounter;
  final List<Reference> supportingInformation;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final Reference requester;
  final Reference performer;
  final CodeableConcept performerType;
  final Reference recorder;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<FhirCanonical> instantiatesCanonical;
  final List<PrimitiveElement> instantiatesCanonicalElement;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final Identifier groupIdentifier;
  final CodeableConcept courseOfTherapyType;
  final List<Reference> insurance;
  final List<Annotation> note;
  final List<Dosage> dosageInstruction;
  final MedicationRequestDispenseRequest dispenseRequest;
  final MedicationRequestSubstitution substitution;
  final Reference priorPrescription;
  final List<Reference> detectedIssue;
  final List<Reference> eventHistory;
  const MedicationRequest({
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
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.intent,
    required this.intentElement,
    required this.category,
    required this.priority,
    required this.priorityElement,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.reportedBoolean,
    required this.reportedBooleanElement,
    required this.reportedReference,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    required this.encounter,
    required this.supportingInformation,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.requester,
    required this.performer,
    required this.performerType,
    required this.recorder,
    required this.reasonCode,
    required this.reasonReference,
    required this.instantiatesCanonical,
    required this.instantiatesCanonicalElement,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.basedOn,
    required this.groupIdentifier,
    required this.courseOfTherapyType,
    required this.insurance,
    required this.note,
    required this.dosageInstruction,
    required this.dispenseRequest,
    required this.substitution,
    required this.priorPrescription,
    required this.detectedIssue,
    required this.eventHistory,
  });
}

@Data()
@JsonCodable()
class MedicationRequestDispenseRequest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final MedicationRequestInitialFill initialFill;
  final FhirDuration dispenseInterval;
  final Period validityPeriod;
  final FhirUnsignedInt numberOfRepeatsAllowed;
  final PrimitiveElement numberOfRepeatsAllowedElement;
  final Quantity quantity;
  final FhirDuration expectedSupplyDuration;
  final Reference performer;
  const MedicationRequestDispenseRequest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.initialFill,
    required this.dispenseInterval,
    required this.validityPeriod,
    required this.numberOfRepeatsAllowed,
    required this.numberOfRepeatsAllowedElement,
    required this.quantity,
    required this.expectedSupplyDuration,
    required this.performer,
  });
}

@Data()
@JsonCodable()
class MedicationRequestInitialFill {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final FhirDuration duration;
  const MedicationRequestInitialFill({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.quantity,
    required this.duration,
  });
}

@Data()
@JsonCodable()
class MedicationRequestSubstitution {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final bool allowedBoolean;
  final PrimitiveElement allowedBooleanElement;
  final CodeableConcept allowedCodeableConcept;
  final CodeableConcept reason;
  const MedicationRequestSubstitution({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.allowedBoolean,
    required this.allowedBooleanElement,
    required this.allowedCodeableConcept,
    required this.reason,
  });
}

@Data()
@JsonCodable()
class MedicationStatement {
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
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> statusReason;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final String effectiveDateTime;
  final PrimitiveElement effectiveDateTimeElement;
  final Period effectivePeriod;
  final FhirDateTime dateAsserted;
  final PrimitiveElement dateAssertedElement;
  final Reference informationSource;
  final List<Reference> derivedFrom;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<Dosage> dosage;
  const MedicationStatement({
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
    required this.basedOn,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    required this.context,
    required this.effectiveDateTime,
    required this.effectiveDateTimeElement,
    required this.effectivePeriod,
    required this.dateAsserted,
    required this.dateAssertedElement,
    required this.informationSource,
    required this.derivedFrom,
    required this.reasonCode,
    required this.reasonReference,
    required this.note,
    required this.dosage,
  });
}


