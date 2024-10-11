import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Consent extends Resource {
  Consent({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept> scope = ToOne<CodeableConcept>();
  ToMany<CodeableConcept> category = ToMany<CodeableConcept>();
  ToOne<Reference>? patient = ToOne<Reference>();
  String? dateTime;
  ToMany<Reference>? performer = ToMany<Reference>();
  ToMany<Reference>? organization = ToMany<Reference>();
  ToOne<Attachment>? sourceAttachment = ToOne<Attachment>();
  ToOne<Reference>? sourceReference = ToOne<Reference>();
  ToMany<ConsentPolicy>? policy = ToMany<ConsentPolicy>();
  ToMany<ConsentVerification>? verification = ToMany<ConsentVerification>();
  ToOne<ConsentProvision>? provision = ToOne<ConsentProvision>();
}

@Entity()
class ConsentPolicy {
  ConsentPolicy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.authority,
    this.uri,
    this.policyRule,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? authority;
  String? uri;
  ToOne<CodeableConcept>? policyRule = ToOne<CodeableConcept>();
}

@Entity()
class ConsentVerification {
  ConsentVerification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.verified,
    this.verifiedWith,
    this.verificationDate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool verified;
  ToOne<Reference>? verifiedWith = ToOne<Reference>();
  String? verificationDate;
}

@Entity()
class ConsentProvision {
  ConsentProvision({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? type;
  ToOne<Period>? period = ToOne<Period>();
  ToMany<ConsentActor>? actor = ToMany<ConsentActor>();
  ToMany<CodeableConcept>? action = ToMany<CodeableConcept>();
  ToMany<Coding>? securityLabel = ToMany<Coding>();
  ToMany<Coding>? purpose = ToMany<Coding>();
  ToMany<Coding>? class_ = ToMany<Coding>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToOne<Period>? dataPeriod = ToOne<Period>();
  ToMany<ConsentData>? data = ToMany<ConsentData>();
  ToMany<ConsentProvision>? provision = ToMany<ConsentProvision>();
}

@Entity()
class ConsentActor {
  ConsentActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.role,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> role = ToOne<CodeableConcept>();
  ToOne<Reference> reference = ToOne<Reference>();
}

@Entity()
class ConsentData {
  ConsentData({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.meaning,
    required this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String meaning;
  ToOne<Reference> reference = ToOne<Reference>();
}
