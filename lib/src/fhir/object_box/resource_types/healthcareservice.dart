import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class HealthcareService extends Resource {
  HealthcareService({
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
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.comment,
    this.extraDetails,
    this.photo,
    this.telecom,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
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
  ToOne<Reference>? providedBy = ToOne<Reference>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToMany<Reference>? location = ToMany<Reference>();
  String? name;
  String? comment;
  String? extraDetails;
  ToOne<Attachment>? photo = ToOne<Attachment>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<Reference>? coverageArea = ToMany<Reference>();
  ToMany<CodeableConcept>? serviceProvisionCode = ToMany<CodeableConcept>();
  ToMany<HealthcareServiceEligibility>? eligibility =
      ToMany<HealthcareServiceEligibility>();
  ToMany<CodeableConcept>? program = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? characteristic = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? communication = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? referralMethod = ToMany<CodeableConcept>();
  bool? appointmentRequired;
  ToMany<HealthcareServiceAvailableTime>? availableTime =
      ToMany<HealthcareServiceAvailableTime>();
  ToMany<HealthcareServiceNotAvailable>? notAvailable =
      ToMany<HealthcareServiceNotAvailable>();
  String? availabilityExceptions;
  ToMany<Reference>? endpoint = ToMany<Reference>();
}

@Entity()
class HealthcareServiceEligibility {
  HealthcareServiceEligibility({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.comment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? comment;
}

@Entity()
class HealthcareServiceAvailableTime {
  HealthcareServiceAvailableTime({
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
class HealthcareServiceNotAvailable {
  HealthcareServiceNotAvailable({
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
