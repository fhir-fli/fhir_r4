import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Practitioner extends Resource {
  Practitioner({
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
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.birthDate,
    this.photo,
    this.qualification,
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
  ToMany<HumanName>? name = ToMany<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<Address>? address = ToMany<Address>();
  String? gender;
  String? birthDate;
  ToMany<Attachment>? photo = ToMany<Attachment>();
  ToMany<PractitionerQualification>? qualification =
      ToMany<PractitionerQualification>();
  ToMany<CodeableConcept>? communication = ToMany<CodeableConcept>();
}

@Entity()
class PractitionerQualification {
  PractitionerQualification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? issuer = ToOne<Reference>();
}
