import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class OrganizationAffiliation extends Resource {
  OrganizationAffiliation({
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
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
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
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? organization = ToOne<Reference>();
  ToOne<Reference>? participatingOrganization = ToOne<Reference>();
  ToMany<Reference>? network = ToMany<Reference>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToMany<Reference>? location = ToMany<Reference>();
  ToMany<Reference>? healthcareService = ToMany<Reference>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<Reference>? endpoint = ToMany<Reference>();
}
