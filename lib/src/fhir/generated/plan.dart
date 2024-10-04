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
  final String subtitle;
  final PrimitiveElement Subtitle;
  final CodeableConcept type;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement SubjectCanonical;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
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
  final List<PlanDefinitionGoal> goal;
  final List<PlanDefinitionAction> action;
}

@Data()
@JsonCodable()
class PlanDefinitionGoal {
  final String id;
  final List<FhirExtension> extension;
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
  final List<FhirExtension> extension;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String prefix;
  final PrimitiveElement Prefix;
  final String title;
  final PrimitiveElement Title;
  final String description;
  final PrimitiveElement Description;
  final String textEquivalent;
  final PrimitiveElement TextEquivalent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final List<CodeableConcept> code;
  final List<CodeableConcept> reason;
  final List<RelatedArtifact> documentation;
  final List<FhirId> goalId;
  final List<PrimitiveElement> GoalId;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement SubjectCanonical;
  final List<TriggerDefinition> trigger;
  final List<PlanDefinitionCondition> condition;
  final List<DataRequirement> input;
  final List<DataRequirement> output;
  final List<PlanDefinitionRelatedAction> relatedAction;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final Age timingAge;
  final Period timingPeriod;
  final FhirDuration timingDuration;
  final Range timingRange;
  final Timing timingTiming;
  final List<PlanDefinitionParticipant> participant;
  final CodeableConcept type;
  final FhirCode groupingBehavior;
  final PrimitiveElement GroupingBehavior;
  final FhirCode selectionBehavior;
  final PrimitiveElement SelectionBehavior;
  final FhirCode requiredBehavior;
  final PrimitiveElement RequiredBehavior;
  final FhirCode precheckBehavior;
  final PrimitiveElement PrecheckBehavior;
  final FhirCode cardinalityBehavior;
  final PrimitiveElement CardinalityBehavior;
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final String definitionUri;
  final PrimitiveElement DefinitionUri;
  final FhirCanonical transform;
  final List<PlanDefinitionDynamicValue> dynamicValue;
  final List<PlanDefinitionAction> action;
}

@Data()
@JsonCodable()
class PlanDefinitionCondition {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirExpression expression;
}

@Data()
@JsonCodable()
class PlanDefinitionRelatedAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId actionId;
  final PrimitiveElement ActionId;
  final FhirCode relationship;
  final PrimitiveElement Relationship;
  final FhirDuration offsetDuration;
  final Range offsetRange;
}

@Data()
@JsonCodable()
class PlanDefinitionParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class PlanDefinitionDynamicValue {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final FhirExpression expression;
}


