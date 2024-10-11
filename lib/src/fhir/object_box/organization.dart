import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Organization extends Resource {
  Organization({
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
    this.type,
    this.name,
    this.alias,
    this.telecom,
    this.address,
    this.partOf,
    this.contact,
    this.endpoint,
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
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? name;
  List<String>? alias;
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<Address>? address = ToMany<Address>();
  ToOne<Reference>? partOf = ToOne<Reference>();
  ToMany<OrganizationContact>? contact = ToMany<OrganizationContact>();
  ToMany<Reference>? endpoint = ToMany<Reference>();
}

@Entity()
class OrganizationContact {
  OrganizationContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? purpose = ToOne<CodeableConcept>();
  ToOne<HumanName>? name = ToOne<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToOne<Address>? address = ToOne<Address>();
}
