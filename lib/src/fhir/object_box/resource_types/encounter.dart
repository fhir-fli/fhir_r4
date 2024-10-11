import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Encounter extends Resource {
  Encounter({
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
    this.statusHistory,
    required this.class_,
    this.classHistory,
    this.type,
    this.serviceType,
    this.priority,
    this.subject,
    this.episodeOfCare,
    this.basedOn,
    this.participant,
    this.appointment,
    this.period,
    this.length,
    this.reasonCode,
    this.reasonReference,
    this.diagnosis,
    this.account,
    this.hospitalization,
    this.location,
    this.serviceProvider,
    this.partOf,
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
  ToMany<EncounterStatusHistory>? statusHistory =
      ToMany<EncounterStatusHistory>();
  ToOne<Coding> class_ = ToOne<Coding>();
  ToMany<EncounterClassHistory>? classHistory = ToMany<EncounterClassHistory>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? serviceType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? priority = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToMany<Reference>? episodeOfCare = ToMany<Reference>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<EncounterParticipant>? participant = ToMany<EncounterParticipant>();
  ToMany<Reference>? appointment = ToMany<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<FhirDuration>? length = ToOne<FhirDuration>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<EncounterDiagnosis>? diagnosis = ToMany<EncounterDiagnosis>();
  ToMany<Reference>? account = ToMany<Reference>();
  ToOne<EncounterHospitalization>? hospitalization =
      ToOne<EncounterHospitalization>();
  ToMany<EncounterLocation>? location = ToMany<EncounterLocation>();
  ToOne<Reference>? serviceProvider = ToOne<Reference>();
  ToOne<Reference>? partOf = ToOne<Reference>();
}

@Entity()
class EncounterStatusHistory {
  EncounterStatusHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.status,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String status;
  ToOne<Period> period = ToOne<Period>();
}

@Entity()
class EncounterClassHistory {
  EncounterClassHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.class_,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding> class_ = ToOne<Coding>();
  ToOne<Period> period = ToOne<Period>();
}

@Entity()
class EncounterParticipant {
  EncounterParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? individual = ToOne<Reference>();
}

@Entity()
class EncounterDiagnosis {
  EncounterDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> condition = ToOne<Reference>();
  ToOne<CodeableConcept>? use = ToOne<CodeableConcept>();
  int? rank;
}

@Entity()
class EncounterHospitalization {
  EncounterHospitalization({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.dietPreference,
    this.specialCourtesy,
    this.specialArrangement,
    this.destination,
    this.dischargeDisposition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? preAdmissionIdentifier = ToOne<Identifier>();
  ToOne<Reference>? origin = ToOne<Reference>();
  ToOne<CodeableConcept>? admitSource = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? reAdmission = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? dietPreference = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialCourtesy = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialArrangement = ToMany<CodeableConcept>();
  ToOne<Reference>? destination = ToOne<Reference>();
  ToOne<CodeableConcept>? dischargeDisposition = ToOne<CodeableConcept>();
}

@Entity()
class EncounterLocation {
  EncounterLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.location,
    this.status,
    this.physicalType,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> location = ToOne<Reference>();
  String? status;
  ToOne<CodeableConcept>? physicalType = ToOne<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
}
