// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationKnowledge {
  ObjectBoxMedicationKnowledge({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? manufacturer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? doseForm = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? amount = ToOne<ObjectBoxQuantity>();
  List<String>? synonym;
  ToMany<ObjectBoxElement>? synonymElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge =
      ToMany<ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge>();
  ToMany<ObjectBoxReference>? associatedMedication =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? productType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicationKnowledgeMonograph>? monograph =
      ToMany<ObjectBoxMedicationKnowledgeMonograph>();
  ToMany<ObjectBoxMedicationKnowledgeIngredient>? ingredient =
      ToMany<ObjectBoxMedicationKnowledgeIngredient>();
  String? preparationInstruction;
  ToOne<ObjectBoxElement>? preparationInstructionElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? intendedRoute =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicationKnowledgeCost>? cost =
      ToMany<ObjectBoxMedicationKnowledgeCost>();
  ToMany<ObjectBoxMedicationKnowledgeMonitoringProgram>? monitoringProgram =
      ToMany<ObjectBoxMedicationKnowledgeMonitoringProgram>();
  ToMany<ObjectBoxMedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines =
      ToMany<ObjectBoxMedicationKnowledgeAdministrationGuidelines>();
  ToMany<ObjectBoxMedicationKnowledgeMedicineClassification>?
      medicineClassification =
      ToMany<ObjectBoxMedicationKnowledgeMedicineClassification>();
  ToOne<ObjectBoxMedicationKnowledgePackaging>? packaging =
      ToOne<ObjectBoxMedicationKnowledgePackaging>();
  ToMany<ObjectBoxMedicationKnowledgeDrugCharacteristic>? drugCharacteristic =
      ToMany<ObjectBoxMedicationKnowledgeDrugCharacteristic>();
  ToMany<ObjectBoxReference>? contraindication = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgeRegulatory>? regulatory =
      ToMany<ObjectBoxMedicationKnowledgeRegulatory>();
  ToMany<ObjectBoxMedicationKnowledgeKinetics>? kinetics =
      ToMany<ObjectBoxMedicationKnowledgeKinetics>();
}

@Entity()
class ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge {
  ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMonograph {
  ObjectBoxMedicationKnowledgeMonograph({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.source,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? source = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationKnowledgeIngredient {
  ObjectBoxMedicationKnowledgeIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? itemReference = ToOne<ObjectBoxReference>();
  bool? isActive;
  ToOne<ObjectBoxElement>? isActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio>? strength = ToOne<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxMedicationKnowledgeCost {
  ObjectBoxMedicationKnowledgeCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.source,
    this.sourceElement,
    required this.cost,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> cost = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMonitoringProgram {
  ObjectBoxMedicationKnowledgeMonitoringProgram({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.name,
    this.nameElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeAdministrationGuidelines {
  ObjectBoxMedicationKnowledgeAdministrationGuidelines({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxMedicationKnowledgeDosage>? dosage =
      ToMany<ObjectBoxMedicationKnowledgeDosage>();
  ToOne<ObjectBoxCodeableConcept>? indicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? indicationReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgePatientCharacteristics>?
      patientCharacteristics =
      ToMany<ObjectBoxMedicationKnowledgePatientCharacteristics>();
}

@Entity()
class ObjectBoxMedicationKnowledgeDosage {
  ObjectBoxMedicationKnowledgeDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.dosage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDosage> dosage = ToMany<ObjectBoxDosage>();
}

@Entity()
class ObjectBoxMedicationKnowledgePatientCharacteristics {
  ObjectBoxMedicationKnowledgePatientCharacteristics({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? characteristicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? characteristicQuantity = ToOne<ObjectBoxQuantity>();
  List<String>? value;
  ToMany<ObjectBoxElement>? valueElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMedicineClassification {
  ObjectBoxMedicationKnowledgeMedicineClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.classification,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? classification =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicationKnowledgePackaging {
  ObjectBoxMedicationKnowledgePackaging({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.quantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxMedicationKnowledgeDrugCharacteristic {
  ObjectBoxMedicationKnowledgeDrugCharacteristic({
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement>? valueBase64BinaryElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeRegulatory {
  ObjectBoxMedicationKnowledgeRegulatory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> regulatoryAuthority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgeSubstitution>? substitution =
      ToMany<ObjectBoxMedicationKnowledgeSubstitution>();
  ToMany<ObjectBoxMedicationKnowledgeSchedule>? schedule =
      ToMany<ObjectBoxMedicationKnowledgeSchedule>();
  ToOne<ObjectBoxMedicationKnowledgeMaxDispense>? maxDispense =
      ToOne<ObjectBoxMedicationKnowledgeMaxDispense>();
}

@Entity()
class ObjectBoxMedicationKnowledgeSubstitution {
  ObjectBoxMedicationKnowledgeSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.allowed,
    this.allowedElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  bool allowed;
  ToOne<ObjectBoxElement>? allowedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeSchedule {
  ObjectBoxMedicationKnowledgeSchedule({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.schedule,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> schedule = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMaxDispense {
  ObjectBoxMedicationKnowledgeMaxDispense({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.quantity,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration>? period = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxMedicationKnowledgeKinetics {
  ObjectBoxMedicationKnowledgeKinetics({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxQuantity>? areaUnderCurve = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxQuantity>? lethalDose50 = ToMany<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration>? halfLifePeriod = ToOne<ObjectBoxFhirDuration>();
}
