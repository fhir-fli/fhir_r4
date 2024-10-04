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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final Reference providedBy;
  final List<CodeableConcept> category;
  final List<CodeableConcept> type;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final String name;
  final PrimitiveElement nameElement;
  final String comment;
  final PrimitiveElement commentElement;
  final FhirMarkdown extraDetails;
  final PrimitiveElement extraDetailsElement;
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
  final PrimitiveElement appointmentRequiredElement;
  final List<HealthcareServiceAvailableTime> availableTime;
  final List<HealthcareServiceNotAvailable> notAvailable;
  final String availabilityExceptions;
  final PrimitiveElement availabilityExceptionsElement;
  final List<Reference> endpoint;
  const HealthcareService({
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
    required this.active,
    required this.activeElement,
    required this.providedBy,
    required this.category,
    required this.type,
    required this.specialty,
    required this.location,
    required this.name,
    required this.nameElement,
    required this.comment,
    required this.commentElement,
    required this.extraDetails,
    required this.extraDetailsElement,
    required this.photo,
    required this.telecom,
    required this.coverageArea,
    required this.serviceProvisionCode,
    required this.eligibility,
    required this.program,
    required this.characteristic,
    required this.communication,
    required this.referralMethod,
    required this.appointmentRequired,
    required this.appointmentRequiredElement,
    required this.availableTime,
    required this.notAvailable,
    required this.availabilityExceptions,
    required this.availabilityExceptionsElement,
    required this.endpoint,
  });
}

@Data()
@JsonCodable()
class HealthcareServiceEligibility {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirMarkdown comment;
  final PrimitiveElement commentElement;
  const HealthcareServiceEligibility({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.comment,
    required this.commentElement,
  });
}

@Data()
@JsonCodable()
class HealthcareServiceAvailableTime {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> daysOfWeekElement;
  final FhirBoolean allDay;
  final PrimitiveElement allDayElement;
  final FhirTime availableStartTime;
  final PrimitiveElement availableStartTimeElement;
  final FhirTime availableEndTime;
  final PrimitiveElement availableEndTimeElement;
  const HealthcareServiceAvailableTime({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.daysOfWeek,
    required this.daysOfWeekElement,
    required this.allDay,
    required this.allDayElement,
    required this.availableStartTime,
    required this.availableStartTimeElement,
    required this.availableEndTime,
    required this.availableEndTimeElement,
  });
}

@Data()
@JsonCodable()
class HealthcareServiceNotAvailable {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final Period during;
  const HealthcareServiceNotAvailable({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.during,
  });
}


