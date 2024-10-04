import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CarePlan {
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
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final List<CodeableConcept> category;
  final String title;
  final PrimitiveElement titleElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final Reference subject;
  final Reference encounter;
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference author;
  final List<Reference> contributor;
  final List<Reference> careTeam;
  final List<Reference> addresses;
  final List<Reference> supportingInfo;
  final List<Reference> goal;
  final List<CarePlanActivity> activity;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class CarePlanActivity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> outcomeCodeableConcept;
  final List<Reference> outcomeReference;
  final List<Annotation> progress;
  final Reference reference;
  final CarePlanDetail detail;
}

@Data()
@JsonCodable()
class CarePlanDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final CodeableConcept code;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> goal;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final Timing scheduledTiming;
  final Period scheduledPeriod;
  final String scheduledString;
  final PrimitiveElement scheduledStringElement;
  final Reference location;
  final List<Reference> performer;
  final CodeableConcept productCodeableConcept;
  final Reference productReference;
  final Quantity dailyAmount;
  final Quantity quantity;
  final String description;
  final PrimitiveElement descriptionElement;
}

@Data()
@JsonCodable()
class CareTeam {
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
  final List<CodeableConcept> category;
  final String name;
  final PrimitiveElement nameElement;
  final Reference subject;
  final Reference encounter;
  final Period period;
  final List<CareTeamParticipant> participant;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> managingOrganization;
  final List<ContactPoint> telecom;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class CareTeamParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> role;
  final Reference member;
  final Reference onBehalfOf;
  final Period period;
}


