// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxVerificationResult {
  ObjectBoxVerificationResult({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.target,
    this.targetLocation,
    this.targetLocationElement,
    this.need,
    required this.status,
    this.statusElement,
    this.statusDate,
    this.statusDateElement,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.lastPerformedElement,
    this.nextScheduled,
    this.nextScheduledElement,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference>? target = ToMany<ObjectBoxReference>();
  List<String>? targetLocation;
  ToMany<ObjectBoxElement>? targetLocationElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? need = ToOne<ObjectBoxCodeableConcept>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? validationType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? validationProcess =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxTiming>? frequency = ToOne<ObjectBoxTiming>();
  String? lastPerformed;
  ToOne<ObjectBoxElement>? lastPerformedElement = ToOne<ObjectBoxElement>();
  String? nextScheduled;
  ToOne<ObjectBoxElement>? nextScheduledElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? failureAction =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxVerificationResultPrimarySource>? primarySource =
      ToMany<ObjectBoxVerificationResultPrimarySource>();
  ToOne<ObjectBoxVerificationResultAttestation>? attestation =
      ToOne<ObjectBoxVerificationResultAttestation>();
  ToMany<ObjectBoxVerificationResultValidator>? validator =
      ToMany<ObjectBoxVerificationResultValidator>();
}

@Entity()
class ObjectBoxVerificationResultPrimarySource {
  ObjectBoxVerificationResultPrimarySource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.validationDateElement,
    this.canPushUpdates,
    this.pushTypeAvailable,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? who = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? communicationMethod =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? validationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String? validationDate;
  ToOne<ObjectBoxElement>? validationDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? canPushUpdates =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? pushTypeAvailable =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxVerificationResultAttestation {
  ObjectBoxVerificationResultAttestation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.dateElement,
    this.sourceIdentityCertificate,
    this.sourceIdentityCertificateElement,
    this.proxyIdentityCertificate,
    this.proxyIdentityCertificateElement,
    this.proxySignature,
    this.sourceSignature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? onBehalfOf = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? communicationMethod =
      ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? sourceIdentityCertificate;
  ToOne<ObjectBoxElement>? sourceIdentityCertificateElement =
      ToOne<ObjectBoxElement>();
  String? proxyIdentityCertificate;
  ToOne<ObjectBoxElement>? proxyIdentityCertificateElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSignature>? proxySignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxSignature>? sourceSignature = ToOne<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxVerificationResultValidator {
  ObjectBoxVerificationResultValidator({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.identityCertificateElement,
    this.attestationSignature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  String? identityCertificate;
  ToOne<ObjectBoxElement>? identityCertificateElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSignature>? attestationSignature = ToOne<ObjectBoxSignature>();
}
