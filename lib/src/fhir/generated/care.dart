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
  const CarePlan({
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
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.basedOn,
    required this.replaces,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.intent,
    required this.intentElement,
    required this.category,
    required this.title,
    required this.titleElement,
    required this.description,
    required this.descriptionElement,
    required this.subject,
    required this.encounter,
    required this.period,
    required this.created,
    required this.createdElement,
    required this.author,
    required this.contributor,
    required this.careTeam,
    required this.addresses,
    required this.supportingInfo,
    required this.goal,
    required this.activity,
    required this.note,
  });
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
  const CarePlanActivity({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.outcomeCodeableConcept,
    required this.outcomeReference,
    required this.progress,
    required this.reference,
    required this.detail,
  });
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
  const CarePlanDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.kind,
    required this.kindElement,
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.code,
    required this.reasonCode,
    required this.reasonReference,
    required this.goal,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.scheduledTiming,
    required this.scheduledPeriod,
    required this.scheduledString,
    required this.scheduledStringElement,
    required this.location,
    required this.performer,
    required this.productCodeableConcept,
    required this.productReference,
    required this.dailyAmount,
    required this.quantity,
    required this.description,
    required this.descriptionElement,
  });
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
  const CareTeam({
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
    required this.category,
    required this.name,
    required this.nameElement,
    required this.subject,
    required this.encounter,
    required this.period,
    required this.participant,
    required this.reasonCode,
    required this.reasonReference,
    required this.managingOrganization,
    required this.telecom,
    required this.note,
  });
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
  const CareTeamParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.member,
    required this.onBehalfOf,
    required this.period,
  });
}


