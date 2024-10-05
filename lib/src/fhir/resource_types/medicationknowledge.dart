import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationKnowledge extends DomainResource {
  final CodeableConcept? code;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? manufacturer;
  final CodeableConcept? doseForm;
  final Quantity? amount;
  final List<FhirString>? synonym;
  final List<Element>? synonymElement;
  final List<MedicationKnowledgeRelatedMedicationKnowledge>? relatedMedicationKnowledge;
  final List<Reference>? associatedMedication;
  final List<CodeableConcept>? productType;
  final List<MedicationKnowledgeMonograph>? monograph;
  final List<MedicationKnowledgeIngredient>? ingredient;
  final FhirMarkdown? preparationInstruction;
  final Element? preparationInstructionElement;
  final List<CodeableConcept>? intendedRoute;
  final List<MedicationKnowledgeCost>? cost;
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;
  final List<MedicationKnowledgeAdministrationGuidelines>? administrationGuidelines;
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;
  final MedicationKnowledgePackaging? packaging;
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;
  final List<Reference>? contraindication;
  final List<MedicationKnowledgeRegulatory>? regulatory;
  final List<MedicationKnowledgeKinetics>? kinetics;

  MedicationKnowledge({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusElement,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.synonymElement,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.preparationInstructionElement,
    this.intendedRoute,
    this.cost,
    this.monitoringProgram,
    this.administrationGuidelines,
    this.medicineClassification,
    this.packaging,
    this.drugCharacteristic,
    this.contraindication,
    this.regulatory,
    this.kinetics,
  }): super(resourceType: R4ResourceType.MedicationKnowledge);

@override
MedicationKnowledge clone() => this;

}


@Data()
@JsonCodable()
class MedicationKnowledgeRelatedMedicationKnowledge {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<Reference> reference;

  MedicationKnowledgeRelatedMedicationKnowledge({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.reference,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeMonograph {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final Reference? source;

  MedicationKnowledgeMonograph({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.source,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeIngredient {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? itemCodeableConcept;
  final Reference? itemReference;
  final FhirBoolean? isActive;
  final Element? isActiveElement;
  final Ratio? strength;

  MedicationKnowledgeIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeCost {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final FhirString? source;
  final Element? sourceElement;
  final Money cost;

  MedicationKnowledgeCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.source,
    this.sourceElement,
    required this.cost,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeMonitoringProgram {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirString? name;
  final Element? nameElement;

  MedicationKnowledgeMonitoringProgram({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.name,
    this.nameElement,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeAdministrationGuidelines {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<MedicationKnowledgeDosage>? dosage;
  final CodeableConcept? indicationCodeableConcept;
  final Reference? indicationReference;
  final List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics;

  MedicationKnowledgeAdministrationGuidelines({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeDosage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<Dosage> dosage;

  MedicationKnowledgeDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.dosage,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgePatientCharacteristics {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? characteristicCodeableConcept;
  final Quantity? characteristicQuantity;
  final List<FhirString>? value;
  final List<Element>? valueElement;

  MedicationKnowledgePatientCharacteristics({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeMedicineClassification {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept>? classification;

  MedicationKnowledgeMedicineClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.classification,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgePackaging {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final Quantity? quantity;

  MedicationKnowledgePackaging({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.quantity,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeDrugCharacteristic {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Quantity? valueQuantity;
  final FhirString? valueBase64Binary;
  final Element? valueBase64BinaryElement;

  MedicationKnowledgeDrugCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeRegulatory {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference regulatoryAuthority;
  final List<MedicationKnowledgeSubstitution>? substitution;
  final List<MedicationKnowledgeSchedule>? schedule;
  final MedicationKnowledgeMaxDispense? maxDispense;

  MedicationKnowledgeRegulatory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeSubstitution {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final FhirBoolean? allowed;
  final Element? allowedElement;

  MedicationKnowledgeSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.allowed,
    this.allowedElement,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeSchedule {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept schedule;

  MedicationKnowledgeSchedule({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.schedule,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeMaxDispense {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Quantity quantity;
  final FhirDuration? period;

  MedicationKnowledgeMaxDispense({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.quantity,
    this.period,
  });

}


@Data()
@JsonCodable()
class MedicationKnowledgeKinetics {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Quantity>? areaUnderCurve;
  final List<Quantity>? lethalDose50;
  final FhirDuration? halfLifePeriod;

  MedicationKnowledgeKinetics({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
  });

}



