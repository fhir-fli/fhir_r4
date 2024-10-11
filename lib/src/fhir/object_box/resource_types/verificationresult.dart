import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class VerificationResult extends Resource {
  VerificationResult({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.target,
    this.targetLocation,
    this.need,
    required this.status,
    this.statusDate,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.nextScheduled,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Reference>? target = ToMany<Reference>();
  List<String>? targetLocation;
  ToOne<CodeableConcept>? need = ToOne<CodeableConcept>();
  String status;
  String? statusDate;
  ToOne<CodeableConcept>? validationType = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? validationProcess = ToMany<CodeableConcept>();
  ToOne<Timing>? frequency = ToOne<Timing>();
  String? lastPerformed;
  String? nextScheduled;
  ToOne<CodeableConcept>? failureAction = ToOne<CodeableConcept>();
  ToMany<VerificationResultPrimarySource>? primarySource =
      ToMany<VerificationResultPrimarySource>();
  ToOne<VerificationResultAttestation>? attestation =
      ToOne<VerificationResultAttestation>();
  ToMany<VerificationResultValidator>? validator =
      ToMany<VerificationResultValidator>();
}

@Entity()
class VerificationResultPrimarySource {
  VerificationResultPrimarySource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.canPushUpdates,
    this.pushTypeAvailable,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? who = ToOne<Reference>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? communicationMethod = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? validationStatus = ToOne<CodeableConcept>();
  String? validationDate;
  ToOne<CodeableConcept>? canPushUpdates = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? pushTypeAvailable = ToMany<CodeableConcept>();
}

@Entity()
class VerificationResultAttestation {
  VerificationResultAttestation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.sourceIdentityCertificate,
    this.proxyIdentityCertificate,
    this.proxySignature,
    this.sourceSignature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? who = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
  ToOne<CodeableConcept>? communicationMethod = ToOne<CodeableConcept>();
  String? date;
  String? sourceIdentityCertificate;
  String? proxyIdentityCertificate;
  ToOne<Signature>? proxySignature = ToOne<Signature>();
  ToOne<Signature>? sourceSignature = ToOne<Signature>();
}

@Entity()
class VerificationResultValidator {
  VerificationResultValidator({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.attestationSignature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> organization = ToOne<Reference>();
  String? identityCertificate;
  ToOne<Signature>? attestationSignature = ToOne<Signature>();
}
