import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class PlanDefinition extends Resource {
  PlanDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.subtitle,
    this.type,
    required this.status,
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.usage,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.goal,
    this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  String? subtitle;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String status;
  bool? experimental;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? subjectCanonical;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? usage;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<CodeableConcept>? topic = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  List<String>? library_;
  ToMany<PlanDefinitionGoal>? goal = ToMany<PlanDefinitionGoal>();
  ToMany<PlanDefinitionAction>? action = ToMany<PlanDefinitionAction>();
}

@Entity()
class PlanDefinitionGoal {
  PlanDefinitionGoal({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> description = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? priority = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? start = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? addresses = ToMany<CodeableConcept>();
  ToMany<RelatedArtifact>? documentation = ToMany<RelatedArtifact>();
  ToMany<PlanDefinitionTarget>? target = ToMany<PlanDefinitionTarget>();
}

@Entity()
class PlanDefinitionTarget {
  PlanDefinitionTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? measure = ToOne<CodeableConcept>();
  ToOne<Quantity>? detailQuantity = ToOne<Quantity>();
  ToOne<Range>? detailRange = ToOne<Range>();
  ToOne<CodeableConcept>? detailCodeableConcept = ToOne<CodeableConcept>();
  ToOne<FhirDuration>? due = ToOne<FhirDuration>();
}

@Entity()
class PlanDefinitionAction {
  PlanDefinitionAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.prefix,
    this.title,
    this.description,
    this.textEquivalent,
    this.priority,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.selectionBehavior,
    this.requiredBehavior,
    this.precheckBehavior,
    this.cardinalityBehavior,
    this.definitionCanonical,
    this.definitionUri,
    this.transform,
    this.dynamicValue,
    this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? prefix;
  String? title;
  String? description;
  String? textEquivalent;
  String? priority;
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? reason = ToMany<CodeableConcept>();
  ToMany<RelatedArtifact>? documentation = ToMany<RelatedArtifact>();
  List<String>? goalId;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? subjectCanonical;
  ToMany<TriggerDefinition>? trigger = ToMany<TriggerDefinition>();
  ToMany<PlanDefinitionCondition>? condition =
      ToMany<PlanDefinitionCondition>();
  ToMany<DataRequirement>? input = ToMany<DataRequirement>();
  ToMany<DataRequirement>? output = ToMany<DataRequirement>();
  ToMany<PlanDefinitionRelatedAction>? relatedAction =
      ToMany<PlanDefinitionRelatedAction>();
  String? timingDateTime;
  ToOne<Age>? timingAge = ToOne<Age>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  ToOne<FhirDuration>? timingDuration = ToOne<FhirDuration>();
  ToOne<Range>? timingRange = ToOne<Range>();
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToMany<PlanDefinitionParticipant>? participant =
      ToMany<PlanDefinitionParticipant>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? groupingBehavior;
  String? selectionBehavior;
  String? requiredBehavior;
  String? precheckBehavior;
  String? cardinalityBehavior;
  String? definitionCanonical;
  String? definitionUri;
  String? transform;
  ToMany<PlanDefinitionDynamicValue>? dynamicValue =
      ToMany<PlanDefinitionDynamicValue>();
  ToMany<PlanDefinitionAction>? action = ToMany<PlanDefinitionAction>();
}

@Entity()
class PlanDefinitionCondition {
  PlanDefinitionCondition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.kind,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String kind;
  ToOne<FhirExpression>? expression = ToOne<FhirExpression>();
}

@Entity()
class PlanDefinitionRelatedAction {
  PlanDefinitionRelatedAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.actionId,
    required this.relationship,
    this.offsetDuration,
    this.offsetRange,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String actionId;
  String relationship;
  ToOne<FhirDuration>? offsetDuration = ToOne<FhirDuration>();
  ToOne<Range>? offsetRange = ToOne<Range>();
}

@Entity()
class PlanDefinitionParticipant {
  PlanDefinitionParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
}

@Entity()
class PlanDefinitionDynamicValue {
  PlanDefinitionDynamicValue({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? path;
  ToOne<FhirExpression>? expression = ToOne<FhirExpression>();
}
