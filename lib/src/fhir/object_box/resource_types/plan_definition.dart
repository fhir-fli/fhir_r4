// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPlanDefinition {
  ObjectBoxPlanDefinition({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement>? subtitleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement>? subjectCanonicalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? usage;
  ToOne<ObjectBoxElement>? usageElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept>? topic = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail>? author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact>? relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? library_;
  ToMany<ObjectBoxElement>? libraryElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxPlanDefinitionGoal>? goal =
      ToMany<ObjectBoxPlanDefinitionGoal>();
  ToMany<ObjectBoxPlanDefinitionAction>? action =
      ToMany<ObjectBoxPlanDefinitionAction>();
}

@Entity()
class ObjectBoxPlanDefinitionGoal {
  ObjectBoxPlanDefinitionGoal({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> description =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? start = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? addresses =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxRelatedArtifact>? documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  ToMany<ObjectBoxPlanDefinitionTarget>? target =
      ToMany<ObjectBoxPlanDefinitionTarget>();
}

@Entity()
class ObjectBoxPlanDefinitionTarget {
  ObjectBoxPlanDefinitionTarget({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? measure = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? detailQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? detailRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept>? detailCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration>? due = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxPlanDefinitionAction {
  ObjectBoxPlanDefinitionAction({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? prefix;
  ToOne<ObjectBoxElement>? prefixElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? textEquivalent;
  ToOne<ObjectBoxElement>? textEquivalentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxRelatedArtifact>? documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? goalId;
  ToMany<ObjectBoxElement>? goalIdElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement>? subjectCanonicalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTriggerDefinition>? trigger =
      ToMany<ObjectBoxTriggerDefinition>();
  ToMany<ObjectBoxPlanDefinitionCondition>? condition =
      ToMany<ObjectBoxPlanDefinitionCondition>();
  ToMany<ObjectBoxDataRequirement>? input = ToMany<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxDataRequirement>? output = ToMany<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxPlanDefinitionRelatedAction>? relatedAction =
      ToMany<ObjectBoxPlanDefinitionRelatedAction>();
  String? timingDateTime;
  ToOne<ObjectBoxElement>? timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange>? timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxTiming>? timingTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxPlanDefinitionParticipant>? participant =
      ToMany<ObjectBoxPlanDefinitionParticipant>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? groupingBehavior;
  ToOne<ObjectBoxElement>? groupingBehaviorElement = ToOne<ObjectBoxElement>();
  String? selectionBehavior;
  ToOne<ObjectBoxElement>? selectionBehaviorElement = ToOne<ObjectBoxElement>();
  String? requiredBehavior;
  ToOne<ObjectBoxElement>? requiredBehaviorElement = ToOne<ObjectBoxElement>();
  String? precheckBehavior;
  ToOne<ObjectBoxElement>? precheckBehaviorElement = ToOne<ObjectBoxElement>();
  String? cardinalityBehavior;
  ToOne<ObjectBoxElement>? cardinalityBehaviorElement =
      ToOne<ObjectBoxElement>();
  String? definitionCanonical;
  ToOne<ObjectBoxElement>? definitionCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? definitionUri;
  ToOne<ObjectBoxElement>? definitionUriElement = ToOne<ObjectBoxElement>();
  String? transform;
  ToOne<ObjectBoxElement>? transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxPlanDefinitionDynamicValue>? dynamicValue =
      ToMany<ObjectBoxPlanDefinitionDynamicValue>();
  ToMany<ObjectBoxPlanDefinitionAction>? action =
      ToMany<ObjectBoxPlanDefinitionAction>();
}

@Entity()
class ObjectBoxPlanDefinitionCondition {
  ObjectBoxPlanDefinitionCondition({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression>? expression = ToOne<ObjectBoxFhirExpression>();
}

@Entity()
class ObjectBoxPlanDefinitionRelatedAction {
  ObjectBoxPlanDefinitionRelatedAction({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String actionId;
  ToOne<ObjectBoxElement>? actionIdElement = ToOne<ObjectBoxElement>();
  String relationship;
  ToOne<ObjectBoxElement>? relationshipElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirDuration>? offsetDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange>? offsetRange = ToOne<ObjectBoxRange>();
}

@Entity()
class ObjectBoxPlanDefinitionParticipant {
  ObjectBoxPlanDefinitionParticipant({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPlanDefinitionDynamicValue {
  ObjectBoxPlanDefinitionDynamicValue({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression>? expression = ToOne<ObjectBoxFhirExpression>();
}
