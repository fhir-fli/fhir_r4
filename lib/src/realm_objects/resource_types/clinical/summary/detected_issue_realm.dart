import 'package:realm/realm.dart';
@RealmModel()
class _DetectedIssueRealm {
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
  late _CodeableConceptRealm code;
  late _FhirCodeRealm severity;
  late _PrimitiveElementRealm severityElement;
  late _ReferenceRealm patient;
  late String identifiedDateTime;
  late _PrimitiveElementRealm identifiedDateTimeElement;
  late _PeriodRealm identifiedPeriod;
  late _ReferenceRealm author;
  late List<_ReferenceRealm> implicated;
  late List<_DetectedIssueEvidenceRealm> evidence;
  late String detail;
  late _PrimitiveElementRealm detailElement;
  late _FhirUriRealm reference;
  late _PrimitiveElementRealm referenceElement;
  late List<_DetectedIssueMitigationRealm> mitigation;
}
@RealmModel()
class _DetectedIssueEvidenceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> code;
  late List<_ReferenceRealm> detail;
}
@RealmModel()
class _DetectedIssueMitigationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm action;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm author;
}
