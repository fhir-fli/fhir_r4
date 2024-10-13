// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationKnowledge {
  ObjectBoxMedicationKnowledge({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? manufacturer,
    ObjectBoxCodeableConcept? doseForm,
    ObjectBoxQuantity? amount,
    this.synonym,
    List<ObjectBoxElement>? synonymElement,
    List<ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    List<ObjectBoxReference>? associatedMedication,
    List<ObjectBoxCodeableConcept>? productType,
    List<ObjectBoxMedicationKnowledgeMonograph>? monograph,
    List<ObjectBoxMedicationKnowledgeIngredient>? ingredient,
    this.preparationInstruction,
    ObjectBoxElement? preparationInstructionElement,
    List<ObjectBoxCodeableConcept>? intendedRoute,
    List<ObjectBoxMedicationKnowledgeCost>? cost,
    List<ObjectBoxMedicationKnowledgeMonitoringProgram>? monitoringProgram,
    List<ObjectBoxMedicationKnowledgeAdministrationGuidelines>?
        administrationGuidelines,
    List<ObjectBoxMedicationKnowledgeMedicineClassification>?
        medicineClassification,
    ObjectBoxMedicationKnowledgePackaging? packaging,
    List<ObjectBoxMedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
    List<ObjectBoxReference>? contraindication,
    List<ObjectBoxMedicationKnowledgeRegulatory>? regulatory,
    List<ObjectBoxMedicationKnowledgeKinetics>? kinetics,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.statusElement.target = statusElement;
    this.manufacturer.target = manufacturer;
    this.doseForm.target = doseForm;
    this.amount.target = amount;
    this.synonymElement.addAll(synonymElement ?? []);
    this.relatedMedicationKnowledge.addAll(relatedMedicationKnowledge ?? []);
    this.associatedMedication.addAll(associatedMedication ?? []);
    this.productType.addAll(productType ?? []);
    this.monograph.addAll(monograph ?? []);
    this.ingredient.addAll(ingredient ?? []);
    this.preparationInstructionElement.target = preparationInstructionElement;
    this.intendedRoute.addAll(intendedRoute ?? []);
    this.cost.addAll(cost ?? []);
    this.monitoringProgram.addAll(monitoringProgram ?? []);
    this.administrationGuidelines.addAll(administrationGuidelines ?? []);
    this.medicineClassification.addAll(medicineClassification ?? []);
    this.packaging.target = packaging;
    this.drugCharacteristic.addAll(drugCharacteristic ?? []);
    this.contraindication.addAll(contraindication ?? []);
    this.regulatory.addAll(regulatory ?? []);
    this.kinetics.addAll(kinetics ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> manufacturer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> doseForm = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> amount = ToOne<ObjectBoxQuantity>();
  List<String>? synonym;
  ToMany<ObjectBoxElement> synonymElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge>
      relatedMedicationKnowledge =
      ToMany<ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge>();
  ToMany<ObjectBoxReference> associatedMedication =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> productType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicationKnowledgeMonograph> monograph =
      ToMany<ObjectBoxMedicationKnowledgeMonograph>();
  ToMany<ObjectBoxMedicationKnowledgeIngredient> ingredient =
      ToMany<ObjectBoxMedicationKnowledgeIngredient>();
  String? preparationInstruction;
  ToOne<ObjectBoxElement> preparationInstructionElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> intendedRoute =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicationKnowledgeCost> cost =
      ToMany<ObjectBoxMedicationKnowledgeCost>();
  ToMany<ObjectBoxMedicationKnowledgeMonitoringProgram> monitoringProgram =
      ToMany<ObjectBoxMedicationKnowledgeMonitoringProgram>();
  ToMany<ObjectBoxMedicationKnowledgeAdministrationGuidelines>
      administrationGuidelines =
      ToMany<ObjectBoxMedicationKnowledgeAdministrationGuidelines>();
  ToMany<ObjectBoxMedicationKnowledgeMedicineClassification>
      medicineClassification =
      ToMany<ObjectBoxMedicationKnowledgeMedicineClassification>();
  ToOne<ObjectBoxMedicationKnowledgePackaging> packaging =
      ToOne<ObjectBoxMedicationKnowledgePackaging>();
  ToMany<ObjectBoxMedicationKnowledgeDrugCharacteristic> drugCharacteristic =
      ToMany<ObjectBoxMedicationKnowledgeDrugCharacteristic>();
  ToMany<ObjectBoxReference> contraindication = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgeRegulatory> regulatory =
      ToMany<ObjectBoxMedicationKnowledgeRegulatory>();
  ToMany<ObjectBoxMedicationKnowledgeKinetics> kinetics =
      ToMany<ObjectBoxMedicationKnowledgeKinetics>();
}

@Entity()
class ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge {
  ObjectBoxMedicationKnowledgeRelatedMedicationKnowledge({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxReference>? reference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.reference.addAll(reference ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMonograph {
  ObjectBoxMedicationKnowledgeMonograph({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? source,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.source.target = source;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationKnowledgeIngredient {
  ObjectBoxMedicationKnowledgeIngredient({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? itemCodeableConcept,
    ObjectBoxReference? itemReference,
    this.isActive,
    ObjectBoxElement? isActiveElement,
    ObjectBoxRatio? strength,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemCodeableConcept.target = itemCodeableConcept;
    this.itemReference.target = itemReference;
    this.isActiveElement.target = isActiveElement;
    this.strength.target = strength;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
  bool? isActive;
  ToOne<ObjectBoxElement> isActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio> strength = ToOne<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxMedicationKnowledgeCost {
  ObjectBoxMedicationKnowledgeCost({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.source,
    ObjectBoxElement? sourceElement,
    ObjectBoxMoney? cost,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.sourceElement.target = sourceElement;
    this.cost.target = cost;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> cost = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMonitoringProgram {
  ObjectBoxMedicationKnowledgeMonitoringProgram({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.name,
    ObjectBoxElement? nameElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.nameElement.target = nameElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeAdministrationGuidelines {
  ObjectBoxMedicationKnowledgeAdministrationGuidelines({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxMedicationKnowledgeDosage>? dosage,
    ObjectBoxCodeableConcept? indicationCodeableConcept,
    ObjectBoxReference? indicationReference,
    List<ObjectBoxMedicationKnowledgePatientCharacteristics>?
        patientCharacteristics,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.dosage.addAll(dosage ?? []);
    this.indicationCodeableConcept.target = indicationCodeableConcept;
    this.indicationReference.target = indicationReference;
    this.patientCharacteristics.addAll(patientCharacteristics ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxMedicationKnowledgeDosage> dosage =
      ToMany<ObjectBoxMedicationKnowledgeDosage>();
  ToOne<ObjectBoxCodeableConcept> indicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> indicationReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgePatientCharacteristics>
      patientCharacteristics =
      ToMany<ObjectBoxMedicationKnowledgePatientCharacteristics>();
}

@Entity()
class ObjectBoxMedicationKnowledgeDosage {
  ObjectBoxMedicationKnowledgeDosage({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxDosage>? dosage,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.dosage.addAll(dosage ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDosage> dosage = ToMany<ObjectBoxDosage>();
}

@Entity()
class ObjectBoxMedicationKnowledgePatientCharacteristics {
  ObjectBoxMedicationKnowledgePatientCharacteristics({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? characteristicCodeableConcept,
    ObjectBoxQuantity? characteristicQuantity,
    this.value,
    List<ObjectBoxElement>? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.characteristicCodeableConcept.target = characteristicCodeableConcept;
    this.characteristicQuantity.target = characteristicQuantity;
    this.valueElement.addAll(valueElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> characteristicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> characteristicQuantity = ToOne<ObjectBoxQuantity>();
  List<String>? value;
  ToMany<ObjectBoxElement> valueElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMedicineClassification {
  ObjectBoxMedicationKnowledgeMedicineClassification({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? classification,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.classification.addAll(classification ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> classification =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicationKnowledgePackaging {
  ObjectBoxMedicationKnowledgePackaging({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? quantity,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.quantity.target = quantity;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxMedicationKnowledgeDrugCharacteristic {
  ObjectBoxMedicationKnowledgeDrugCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    ObjectBoxQuantity? valueQuantity,
    this.valueBase64Binary,
    ObjectBoxElement? valueBase64BinaryElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueStringElement.target = valueStringElement;
    this.valueQuantity.target = valueQuantity;
    this.valueBase64BinaryElement.target = valueBase64BinaryElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement> valueBase64BinaryElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeRegulatory {
  ObjectBoxMedicationKnowledgeRegulatory({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? regulatoryAuthority,
    List<ObjectBoxMedicationKnowledgeSubstitution>? substitution,
    List<ObjectBoxMedicationKnowledgeSchedule>? schedule,
    ObjectBoxMedicationKnowledgeMaxDispense? maxDispense,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.regulatoryAuthority.target = regulatoryAuthority;
    this.substitution.addAll(substitution ?? []);
    this.schedule.addAll(schedule ?? []);
    this.maxDispense.target = maxDispense;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> regulatoryAuthority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationKnowledgeSubstitution> substitution =
      ToMany<ObjectBoxMedicationKnowledgeSubstitution>();
  ToMany<ObjectBoxMedicationKnowledgeSchedule> schedule =
      ToMany<ObjectBoxMedicationKnowledgeSchedule>();
  ToOne<ObjectBoxMedicationKnowledgeMaxDispense> maxDispense =
      ToOne<ObjectBoxMedicationKnowledgeMaxDispense>();
}

@Entity()
class ObjectBoxMedicationKnowledgeSubstitution {
  ObjectBoxMedicationKnowledgeSubstitution({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    required this.allowed,
    ObjectBoxElement? allowedElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.allowedElement.target = allowedElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  bool allowed;
  ToOne<ObjectBoxElement> allowedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMedicationKnowledgeSchedule {
  ObjectBoxMedicationKnowledgeSchedule({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? schedule,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.schedule.target = schedule;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> schedule = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicationKnowledgeMaxDispense {
  ObjectBoxMedicationKnowledgeMaxDispense({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? quantity,
    ObjectBoxFhirDuration? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.quantity.target = quantity;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration> period = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxMedicationKnowledgeKinetics {
  ObjectBoxMedicationKnowledgeKinetics({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxQuantity>? areaUnderCurve,
    List<ObjectBoxQuantity>? lethalDose50,
    ObjectBoxFhirDuration? halfLifePeriod,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.areaUnderCurve.addAll(areaUnderCurve ?? []);
    this.lethalDose50.addAll(lethalDose50 ?? []);
    this.halfLifePeriod.target = halfLifePeriod;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxQuantity> areaUnderCurve = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxQuantity> lethalDose50 = ToMany<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration> halfLifePeriod = ToOne<ObjectBoxFhirDuration>();
}
