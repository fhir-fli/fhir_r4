// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxVerificationResult {
  ObjectBoxVerificationResult({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxReference>? target,
    this.targetLocation,
    List<ObjectBoxElement>? targetLocationElement,
    ObjectBoxCodeableConcept? need,
    required this.status,
    ObjectBoxElement? statusElement,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    ObjectBoxCodeableConcept? validationType,
    List<ObjectBoxCodeableConcept>? validationProcess,
    ObjectBoxTiming? frequency,
    this.lastPerformed,
    ObjectBoxElement? lastPerformedElement,
    this.nextScheduled,
    ObjectBoxElement? nextScheduledElement,
    ObjectBoxCodeableConcept? failureAction,
    List<ObjectBoxVerificationResultPrimarySource>? primarySource,
    ObjectBoxVerificationResultAttestation? attestation,
    List<ObjectBoxVerificationResultValidator>? validator,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.target.addAll(target ?? []);
    this.targetLocationElement.addAll(targetLocationElement ?? []);
    this.need.target = need;
    this.statusElement.target = statusElement;
    this.statusDateElement.target = statusDateElement;
    this.validationType.target = validationType;
    this.validationProcess.addAll(validationProcess ?? []);
    this.frequency.target = frequency;
    this.lastPerformedElement.target = lastPerformedElement;
    this.nextScheduledElement.target = nextScheduledElement;
    this.failureAction.target = failureAction;
    this.primarySource.addAll(primarySource ?? []);
    this.attestation.target = attestation;
    this.validator.addAll(validator ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> target = ToMany<ObjectBoxReference>();
  List<String>? targetLocation;
  ToMany<ObjectBoxElement> targetLocationElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> need = ToOne<ObjectBoxCodeableConcept>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> validationType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> validationProcess =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxTiming> frequency = ToOne<ObjectBoxTiming>();
  String? lastPerformed;
  ToOne<ObjectBoxElement> lastPerformedElement = ToOne<ObjectBoxElement>();
  String? nextScheduled;
  ToOne<ObjectBoxElement> nextScheduledElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> failureAction =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxVerificationResultPrimarySource> primarySource =
      ToMany<ObjectBoxVerificationResultPrimarySource>();
  ToOne<ObjectBoxVerificationResultAttestation> attestation =
      ToOne<ObjectBoxVerificationResultAttestation>();
  ToMany<ObjectBoxVerificationResultValidator> validator =
      ToMany<ObjectBoxVerificationResultValidator>();
}

@Entity()
class ObjectBoxVerificationResultPrimarySource {
  ObjectBoxVerificationResultPrimarySource({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? who,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxCodeableConcept>? communicationMethod,
    ObjectBoxCodeableConcept? validationStatus,
    this.validationDate,
    ObjectBoxElement? validationDateElement,
    ObjectBoxCodeableConcept? canPushUpdates,
    List<ObjectBoxCodeableConcept>? pushTypeAvailable,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.who.target = who;
    this.type.addAll(type ?? []);
    this.communicationMethod.addAll(communicationMethod ?? []);
    this.validationStatus.target = validationStatus;
    this.validationDateElement.target = validationDateElement;
    this.canPushUpdates.target = canPushUpdates;
    this.pushTypeAvailable.addAll(pushTypeAvailable ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> communicationMethod =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> validationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String? validationDate;
  ToOne<ObjectBoxElement> validationDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> canPushUpdates =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> pushTypeAvailable =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxVerificationResultAttestation {
  ObjectBoxVerificationResultAttestation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? who,
    ObjectBoxReference? onBehalfOf,
    ObjectBoxCodeableConcept? communicationMethod,
    this.date,
    ObjectBoxElement? dateElement,
    this.sourceIdentityCertificate,
    ObjectBoxElement? sourceIdentityCertificateElement,
    this.proxyIdentityCertificate,
    ObjectBoxElement? proxyIdentityCertificateElement,
    ObjectBoxSignature? proxySignature,
    ObjectBoxSignature? sourceSignature,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.who.target = who;
    this.onBehalfOf.target = onBehalfOf;
    this.communicationMethod.target = communicationMethod;
    this.dateElement.target = dateElement;
    this.sourceIdentityCertificateElement.target =
        sourceIdentityCertificateElement;
    this.proxyIdentityCertificateElement.target =
        proxyIdentityCertificateElement;
    this.proxySignature.target = proxySignature;
    this.sourceSignature.target = sourceSignature;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> onBehalfOf = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> communicationMethod =
      ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? sourceIdentityCertificate;
  ToOne<ObjectBoxElement> sourceIdentityCertificateElement =
      ToOne<ObjectBoxElement>();
  String? proxyIdentityCertificate;
  ToOne<ObjectBoxElement> proxyIdentityCertificateElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSignature> proxySignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxSignature> sourceSignature = ToOne<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxVerificationResultValidator {
  ObjectBoxVerificationResultValidator({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? organization,
    this.identityCertificate,
    ObjectBoxElement? identityCertificateElement,
    ObjectBoxSignature? attestationSignature,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.organization.target = organization;
    this.identityCertificateElement.target = identityCertificateElement;
    this.attestationSignature.target = attestationSignature;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  String? identityCertificate;
  ToOne<ObjectBoxElement> identityCertificateElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSignature> attestationSignature = ToOne<ObjectBoxSignature>();
}
