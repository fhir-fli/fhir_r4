// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRequestGroup {
  ObjectBoxRequestGroup({
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    this.priority,
    this.priorityElement,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
    this.authoredOnElement,
    this.author,
    this.reasonCode,
    this.reasonReference,
    this.note,
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
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? replaces = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxRequestGroupAction>? action =
      ToMany<ObjectBoxRequestGroupAction>();
}

@Entity()
class ObjectBoxRequestGroupAction {
  ObjectBoxRequestGroupAction({
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
    this.documentation,
    this.condition,
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
    this.resource,
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
  ToMany<ObjectBoxRelatedArtifact>? documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  ToMany<ObjectBoxRequestGroupCondition>? condition =
      ToMany<ObjectBoxRequestGroupCondition>();
  ToMany<ObjectBoxRequestGroupRelatedAction>? relatedAction =
      ToMany<ObjectBoxRequestGroupRelatedAction>();
  String? timingDateTime;
  ToOne<ObjectBoxElement>? timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange>? timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxTiming>? timingTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxReference>? participant = ToMany<ObjectBoxReference>();
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
  ToOne<ObjectBoxReference>? resource = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxRequestGroupAction>? action =
      ToMany<ObjectBoxRequestGroupAction>();
}

@Entity()
class ObjectBoxRequestGroupCondition {
  ObjectBoxRequestGroupCondition({
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
class ObjectBoxRequestGroupRelatedAction {
  ObjectBoxRequestGroupRelatedAction({
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
