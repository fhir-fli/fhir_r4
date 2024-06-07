import 'package:realm/realm.dart';
@RealmModel()
class _AdministrableProductDefinitionRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_ReferenceRealm> formOf;
  late _CodeableConceptRealm administrableDoseForm;
  late _CodeableConceptRealm unitOfPresentation;
  late List<_ReferenceRealm> producedFrom;
  late List<_CodeableConceptRealm> ingredient;
  late _ReferenceRealm device;
  late List<_AdministrableProductDefinitionPropertyRealm> property;
}
@RealmModel()
class _AdministrableProductDefinitionPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _AttachmentRealm valueAttachment;
  late _CodeableConceptRealm status;
}
@RealmModel()
class _AdministrableProductDefinitionRouteOfAdministrationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _QuantityRealm firstDose;
  late _QuantityRealm maxSingleDose;
  late _QuantityRealm maxDosePerDay;
  late _RatioRealm maxDosePerTreatmentPeriod;
  late _FhirDurationRealm maxTreatmentPeriod;
  late List<_AdministrableProductDefinitionTargetSpeciesRealm> targetSpecies;
}
@RealmModel()
class _AdministrableProductDefinitionTargetSpeciesRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late List<_AdministrableProductDefinitionWithdrawalPeriodRealm> withdrawalPeriod;
}
@RealmModel()
class _AdministrableProductDefinitionWithdrawalPeriodRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm tissue;
  late _QuantityRealm value;
  late String supportingInformation;
  late _PrimitiveElementRealm supportingInformationElement;
}
