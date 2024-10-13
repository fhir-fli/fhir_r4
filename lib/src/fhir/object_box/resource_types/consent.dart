// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxConsent {
  ObjectBoxConsent({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? scope,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxReference? patient,
    this.dateTime,
    ObjectBoxElement? dateTimeElement,
    List<ObjectBoxReference>? performer,
    List<ObjectBoxReference>? organization,
    ObjectBoxAttachment? sourceAttachment,
    ObjectBoxReference? sourceReference,
    List<ObjectBoxConsentPolicy>? policy,
    List<ObjectBoxConsentVerification>? verification,
    ObjectBoxConsentProvision? provision,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.scope.target = scope;
    this.category.addAll(category ?? []);
    this.patient.target = patient;
    this.dateTimeElement.target = dateTimeElement;
    this.performer.addAll(performer ?? []);
    this.organization.addAll(organization ?? []);
    this.sourceAttachment.target = sourceAttachment;
    this.sourceReference.target = sourceReference;
    this.policy.addAll(policy ?? []);
    this.verification.addAll(verification ?? []);
    this.provision.target = provision;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> scope = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? dateTime;
  ToOne<ObjectBoxElement> dateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> organization = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment> sourceAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> sourceReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxConsentPolicy> policy = ToMany<ObjectBoxConsentPolicy>();
  ToMany<ObjectBoxConsentVerification> verification =
      ToMany<ObjectBoxConsentVerification>();
  ToOne<ObjectBoxConsentProvision> provision =
      ToOne<ObjectBoxConsentProvision>();
}

@Entity()
class ObjectBoxConsentPolicy {
  ObjectBoxConsentPolicy({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.authority,
    ObjectBoxElement? authorityElement,
    this.uri,
    ObjectBoxElement? uriElement,
    ObjectBoxCodeableConcept? policyRule,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.authorityElement.target = authorityElement;
    this.uriElement.target = uriElement;
    this.policyRule.target = policyRule;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? authority;
  ToOne<ObjectBoxElement> authorityElement = ToOne<ObjectBoxElement>();
  String? uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> policyRule =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxConsentVerification {
  ObjectBoxConsentVerification({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.verified,
    ObjectBoxElement? verifiedElement,
    ObjectBoxReference? verifiedWith,
    this.verificationDate,
    ObjectBoxElement? verificationDateElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.verifiedElement.target = verifiedElement;
    this.verifiedWith.target = verifiedWith;
    this.verificationDateElement.target = verificationDateElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool verified;
  ToOne<ObjectBoxElement> verifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> verifiedWith = ToOne<ObjectBoxReference>();
  String? verificationDate;
  ToOne<ObjectBoxElement> verificationDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxConsentProvision {
  ObjectBoxConsentProvision({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxPeriod? period,
    List<ObjectBoxConsentActor>? actor,
    List<ObjectBoxCodeableConcept>? action,
    List<ObjectBoxCoding>? securityLabel,
    List<ObjectBoxCoding>? purpose,
    List<ObjectBoxCoding>? class_,
    List<ObjectBoxCodeableConcept>? code,
    ObjectBoxPeriod? dataPeriod,
    List<ObjectBoxConsentData>? data,
    List<ObjectBoxConsentProvision>? provision,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.period.target = period;
    this.actor.addAll(actor ?? []);
    this.action.addAll(action ?? []);
    this.securityLabel.addAll(securityLabel ?? []);
    this.purpose.addAll(purpose ?? []);
    this.class_.addAll(class_ ?? []);
    this.code.addAll(code ?? []);
    this.dataPeriod.target = dataPeriod;
    this.data.addAll(data ?? []);
    this.provision.addAll(provision ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxConsentActor> actor = ToMany<ObjectBoxConsentActor>();
  ToMany<ObjectBoxCodeableConcept> action = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoding> securityLabel = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> purpose = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> class_ = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> dataPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxConsentData> data = ToMany<ObjectBoxConsentData>();
  ToMany<ObjectBoxConsentProvision> provision =
      ToMany<ObjectBoxConsentProvision>();
}

@Entity()
class ObjectBoxConsentActor {
  ObjectBoxConsentActor({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? role,
    ObjectBoxReference? reference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.role.target = role;
    this.reference.target = reference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxConsentData {
  ObjectBoxConsentData({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.meaning,
    ObjectBoxElement? meaningElement,
    ObjectBoxReference? reference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.meaningElement.target = meaningElement;
    this.reference.target = reference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String meaning;
  ToOne<ObjectBoxElement> meaningElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
}
