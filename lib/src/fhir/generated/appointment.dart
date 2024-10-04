import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Appointment {
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
  final CodeableConcept cancelationReason;
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirUnsignedInt priority;
  final PrimitiveElement Priority;
  final String description;
  final PrimitiveElement Description;
  final List<Reference> supportingInformation;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final FhirPositiveInt minutesDuration;
  final PrimitiveElement MinutesDuration;
  final List<Reference> slot;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final String comment;
  final PrimitiveElement Comment;
  final String patientInstruction;
  final PrimitiveElement PatientInstruction;
  final List<Reference> basedOn;
  final List<AppointmentParticipant> participant;
  final List<Period> requestedPeriod;
}

@Data()
@JsonCodable()
class AppointmentParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final Reference actor;
  final FhirCode required;
  final PrimitiveElement Required;
  final FhirCode status;
  final PrimitiveElement Status;
  final Period period;
}

@Data()
@JsonCodable()
class AppointmentResponse {
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
  final Reference appointment;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final List<CodeableConcept> participantType;
  final Reference actor;
  final FhirCode participantStatus;
  final PrimitiveElement ParticipantStatus;
  final String comment;
  final PrimitiveElement Comment;
}


