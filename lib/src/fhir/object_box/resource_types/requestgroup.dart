import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class RequestGroup extends Resource {
  RequestGroup({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    required this.intent,
    this.priority,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
    this.author,
    this.reasonCode,
    this.reasonReference,
    this.note,
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
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? replaces = ToMany<Reference>();
  ToOne<Identifier>? groupIdentifier = ToOne<Identifier>();
  String status;
  String intent;
  String? priority;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? authoredOn;
  ToOne<Reference>? author = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<RequestGroupAction>? action = ToMany<RequestGroupAction>();
}

@Entity()
class RequestGroupAction {
  RequestGroupAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.prefix,
    this.title,
    this.description,
    this.textEquivalent,
    this.priority,
    this.code,
    this.documentation,
    this.condition,
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
    this.resource,
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
  ToMany<RelatedArtifact>? documentation = ToMany<RelatedArtifact>();
  ToMany<RequestGroupCondition>? condition = ToMany<RequestGroupCondition>();
  ToMany<RequestGroupRelatedAction>? relatedAction =
      ToMany<RequestGroupRelatedAction>();
  String? timingDateTime;
  ToOne<Age>? timingAge = ToOne<Age>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  ToOne<FhirDuration>? timingDuration = ToOne<FhirDuration>();
  ToOne<Range>? timingRange = ToOne<Range>();
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToMany<Reference>? participant = ToMany<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? groupingBehavior;
  String? selectionBehavior;
  String? requiredBehavior;
  String? precheckBehavior;
  String? cardinalityBehavior;
  ToOne<Reference>? resource = ToOne<Reference>();
  ToMany<RequestGroupAction>? action = ToMany<RequestGroupAction>();
}

@Entity()
class RequestGroupCondition {
  RequestGroupCondition({
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
class RequestGroupRelatedAction {
  RequestGroupRelatedAction({
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
