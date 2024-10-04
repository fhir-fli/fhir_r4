import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ActivityDefinition {
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
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement subjectCanonicalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final String usage;
  final PrimitiveElement usageElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library_;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirCanonical profile;
  final CodeableConcept code;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final Timing timingTiming;
  final String timingDateTime;
  final PrimitiveElement timingDateTimeElement;
  final Age timingAge;
  final Period timingPeriod;
  final Range timingRange;
  final FhirDuration timingDuration;
  final Reference location;
  final List<ActivityDefinitionParticipant> participant;
  final Reference productReference;
  final CodeableConcept productCodeableConcept;
  final Quantity quantity;
  final List<Dosage> dosage;
  final List<CodeableConcept> bodySite;
  final List<Reference> specimenRequirement;
  final List<Reference> observationRequirement;
  final List<Reference> observationResultRequirement;
  final FhirCanonical transform;
  final List<ActivityDefinitionDynamicValue> dynamicValue;
  const ActivityDefinition({
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
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.subtitle,
    required this.subtitleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.subjectCodeableConcept,
    required this.subjectReference,
    required this.subjectCanonical,
    required this.subjectCanonicalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.usage,
    required this.usageElement,
    required this.copyright,
    required this.copyrightElement,
    required this.approvalDate,
    required this.approvalDateElement,
    required this.lastReviewDate,
    required this.lastReviewDateElement,
    required this.effectivePeriod,
    required this.topic,
    required this.author,
    required this.editor,
    required this.reviewer,
    required this.endorser,
    required this.relatedArtifact,
    required this.library_,
    required this.kind,
    required this.kindElement,
    required this.profile,
    required this.code,
    required this.intent,
    required this.intentElement,
    required this.priority,
    required this.priorityElement,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.timingTiming,
    required this.timingDateTime,
    required this.timingDateTimeElement,
    required this.timingAge,
    required this.timingPeriod,
    required this.timingRange,
    required this.timingDuration,
    required this.location,
    required this.participant,
    required this.productReference,
    required this.productCodeableConcept,
    required this.quantity,
    required this.dosage,
    required this.bodySite,
    required this.specimenRequirement,
    required this.observationRequirement,
    required this.observationResultRequirement,
    required this.transform,
    required this.dynamicValue,
  });
}

@Data()
@JsonCodable()
class ActivityDefinitionParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final CodeableConcept role;
  const ActivityDefinitionParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.role,
  });
}

@Data()
@JsonCodable()
class ActivityDefinitionDynamicValue {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final FhirExpression expression;
  const ActivityDefinitionDynamicValue({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.expression,
  });
}


