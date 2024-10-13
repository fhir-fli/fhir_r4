// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPlanDefinition {
  ObjectBoxPlanDefinition({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    ObjectBoxCodeableConcept? type,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.subjectCanonical,
    ObjectBoxElement? subjectCanonicalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.usage,
    ObjectBoxElement? usageElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxCodeableConcept>? topic,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    this.library_,
    List<ObjectBoxElement>? libraryElement,
    List<ObjectBoxPlanDefinitionGoal>? goal,
    List<ObjectBoxPlanDefinitionAction>? action,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.subtitleElement.target = subtitleElement;
    this.type.target = type;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.subjectCanonicalElement.target = subjectCanonicalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.usageElement.target = usageElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.topic.addAll(topic ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.libraryElement.addAll(libraryElement ?? []);
    this.goal.addAll(goal ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement> subjectCanonicalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? usage;
  ToOne<ObjectBoxElement> usageElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept> topic = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? library_;
  ToMany<ObjectBoxElement> libraryElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxPlanDefinitionGoal> goal =
      ToMany<ObjectBoxPlanDefinitionGoal>();
  ToMany<ObjectBoxPlanDefinitionAction> action =
      ToMany<ObjectBoxPlanDefinitionAction>();
}

@Entity()
class ObjectBoxPlanDefinitionGoal {
  ObjectBoxPlanDefinitionGoal({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? description,
    ObjectBoxCodeableConcept? priority,
    ObjectBoxCodeableConcept? start,
    List<ObjectBoxCodeableConcept>? addresses,
    List<ObjectBoxRelatedArtifact>? documentation,
    List<ObjectBoxPlanDefinitionTarget>? target,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.description.target = description;
    this.priority.target = priority;
    this.start.target = start;
    this.addresses.addAll(addresses ?? []);
    this.documentation.addAll(documentation ?? []);
    this.target.addAll(target ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> description =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> start = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> addresses =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxRelatedArtifact> documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  ToMany<ObjectBoxPlanDefinitionTarget> target =
      ToMany<ObjectBoxPlanDefinitionTarget>();
}

@Entity()
class ObjectBoxPlanDefinitionTarget {
  ObjectBoxPlanDefinitionTarget({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? measure,
    ObjectBoxQuantity? detailQuantity,
    ObjectBoxRange? detailRange,
    ObjectBoxCodeableConcept? detailCodeableConcept,
    ObjectBoxFhirDuration? due,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.measure.target = measure;
    this.detailQuantity.target = detailQuantity;
    this.detailRange.target = detailRange;
    this.detailCodeableConcept.target = detailCodeableConcept;
    this.due.target = due;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> measure = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> detailQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> detailRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept> detailCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration> due = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxPlanDefinitionAction {
  ObjectBoxPlanDefinitionAction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.prefix,
    ObjectBoxElement? prefixElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.textEquivalent,
    ObjectBoxElement? textEquivalentElement,
    this.priority,
    ObjectBoxElement? priorityElement,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxCodeableConcept>? reason,
    List<ObjectBoxRelatedArtifact>? documentation,
    this.goalId,
    List<ObjectBoxElement>? goalIdElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.subjectCanonical,
    ObjectBoxElement? subjectCanonicalElement,
    List<ObjectBoxTriggerDefinition>? trigger,
    List<ObjectBoxPlanDefinitionCondition>? condition,
    List<ObjectBoxDataRequirement>? input,
    List<ObjectBoxDataRequirement>? output,
    List<ObjectBoxPlanDefinitionRelatedAction>? relatedAction,
    this.timingDateTime,
    ObjectBoxElement? timingDateTimeElement,
    ObjectBoxAge? timingAge,
    ObjectBoxPeriod? timingPeriod,
    ObjectBoxFhirDuration? timingDuration,
    ObjectBoxRange? timingRange,
    ObjectBoxTiming? timingTiming,
    List<ObjectBoxPlanDefinitionParticipant>? participant,
    ObjectBoxCodeableConcept? type,
    this.groupingBehavior,
    ObjectBoxElement? groupingBehaviorElement,
    this.selectionBehavior,
    ObjectBoxElement? selectionBehaviorElement,
    this.requiredBehavior,
    ObjectBoxElement? requiredBehaviorElement,
    this.precheckBehavior,
    ObjectBoxElement? precheckBehaviorElement,
    this.cardinalityBehavior,
    ObjectBoxElement? cardinalityBehaviorElement,
    this.definitionCanonical,
    ObjectBoxElement? definitionCanonicalElement,
    this.definitionUri,
    ObjectBoxElement? definitionUriElement,
    this.transform,
    ObjectBoxElement? transformElement,
    List<ObjectBoxPlanDefinitionDynamicValue>? dynamicValue,
    List<ObjectBoxPlanDefinitionAction>? action,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.prefixElement.target = prefixElement;
    this.titleElement.target = titleElement;
    this.descriptionElement.target = descriptionElement;
    this.textEquivalentElement.target = textEquivalentElement;
    this.priorityElement.target = priorityElement;
    this.code.addAll(code ?? []);
    this.reason.addAll(reason ?? []);
    this.documentation.addAll(documentation ?? []);
    this.goalIdElement.addAll(goalIdElement ?? []);
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.subjectCanonicalElement.target = subjectCanonicalElement;
    this.trigger.addAll(trigger ?? []);
    this.condition.addAll(condition ?? []);
    this.input.addAll(input ?? []);
    this.output.addAll(output ?? []);
    this.relatedAction.addAll(relatedAction ?? []);
    this.timingDateTimeElement.target = timingDateTimeElement;
    this.timingAge.target = timingAge;
    this.timingPeriod.target = timingPeriod;
    this.timingDuration.target = timingDuration;
    this.timingRange.target = timingRange;
    this.timingTiming.target = timingTiming;
    this.participant.addAll(participant ?? []);
    this.type.target = type;
    this.groupingBehaviorElement.target = groupingBehaviorElement;
    this.selectionBehaviorElement.target = selectionBehaviorElement;
    this.requiredBehaviorElement.target = requiredBehaviorElement;
    this.precheckBehaviorElement.target = precheckBehaviorElement;
    this.cardinalityBehaviorElement.target = cardinalityBehaviorElement;
    this.definitionCanonicalElement.target = definitionCanonicalElement;
    this.definitionUriElement.target = definitionUriElement;
    this.transformElement.target = transformElement;
    this.dynamicValue.addAll(dynamicValue ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? prefix;
  ToOne<ObjectBoxElement> prefixElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? textEquivalent;
  ToOne<ObjectBoxElement> textEquivalentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxRelatedArtifact> documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? goalId;
  ToMany<ObjectBoxElement> goalIdElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement> subjectCanonicalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTriggerDefinition> trigger =
      ToMany<ObjectBoxTriggerDefinition>();
  ToMany<ObjectBoxPlanDefinitionCondition> condition =
      ToMany<ObjectBoxPlanDefinitionCondition>();
  ToMany<ObjectBoxDataRequirement> input = ToMany<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxDataRequirement> output = ToMany<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxPlanDefinitionRelatedAction> relatedAction =
      ToMany<ObjectBoxPlanDefinitionRelatedAction>();
  String? timingDateTime;
  ToOne<ObjectBoxElement> timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange> timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxTiming> timingTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxPlanDefinitionParticipant> participant =
      ToMany<ObjectBoxPlanDefinitionParticipant>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? groupingBehavior;
  ToOne<ObjectBoxElement> groupingBehaviorElement = ToOne<ObjectBoxElement>();
  String? selectionBehavior;
  ToOne<ObjectBoxElement> selectionBehaviorElement = ToOne<ObjectBoxElement>();
  String? requiredBehavior;
  ToOne<ObjectBoxElement> requiredBehaviorElement = ToOne<ObjectBoxElement>();
  String? precheckBehavior;
  ToOne<ObjectBoxElement> precheckBehaviorElement = ToOne<ObjectBoxElement>();
  String? cardinalityBehavior;
  ToOne<ObjectBoxElement> cardinalityBehaviorElement =
      ToOne<ObjectBoxElement>();
  String? definitionCanonical;
  ToOne<ObjectBoxElement> definitionCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? definitionUri;
  ToOne<ObjectBoxElement> definitionUriElement = ToOne<ObjectBoxElement>();
  String? transform;
  ToOne<ObjectBoxElement> transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxPlanDefinitionDynamicValue> dynamicValue =
      ToMany<ObjectBoxPlanDefinitionDynamicValue>();
  ToMany<ObjectBoxPlanDefinitionAction> action =
      ToMany<ObjectBoxPlanDefinitionAction>();
}

@Entity()
class ObjectBoxPlanDefinitionCondition {
  ObjectBoxPlanDefinitionCondition({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.kind,
    ObjectBoxElement? kindElement,
    ObjectBoxFhirExpression? expression,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.kindElement.target = kindElement;
    this.expression.target = expression;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> expression = ToOne<ObjectBoxFhirExpression>();
}

@Entity()
class ObjectBoxPlanDefinitionRelatedAction {
  ObjectBoxPlanDefinitionRelatedAction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.actionId,
    ObjectBoxElement? actionIdElement,
    required this.relationship,
    ObjectBoxElement? relationshipElement,
    ObjectBoxFhirDuration? offsetDuration,
    ObjectBoxRange? offsetRange,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.actionIdElement.target = actionIdElement;
    this.relationshipElement.target = relationshipElement;
    this.offsetDuration.target = offsetDuration;
    this.offsetRange.target = offsetRange;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String actionId;
  ToOne<ObjectBoxElement> actionIdElement = ToOne<ObjectBoxElement>();
  String relationship;
  ToOne<ObjectBoxElement> relationshipElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration> offsetDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange> offsetRange = ToOne<ObjectBoxRange>();
}

@Entity()
class ObjectBoxPlanDefinitionParticipant {
  ObjectBoxPlanDefinitionParticipant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxCodeableConcept? role,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.role.target = role;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPlanDefinitionDynamicValue {
  ObjectBoxPlanDefinitionDynamicValue({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.path,
    ObjectBoxElement? pathElement,
    ObjectBoxFhirExpression? expression,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.pathElement.target = pathElement;
    this.expression.target = expression;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> expression = ToOne<ObjectBoxFhirExpression>();
}
