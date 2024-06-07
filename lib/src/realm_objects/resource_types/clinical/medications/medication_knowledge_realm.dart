import 'package:realm/realm.dart';
@RealmModel()
class _MedicationKnowledgeRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm manufacturer;
  late _CodeableConceptRealm doseForm;
  late _QuantityRealm amount;
  late String synonym;
  late List<_PrimitiveElementRealm> synonymElement;
  late List<_ReferenceRealm> associatedMedication;
  late List<_CodeableConceptRealm> productType;
  late List<_MedicationKnowledgeMonographRealm> monograph;
  late List<_MedicationKnowledgeIngredientRealm> ingredient;
  late _FhirMarkdownRealm preparationInstruction;
  late _PrimitiveElementRealm preparationInstructionElement;
  late List<_CodeableConceptRealm> intendedRoute;
  late List<_MedicationKnowledgeCostRealm> cost;
  late List<_MedicationKnowledgeMonitoringProgramRealm> monitoringProgram;
  late List<_MedicationKnowledgeAdministrationGuidelinesRealm> administrationGuidelines;
  late List<_MedicationKnowledgeMedicineClassificationRealm> medicineClassification;
  late _MedicationKnowledgePackagingRealm packaging;
  late List<_MedicationKnowledgeDrugCharacteristicRealm> drugCharacteristic;
  late List<_ReferenceRealm> contraindication;
  late List<_MedicationKnowledgeRegulatoryRealm> regulatory;
  late List<_MedicationKnowledgeKineticsRealm> kinetics;
}
@RealmModel()
class _MedicationKnowledgeRelatedMedicationKnowledgeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_ReferenceRealm> reference;
}
@RealmModel()
class _MedicationKnowledgeMonographRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _ReferenceRealm source;
}
@RealmModel()
class _MedicationKnowledgeIngredientRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm itemCodeableConcept;
  late _ReferenceRealm itemReference;
  late _FhirBooleanRealm isActive;
  late _PrimitiveElementRealm isActiveElement;
  late _RatioRealm strength;
}
@RealmModel()
class _MedicationKnowledgeCostRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String source;
  late _PrimitiveElementRealm sourceElement;
  late _MoneyRealm cost;
}
@RealmModel()
class _MedicationKnowledgeMonitoringProgramRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String name;
  late _PrimitiveElementRealm nameElement;
}
@RealmModel()
class _MedicationKnowledgeAdministrationGuidelinesRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_MedicationKnowledgeDosageRealm> dosage;
  late _CodeableConceptRealm indicationCodeableConcept;
  late _ReferenceRealm indicationReference;
  late List<_MedicationKnowledgePatientCharacteristicsRealm> patientCharacteristics;
}
@RealmModel()
class _MedicationKnowledgeDosageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_DosageRealm> dosage;
}
@RealmModel()
class _MedicationKnowledgePatientCharacteristicsRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm characteristicCodeableConcept;
  late _QuantityRealm characteristicQuantity;
  late String value;
  late List<_PrimitiveElementRealm> valueElement;
}
@RealmModel()
class _MedicationKnowledgeMedicineClassificationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
@RealmModel()
class _classification,Realm {
}
@RealmModel()
class _MedicationKnowledgePackagingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _QuantityRealm quantity;
}
@RealmModel()
class _MedicationKnowledgeDrugCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _QuantityRealm valueQuantity;
  late _FhirBase64BinaryRealm valueBase64Binary;
  late _PrimitiveElementRealm valueBase64BinaryElement;
}
@RealmModel()
class _MedicationKnowledgeRegulatoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm regulatoryAuthority;
  late List<_MedicationKnowledgeSubstitutionRealm> substitution;
  late List<_MedicationKnowledgeScheduleRealm> schedule;
  late _MedicationKnowledgeMaxDispenseRealm maxDispense;
}
@RealmModel()
class _MedicationKnowledgeSubstitutionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _FhirBooleanRealm allowed;
  late _PrimitiveElementRealm allowedElement;
}
@RealmModel()
class _MedicationKnowledgeScheduleRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm schedule;
}
@RealmModel()
class _MedicationKnowledgeMaxDispenseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm quantity;
  late _FhirDurationRealm period;
}
@RealmModel()
class _MedicationKnowledgeKineticsRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_QuantityRealm> areaUnderCurve;
  late List<_QuantityRealm> lethalDose50;
  late _FhirDurationRealm halfLifePeriod;
}
