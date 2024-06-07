import 'package:realm/realm.dart';
@RealmModel()
class _MedicationRealm {
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
  late List<_IdentifierRealm> identifier;
  late _CodeableConceptRealm code;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm manufacturer;
  late _CodeableConceptRealm form;
  late _RatioRealm amount;
  late List<_MedicationIngredientRealm> ingredient;
  late _MedicationBatchRealm batch;
}
@RealmModel()
class _MedicationIngredientRealm {
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
class _MedicationBatchRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String lotNumber;
  late _PrimitiveElementRealm lotNumberElement;
  late String expirationDate;
  late _PrimitiveElementRealm expirationDateElement;
}
