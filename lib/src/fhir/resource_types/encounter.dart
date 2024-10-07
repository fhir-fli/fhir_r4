import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Encounter extends DomainResource {
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

  final List<Identifier>? identifier;
  final FhirCode status;
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
  @override
  Encounter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterStatusHistory extends BackboneElement {
  EncounterStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
  });

  final FhirCode status;
  final Element? statusElement;
  final Period period;
  @override
  EncounterStatusHistory clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterClassHistory extends BackboneElement {
  EncounterClassHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.class_,
    required this.period,
  });

  final Coding class_;
  final Period period;
  @override
  EncounterClassHistory clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterParticipant extends BackboneElement {
  EncounterParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });

  final List<CodeableConcept>? type;
  final Period? period;
  final Reference? individual;
  @override
  EncounterParticipant clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterDiagnosis extends BackboneElement {
  EncounterDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    this.rankElement,
  });

  final Reference condition;
  final CodeableConcept? use;
  final FhirPositiveInt? rank;
  final Element? rankElement;
  @override
  EncounterDiagnosis clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterHospitalization extends BackboneElement {
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

  final Identifier? preAdmissionIdentifier;
  final Reference? origin;
  final CodeableConcept? admitSource;
  final CodeableConcept? reAdmission;
  final List<CodeableConcept>? dietPreference;
  final List<CodeableConcept>? specialCourtesy;
  final List<CodeableConcept>? specialArrangement;
  final Reference? destination;
  final CodeableConcept? dischargeDisposition;
  @override
  EncounterHospitalization clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EncounterLocation extends BackboneElement {
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

  final Reference location;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? physicalType;
  final Period? period;
  @override
  EncounterLocation clone() => throw UnimplementedError();
}
