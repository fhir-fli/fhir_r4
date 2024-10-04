import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class HealthcareService {
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
  final FhirBoolean active;
  final PrimitiveElement Active;
  final Reference providedBy;
  final List<CodeableConcept> category;
  final List<CodeableConcept> type;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final String name;
  final PrimitiveElement Name;
  final String comment;
  final PrimitiveElement Comment;
  final FhirMarkdown extraDetails;
  final PrimitiveElement ExtraDetails;
  final Attachment photo;
  final List<ContactPoint> telecom;
  final List<Reference> coverageArea;
  final List<CodeableConcept> serviceProvisionCode;
  final List<HealthcareServiceEligibility> eligibility;
  final List<CodeableConcept> program;
  final List<CodeableConcept> characteristic;
  final List<CodeableConcept> communication;
  final List<CodeableConcept> referralMethod;
  final FhirBoolean appointmentRequired;
  final PrimitiveElement AppointmentRequired;
  final List<HealthcareServiceAvailableTime> availableTime;
  final List<HealthcareServiceNotAvailable> notAvailable;
  final String availabilityExceptions;
  final PrimitiveElement AvailabilityExceptions;
  final List<Reference> endpoint;
}

@Data()
@JsonCodable()
class HealthcareServiceEligibility {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirMarkdown comment;
  final PrimitiveElement Comment;
}

@Data()
@JsonCodable()
class HealthcareServiceAvailableTime {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> DaysOfWeek;
  final FhirBoolean allDay;
  final PrimitiveElement AllDay;
  final FhirTime availableStartTime;
  final PrimitiveElement AvailableStartTime;
  final FhirTime availableEndTime;
  final PrimitiveElement AvailableEndTime;
}

@Data()
@JsonCodable()
class HealthcareServiceNotAvailable {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Period during;
}


