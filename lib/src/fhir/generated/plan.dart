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
  const PlanDefinition({
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
    required this.type,
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
    required this.goal,
    required this.action,
  });
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
  const PlanDefinitionGoal({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.description,
    required this.priority,
    required this.start,
    required this.addresses,
    required this.documentation,
    required this.target,
  });
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
  const PlanDefinitionTarget({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.measure,
    required this.detailQuantity,
    required this.detailRange,
    required this.detailCodeableConcept,
    required this.due,
  });
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
  const PlanDefinitionAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.prefix,
    required this.prefixElement,
    required this.title,
    required this.titleElement,
    required this.description,
    required this.descriptionElement,
    required this.textEquivalent,
    required this.textEquivalentElement,
    required this.priority,
    required this.priorityElement,
    required this.code,
    required this.reason,
    required this.documentation,
    required this.goalId,
    required this.goalIdElement,
    required this.subjectCodeableConcept,
    required this.subjectReference,
    required this.subjectCanonical,
    required this.subjectCanonicalElement,
    required this.trigger,
    required this.condition,
    required this.input,
    required this.output,
    required this.relatedAction,
    required this.timingDateTime,
    required this.timingDateTimeElement,
    required this.timingAge,
    required this.timingPeriod,
    required this.timingDuration,
    required this.timingRange,
    required this.timingTiming,
    required this.participant,
    required this.type,
    required this.groupingBehavior,
    required this.groupingBehaviorElement,
    required this.selectionBehavior,
    required this.selectionBehaviorElement,
    required this.requiredBehavior,
    required this.requiredBehaviorElement,
    required this.precheckBehavior,
    required this.precheckBehaviorElement,
    required this.cardinalityBehavior,
    required this.cardinalityBehaviorElement,
    required this.definitionCanonical,
    required this.definitionCanonicalElement,
    required this.definitionUri,
    required this.definitionUriElement,
    required this.transform,
    required this.dynamicValue,
    required this.action,
  });
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
  const PlanDefinitionCondition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.kind,
    required this.kindElement,
    required this.expression,
  });
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
  const PlanDefinitionRelatedAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.actionId,
    required this.actionIdElement,
    required this.relationship,
    required this.relationshipElement,
    required this.offsetDuration,
    required this.offsetRange,
  });
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
  const PlanDefinitionParticipant({
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
class PlanDefinitionDynamicValue {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final FhirExpression expression;
  const PlanDefinitionDynamicValue({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.expression,
  });
}


