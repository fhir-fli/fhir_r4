import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RequestGroup] /// A group of related requests that can be used to capture intended activities
/// that have inter-dependencies such as "give this medication after that one".
class RequestGroup extends DomainResource {
  RequestGroup({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.RequestGroup);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Allows a service to provide a unique, business identifier for the request.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// A canonical URL referencing a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this request.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// A URL referencing an externally defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this request.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// request.
  final List<Reference>? basedOn;

  /// [replaces] /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  final List<Reference>? replaces;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition, prescription or similar form.
  final Identifier? groupIdentifier;

  /// [status] /// The current state of the request. For request groups, the status reflects
  /// the status of all the requests in the group.
  final FhirCode status;
  final Element? statusElement;

  /// [intent] /// Indicates the level of authority/intentionality associated with the request
  /// and where the request fits into the workflow chain.
  final FhirCode intent;
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the request should be addressed with respect to other
  /// requests.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [code] /// A code that identifies what the overall request group is.
  final CodeableConcept? code;

  /// [subject] /// The subject for which the request group was created.
  final Reference? subject;

  /// [encounter] /// Describes the context of the request group, if any.
  final Reference? encounter;

  /// [authoredOn] /// Indicates when the request group was created.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [author] /// Provides a reference to the author of the request group.
  final Reference? author;

  /// [reasonCode] /// Describes the reason for the request group in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this request group.
  final List<Reference>? reasonReference;

  /// [note] /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [action] /// The actions, if any, produced by the evaluation of the artifact.
  final List<RequestGroupAction>? action;
  @override
  RequestGroup clone() => throw UnimplementedError();
  RequestGroup copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    FhirCode? status,
    Element? statusElement,
    FhirCode? intent,
    Element? intentElement,
    FhirCode? priority,
    Element? priorityElement,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    Reference? author,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<RequestGroupAction>? action,
  }) {
    return RequestGroup(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      author: author ?? this.author,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RequestGroupAction] /// The actions, if any, produced by the evaluation of the artifact.
class RequestGroupAction extends BackboneElement {
  RequestGroupAction({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [prefix] /// A user-visible prefix for the action.
  final FhirString? prefix;
  final Element? prefixElement;

  /// [title] /// The title of the action displayed to a user.
  final FhirString? title;
  final Element? titleElement;

  /// [description] /// A short description of the action used to provide a summary to display to
  /// the user.
  final FhirString? description;
  final Element? descriptionElement;

  /// [textEquivalent] /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;
  final Element? textEquivalentElement;

  /// [priority] /// Indicates how quickly the action should be addressed with respect to other
  /// actions.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [code] /// A code that provides meaning for the action or action group. For example, a
  /// section may have a LOINC code for a section of a documentation template.
  final List<CodeableConcept>? code;

  /// [documentation] /// Didactic or other informational resources associated with the action that
  /// can be provided to the CDS recipient. Information resources can include
  /// inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [condition] /// An expression that describes applicability criteria, or start/stop
  /// conditions for the action.
  final List<RequestGroupCondition>? condition;

  /// [relatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
  /// start of".
  final List<RequestGroupRelatedAction>? relatedAction;

  /// [timingDateTime] /// An optional value describing when the action should be performed.
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [timingAge] /// An optional value describing when the action should be performed.
  final Age? timingAge;

  /// [timingPeriod] /// An optional value describing when the action should be performed.
  final Period? timingPeriod;

  /// [timingDuration] /// An optional value describing when the action should be performed.
  final FhirDuration? timingDuration;

  /// [timingRange] /// An optional value describing when the action should be performed.
  final Range? timingRange;

  /// [timingTiming] /// An optional value describing when the action should be performed.
  final Timing? timingTiming;

  /// [participant] /// The participant that should perform or be responsible for this action.
  final List<Reference>? participant;

  /// [type] /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior] /// Defines the grouping behavior for the action and its children.
  final FhirCode? groupingBehavior;
  final Element? groupingBehaviorElement;

  /// [selectionBehavior] /// Defines the selection behavior for the action and its children.
  final FhirCode? selectionBehavior;
  final Element? selectionBehaviorElement;

  /// [requiredBehavior] /// Defines expectations around whether an action is required.
  final FhirCode? requiredBehavior;
  final Element? requiredBehaviorElement;

  /// [precheckBehavior] /// Defines whether the action should usually be preselected.
  final FhirCode? precheckBehavior;
  final Element? precheckBehaviorElement;

  /// [cardinalityBehavior] /// Defines whether the action can be selected multiple times.
  final FhirCode? cardinalityBehavior;
  final Element? cardinalityBehaviorElement;

  /// [resource] /// The resource that is the target of the action (e.g. CommunicationRequest).
  final Reference? resource;

  /// [action] /// Sub actions.
  final List<RequestGroupAction>? action;
  @override
  RequestGroupAction clone() => throw UnimplementedError();
  RequestGroupAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? prefix,
    Element? prefixElement,
    FhirString? title,
    Element? titleElement,
    FhirString? description,
    Element? descriptionElement,
    FhirString? textEquivalent,
    Element? textEquivalentElement,
    FhirCode? priority,
    Element? priorityElement,
    List<CodeableConcept>? code,
    List<RelatedArtifact>? documentation,
    List<RequestGroupCondition>? condition,
    List<RequestGroupRelatedAction>? relatedAction,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    List<Reference>? participant,
    CodeableConcept? type,
    FhirCode? groupingBehavior,
    Element? groupingBehaviorElement,
    FhirCode? selectionBehavior,
    Element? selectionBehaviorElement,
    FhirCode? requiredBehavior,
    Element? requiredBehaviorElement,
    FhirCode? precheckBehavior,
    Element? precheckBehaviorElement,
    FhirCode? cardinalityBehavior,
    Element? cardinalityBehaviorElement,
    Reference? resource,
    List<RequestGroupAction>? action,
  }) {
    return RequestGroupAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      textEquivalentElement:
          textEquivalentElement ?? this.textEquivalentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      condition: condition ?? this.condition,
      relatedAction: relatedAction ?? this.relatedAction,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDuration: timingDuration ?? this.timingDuration,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      groupingBehaviorElement:
          groupingBehaviorElement ?? this.groupingBehaviorElement,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      selectionBehaviorElement:
          selectionBehaviorElement ?? this.selectionBehaviorElement,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      requiredBehaviorElement:
          requiredBehaviorElement ?? this.requiredBehaviorElement,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      precheckBehaviorElement:
          precheckBehaviorElement ?? this.precheckBehaviorElement,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      cardinalityBehaviorElement:
          cardinalityBehaviorElement ?? this.cardinalityBehaviorElement,
      resource: resource ?? this.resource,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RequestGroupCondition] /// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
class RequestGroupCondition extends BackboneElement {
  RequestGroupCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.kindElement,
    this.expression,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [kind] /// The kind of condition.
  final FhirCode kind;
  final Element? kindElement;

  /// [expression] /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  final FhirExpression? expression;
  @override
  RequestGroupCondition clone() => throw UnimplementedError();
  RequestGroupCondition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? kind,
    Element? kindElement,
    FhirExpression? expression,
  }) {
    return RequestGroupCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      expression: expression ?? this.expression,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RequestGroupRelatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
/// start of".
class RequestGroupRelatedAction extends BackboneElement {
  RequestGroupRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
    this.actionIdElement,
    required this.relationship,
    this.relationshipElement,
    this.offsetDuration,
    this.offsetRange,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [actionId] /// The element id of the action this is related to.
  final FhirId actionId;
  final Element? actionIdElement;

  /// [relationship] /// The relationship of this action to the related action.
  final FhirCode relationship;
  final Element? relationshipElement;

  /// [offsetDuration] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final FhirDuration? offsetDuration;

  /// [offsetRange] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final Range? offsetRange;
  @override
  RequestGroupRelatedAction clone() => throw UnimplementedError();
  RequestGroupRelatedAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? actionId,
    Element? actionIdElement,
    FhirCode? relationship,
    Element? relationshipElement,
    FhirDuration? offsetDuration,
    Range? offsetRange,
  }) {
    return RequestGroupRelatedAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actionId: actionId ?? this.actionId,
      actionIdElement: actionIdElement ?? this.actionIdElement,
      relationship: relationship ?? this.relationship,
      relationshipElement: relationshipElement ?? this.relationshipElement,
      offsetDuration: offsetDuration ?? this.offsetDuration,
      offsetRange: offsetRange ?? this.offsetRange,
    );
  }
}
