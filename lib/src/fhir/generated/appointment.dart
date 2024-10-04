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
  final CodeableConcept cancelationReason;
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirUnsignedInt priority;
  final PrimitiveElement priorityElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Reference> supportingInformation;
  final FhirInstant start;
  final PrimitiveElement startElement;
  final FhirInstant end;
  final PrimitiveElement endElement;
  final FhirPositiveInt minutesDuration;
  final PrimitiveElement minutesDurationElement;
  final List<Reference> slot;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final String comment;
  final PrimitiveElement commentElement;
  final String patientInstruction;
  final PrimitiveElement patientInstructionElement;
  final List<Reference> basedOn;
  final List<AppointmentParticipant> participant;
  final List<Period> requestedPeriod;
  const Appointment({
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
    required this.cancelationReason,
    required this.serviceCategory,
    required this.serviceType,
    required this.specialty,
    required this.appointmentType,
    required this.reasonCode,
    required this.reasonReference,
    required this.priority,
    required this.priorityElement,
    required this.description,
    required this.descriptionElement,
    required this.supportingInformation,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
    required this.minutesDuration,
    required this.minutesDurationElement,
    required this.slot,
    required this.created,
    required this.createdElement,
    required this.comment,
    required this.commentElement,
    required this.patientInstruction,
    required this.patientInstructionElement,
    required this.basedOn,
    required this.participant,
    required this.requestedPeriod,
  });
}

@Data()
@JsonCodable()
class AppointmentParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final Reference actor;
  final FhirCode required_;
  final PrimitiveElement requiredElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Period period;
  const AppointmentParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.actor,
    required this.required_,
    required this.requiredElement,
    required this.status,
    required this.statusElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class AppointmentResponse {
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
  final Reference appointment;
  final FhirInstant start;
  final PrimitiveElement startElement;
  final FhirInstant end;
  final PrimitiveElement endElement;
  final List<CodeableConcept> participantType;
  final Reference actor;
  final FhirCode participantStatus;
  final PrimitiveElement participantStatusElement;
  final String comment;
  final PrimitiveElement commentElement;
  const AppointmentResponse({
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
    required this.appointment,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
    required this.participantType,
    required this.actor,
    required this.participantStatus,
    required this.participantStatusElement,
    required this.comment,
    required this.commentElement,
  });
}


