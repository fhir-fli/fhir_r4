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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<EncounterStatusHistory> statusHistory;
  final Coding class;
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
}

@Data()
@JsonCodable()
class EncounterStatusHistory {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final Period period;
}

@Data()
@JsonCodable()
class EncounterClassHistory {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Coding class;
  final Period period;
}

@Data()
@JsonCodable()
class EncounterParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final Period period;
  final Reference individual;
}

@Data()
@JsonCodable()
class EncounterDiagnosis {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference condition;
  final CodeableConcept use;
  final FhirPositiveInt rank;
  final PrimitiveElement Rank;
}

@Data()
@JsonCodable()
class EncounterHospitalization {
  final String id;
  final List<FhirExtension> extension;
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
}

@Data()
@JsonCodable()
class EncounterLocation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference location;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept physicalType;
  final Period period;
}


