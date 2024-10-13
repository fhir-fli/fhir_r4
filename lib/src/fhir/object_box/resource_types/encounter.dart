// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEncounter {
  ObjectBoxEncounter({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxEncounterStatusHistory>? statusHistory,
    ObjectBoxCoding? class_,
    List<ObjectBoxEncounterClassHistory>? classHistory,
    List<ObjectBoxCodeableConcept>? type,
    ObjectBoxCodeableConcept? serviceType,
    ObjectBoxCodeableConcept? priority,
    ObjectBoxReference? subject,
    List<ObjectBoxReference>? episodeOfCare,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxEncounterParticipant>? participant,
    List<ObjectBoxReference>? appointment,
    ObjectBoxPeriod? period,
    ObjectBoxFhirDuration? length,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxEncounterDiagnosis>? diagnosis,
    List<ObjectBoxReference>? account,
    ObjectBoxEncounterHospitalization? hospitalization,
    List<ObjectBoxEncounterLocation>? location,
    ObjectBoxReference? serviceProvider,
    ObjectBoxReference? partOf,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.statusHistory.addAll(statusHistory ?? []);
    this.class_.target = class_;
    this.classHistory.addAll(classHistory ?? []);
    this.type.addAll(type ?? []);
    this.serviceType.target = serviceType;
    this.priority.target = priority;
    this.subject.target = subject;
    this.episodeOfCare.addAll(episodeOfCare ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.participant.addAll(participant ?? []);
    this.appointment.addAll(appointment ?? []);
    this.period.target = period;
    this.length.target = length;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.diagnosis.addAll(diagnosis ?? []);
    this.account.addAll(account ?? []);
    this.hospitalization.target = hospitalization;
    this.location.addAll(location ?? []);
    this.serviceProvider.target = serviceProvider;
    this.partOf.target = partOf;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxEncounterStatusHistory> statusHistory =
      ToMany<ObjectBoxEncounterStatusHistory>();
  ToOne<ObjectBoxCoding> class_ = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxEncounterClassHistory> classHistory =
      ToMany<ObjectBoxEncounterClassHistory>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> serviceType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> episodeOfCare = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxEncounterParticipant> participant =
      ToMany<ObjectBoxEncounterParticipant>();
  ToMany<ObjectBoxReference> appointment = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> length = ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxEncounterDiagnosis> diagnosis =
      ToMany<ObjectBoxEncounterDiagnosis>();
  ToMany<ObjectBoxReference> account = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxEncounterHospitalization> hospitalization =
      ToOne<ObjectBoxEncounterHospitalization>();
  ToMany<ObjectBoxEncounterLocation> location =
      ToMany<ObjectBoxEncounterLocation>();
  ToOne<ObjectBoxReference> serviceProvider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> partOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEncounterStatusHistory {
  ObjectBoxEncounterStatusHistory({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEncounterClassHistory {
  ObjectBoxEncounterClassHistory({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? class_,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.class_.target = class_;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> class_ = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEncounterParticipant {
  ObjectBoxEncounterParticipant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? type,
    ObjectBoxPeriod? period,
    ObjectBoxReference? individual,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.addAll(type ?? []);
    this.period.target = period;
    this.individual.target = individual;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> individual = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEncounterDiagnosis {
  ObjectBoxEncounterDiagnosis({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? condition,
    ObjectBoxCodeableConcept? use,
    this.rank,
    ObjectBoxElement? rankElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.condition.target = condition;
    this.use.target = use;
    this.rankElement.target = rankElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> condition = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> use = ToOne<ObjectBoxCodeableConcept>();
  int? rank;
  ToOne<ObjectBoxElement> rankElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxEncounterHospitalization {
  ObjectBoxEncounterHospitalization({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? preAdmissionIdentifier,
    ObjectBoxReference? origin,
    ObjectBoxCodeableConcept? admitSource,
    ObjectBoxCodeableConcept? reAdmission,
    List<ObjectBoxCodeableConcept>? dietPreference,
    List<ObjectBoxCodeableConcept>? specialCourtesy,
    List<ObjectBoxCodeableConcept>? specialArrangement,
    ObjectBoxReference? destination,
    ObjectBoxCodeableConcept? dischargeDisposition,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.preAdmissionIdentifier.target = preAdmissionIdentifier;
    this.origin.target = origin;
    this.admitSource.target = admitSource;
    this.reAdmission.target = reAdmission;
    this.dietPreference.addAll(dietPreference ?? []);
    this.specialCourtesy.addAll(specialCourtesy ?? []);
    this.specialArrangement.addAll(specialArrangement ?? []);
    this.destination.target = destination;
    this.dischargeDisposition.target = dischargeDisposition;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> preAdmissionIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> origin = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> admitSource =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> reAdmission =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> dietPreference =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialCourtesy =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialArrangement =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> destination = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> dischargeDisposition =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxEncounterLocation {
  ObjectBoxEncounterLocation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? location,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? physicalType,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.location.target = location;
    this.statusElement.target = statusElement;
    this.physicalType.target = physicalType;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> physicalType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
