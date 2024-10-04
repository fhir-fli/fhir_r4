import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class PlanDefinition {
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
  final CodeableConcept type;
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
  final List<PlanDefinitionGoal> goal;
  final List<PlanDefinitionAction> action;
}

@Data()
@JsonCodable()
class PlanDefinitionGoal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept description;
  final CodeableConcept priority;
  final CodeableConcept start;
  final List<CodeableConcept> addresses;
  final List<RelatedArtifact> documentation;
  final List<PlanDefinitionTarget> target;
}

@Data()
@JsonCodable()
class PlanDefinitionTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept measure;
  final Quantity detailQuantity;
  final Range detailRange;
  final CodeableConcept detailCodeableConcept;
  final FhirDuration due;
}

@Data()
@JsonCodable()
class PlanDefinitionAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String prefix;
  final PrimitiveElement prefixElement;
  final String title;
  final PrimitiveElement titleElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final String textEquivalent;
  final PrimitiveElement textEquivalentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final List<CodeableConcept> code;
  final List<CodeableConcept> reason;
  final List<RelatedArtifact> documentation;
  final List<FhirId> goalId;
  final List<PrimitiveElement> goalIdElement;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement subjectCanonicalElement;
  final List<TriggerDefinition> trigger;
  final List<PlanDefinitionCondition> condition;
  final List<DataRequirement> input;
  final List<DataRequirement> output;
  final List<PlanDefinitionRelatedAction> relatedAction;
  final String timingDateTime;
  final PrimitiveElement timingDateTimeElement;
  final Age timingAge;
  final Period timingPeriod;
  final FhirDuration timingDuration;
  final Range timingRange;
  final Timing timingTiming;
  final List<PlanDefinitionParticipant> participant;
  final CodeableConcept type;
  final FhirCode groupingBehavior;
  final PrimitiveElement groupingBehaviorElement;
  final FhirCode selectionBehavior;
  final PrimitiveElement selectionBehaviorElement;
  final FhirCode requiredBehavior;
  final PrimitiveElement requiredBehaviorElement;
  final FhirCode precheckBehavior;
  final PrimitiveElement precheckBehaviorElement;
  final FhirCode cardinalityBehavior;
  final PrimitiveElement cardinalityBehaviorElement;
  final String definitionCanonical;
  final PrimitiveElement definitionCanonicalElement;
  final String definitionUri;
  final PrimitiveElement definitionUriElement;
  final FhirCanonical transform;
  final List<PlanDefinitionDynamicValue> dynamicValue;
  final List<PlanDefinitionAction> action;
}

@Data()
@JsonCodable()
class PlanDefinitionCondition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirExpression expression;
}

@Data()
@JsonCodable()
class PlanDefinitionRelatedAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId actionId;
  final PrimitiveElement actionIdElement;
  final FhirCode relationship;
  final PrimitiveElement relationshipElement;
  final FhirDuration offsetDuration;
  final Range offsetRange;
}

@Data()
@JsonCodable()
class PlanDefinitionParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class PlanDefinitionDynamicValue {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final FhirExpression expression;
}


