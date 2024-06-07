import 'package:realm/realm.dart';
@RealmModel()
class _CareTeamRealm {
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
  late List<_CodeableConceptRealm> category;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late _PeriodRealm period;
  late List<_CareTeamParticipantRealm> participant;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_ReferenceRealm> managingOrganization;
  late List<_ContactPointRealm> telecom;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _CareTeamParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> role;
  late _ReferenceRealm member;
  late _ReferenceRealm onBehalfOf;
  late _PeriodRealm period;
}
