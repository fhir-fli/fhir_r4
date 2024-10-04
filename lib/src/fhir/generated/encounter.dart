import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Encounter {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<EncounterStatusHistory> statusHistory;
  final Coding class_;
  final List<EncounterClassHistory> classHistory;
  final List<CodeableConcept> type;
  final CodeableConcept serviceType;
  final CodeableConcept priority;
  final Reference subject;
  final List<Reference> episodeOfCare;
  final List<Reference> basedOn;
  final List<EncounterParticipant> participant;
  final List<Reference> appointment;
  final Period period;
  final FhirDuration length;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<EncounterDiagnosis> diagnosis;
  final List<Reference> account;
  final EncounterHospitalization hospitalization;
  final List<EncounterLocation> location;
  final Reference serviceProvider;
  final Reference partOf;
  const Encounter({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.statusHistory,
    required this.class_,
    required this.classHistory,
    required this.type,
    required this.serviceType,
    required this.priority,
    required this.subject,
    required this.episodeOfCare,
    required this.basedOn,
    required this.participant,
    required this.appointment,
    required this.period,
    required this.length,
    required this.reasonCode,
    required this.reasonReference,
    required this.diagnosis,
    required this.account,
    required this.hospitalization,
    required this.location,
    required this.serviceProvider,
    required this.partOf,
  });
}

@Data()
@JsonCodable()
class EncounterStatusHistory {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Period period;
  const EncounterStatusHistory({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class EncounterClassHistory {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding class_;
  final Period period;
  const EncounterClassHistory({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.class_,
    required this.period,
  });
}

@Data()
@JsonCodable()
class EncounterParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final Period period;
  final Reference individual;
  const EncounterParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.period,
    required this.individual,
  });
}

@Data()
@JsonCodable()
class EncounterDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference condition;
  final CodeableConcept use;
  final FhirPositiveInt rank;
  final PrimitiveElement rankElement;
  const EncounterDiagnosis({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.condition,
    required this.use,
    required this.rank,
    required this.rankElement,
  });
}

@Data()
@JsonCodable()
class EncounterHospitalization {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier preAdmissionIdentifier;
  final Reference origin;
  final CodeableConcept admitSource;
  final CodeableConcept reAdmission;
  final List<CodeableConcept> dietPreference;
  final List<CodeableConcept> specialCourtesy;
  final List<CodeableConcept> specialArrangement;
  final Reference destination;
  final CodeableConcept dischargeDisposition;
  const EncounterHospitalization({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.preAdmissionIdentifier,
    required this.origin,
    required this.admitSource,
    required this.reAdmission,
    required this.dietPreference,
    required this.specialCourtesy,
    required this.specialArrangement,
    required this.destination,
    required this.dischargeDisposition,
  });
}

@Data()
@JsonCodable()
class EncounterLocation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference location;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept physicalType;
  final Period period;
  const EncounterLocation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.location,
    required this.status,
    required this.statusElement,
    required this.physicalType,
    required this.period,
  });
}


