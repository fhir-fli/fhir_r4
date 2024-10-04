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
}


