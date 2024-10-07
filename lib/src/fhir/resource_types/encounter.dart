import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Encounter extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<BackboneElement>? statusHistory;
  final Coding class_;
  final List<BackboneElement>? classHistory;
  final List<CodeableConcept>? type;
  final CodeableConcept? serviceType;
  final CodeableConcept? priority;
  final Reference? subject;
  final List<Reference>? episodeOfCare;
  final List<Reference>? basedOn;
  final List<BackboneElement>? participant;
  final List<Reference>? appointment;
  final Period? period;
  final FhirDuration? length;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<BackboneElement>? diagnosis;
  final List<Reference>? account;
  final BackboneElement? hospitalization;
  final List<BackboneElement>? location;
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
  }) : super(resourceType: R4ResourceType.Encounter);

@override
Encounter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterStatusHistory extends BackboneElement {
  final FhirCode status;
  final Element? statusElement;
  final Period period;

  EncounterStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
this.statusElement,
    required this.period,
  });

@override
EncounterStatusHistory clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterClassHistory extends BackboneElement {
  final Coding class_;
  final Period period;

  EncounterClassHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.class_,
    required this.period,
  });

@override
EncounterClassHistory clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterParticipant extends BackboneElement {
  final List<CodeableConcept>? type;
  final Period? period;
  final Reference? individual;

  EncounterParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });

@override
EncounterParticipant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterDiagnosis extends BackboneElement {
  final Reference condition;
  final CodeableConcept? use;
  final FhirPositiveInt? rank;
  final Element? rankElement;

  EncounterDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
this.rankElement,
  });

@override
EncounterDiagnosis clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterHospitalization extends BackboneElement {
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
EncounterHospitalization clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EncounterLocation extends BackboneElement {
  final Reference location;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? physicalType;
  final Period? period;

  EncounterLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.location,
    this.status,
this.statusElement,
    this.physicalType,
    this.period,
  });

@override
EncounterLocation clone() => throw UnimplementedError();
}

