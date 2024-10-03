import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';
@Entity()
class MedicationKnowledgeEntity {
  @Id(assignable: true) int dbId =0;
    String resourceType = 'MedicationKnowledge';

  String? id;

  @ToOne() FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne() PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne() PrimitiveElementEntity? languageElement;

  @ToOne() NarrativeEntity? text;

  @ToMany() List<ResourceEntity>? contained;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? code;

  String? status;

  @ToOne() PrimitiveElementEntity? statusElement;

  @ToOne() ReferenceEntity? manufacturer;

  @ToOne() CodeableConceptEntity? doseForm;

  @ToOne() QuantityEntity? amount;

  List<String>? synonym;

  @ToMany() List<PrimitiveElementEntity>? synonymElement;
    List<MedicationKnowledgeRelatedMedicationKnowledge>?

        relatedMedicationKnowledge,

  @ToMany() List<ReferenceEntity>? associatedMedication;

  @ToMany() List<CodeableConceptEntity>? productType;

  @ToMany() List<MedicationKnowledgeMonographEntity>? monograph;

  @ToMany() List<MedicationKnowledgeIngredientEntity>? ingredient;

  String? preparationInstruction;
    

  @ToOne() PrimitiveElementEntity? preparationInstructionElement;

  @ToMany() List<CodeableConceptEntity>? intendedRoute;

  @ToMany() List<MedicationKnowledgeCostEntity>? cost;

  @ToMany() List<MedicationKnowledgeMonitoringProgramEntity>? monitoringProgram;

  @ToMany() List<MedicationKnowledgeAdministrationGuidelinesEntity>? administrationGuidelines;

  @ToMany() List<MedicationKnowledgeMedicineClassificationEntity>? medicineClassification;

  @ToOne() MedicationKnowledgePackagingEntity? packaging;

  @ToMany() List<MedicationKnowledgeDrugCharacteristicEntity>? drugCharacteristic;

  @ToMany() List<ReferenceEntity>? contraindication;

  @ToMany() List<MedicationKnowledgeRegulatoryEntity>? regulatory;

  @ToMany() List<MedicationKnowledgeKineticsEntity>? kinetics;
}
class MedicationKnowledgeRelatedMedicationKnowledgeEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToMany() List<ReferenceEntity>? reference;
}
class MedicationKnowledgeMonographEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToOne() ReferenceEntity? source;
}
class MedicationKnowledgeIngredientEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? itemCodeableConcept;

  @ToOne() ReferenceEntity? itemReference;

  bool? isActive;

  @ToOne() PrimitiveElementEntity? isActiveElement;

  @ToOne() RatioEntity? strength;
}
class MedicationKnowledgeCostEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  String? source;

  @ToOne() PrimitiveElementEntity? sourceElement;

  @ToOne() MoneyEntity? cost;
}
class MedicationKnowledgeMonitoringProgramEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  String? name;

  @ToOne() PrimitiveElementEntity? nameElement;
}
class MedicationKnowledgeAdministrationGuidelinesEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToMany() List<MedicationKnowledgeDosageEntity>? dosage;

  @ToOne() CodeableConceptEntity? indicationCodeableConcept;

  @ToOne() ReferenceEntity? indicationReference;

  @ToMany() List<MedicationKnowledgePatientCharacteristicsEntity>? patientCharacteristics;
}
class MedicationKnowledgeDosageEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToMany() List<DosageEntity>? dosage;
}
class MedicationKnowledgePatientCharacteristicsEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? characteristicCodeableConcept;

  @ToOne() QuantityEntity? characteristicQuantity;

  List<String>? value;

  @ToMany() List<PrimitiveElementEntity>? valueElement;
}
class MedicationKnowledgeMedicineClassificationEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToMany() List<CodeableConceptEntity>? classification;
}
class MedicationKnowledgePackagingEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToOne() QuantityEntity? quantity;
}
class MedicationKnowledgeDrugCharacteristicEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  @ToOne() CodeableConceptEntity? valueCodeableConcept;

  String? valueString;

  @ToOne() PrimitiveElementEntity? valueStringElement;

  @ToOne() QuantityEntity? valueQuantity;

  String? valueBase64Binary;

    
  @ToOne() PrimitiveElementEntity? valueBase64BinaryElement;
}
class MedicationKnowledgeRegulatoryEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() ReferenceEntity? regulatoryAuthority;

  @ToMany() List<MedicationKnowledgeSubstitutionEntity>? substitution;

  @ToMany() List<MedicationKnowledgeScheduleEntity>? schedule;

  @ToOne() MedicationKnowledgeMaxDispenseEntity? maxDispense;
}
class MedicationKnowledgeSubstitutionEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? type;

  bool? allowed;

  @ToOne() PrimitiveElementEntity? allowedElement;
}
class MedicationKnowledgeScheduleEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() CodeableConceptEntity? schedule;
}
class MedicationKnowledgeMaxDispenseEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToOne() QuantityEntity? quantity;

  @ToOne() FhirDurationEntity? period;
}
class MedicationKnowledgeKineticsEntity {
  @Id(assignable: true) int dbId =0;
  String? id;

  @ToMany() List<FhirExtensionEntity>? extension_;

  @ToMany() List<FhirExtensionEntity>? modifierExtension;

  @ToMany() List<QuantityEntity>? areaUnderCurve;

  @ToMany() List<QuantityEntity>? lethalDose50;

  @ToOne() FhirDurationEntity? halfLifePeriod;
}
