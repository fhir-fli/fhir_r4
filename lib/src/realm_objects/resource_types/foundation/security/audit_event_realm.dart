import 'package:realm/realm.dart';
@RealmModel()
class _AuditEventRealm {
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
  late _CodingRealm type;
  late List<_CodingRealm> subtype;
  late _FhirCodeRealm action;
  late _PrimitiveElementRealm actionElement;
  late _PeriodRealm period;
  late _FhirInstantRealm recorded;
  late _PrimitiveElementRealm recordedElement;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String outcomeDesc;
  late _PrimitiveElementRealm outcomeDescElement;
  late List<_CodeableConceptRealm> purposeOfEvent;
  late List<_AuditEventAgentRealm> agent;
  late _AuditEventSourceRealm source;
  late List<_AuditEventEntityRealm> entity;
}
@RealmModel()
class _AuditEventAgentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> role;
  late _ReferenceRealm who;
  late String altId;
  late _PrimitiveElementRealm altIdElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirBooleanRealm requestor;
  late _PrimitiveElementRealm requestorElement;
  late _ReferenceRealm location;
  late List<_FhirUriRealm> policy;
  late List<_PrimitiveElementRealm> policyElement;
  late _CodingRealm media;
  late _AuditEventNetworkRealm network;
  late List<_CodeableConceptRealm> purposeOfUse;
}
@RealmModel()
class _AuditEventNetworkRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String address;
  late _PrimitiveElementRealm addressElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
}
@RealmModel()
class _AuditEventSourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String site;
  late _PrimitiveElementRealm siteElement;
  late _ReferenceRealm observer;
  late List<_CodingRealm> type;
}
@RealmModel()
class _AuditEventEntityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm what;
  late _CodingRealm type;
  late _CodingRealm role;
  late _CodingRealm lifecycle;
  late List<_CodingRealm> securityLabel;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirBase64BinaryRealm query;
  late _PrimitiveElementRealm queryElement;
  late List<_AuditEventDetailRealm> detail;
}
@RealmModel()
class _AuditEventDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String type;
  late _PrimitiveElementRealm typeElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirBase64BinaryRealm valueBase64Binary;
  late _PrimitiveElementRealm valueBase64BinaryElement;
}
