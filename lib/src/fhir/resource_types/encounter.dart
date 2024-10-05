import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Encounter extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<EncounterStatusHistory>? statusHistory;
  final Coding class_;
  final List<EncounterClassHistory>? classHistory;
  final List<CodeableConcept>? type;
  final CodeableConcept? serviceType;
  final CodeableConcept? priority;
  final Reference? subject;
  final List<Reference>? episodeOfCare;
  final List<Reference>? basedOn;
  final List<EncounterParticipant>? participant;
  final List<Reference>? appointment;
  final Period? period;
  final FhirDuration? length;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<EncounterDiagnosis>? diagnosis;
  final List<Reference>? account;
  final EncounterHospitalization? hospitalization;
  final List<EncounterLocation>? location;
  final Reference? serviceProvider;
  final Reference? partOf;

  Encounter({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
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
  }): super(resourceType: R4ResourceType.Encounter);

@override
Encounter clone() => this;

}


@Data()
@JsonCodable()
class EncounterStatusHistory {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? status;
  final Element? statusElement;
  final Period period;

  EncounterStatusHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.status,
    this.statusElement,
    required this.period,
  });

}


@Data()
@JsonCodable()
class EncounterClassHistory {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Coding class_;
  final Period period;

  EncounterClassHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.class_,
    required this.period,
  });

}


@Data()
@JsonCodable()
class EncounterParticipant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? type;
  final Period? period;
  final Reference? individual;

  EncounterParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });

}


@Data()
@JsonCodable()
class EncounterDiagnosis {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference condition;
  final CodeableConcept? use;
  final FhirPositiveInt? rank;
  final Element? rankElement;

  EncounterDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    this.rankElement,
  });

}


@Data()
@JsonCodable()
class EncounterHospitalization {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Identifier? preAdmissionIdentifier;
  final Reference? origin;
  final CodeableConcept? admitSource;
  final CodeableConcept? reAdmission;
  final List<CodeableConcept>? dietPreference;
  final List<CodeableConcept>? specialCourtesy;
  final List<CodeableConcept>? specialArrangement;
  final Reference? destination;
  final CodeableConcept? dischargeDisposition;

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

}


@Data()
@JsonCodable()
class EncounterLocation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference location;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? physicalType;
  final Period? period;

  EncounterLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.location,
    this.status,
    this.statusElement,
    this.physicalType,
    this.period,
  });

}



