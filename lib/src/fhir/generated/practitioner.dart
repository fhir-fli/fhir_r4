import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Practitioner {
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
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final List<Address> address;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final FhirDate birthDate;
  final PrimitiveElement birthDateElement;
  final List<Attachment> photo;
  final List<PractitionerQualification> qualification;
  final List<CodeableConcept> communication;
}

@Data()
@JsonCodable()
class PractitionerQualification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept code;
  final Period period;
  final Reference issuer;
}

@Data()
@JsonCodable()
class PractitionerRole {
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
  final Period period;
  final Reference practitioner;
  final Reference organization;
  final List<CodeableConcept> code;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final List<Reference> healthcareService;
  final List<ContactPoint> telecom;
  final List<PractitionerRoleAvailableTime> availableTime;
  final List<PractitionerRoleNotAvailable> notAvailable;
  final String availabilityExceptions;
  final PrimitiveElement availabilityExceptionsElement;
  final List<Reference> endpoint;
}

@Data()
@JsonCodable()
class PractitionerRoleAvailableTime {
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
class PractitionerRoleNotAvailable {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final Period during;
}


