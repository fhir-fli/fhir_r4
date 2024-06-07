import 'package:realm/realm.dart';
@RealmModel()
class _MedicationAdministrationRealm {
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
  late List<_FhirUriRealm> instantiates;
  late List<_PrimitiveElementRealm> instantiatesElement;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> statusReason;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm medicationCodeableConcept;
  late _ReferenceRealm medicationReference;
  late _ReferenceRealm subject;
  late _ReferenceRealm context;
  late List<_ReferenceRealm> supportingInformation;
  late String effectiveDateTime;
  late _PrimitiveElementRealm effectiveDateTimeElement;
  late _PeriodRealm effectivePeriod;
  late List<_MedicationAdministrationPerformerRealm> performer;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late _ReferenceRealm request;
  late List<_ReferenceRealm> device;
  late List<_AnnotationRealm> note;
  late _MedicationAdministrationDosageRealm dosage;
  late List<_ReferenceRealm> eventHistory;
}
@RealmModel()
class _MedicationAdministrationPerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
}
@RealmModel()
class _MedicationAdministrationDosageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String text;
  late _PrimitiveElementRealm textElement;
  late _CodeableConceptRealm site;
  late _CodeableConceptRealm route;
  late _CodeableConceptRealm method;
  late _QuantityRealm dose;
  late _RatioRealm rateRatio;
  late _QuantityRealm rateQuantity;
}
