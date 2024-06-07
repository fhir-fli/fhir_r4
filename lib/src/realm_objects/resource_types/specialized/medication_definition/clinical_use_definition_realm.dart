import 'package:realm/realm.dart';
@RealmModel()
class _ClinicalUseDefinitionRealm {
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
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late List<_CodeableConceptRealm> category;
  late List<_ReferenceRealm> subject;
  late _CodeableConceptRealm status;
  late _ClinicalUseDefinitionContraindicationRealm contraindication;
  late _ClinicalUseDefinitionIndicationRealm indication;
  late _ClinicalUseDefinitionInteractionRealm interaction;
  late List<_ReferenceRealm> population;
  late _ClinicalUseDefinitionUndesirableEffectRealm undesirableEffect;
  late _ClinicalUseDefinitionWarningRealm warning;
}
@RealmModel()
class _ClinicalUseDefinitionContraindicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm diseaseSymptomProcedure;
  late _CodeableReferenceRealm diseaseStatus;
  late List<_CodeableReferenceRealm> comorbidity;
  late List<_ReferenceRealm> indication;
  late List<_ClinicalUseDefinitionOtherTherapyRealm> otherTherapy;
}
@RealmModel()
class _ClinicalUseDefinitionOtherTherapyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm relationshipType;
  late _CodeableReferenceRealm therapy;
}
@RealmModel()
class _ClinicalUseDefinitionIndicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm diseaseSymptomProcedure;
  late _CodeableReferenceRealm diseaseStatus;
  late List<_CodeableReferenceRealm> comorbidity;
  late _CodeableReferenceRealm intendedEffect;
  late _RangeRealm durationRange;
  late _FhirMarkdownRealm durationString;
  late _PrimitiveElementRealm durationStringElement;
  late List<_ReferenceRealm> undesirableEffect;
  late List<_ClinicalUseDefinitionOtherTherapyRealm> otherTherapy;
}
@RealmModel()
class _ClinicalUseDefinitionInteractionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ClinicalUseDefinitionInteractantRealm> interactant;
  late _CodeableConceptRealm type;
  late _CodeableReferenceRealm effect;
  late _CodeableConceptRealm incidence;
  late List<_CodeableConceptRealm> management;
}
@RealmModel()
class _ClinicalUseDefinitionInteractantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm itemReference;
  late _CodeableConceptRealm itemCodeableConcept;
}
@RealmModel()
class _ClinicalUseDefinitionUndesirableEffectRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm symptomConditionEffect;
@RealmModel()
class _classification,Realm {
  late _CodeableConceptRealm frequencyOfOccurrence;
}
@RealmModel()
class _ClinicalUseDefinitionWarningRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm code;
}
