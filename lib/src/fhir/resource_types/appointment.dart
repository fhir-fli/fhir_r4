import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Appointment extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? cancelationReason;
  final List<CodeableConcept>? serviceCategory;
  final List<CodeableConcept>? serviceType;
  final List<CodeableConcept>? specialty;
  final CodeableConcept? appointmentType;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final FhirUnsignedInt? priority;
  final Element? priorityElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Reference>? supportingInformation;
  final FhirInstant? start;
  final Element? startElement;
  final FhirInstant? end;
  final Element? endElement;
  final FhirPositiveInt? minutesDuration;
  final Element? minutesDurationElement;
  final List<Reference>? slot;
  final FhirDateTime? created;
  final Element? createdElement;
  final FhirString? comment;
  final Element? commentElement;
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;
  final List<Reference>? basedOn;
  final List<AppointmentParticipant> participant;
  final List<Period>? requestedPeriod;

  Appointment({
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
    this.cancelationReason,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reasonCode,
    this.reasonReference,
    this.priority,
    this.priorityElement,
    this.description,
    this.descriptionElement,
    this.supportingInformation,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.minutesDuration,
    this.minutesDurationElement,
    this.slot,
    this.created,
    this.createdElement,
    this.comment,
    this.commentElement,
    this.patientInstruction,
    this.patientInstructionElement,
    this.basedOn,
    required this.participant,
    this.requestedPeriod,
  }): super(resourceType: R4ResourceType.Appointment);

@override
Appointment clone() => this;

}


@Data()
@JsonCodable()
class AppointmentParticipant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? type;
  final Reference? actor;
  final FhirCode? required_;
  final Element? requiredElement;
  final FhirCode? status;
  final Element? statusElement;
  final Period? period;

  AppointmentParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.actor,
    this.required_,
    this.requiredElement,
    this.status,
    this.statusElement,
    this.period,
  });

}



