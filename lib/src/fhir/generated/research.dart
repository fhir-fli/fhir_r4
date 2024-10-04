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
}


