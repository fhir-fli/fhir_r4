import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class PlanDefinition extends Resource {
  PlanDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.subtitle,
    this.subtitleElement,
    this.type,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.usage,
    this.usageElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.libraryElement,
    this.goal,
    this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? subtitle;
  ToOne<Element>? subtitleElement = ToOne<Element>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? subjectCanonical;
  ToOne<Element>? subjectCanonicalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? usage;
  ToOne<Element>? usageElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String? approvalDate;
  ToOne<Element>? approvalDateElement = ToOne<Element>();
  String? lastReviewDate;
  ToOne<Element>? lastReviewDateElement = ToOne<Element>();
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<CodeableConcept>? topic = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  List<String>? library_;
  ToMany<Element>? libraryElement = ToMany<Element>();
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
    this.prefixElement,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.textEquivalent,
    this.textEquivalentElement,
    this.priority,
    this.priorityElement,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.goalIdElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.groupingBehaviorElement,
    this.selectionBehavior,
    this.selectionBehaviorElement,
    this.requiredBehavior,
    this.requiredBehaviorElement,
    this.precheckBehavior,
    this.precheckBehaviorElement,
    this.cardinalityBehavior,
    this.cardinalityBehaviorElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionUri,
    this.definitionUriElement,
    this.transform,
    this.transformElement,
    this.dynamicValue,
    this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? prefix;
  ToOne<Element>? prefixElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? textEquivalent;
  ToOne<Element>? textEquivalentElement = ToOne<Element>();
  String? priority;
  ToOne<Element>? priorityElement = ToOne<Element>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? reason = ToMany<CodeableConcept>();
  ToMany<RelatedArtifact>? documentation = ToMany<RelatedArtifact>();
  List<String>? goalId;
  ToMany<Element>? goalIdElement = ToMany<Element>();
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? subjectCanonical;
  ToOne<Element>? subjectCanonicalElement = ToOne<Element>();
  ToMany<TriggerDefinition>? trigger = ToMany<TriggerDefinition>();
  ToMany<PlanDefinitionCondition>? condition =
      ToMany<PlanDefinitionCondition>();
  ToMany<DataRequirement>? input = ToMany<DataRequirement>();
  ToMany<DataRequirement>? output = ToMany<DataRequirement>();
  ToMany<PlanDefinitionRelatedAction>? relatedAction =
      ToMany<PlanDefinitionRelatedAction>();
  String? timingDateTime;
  ToOne<Element>? timingDateTimeElement = ToOne<Element>();
  ToOne<Age>? timingAge = ToOne<Age>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  ToOne<FhirDuration>? timingDuration = ToOne<FhirDuration>();
  ToOne<Range>? timingRange = ToOne<Range>();
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToMany<PlanDefinitionParticipant>? participant =
      ToMany<PlanDefinitionParticipant>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? groupingBehavior;
  ToOne<Element>? groupingBehaviorElement = ToOne<Element>();
  String? selectionBehavior;
  ToOne<Element>? selectionBehaviorElement = ToOne<Element>();
  String? requiredBehavior;
  ToOne<Element>? requiredBehaviorElement = ToOne<Element>();
  String? precheckBehavior;
  ToOne<Element>? precheckBehaviorElement = ToOne<Element>();
  String? cardinalityBehavior;
  ToOne<Element>? cardinalityBehaviorElement = ToOne<Element>();
  String? definitionCanonical;
  ToOne<Element>? definitionCanonicalElement = ToOne<Element>();
  String? definitionUri;
  ToOne<Element>? definitionUriElement = ToOne<Element>();
  String? transform;
  ToOne<Element>? transformElement = ToOne<Element>();
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
    this.kindElement,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String kind;
  ToOne<Element>? kindElement = ToOne<Element>();
  ToOne<FhirExpression>? expression = ToOne<FhirExpression>();
}

@Entity()
class PlanDefinitionRelatedAction {
  PlanDefinitionRelatedAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.actionId,
    this.actionIdElement,
    required this.relationship,
    this.relationshipElement,
    this.offsetDuration,
    this.offsetRange,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String actionId;
  ToOne<Element>? actionIdElement = ToOne<Element>();
  String relationship;
  ToOne<Element>? relationshipElement = ToOne<Element>();
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
    this.typeElement,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
}

@Entity()
class PlanDefinitionDynamicValue {
  PlanDefinitionDynamicValue({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.pathElement,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? path;
  ToOne<Element>? pathElement = ToOne<Element>();
  ToOne<FhirExpression>? expression = ToOne<FhirExpression>();
}
