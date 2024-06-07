import 'package:realm/realm.dart';
@RealmModel()
class _ProvenanceRealm {
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
  late List<_ReferenceRealm> target;
  late _PeriodRealm occurredPeriod;
  late String occurredDateTime;
  late _PrimitiveElementRealm occurredDateTimeElement;
  late _FhirInstantRealm recorded;
  late _PrimitiveElementRealm recordedElement;
  late List<_FhirUriRealm> policy;
  late List<_PrimitiveElementRealm> policyElement;
  late _ReferenceRealm location;
  late List<_CodeableConceptRealm> reason;
  late _CodeableConceptRealm activity;
  late List<_ProvenanceAgentRealm> agent;
  late List<_ProvenanceEntityRealm> entity;
  late List<_SignatureRealm> signature;
}
@RealmModel()
class _ProvenanceAgentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> role;
  late _ReferenceRealm who;
  late _ReferenceRealm onBehalfOf;
}
@RealmModel()
class _ProvenanceEntityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm role;
  late _PrimitiveElementRealm roleElement;
  late _ReferenceRealm what;
  late List<_ProvenanceAgentRealm> agent;
}
