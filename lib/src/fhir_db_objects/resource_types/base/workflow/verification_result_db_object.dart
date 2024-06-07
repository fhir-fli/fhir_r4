import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class VerificationResultDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ReferenceDbObject> target = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> targetLocation = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> targetLocationElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> need = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> statusDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> validationType =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> validationProcess =
      ToMany<CodeableConceptDbObject>();
  final ToOne<TimingDbObject> frequency = ToOne<TimingDbObject>();
  final ToOne<FhirDateTimeDbObject> lastPerformed =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> lastPerformedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> nextScheduled = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> nextScheduledElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> failureAction =
      ToOne<CodeableConceptDbObject>();
  final ToMany<VerificationResultPrimarySourceDbObject> primarySource =
      ToMany<VerificationResultPrimarySourceDbObject>();
  final ToOne<VerificationResultAttestationDbObject> attestation =
      ToOne<VerificationResultAttestationDbObject>();
  final ToMany<VerificationResultValidatorDbObject> validator =
      ToMany<VerificationResultValidatorDbObject>();
  VerificationResultDbObject({required this.id});
}

@Entity()
class VerificationResultPrimarySourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> who = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> communicationMethod =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> validationStatus =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> validationDate =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> validationDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> canPushUpdates =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> pushTypeAvailable =
      ToMany<CodeableConceptDbObject>();
  VerificationResultPrimarySourceDbObject({required this.id});
}

@Entity()
class VerificationResultAttestationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> who = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> onBehalfOf = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> communicationMethod =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateDbObject> date = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> sourceIdentityCertificate =
      ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceIdentityCertificateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> proxyIdentityCertificate =
      ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> proxyIdentityCertificateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<SignatureDbObject> proxySignature = ToOne<SignatureDbObject>();
  final ToOne<SignatureDbObject> sourceSignature = ToOne<SignatureDbObject>();
  VerificationResultAttestationDbObject({required this.id});
}

@Entity()
class VerificationResultValidatorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> organization = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> identityCertificate = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> identityCertificateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<SignatureDbObject> attestationSignature =
      ToOne<SignatureDbObject>();
  VerificationResultValidatorDbObject({required this.id});
}
