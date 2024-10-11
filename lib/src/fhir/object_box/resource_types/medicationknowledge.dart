import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MedicationKnowledge extends Resource {
  MedicationKnowledge({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.status,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? status;
  ToOne<Reference>? manufacturer = ToOne<Reference>();
  ToOne<CodeableConcept>? doseForm = ToOne<CodeableConcept>();
  ToOne<Quantity>? amount = ToOne<Quantity>();
  List<String>? synonym;
  ToMany<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge =
      ToMany<MedicationKnowledgeRelatedMedicationKnowledge>();
  ToMany<Reference>? associatedMedication = ToMany<Reference>();
  ToMany<CodeableConcept>? productType = ToMany<CodeableConcept>();
  ToMany<MedicationKnowledgeMonograph>? monograph =
      ToMany<MedicationKnowledgeMonograph>();
  ToMany<MedicationKnowledgeIngredient>? ingredient =
      ToMany<MedicationKnowledgeIngredient>();
  String? preparationInstruction;
  ToMany<CodeableConcept>? intendedRoute = ToMany<CodeableConcept>();
  ToMany<MedicationKnowledgeCost>? cost = ToMany<MedicationKnowledgeCost>();
  ToMany<MedicationKnowledgeMonitoringProgram>? monitoringProgram =
      ToMany<MedicationKnowledgeMonitoringProgram>();
  ToMany<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines =
      ToMany<MedicationKnowledgeAdministrationGuidelines>();
  ToMany<MedicationKnowledgeMedicineClassification>? medicineClassification =
      ToMany<MedicationKnowledgeMedicineClassification>();
  ToOne<MedicationKnowledgePackaging>? packaging =
      ToOne<MedicationKnowledgePackaging>();
  ToMany<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic =
      ToMany<MedicationKnowledgeDrugCharacteristic>();
  ToMany<Reference>? contraindication = ToMany<Reference>();
  ToMany<MedicationKnowledgeRegulatory>? regulatory =
      ToMany<MedicationKnowledgeRegulatory>();
  ToMany<MedicationKnowledgeKinetics>? kinetics =
      ToMany<MedicationKnowledgeKinetics>();
}

@Entity()
class MedicationKnowledgeRelatedMedicationKnowledge {
  MedicationKnowledgeRelatedMedicationKnowledge({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<Reference> reference = ToMany<Reference>();
}

@Entity()
class MedicationKnowledgeMonograph {
  MedicationKnowledgeMonograph({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.source,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? source = ToOne<Reference>();
}

@Entity()
class MedicationKnowledgeIngredient {
  MedicationKnowledgeIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
  bool? isActive;
  ToOne<Ratio>? strength = ToOne<Ratio>();
}

@Entity()
class MedicationKnowledgeCost {
  MedicationKnowledgeCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.source,
    required this.cost,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  String? source;
  ToOne<Money> cost = ToOne<Money>();
}

@Entity()
class MedicationKnowledgeMonitoringProgram {
  MedicationKnowledgeMonitoringProgram({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.name,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? name;
}

@Entity()
class MedicationKnowledgeAdministrationGuidelines {
  MedicationKnowledgeAdministrationGuidelines({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<MedicationKnowledgeDosage>? dosage =
      ToMany<MedicationKnowledgeDosage>();
  ToOne<CodeableConcept>? indicationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? indicationReference = ToOne<Reference>();
  ToMany<MedicationKnowledgePatientCharacteristics>? patientCharacteristics =
      ToMany<MedicationKnowledgePatientCharacteristics>();
}

@Entity()
class MedicationKnowledgeDosage {
  MedicationKnowledgeDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.dosage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<Dosage> dosage = ToMany<Dosage>();
}

@Entity()
class MedicationKnowledgePatientCharacteristics {
  MedicationKnowledgePatientCharacteristics({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? characteristicCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<Quantity>? characteristicQuantity = ToOne<Quantity>();
  List<String>? value;
}

@Entity()
class MedicationKnowledgeMedicineClassification {
  MedicationKnowledgeMedicineClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.classification,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? classification = ToMany<CodeableConcept>();
}

@Entity()
class MedicationKnowledgePackaging {
  MedicationKnowledgePackaging({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.quantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
}

@Entity()
class MedicationKnowledgeDrugCharacteristic {
  MedicationKnowledgeDrugCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueQuantity,
    this.valueBase64Binary,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  String? valueString;
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  String? valueBase64Binary;
}

@Entity()
class MedicationKnowledgeRegulatory {
  MedicationKnowledgeRegulatory({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> regulatoryAuthority = ToOne<Reference>();
  ToMany<MedicationKnowledgeSubstitution>? substitution =
      ToMany<MedicationKnowledgeSubstitution>();
  ToMany<MedicationKnowledgeSchedule>? schedule =
      ToMany<MedicationKnowledgeSchedule>();
  ToOne<MedicationKnowledgeMaxDispense>? maxDispense =
      ToOne<MedicationKnowledgeMaxDispense>();
}

@Entity()
class MedicationKnowledgeSubstitution {
  MedicationKnowledgeSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.allowed,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  bool allowed;
}

@Entity()
class MedicationKnowledgeSchedule {
  MedicationKnowledgeSchedule({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.schedule,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> schedule = ToOne<CodeableConcept>();
}

@Entity()
class MedicationKnowledgeMaxDispense {
  MedicationKnowledgeMaxDispense({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.quantity,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity> quantity = ToOne<Quantity>();
  ToOne<FhirDuration>? period = ToOne<FhirDuration>();
}

@Entity()
class MedicationKnowledgeKinetics {
  MedicationKnowledgeKinetics({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Quantity>? areaUnderCurve = ToMany<Quantity>();
  ToMany<Quantity>? lethalDose50 = ToMany<Quantity>();
  ToOne<FhirDuration>? halfLifePeriod = ToOne<FhirDuration>();
}
