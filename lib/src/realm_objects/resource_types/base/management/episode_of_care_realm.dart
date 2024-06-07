import 'package:realm/realm.dart';
@RealmModel()
class _EpisodeOfCareRealm {
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
  late List<_EpisodeOfCareStatusHistoryRealm> statusHistory;
  late List<_CodeableConceptRealm> type;
  late List<_EpisodeOfCareDiagnosisRealm> diagnosis;
  late _ReferenceRealm patient;
  late _ReferenceRealm managingOrganization;
  late _PeriodRealm period;
  late List<_ReferenceRealm> referralRequest;
  late _ReferenceRealm careManager;
  late List<_ReferenceRealm> team;
  late List<_ReferenceRealm> account;
}
@RealmModel()
class _EpisodeOfCareStatusHistoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _PeriodRealm period;
}
@RealmModel()
class _EpisodeOfCareDiagnosisRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm condition;
  late _CodeableConceptRealm role;
  late _FhirPositiveIntRealm rank;
  late _PrimitiveElementRealm rankElement;
}
