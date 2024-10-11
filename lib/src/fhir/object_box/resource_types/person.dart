import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Person extends Resource {
  Person({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
    this.link,
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
  ToMany<HumanName>? name = ToMany<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  String? gender;
  String? birthDate;
  ToMany<Address>? address = ToMany<Address>();
  ToOne<Attachment>? photo = ToOne<Attachment>();
  ToOne<Reference>? managingOrganization = ToOne<Reference>();
  bool? active;
  ToMany<PersonLink>? link = ToMany<PersonLink>();
}

@Entity()
class PersonLink {
  PersonLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.target,
    this.assurance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> target = ToOne<Reference>();
  String? assurance;
}
