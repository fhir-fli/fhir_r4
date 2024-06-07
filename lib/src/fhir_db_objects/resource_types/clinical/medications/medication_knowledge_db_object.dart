import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class MedicationKnowledgeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> manufacturer = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> doseForm =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> amount = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> synonym = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> synonymElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<MedicationKnowledgeRelatedMedicationKnowledgeDbObject>
      relatedMedicationKnowledge =
      ToMany<MedicationKnowledgeRelatedMedicationKnowledgeDbObject>();
  final ToMany<ReferenceDbObject> associatedMedication =
      ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> productType =
      ToMany<CodeableConceptDbObject>();
  final ToMany<MedicationKnowledgeMonographDbObject> monograph =
      ToMany<MedicationKnowledgeMonographDbObject>();
  final ToMany<MedicationKnowledgeIngredientDbObject> ingredient =
      ToMany<MedicationKnowledgeIngredientDbObject>();
  final ToOne<FhirMarkdownDbObject> preparationInstruction =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> preparationInstructionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> intendedRoute =
      ToMany<CodeableConceptDbObject>();
  final ToMany<MedicationKnowledgeCostDbObject> cost =
      ToMany<MedicationKnowledgeCostDbObject>();
  final ToMany<MedicationKnowledgeMonitoringProgramDbObject> monitoringProgram =
      ToMany<MedicationKnowledgeMonitoringProgramDbObject>();
  final ToMany<MedicationKnowledgeAdministrationGuidelinesDbObject>
      administrationGuidelines =
      ToMany<MedicationKnowledgeAdministrationGuidelinesDbObject>();
  final ToMany<MedicationKnowledgeMedicineClassificationDbObject>
      medicineClassification =
      ToMany<MedicationKnowledgeMedicineClassificationDbObject>();
  final ToOne<MedicationKnowledgePackagingDbObject> packaging =
      ToOne<MedicationKnowledgePackagingDbObject>();
  final ToMany<MedicationKnowledgeDrugCharacteristicDbObject>
      drugCharacteristic =
      ToMany<MedicationKnowledgeDrugCharacteristicDbObject>();
  final ToMany<ReferenceDbObject> contraindication =
      ToMany<ReferenceDbObject>();
  final ToMany<MedicationKnowledgeRegulatoryDbObject> regulatory =
      ToMany<MedicationKnowledgeRegulatoryDbObject>();
  final ToMany<MedicationKnowledgeKineticsDbObject> kinetics =
      ToMany<MedicationKnowledgeKineticsDbObject>();
  MedicationKnowledgeDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeRelatedMedicationKnowledgeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reference = ToMany<ReferenceDbObject>();
  MedicationKnowledgeRelatedMedicationKnowledgeDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeMonographDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> source = ToOne<ReferenceDbObject>();
  MedicationKnowledgeMonographDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeIngredientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> itemCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> itemReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> isActive = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isActiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RatioDbObject> strength = ToOne<RatioDbObject>();
  MedicationKnowledgeIngredientDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeCostDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> source = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> cost = ToOne<MoneyDbObject>();
  MedicationKnowledgeCostDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeMonitoringProgramDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  MedicationKnowledgeMonitoringProgramDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeAdministrationGuidelinesDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<MedicationKnowledgeDosageDbObject> dosage =
      ToMany<MedicationKnowledgeDosageDbObject>();
  final ToOne<CodeableConceptDbObject> indicationCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> indicationReference =
      ToOne<ReferenceDbObject>();
  final ToMany<MedicationKnowledgePatientCharacteristicsDbObject>
      patientCharacteristics =
      ToMany<MedicationKnowledgePatientCharacteristicsDbObject>();
  MedicationKnowledgeAdministrationGuidelinesDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeDosageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<DosageDbObject> dosage = ToMany<DosageDbObject>();
  MedicationKnowledgeDosageDbObject({required this.id});
}

@Entity()
class MedicationKnowledgePatientCharacteristicsDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> characteristicCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> characteristicQuantity =
      ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> valueElement =
      ToMany<PrimitiveElementDbObject>();
  MedicationKnowledgePatientCharacteristicsDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeMedicineClassificationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  MedicationKnowledgeMedicineClassificationDbObject({required this.id});
}

@Entity()
class MedicationKnowledgePackagingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  MedicationKnowledgePackagingDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeDrugCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirBase64BinaryDbObject> valueBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  MedicationKnowledgeDrugCharacteristicDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeRegulatoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> regulatoryAuthority =
      ToOne<ReferenceDbObject>();
  final ToMany<MedicationKnowledgeSubstitutionDbObject> substitution =
      ToMany<MedicationKnowledgeSubstitutionDbObject>();
  final ToMany<MedicationKnowledgeScheduleDbObject> schedule =
      ToMany<MedicationKnowledgeScheduleDbObject>();
  final ToOne<MedicationKnowledgeMaxDispenseDbObject> maxDispense =
      ToOne<MedicationKnowledgeMaxDispenseDbObject>();
  MedicationKnowledgeRegulatoryDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeSubstitutionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> allowed = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedElement =
      ToOne<PrimitiveElementDbObject>();
  MedicationKnowledgeSubstitutionDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeScheduleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> schedule =
      ToOne<CodeableConceptDbObject>();
  MedicationKnowledgeScheduleDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeMaxDispenseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDurationDbObject> period = ToOne<FhirDurationDbObject>();
  MedicationKnowledgeMaxDispenseDbObject({required this.id});
}

@Entity()
class MedicationKnowledgeKineticsDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<QuantityDbObject> areaUnderCurve = ToMany<QuantityDbObject>();
  final ToMany<QuantityDbObject> lethalDose50 = ToMany<QuantityDbObject>();
  final ToOne<FhirDurationDbObject> halfLifePeriod =
      ToOne<FhirDurationDbObject>();
  MedicationKnowledgeKineticsDbObject({required this.id});
}
