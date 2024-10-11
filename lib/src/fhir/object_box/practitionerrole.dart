import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class PractitionerRole extends Resource {
  PractitionerRole({
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
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
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
  ToOne<Reference>? practitioner = ToOne<Reference>();
  ToOne<Reference>? organization = ToOne<Reference>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToMany<Reference>? location = ToMany<Reference>();
  ToMany<Reference>? healthcareService = ToMany<Reference>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<PractitionerRoleAvailableTime>? availableTime =
      ToMany<PractitionerRoleAvailableTime>();
  ToMany<PractitionerRoleNotAvailable>? notAvailable =
      ToMany<PractitionerRoleNotAvailable>();
  String? availabilityExceptions;
  ToMany<Reference>? endpoint = ToMany<Reference>();
}

@Entity()
class PractitionerRoleAvailableTime {
  PractitionerRoleAvailableTime({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<String>? daysOfWeek;
  bool? allDay;
  String? availableStartTime;
  String? availableEndTime;
}

@Entity()
class PractitionerRoleNotAvailable {
  PractitionerRoleNotAvailable({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.during,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String description;
  ToOne<Period>? during = ToOne<Period>();
}
