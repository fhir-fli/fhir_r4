import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ResearchDefinition {
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
  final String shortTitle;
  final PrimitiveElement shortTitleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<String> comment;
  final List<PrimitiveElement> commentElement;
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
  final Reference population;
  final Reference exposure;
  final Reference exposureAlternative;
  final Reference outcome;
  const ResearchDefinition({
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
    required this.shortTitle,
    required this.shortTitleElement,
    required this.subtitle,
    required this.subtitleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.subjectCodeableConcept,
    required this.subjectReference,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.comment,
    required this.commentElement,
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
    required this.population,
    required this.exposure,
    required this.exposureAlternative,
    required this.outcome,
  });
}

@Data()
@JsonCodable()
class ResearchElementDefinition {
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
  final String shortTitle;
  final PrimitiveElement shortTitleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<String> comment;
  final List<PrimitiveElement> commentElement;
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
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCode variableType;
  final PrimitiveElement variableTypeElement;
  final List<ResearchElementDefinitionCharacteristic> characteristic;
  const ResearchElementDefinition({
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
    required this.shortTitle,
    required this.shortTitleElement,
    required this.subtitle,
    required this.subtitleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.subjectCodeableConcept,
    required this.subjectReference,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.comment,
    required this.commentElement,
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
    required this.type,
    required this.typeElement,
    required this.variableType,
    required this.variableTypeElement,
    required this.characteristic,
  });
}

@Data()
@JsonCodable()
class ResearchElementDefinitionCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept definitionCodeableConcept;
  final String definitionCanonical;
  final PrimitiveElement definitionCanonicalElement;
  final FhirExpression definitionExpression;
  final DataRequirement definitionDataRequirement;
  final List<UsageContext> usageContext;
  final FhirBoolean exclude;
  final PrimitiveElement excludeElement;
  final CodeableConcept unitOfMeasure;
  final String studyEffectiveDescription;
  final PrimitiveElement studyEffectiveDescriptionElement;
  final String studyEffectiveDateTime;
  final PrimitiveElement studyEffectiveDateTimeElement;
  final Period studyEffectivePeriod;
  final FhirDuration studyEffectiveDuration;
  final Timing studyEffectiveTiming;
  final FhirDuration studyEffectiveTimeFromStart;
  final FhirCode studyEffectiveGroupMeasure;
  final PrimitiveElement studyEffectiveGroupMeasureElement;
  final String participantEffectiveDescription;
  final PrimitiveElement participantEffectiveDescriptionElement;
  final String participantEffectiveDateTime;
  final PrimitiveElement participantEffectiveDateTimeElement;
  final Period participantEffectivePeriod;
  final FhirDuration participantEffectiveDuration;
  final Timing participantEffectiveTiming;
  final FhirDuration participantEffectiveTimeFromStart;
  final FhirCode participantEffectiveGroupMeasure;
  final PrimitiveElement participantEffectiveGroupMeasureElement;
  const ResearchElementDefinitionCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.definitionCodeableConcept,
    required this.definitionCanonical,
    required this.definitionCanonicalElement,
    required this.definitionExpression,
    required this.definitionDataRequirement,
    required this.usageContext,
    required this.exclude,
    required this.excludeElement,
    required this.unitOfMeasure,
    required this.studyEffectiveDescription,
    required this.studyEffectiveDescriptionElement,
    required this.studyEffectiveDateTime,
    required this.studyEffectiveDateTimeElement,
    required this.studyEffectivePeriod,
    required this.studyEffectiveDuration,
    required this.studyEffectiveTiming,
    required this.studyEffectiveTimeFromStart,
    required this.studyEffectiveGroupMeasure,
    required this.studyEffectiveGroupMeasureElement,
    required this.participantEffectiveDescription,
    required this.participantEffectiveDescriptionElement,
    required this.participantEffectiveDateTime,
    required this.participantEffectiveDateTimeElement,
    required this.participantEffectivePeriod,
    required this.participantEffectiveDuration,
    required this.participantEffectiveTiming,
    required this.participantEffectiveTimeFromStart,
    required this.participantEffectiveGroupMeasure,
    required this.participantEffectiveGroupMeasureElement,
  });
}

@Data()
@JsonCodable()
class ResearchStudy {
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
  final String title;
  final PrimitiveElement titleElement;
  final List<Reference> protocol;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept primaryPurposeType;
  final CodeableConcept phase;
  final List<CodeableConcept> category;
  final List<CodeableConcept> focus;
  final List<CodeableConcept> condition;
  final List<ContactDetail> contact;
  final List<RelatedArtifact> relatedArtifact;
  final List<CodeableConcept> keyword;
  final List<CodeableConcept> location;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<Reference> enrollment;
  final Period period;
  final Reference sponsor;
  final Reference principalInvestigator;
  final List<Reference> site;
  final CodeableConcept reasonStopped;
  final List<Annotation> note;
  final List<ResearchStudyArm> arm;
  final List<ResearchStudyObjective> objective;
  const ResearchStudy({
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
    required this.title,
    required this.titleElement,
    required this.protocol,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.primaryPurposeType,
    required this.phase,
    required this.category,
    required this.focus,
    required this.condition,
    required this.contact,
    required this.relatedArtifact,
    required this.keyword,
    required this.location,
    required this.description,
    required this.descriptionElement,
    required this.enrollment,
    required this.period,
    required this.sponsor,
    required this.principalInvestigator,
    required this.site,
    required this.reasonStopped,
    required this.note,
    required this.arm,
    required this.objective,
  });
}

@Data()
@JsonCodable()
class ResearchStudyArm {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept type;
  final String description;
  final PrimitiveElement descriptionElement;
  const ResearchStudyArm({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.type,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class ResearchStudyObjective {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept type;
  const ResearchStudyObjective({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.type,
  });
}

@Data()
@JsonCodable()
class ResearchSubject {
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
  final Period period;
  final Reference study;
  final Reference individual;
  final String assignedArm;
  final PrimitiveElement assignedArmElement;
  final String actualArm;
  final PrimitiveElement actualArmElement;
  final Reference consent;
  const ResearchSubject({
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
    required this.period,
    required this.study,
    required this.individual,
    required this.assignedArm,
    required this.assignedArmElement,
    required this.actualArm,
    required this.actualArmElement,
    required this.consent,
  });
}


