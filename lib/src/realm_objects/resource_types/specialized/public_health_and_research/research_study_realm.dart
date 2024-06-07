import 'package:realm/realm.dart';
@RealmModel()
class _ResearchStudyRealm {
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
  late String title;
  late _PrimitiveElementRealm titleElement;
  late List<_ReferenceRealm> protocol;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm primaryPurposeType;
  late _CodeableConceptRealm phase;
  late List<_CodeableConceptRealm> category;
  late List<_CodeableConceptRealm> focus;
  late List<_CodeableConceptRealm> condition;
  late List<_ContactDetailRealm> contact;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late List<_CodeableConceptRealm> keyword;
  late List<_CodeableConceptRealm> location;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ReferenceRealm> enrollment;
  late _PeriodRealm period;
  late _ReferenceRealm sponsor;
  late _ReferenceRealm principalInvestigator;
  late List<_ReferenceRealm> site;
  late _CodeableConceptRealm reasonStopped;
  late List<_AnnotationRealm> note;
  late List<_ResearchStudyArmRealm> arm;
  late List<_ResearchStudyObjectiveRealm> objective;
}
@RealmModel()
class _ResearchStudyArmRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm type;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _ResearchStudyObjectiveRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm type;
}
