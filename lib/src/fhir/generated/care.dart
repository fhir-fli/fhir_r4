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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final List<CodeableConcept> category;
  final String title;
  final PrimitiveElement Title;
  final String description;
  final PrimitiveElement Description;
  final Reference subject;
  final Reference encounter;
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement Created;
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
  final List<FhirExtension> extension;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final CodeableConcept code;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> goal;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final Timing scheduledTiming;
  final Period scheduledPeriod;
  final String scheduledString;
  final PrimitiveElement ScheduledString;
  final Reference location;
  final List<Reference> performer;
  final CodeableConcept productCodeableConcept;
  final Reference productReference;
  final Quantity dailyAmount;
  final Quantity quantity;
  final String description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class CareTeam {
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
  final List<CodeableConcept> category;
  final String name;
  final PrimitiveElement Name;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> role;
  final Reference member;
  final Reference onBehalfOf;
  final Period period;
}


