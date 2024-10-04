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
}

@Data()
@JsonCodable()
class MedicationAdministrationPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
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
}

@Data()
@JsonCodable()
class MedicationDispensePerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
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
}

@Data()
@JsonCodable()
class MedicationKnowledgeRelatedMedicationKnowledge {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> reference;
}

@Data()
@JsonCodable()
class MedicationKnowledgeMonograph {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference source;
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
}

@Data()
@JsonCodable()
class MedicationKnowledgeDosage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Dosage> dosage;
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
}

@Data()
@JsonCodable()
class MedicationKnowledgeMedicineClassification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classification;
}

@Data()
@JsonCodable()
class MedicationKnowledgePackaging {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Quantity quantity;
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
}

@Data()
@JsonCodable()
class MedicationKnowledgeSchedule {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept schedule;
}

@Data()
@JsonCodable()
class MedicationKnowledgeMaxDispense {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final FhirDuration period;
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
}

@Data()
@JsonCodable()
class MedicationRequestInitialFill {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final FhirDuration duration;
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
}


