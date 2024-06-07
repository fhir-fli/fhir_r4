import 'package:realm/realm.dart';
@RealmModel()
class _EncounterRealm {
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
  late List<_EncounterStatusHistoryRealm> statusHistory;
@RealmModel()
class _requiredRealm {
@RealmModel()
class _classHistory,Realm {
  late List<_CodeableConceptRealm> type;
  late _CodeableConceptRealm serviceType;
  late _CodeableConceptRealm priority;
  late _ReferenceRealm subject;
  late List<_ReferenceRealm> episodeOfCare;
  late List<_ReferenceRealm> basedOn;
  late List<_EncounterParticipantRealm> participant;
  late List<_ReferenceRealm> appointment;
  late _PeriodRealm period;
  late _FhirDurationRealm length;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_EncounterDiagnosisRealm> diagnosis;
  late List<_ReferenceRealm> account;
  late _EncounterHospitalizationRealm hospitalization;
  late List<_EncounterLocationRealm> location;
  late _ReferenceRealm serviceProvider;
  late _ReferenceRealm partOf;
}
@RealmModel()
class _EncounterStatusHistoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _PeriodRealm period;
}
@RealmModel()
class _EncounterClassHistoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
@RealmModel()
class _requiredRealm {
  late _PeriodRealm period;
}
@RealmModel()
class _EncounterParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> type;
  late _PeriodRealm period;
  late _ReferenceRealm individual;
}
@RealmModel()
class _EncounterDiagnosisRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm condition;
  late _CodeableConceptRealm use;
  late _FhirPositiveIntRealm rank;
  late _PrimitiveElementRealm rankElement;
}
@RealmModel()
class _EncounterHospitalizationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm preAdmissionIdentifier;
  late _ReferenceRealm origin;
  late _CodeableConceptRealm admitSource;
  late _CodeableConceptRealm reAdmission;
  late List<_CodeableConceptRealm> dietPreference;
  late List<_CodeableConceptRealm> specialCourtesy;
  late List<_CodeableConceptRealm> specialArrangement;
  late _ReferenceRealm destination;
  late _CodeableConceptRealm dischargeDisposition;
}
@RealmModel()
class _EncounterLocationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm location;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm physicalType;
  late _PeriodRealm period;
}
