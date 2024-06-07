import 'package:realm/realm.dart';
@RealmModel()
class _ClinicalImpressionRealm {
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
  late _CodeableConceptRealm statusReason;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String effectiveDateTime;
  late _PrimitiveElementRealm effectiveDateTimeElement;
  late _PeriodRealm effectivePeriod;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm assessor;
  late _ReferenceRealm previous;
  late List<_ReferenceRealm> problem;
  late List<_ClinicalImpressionInvestigationRealm> investigation;
  late List<_FhirUriRealm> protocol;
  late List<_PrimitiveElementRealm> protocolElement;
  late String summary;
  late _PrimitiveElementRealm summaryElement;
  late List<_ClinicalImpressionFindingRealm> finding;
  late List<_CodeableConceptRealm> prognosisCodeableConcept;
  late List<_ReferenceRealm> prognosisReference;
  late List<_ReferenceRealm> supportingInfo;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _ClinicalImpressionInvestigationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late List<_ReferenceRealm> item;
}
@RealmModel()
class _ClinicalImpressionFindingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm itemCodeableConcept;
  late _ReferenceRealm itemReference;
  late String basis;
  late _PrimitiveElementRealm basisElement;
}
