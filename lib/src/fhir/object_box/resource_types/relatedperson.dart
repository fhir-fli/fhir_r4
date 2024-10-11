import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class RelatedPerson extends Resource {
  RelatedPerson({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.active,
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.address,
    this.photo,
    this.period,
    this.communication,
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
  bool? active;
  ToOne<Reference> patient = ToOne<Reference>();
  ToMany<CodeableConcept>? relationship = ToMany<CodeableConcept>();
  ToMany<HumanName>? name = ToMany<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  String? gender;
  String? birthDate;
  ToMany<Address>? address = ToMany<Address>();
  ToMany<Attachment>? photo = ToMany<Attachment>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<RelatedPersonCommunication>? communication =
      ToMany<RelatedPersonCommunication>();
}

@Entity()
class RelatedPersonCommunication {
  RelatedPersonCommunication({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.language,
    this.preferred,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> language = ToOne<CodeableConcept>();
  bool? preferred;
}
