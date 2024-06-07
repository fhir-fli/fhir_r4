import 'package:realm/realm.dart';
@RealmModel()
class _ConsentRealm {
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
  late _CodeableConceptRealm scope;
  late List<_CodeableConceptRealm> category;
  late _ReferenceRealm patient;
  late String dateTime;
  late _PrimitiveElementRealm dateTimeElement;
  late List<_ReferenceRealm> performer;
  late List<_ReferenceRealm> organization;
  late _AttachmentRealm sourceAttachment;
  late _ReferenceRealm sourceReference;
  late List<_ConsentPolicyRealm> policy;
  late _CodeableConceptRealm policyRule;
  late List<_ConsentVerificationRealm> verification;
  late _ConsentProvisionRealm provision;
}
@RealmModel()
class _ConsentPolicyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm authority;
  late _PrimitiveElementRealm authorityElement;
  late _FhirUriRealm uri;
  late _PrimitiveElementRealm uriElement;
}
@RealmModel()
class _ConsentVerificationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm verified;
  late _PrimitiveElementRealm verifiedElement;
  late _ReferenceRealm verifiedWith;
  late String verificationDate;
  late _PrimitiveElementRealm verificationDateElement;
}
@RealmModel()
class _ConsentProvisionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _PeriodRealm period;
  late List<_ConsentActorRealm> actor;
  late List<_CodeableConceptRealm> action;
  late List<_CodingRealm> securityLabel;
  late List<_CodingRealm> purpose;
@RealmModel()
class _List<Coding>?Realm {
  late List<_CodeableConceptRealm> code;
  late _PeriodRealm dataPeriod;
  late List<_ConsentDataRealm> data;
  late List<_ConsentProvisionRealm> provision;
}
@RealmModel()
class _ConsentActorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm role;
  late _ReferenceRealm reference;
}
@RealmModel()
class _ConsentDataRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm meaning;
  late _PrimitiveElementRealm meaningElement;
  late _ReferenceRealm reference;
}
