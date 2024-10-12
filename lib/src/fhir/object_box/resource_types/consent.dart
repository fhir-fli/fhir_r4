// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxConsent {
  ObjectBoxConsent({
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
    this.identifier,
    required this.status,
    this.statusElement,
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,
    this.dateTimeElement,
    this.performer,
    this.organization,
    this.sourceAttachment,
    this.sourceReference,
    this.policy,
    this.verification,
    this.provision,
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
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> scope = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? patient = ToOne<ObjectBoxReference>();
  String? dateTime;
  ToOne<ObjectBoxElement>? dateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? organization = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment>? sourceAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? sourceReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxConsentPolicy>? policy = ToMany<ObjectBoxConsentPolicy>();
  ToMany<ObjectBoxConsentVerification>? verification =
      ToMany<ObjectBoxConsentVerification>();
  ToOne<ObjectBoxConsentProvision>? provision =
      ToOne<ObjectBoxConsentProvision>();
}

@Entity()
class ObjectBoxConsentPolicy {
  ObjectBoxConsentPolicy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.authority,
    this.authorityElement,
    this.uri,
    this.uriElement,
    this.policyRule,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? authority;
  ToOne<ObjectBoxElement>? authorityElement = ToOne<ObjectBoxElement>();
  String? uri;
  ToOne<ObjectBoxElement>? uriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? policyRule =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxConsentVerification {
  ObjectBoxConsentVerification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.verified,
    this.verifiedElement,
    this.verifiedWith,
    this.verificationDate,
    this.verificationDateElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool verified;
  ToOne<ObjectBoxElement>? verifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? verifiedWith = ToOne<ObjectBoxReference>();
  String? verificationDate;
  ToOne<ObjectBoxElement>? verificationDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxConsentProvision {
  ObjectBoxConsentProvision({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class_,
    this.code,
    this.dataPeriod,
    this.data,
    this.provision,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxConsentActor>? actor = ToMany<ObjectBoxConsentActor>();
  ToMany<ObjectBoxCodeableConcept>? action = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoding>? securityLabel = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? purpose = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? class_ = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? dataPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxConsentData>? data = ToMany<ObjectBoxConsentData>();
  ToMany<ObjectBoxConsentProvision>? provision =
      ToMany<ObjectBoxConsentProvision>();
}

@Entity()
class ObjectBoxConsentActor {
  ObjectBoxConsentActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.role,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxConsentData {
  ObjectBoxConsentData({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.meaning,
    this.meaningElement,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String meaning;
  ToOne<ObjectBoxElement>? meaningElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
}
