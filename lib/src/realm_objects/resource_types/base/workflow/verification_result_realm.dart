import 'package:realm/realm.dart';
@RealmModel()
class _VerificationResultRealm {
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
  late String targetLocation;
  late List<_PrimitiveElementRealm> targetLocationElement;
  late _CodeableConceptRealm need;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late String statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late _CodeableConceptRealm validationType;
  late List<_CodeableConceptRealm> validationProcess;
  late _TimingRealm frequency;
  late String lastPerformed;
  late _PrimitiveElementRealm lastPerformedElement;
  late _FhirDateRealm nextScheduled;
  late _PrimitiveElementRealm nextScheduledElement;
  late _CodeableConceptRealm failureAction;
  late List<_VerificationResultPrimarySourceRealm> primarySource;
  late _VerificationResultAttestationRealm attestation;
  late List<_VerificationResultValidatorRealm> validator;
}
@RealmModel()
class _VerificationResultPrimarySourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm who;
  late List<_CodeableConceptRealm> type;
  late List<_CodeableConceptRealm> communicationMethod;
  late _CodeableConceptRealm validationStatus;
  late String validationDate;
  late _PrimitiveElementRealm validationDateElement;
  late _CodeableConceptRealm canPushUpdates;
  late List<_CodeableConceptRealm> pushTypeAvailable;
}
@RealmModel()
class _VerificationResultAttestationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm who;
  late _ReferenceRealm onBehalfOf;
  late _CodeableConceptRealm communicationMethod;
  late _FhirDateRealm date;
  late _PrimitiveElementRealm dateElement;
  late String sourceIdentityCertificate;
  late _PrimitiveElementRealm sourceIdentityCertificateElement;
  late String proxyIdentityCertificate;
  late _PrimitiveElementRealm proxyIdentityCertificateElement;
  late _SignatureRealm proxySignature;
  late _SignatureRealm sourceSignature;
}
@RealmModel()
class _VerificationResultValidatorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm organization;
  late String identityCertificate;
  late _PrimitiveElementRealm identityCertificateElement;
  late _SignatureRealm attestationSignature;
}
