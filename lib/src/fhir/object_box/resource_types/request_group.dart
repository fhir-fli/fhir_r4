// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRequestGroup {
  ObjectBoxRequestGroup({
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
    List<ObjectBoxIdentifier>? identifier,
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? replaces,
    ObjectBoxIdentifier? groupIdentifier,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.intent,
    ObjectBoxElement? intentElement,
    this.priority,
    ObjectBoxElement? priorityElement,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? author,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxRequestGroupAction>? action,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.replaces.addAll(replaces ?? []);
    this.groupIdentifier.target = groupIdentifier;
    this.statusElement.target = statusElement;
    this.intentElement.target = intentElement;
    this.priorityElement.target = priorityElement;
    this.code.target = code;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.authoredOnElement.target = authoredOnElement;
    this.author.target = author;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> replaces = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxRequestGroupAction> action =
      ToMany<ObjectBoxRequestGroupAction>();
}

@Entity()
class ObjectBoxRequestGroupAction {
  ObjectBoxRequestGroupAction({
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
    List<ObjectBoxRelatedArtifact>? documentation,
    List<ObjectBoxRequestGroupCondition>? condition,
    List<ObjectBoxRequestGroupRelatedAction>? relatedAction,
    this.timingDateTime,
    ObjectBoxElement? timingDateTimeElement,
    ObjectBoxAge? timingAge,
    ObjectBoxPeriod? timingPeriod,
    ObjectBoxFhirDuration? timingDuration,
    ObjectBoxRange? timingRange,
    ObjectBoxTiming? timingTiming,
    List<ObjectBoxReference>? participant,
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
    ObjectBoxReference? resource,
    List<ObjectBoxRequestGroupAction>? action,
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
    this.documentation.addAll(documentation ?? []);
    this.condition.addAll(condition ?? []);
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
    this.resource.target = resource;
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
  ToMany<ObjectBoxRelatedArtifact> documentation =
      ToMany<ObjectBoxRelatedArtifact>();
  ToMany<ObjectBoxRequestGroupCondition> condition =
      ToMany<ObjectBoxRequestGroupCondition>();
  ToMany<ObjectBoxRequestGroupRelatedAction> relatedAction =
      ToMany<ObjectBoxRequestGroupRelatedAction>();
  String? timingDateTime;
  ToOne<ObjectBoxElement> timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxRange> timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxTiming> timingTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxReference> participant = ToMany<ObjectBoxReference>();
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
  ToOne<ObjectBoxReference> resource = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxRequestGroupAction> action =
      ToMany<ObjectBoxRequestGroupAction>();
}

@Entity()
class ObjectBoxRequestGroupCondition {
  ObjectBoxRequestGroupCondition({
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
class ObjectBoxRequestGroupRelatedAction {
  ObjectBoxRequestGroupRelatedAction({
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
