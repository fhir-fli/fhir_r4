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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String shortTitle;
  final PrimitiveElement ShortTitle;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<String> comment;
  final List<PrimitiveElement> Comment;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final String usage;
  final PrimitiveElement Usage;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library;
  final Reference population;
  final Reference exposure;
  final Reference exposureAlternative;
  final Reference outcome;
}

@Data()
@JsonCodable()
class ResearchElementDefinition {
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
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String shortTitle;
  final PrimitiveElement ShortTitle;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<String> comment;
  final List<PrimitiveElement> Comment;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final String usage;
  final PrimitiveElement Usage;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCode variableType;
  final PrimitiveElement VariableType;
  final List<ResearchElementDefinitionCharacteristic> characteristic;
}

@Data()
@JsonCodable()
class ResearchElementDefinitionCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept definitionCodeableConcept;
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final FhirExpression definitionExpression;
  final DataRequirement definitionDataRequirement;
  final List<UsageContext> usageContext;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final CodeableConcept unitOfMeasure;
  final String studyEffectiveDescription;
  final PrimitiveElement StudyEffectiveDescription;
  final String studyEffectiveDateTime;
  final PrimitiveElement StudyEffectiveDateTime;
  final Period studyEffectivePeriod;
  final FhirDuration studyEffectiveDuration;
  final Timing studyEffectiveTiming;
  final FhirDuration studyEffectiveTimeFromStart;
  final FhirCode studyEffectiveGroupMeasure;
  final PrimitiveElement StudyEffectiveGroupMeasure;
  final String participantEffectiveDescription;
  final PrimitiveElement ParticipantEffectiveDescription;
  final String participantEffectiveDateTime;
  final PrimitiveElement ParticipantEffectiveDateTime;
  final Period participantEffectivePeriod;
  final FhirDuration participantEffectiveDuration;
  final Timing participantEffectiveTiming;
  final FhirDuration participantEffectiveTimeFromStart;
  final FhirCode participantEffectiveGroupMeasure;
  final PrimitiveElement ParticipantEffectiveGroupMeasure;
}

@Data()
@JsonCodable()
class ResearchStudy {
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
  final String title;
  final PrimitiveElement Title;
  final List<Reference> protocol;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
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
  final PrimitiveElement Description;
  final List<Reference> enrollment;
  final Period period;
  final Reference sponsor;
  final Reference principalInvestigator;
  final List<Reference> site;
  final CodeableConcept reasonStopped;
  final List<Annotation> note;
  final List<ResearchStudyArm> arm;
  final List<ResearchStudyObjective> objective;
}

@Data()
@JsonCodable()
class ResearchStudyArm {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  final String description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class ResearchStudyObjective {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
}

@Data()
@JsonCodable()
class ResearchSubject {
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
  final Period period;
  final Reference study;
  final Reference individual;
  final String assignedArm;
  final PrimitiveElement AssignedArm;
  final String actualArm;
  final PrimitiveElement ActualArm;
  final Reference consent;
}


