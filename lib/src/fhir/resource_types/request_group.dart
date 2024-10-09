import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'request_group.g.dart';

/// [RequestGroup] /// A group of related requests that can be used to capture intended activities
/// that have inter-dependencies such as "give this medication after that one".
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.RequestGroup);
  @override
  String get fhirType => 'RequestGroup';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Allows a service to provide a unique, business identifier for the request.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// A canonical URL referencing a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this request.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// A URL referencing an externally defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this request.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// request.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [replaces] /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  @JsonKey(name: 'replaces')
  final List<Reference>? replaces;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition, prescription or similar form.
  @JsonKey(name: 'groupIdentifier')
  final Identifier? groupIdentifier;

  /// [status] /// The current state of the request. For request groups, the status reflects
  /// the status of all the requests in the group.
  @JsonKey(name: 'status')
  final RequestStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [intent] /// Indicates the level of authority/intentionality associated with the request
  /// and where the request fits into the workflow chain.
  @JsonKey(name: 'intent')
  final RequestIntent intent;
  @JsonKey(name: '_intent')
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the request should be addressed with respect to other
  /// requests.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [code] /// A code that identifies what the overall request group is.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [subject] /// The subject for which the request group was created.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// Describes the context of the request group, if any.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [authoredOn] /// Indicates when the request group was created.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [author] /// Provides a reference to the author of the request group.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [reasonCode] /// Describes the reason for the request group in coded or textual form.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this request group.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [note] /// Provides a mechanism to communicate additional information about the
  /// response.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [action] /// The actions, if any, produced by the evaluation of the artifact.
  @JsonKey(name: 'action')
  final List<RequestGroupAction>? action;
  factory RequestGroup.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequestGroupToJson(this);

  @override
  RequestGroup clone() => throw UnimplementedError();
  @override
  RequestGroup copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    RequestStatus? status,
    Element? statusElement,
    RequestIntent? intent,
    Element? intentElement,
    RequestPriority? priority,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RequestGroup.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RequestGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RequestGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RequestGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RequestGroupAction] /// The actions, if any, produced by the evaluation of the artifact.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'RequestGroupAction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [prefix] /// A user-visible prefix for the action.
  @JsonKey(name: 'prefix')
  final FhirString? prefix;
  @JsonKey(name: '_prefix')
  final Element? prefixElement;

  /// [title] /// The title of the action displayed to a user.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [description] /// A short description of the action used to provide a summary to display to
  /// the user.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [textEquivalent] /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  @JsonKey(name: 'textEquivalent')
  final FhirString? textEquivalent;
  @JsonKey(name: '_textEquivalent')
  final Element? textEquivalentElement;

  /// [priority] /// Indicates how quickly the action should be addressed with respect to other
  /// actions.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [code] /// A code that provides meaning for the action or action group. For example, a
  /// section may have a LOINC code for a section of a documentation template.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [documentation] /// Didactic or other informational resources associated with the action that
  /// can be provided to the CDS recipient. Information resources can include
  /// inline text commentary and links to web resources.
  @JsonKey(name: 'documentation')
  final List<RelatedArtifact>? documentation;

  /// [condition] /// An expression that describes applicability criteria, or start/stop
  /// conditions for the action.
  @JsonKey(name: 'condition')
  final List<RequestGroupCondition>? condition;

  /// [relatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
  /// start of".
  @JsonKey(name: 'relatedAction')
  final List<RequestGroupRelatedAction>? relatedAction;

  /// [timingDateTime] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingDateTime')
  final FhirDateTime? timingDateTime;
  @JsonKey(name: '_timingDateTime')
  final Element? timingDateTimeElement;

  /// [timingAge] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingAge')
  final Age? timingAge;

  /// [timingPeriod] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingPeriod')
  final Period? timingPeriod;

  /// [timingDuration] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingDuration')
  final FhirDuration? timingDuration;

  /// [timingRange] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingRange')
  final Range? timingRange;

  /// [timingTiming] /// An optional value describing when the action should be performed.
  @JsonKey(name: 'timingTiming')
  final Timing? timingTiming;

  /// [participant] /// The participant that should perform or be responsible for this action.
  @JsonKey(name: 'participant')
  final List<Reference>? participant;

  /// [type] /// The type of action to perform (create, update, remove).
  @JsonKey(name: 'type')
  final ActionType? type;

  /// [groupingBehavior] /// Defines the grouping behavior for the action and its children.
  @JsonKey(name: 'groupingBehavior')
  final ActionGroupingBehavior? groupingBehavior;
  @JsonKey(name: '_groupingBehavior')
  final Element? groupingBehaviorElement;

  /// [selectionBehavior] /// Defines the selection behavior for the action and its children.
  @JsonKey(name: 'selectionBehavior')
  final ActionSelectionBehavior? selectionBehavior;
  @JsonKey(name: '_selectionBehavior')
  final Element? selectionBehaviorElement;

  /// [requiredBehavior] /// Defines expectations around whether an action is required.
  @JsonKey(name: 'requiredBehavior')
  final ActionRequiredBehavior? requiredBehavior;
  @JsonKey(name: '_requiredBehavior')
  final Element? requiredBehaviorElement;

  /// [precheckBehavior] /// Defines whether the action should usually be preselected.
  @JsonKey(name: 'precheckBehavior')
  final ActionPrecheckBehavior? precheckBehavior;
  @JsonKey(name: '_precheckBehavior')
  final Element? precheckBehaviorElement;

  /// [cardinalityBehavior] /// Defines whether the action can be selected multiple times.
  @JsonKey(name: 'cardinalityBehavior')
  final ActionCardinalityBehavior? cardinalityBehavior;
  @JsonKey(name: '_cardinalityBehavior')
  final Element? cardinalityBehaviorElement;

  /// [resource] /// The resource that is the target of the action (e.g. CommunicationRequest).
  @JsonKey(name: 'resource')
  final Reference? resource;

  /// [action] /// Sub actions.
  @JsonKey(name: 'action')
  final List<RequestGroupAction>? action;
  factory RequestGroupAction.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequestGroupActionToJson(this);

  @override
  RequestGroupAction clone() => throw UnimplementedError();
  @override
  RequestGroupAction copyWith({
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
    RequestPriority? priority,
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
    ActionType? type,
    ActionGroupingBehavior? groupingBehavior,
    Element? groupingBehaviorElement,
    ActionSelectionBehavior? selectionBehavior,
    Element? selectionBehaviorElement,
    ActionRequiredBehavior? requiredBehavior,
    Element? requiredBehaviorElement,
    ActionPrecheckBehavior? precheckBehavior,
    Element? precheckBehaviorElement,
    ActionCardinalityBehavior? cardinalityBehavior,
    Element? cardinalityBehaviorElement,
    Reference? resource,
    List<RequestGroupAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RequestGroupAction.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RequestGroupAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RequestGroupAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RequestGroupAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RequestGroupCondition] /// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
@JsonSerializable()
class RequestGroupCondition extends BackboneElement {
  RequestGroupCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.kindElement,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'RequestGroupCondition';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [kind] /// The kind of condition.
  @JsonKey(name: 'kind')
  final ActionConditionKind kind;
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [expression] /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  @JsonKey(name: 'expression')
  final FhirExpression? expression;
  factory RequestGroupCondition.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupConditionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequestGroupConditionToJson(this);

  @override
  RequestGroupCondition clone() => throw UnimplementedError();
  @override
  RequestGroupCondition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionConditionKind? kind,
    Element? kindElement,
    FhirExpression? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RequestGroupCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RequestGroupCondition.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RequestGroupCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RequestGroupCondition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RequestGroupCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RequestGroupRelatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
/// start of".
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'RequestGroupRelatedAction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [actionId] /// The element id of the action this is related to.
  @JsonKey(name: 'actionId')
  final FhirId actionId;
  @JsonKey(name: '_actionId')
  final Element? actionIdElement;

  /// [relationship] /// The relationship of this action to the related action.
  @JsonKey(name: 'relationship')
  final ActionRelationshipType relationship;
  @JsonKey(name: '_relationship')
  final Element? relationshipElement;

  /// [offsetDuration] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  @JsonKey(name: 'offsetDuration')
  final FhirDuration? offsetDuration;

  /// [offsetRange] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  @JsonKey(name: 'offsetRange')
  final Range? offsetRange;
  factory RequestGroupRelatedAction.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupRelatedActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequestGroupRelatedActionToJson(this);

  @override
  RequestGroupRelatedAction clone() => throw UnimplementedError();
  @override
  RequestGroupRelatedAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? actionId,
    Element? actionIdElement,
    ActionRelationshipType? relationship,
    Element? relationshipElement,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RequestGroupRelatedAction.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupRelatedAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RequestGroupRelatedAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RequestGroupRelatedAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RequestGroupRelatedAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupRelatedAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
