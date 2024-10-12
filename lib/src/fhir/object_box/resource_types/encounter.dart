// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEncounter {
  ObjectBoxEncounter({
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
  ToMany<ObjectBoxEncounterStatusHistory>? statusHistory =
      ToMany<ObjectBoxEncounterStatusHistory>();
  ToOne<ObjectBoxCoding> class_ = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxEncounterClassHistory>? classHistory =
      ToMany<ObjectBoxEncounterClassHistory>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? serviceType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? episodeOfCare = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxEncounterParticipant>? participant =
      ToMany<ObjectBoxEncounterParticipant>();
  ToMany<ObjectBoxReference>? appointment = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? length = ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxEncounterDiagnosis>? diagnosis =
      ToMany<ObjectBoxEncounterDiagnosis>();
  ToMany<ObjectBoxReference>? account = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxEncounterHospitalization>? hospitalization =
      ToOne<ObjectBoxEncounterHospitalization>();
  ToMany<ObjectBoxEncounterLocation>? location =
      ToMany<ObjectBoxEncounterLocation>();
  ToOne<ObjectBoxReference>? serviceProvider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? partOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEncounterStatusHistory {
  ObjectBoxEncounterStatusHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEncounterClassHistory {
  ObjectBoxEncounterClassHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.class_,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> class_ = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEncounterParticipant {
  ObjectBoxEncounterParticipant({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference>? individual = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEncounterDiagnosis {
  ObjectBoxEncounterDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    this.rankElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> condition = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? use = ToOne<ObjectBoxCodeableConcept>();
  int? rank;
  ToOne<ObjectBoxElement>? rankElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxEncounterHospitalization {
  ObjectBoxEncounterHospitalization({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? preAdmissionIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference>? origin = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? admitSource =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? reAdmission =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? dietPreference =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? specialCourtesy =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? specialArrangement =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? destination = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? dischargeDisposition =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxEncounterLocation {
  ObjectBoxEncounterLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.location,
    this.status,
    this.statusElement,
    this.physicalType,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? physicalType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}
