import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RequestGroup]
/// A group of related requests that can be used to capture intended
/// activities that have inter-dependencies such as "give this medication
/// after that one".
class RequestGroup extends DomainResource {
  /// Primary constructor for [RequestGroup]

  RequestGroup({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,

    /// Extensions for [instantiatesCanonical]
    this.instantiatesCanonicalElement,
    this.instantiatesUri,

    /// Extensions for [instantiatesUri]
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.intent,

    /// Extensions for [intent]
    this.intentElement,
    this.priority,

    /// Extensions for [priority]
    this.priorityElement,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,

    /// Extensions for [authoredOn]
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
  }) : super(
          resourceType: R4ResourceType.RequestGroup,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroup.fromJson(Map<String, dynamic> json) {
    return RequestGroup(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>(
                (dynamic v) => FhirUri.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>,
            )
          : null,
      status: RequestStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      intent: RequestIntent.fromJson(json['intent']),
      intentElement: json['_intent'] != null
          ? Element.fromJson(
              json['_intent'] as Map<String, dynamic>,
            )
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'])
          : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(
              json['_priority'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      authoredOn: json['authoredOn'] != null
          ? FhirDateTime.fromJson(json['authoredOn'])
          : null,
      authoredOnElement: json['_authoredOn'] != null
          ? Element.fromJson(
              json['_authoredOn'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (dynamic v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<RequestGroupAction>(
                (dynamic v) => RequestGroupAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [RequestGroup] from a [String] or [YamlMap] object
  factory RequestGroup.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RequestGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('RequestGroup cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RequestGroup] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RequestGroup';

  /// [identifier]
  /// Allows a service to provide a unique, business identifier for the
  /// request.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// A canonical URL referencing a FHIR-defined protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this request.
  final List<FhirCanonical>? instantiatesCanonical;

  /// Extensions for [instantiatesCanonical]
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri]
  /// A URL referencing an externally defined protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// request.
  final List<FhirUri>? instantiatesUri;

  /// Extensions for [instantiatesUri]
  final List<Element>? instantiatesUriElement;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// request.
  final List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  final List<Reference>? replaces;

  /// [groupIdentifier]
  /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of
  /// the requisition, prescription or similar form.
  final Identifier? groupIdentifier;

  /// [status]
  /// The current state of the request. For request groups, the status
  /// reflects the status of all the requests in the group.
  final RequestStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// request and where the request fits into the workflow chain.
  final RequestIntent intent;

  /// Extensions for [intent]
  final Element? intentElement;

  /// [priority]
  /// Indicates how quickly the request should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// Extensions for [priority]
  final Element? priorityElement;

  /// [code]
  /// A code that identifies what the overall request group is.
  final CodeableConcept? code;

  /// [subject]
  /// The subject for which the request group was created.
  final Reference? subject;

  /// [encounter]
  /// Describes the context of the request group, if any.
  final Reference? encounter;

  /// [authoredOn]
  /// Indicates when the request group was created.
  final FhirDateTime? authoredOn;

  /// Extensions for [authoredOn]
  final Element? authoredOnElement;

  /// [author]
  /// Provides a reference to the author of the request group.
  final Reference? author;

  /// [reasonCode]
  /// Describes the reason for the request group in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies this request
  /// group.
  final List<Reference>? reasonReference;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [action]
  /// The actions, if any, produced by the evaluation of the artifact.
  final List<RequestGroupAction>? action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((Reference v) => v.toJson()).toList();
    }
    if (replaces != null && replaces!.isNotEmpty) {
      json['replaces'] = replaces!.map((Reference v) => v.toJson()).toList();
    }
    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }
    json['status'] = status.toJson();
    json['intent'] = intent.toJson();
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.toJson();
    }
    if (authoredOnElement != null) {
      json['_authoredOn'] = authoredOnElement!.toJson();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] =
          action!.map((RequestGroupAction v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [RequestGroupAction]
/// The actions, if any, produced by the evaluation of the artifact.
class RequestGroupAction extends BackboneElement {
  /// Primary constructor for [RequestGroupAction]

  RequestGroupAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.prefix,

    /// Extensions for [prefix]
    this.prefixElement,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.textEquivalent,

    /// Extensions for [textEquivalent]
    this.textEquivalentElement,
    this.priority,

    /// Extensions for [priority]
    this.priorityElement,
    this.code,
    this.documentation,
    this.condition,
    this.relatedAction,
    this.timingDateTime,

    /// Extensions for [timingDateTime]
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,

    /// Extensions for [groupingBehavior]
    this.groupingBehaviorElement,
    this.selectionBehavior,

    /// Extensions for [selectionBehavior]
    this.selectionBehaviorElement,
    this.requiredBehavior,

    /// Extensions for [requiredBehavior]
    this.requiredBehaviorElement,
    this.precheckBehavior,

    /// Extensions for [precheckBehavior]
    this.precheckBehaviorElement,
    this.cardinalityBehavior,

    /// Extensions for [cardinalityBehavior]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupAction.fromJson(Map<String, dynamic> json) {
    return RequestGroupAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prefix:
          json['prefix'] != null ? FhirString.fromJson(json['prefix']) : null,
      prefixElement: json['_prefix'] != null
          ? Element.fromJson(
              json['_prefix'] as Map<String, dynamic>,
            )
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      textEquivalent: json['textEquivalent'] != null
          ? FhirString.fromJson(json['textEquivalent'])
          : null,
      textEquivalentElement: json['_textEquivalent'] != null
          ? Element.fromJson(
              json['_textEquivalent'] as Map<String, dynamic>,
            )
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'])
          : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(
              json['_priority'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? (json['documentation'] as List<dynamic>)
              .map<RelatedArtifact>(
                (dynamic v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<RequestGroupCondition>(
                (dynamic v) => RequestGroupCondition.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedAction: json['relatedAction'] != null
          ? (json['relatedAction'] as List<dynamic>)
              .map<RequestGroupRelatedAction>(
                (dynamic v) => RequestGroupRelatedAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson(json['timingDateTime'])
          : null,
      timingDateTimeElement: json['_timingDateTime'] != null
          ? Element.fromJson(
              json['_timingDateTime'] as Map<String, dynamic>,
            )
          : null,
      timingAge: json['timingAge'] != null
          ? Age.fromJson(
              json['timingAge'] as Map<String, dynamic>,
            )
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              json['timingPeriod'] as Map<String, dynamic>,
            )
          : null,
      timingDuration: json['timingDuration'] != null
          ? FhirDuration.fromJson(
              json['timingDuration'] as Map<String, dynamic>,
            )
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson(
              json['timingRange'] as Map<String, dynamic>,
            )
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              json['timingTiming'] as Map<String, dynamic>,
            )
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      groupingBehavior: json['groupingBehavior'] != null
          ? ActionGroupingBehavior.fromJson(json['groupingBehavior'])
          : null,
      groupingBehaviorElement: json['_groupingBehavior'] != null
          ? Element.fromJson(
              json['_groupingBehavior'] as Map<String, dynamic>,
            )
          : null,
      selectionBehavior: json['selectionBehavior'] != null
          ? ActionSelectionBehavior.fromJson(json['selectionBehavior'])
          : null,
      selectionBehaviorElement: json['_selectionBehavior'] != null
          ? Element.fromJson(
              json['_selectionBehavior'] as Map<String, dynamic>,
            )
          : null,
      requiredBehavior: json['requiredBehavior'] != null
          ? ActionRequiredBehavior.fromJson(json['requiredBehavior'])
          : null,
      requiredBehaviorElement: json['_requiredBehavior'] != null
          ? Element.fromJson(
              json['_requiredBehavior'] as Map<String, dynamic>,
            )
          : null,
      precheckBehavior: json['precheckBehavior'] != null
          ? ActionPrecheckBehavior.fromJson(json['precheckBehavior'])
          : null,
      precheckBehaviorElement: json['_precheckBehavior'] != null
          ? Element.fromJson(
              json['_precheckBehavior'] as Map<String, dynamic>,
            )
          : null,
      cardinalityBehavior: json['cardinalityBehavior'] != null
          ? ActionCardinalityBehavior.fromJson(json['cardinalityBehavior'])
          : null,
      cardinalityBehaviorElement: json['_cardinalityBehavior'] != null
          ? Element.fromJson(
              json['_cardinalityBehavior'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? Reference.fromJson(
              json['resource'] as Map<String, dynamic>,
            )
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<RequestGroupAction>(
                (dynamic v) => RequestGroupAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [RequestGroupAction] from a [String] or [YamlMap] object
  factory RequestGroupAction.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RequestGroupAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'RequestGroupAction cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RequestGroupAction] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RequestGroupAction';

  /// [prefix]
  /// A user-visible prefix for the action.
  final FhirString? prefix;

  /// Extensions for [prefix]
  final Element? prefixElement;

  /// [title]
  /// The title of the action displayed to a user.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [description]
  /// A short description of the action used to provide a summary to display
  /// to the user.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;

  /// Extensions for [textEquivalent]
  final Element? textEquivalentElement;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  final RequestPriority? priority;

  /// Extensions for [priority]
  final Element? priorityElement;

  /// [code]
  /// A code that provides meaning for the action or action group. For
  /// example, a section may have a LOINC code for a section of a
  /// documentation template.
  final List<CodeableConcept>? code;

  /// [documentation]
  /// Didactic or other informational resources associated with the action
  /// that can be provided to the CDS recipient. Information resources can
  /// include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [condition]
  /// An expression that describes applicability criteria, or start/stop
  /// conditions for the action.
  final List<RequestGroupCondition>? condition;

  /// [relatedAction]
  /// A relationship to another action such as "before" or "30-60 minutes
  /// after start of".
  final List<RequestGroupRelatedAction>? relatedAction;

  /// [timingDateTime]
  /// An optional value describing when the action should be performed.
  final FhirDateTime? timingDateTime;

  /// Extensions for [timingDateTime]
  final Element? timingDateTimeElement;

  /// [timingAge]
  /// An optional value describing when the action should be performed.
  final Age? timingAge;

  /// [timingPeriod]
  /// An optional value describing when the action should be performed.
  final Period? timingPeriod;

  /// [timingDuration]
  /// An optional value describing when the action should be performed.
  final FhirDuration? timingDuration;

  /// [timingRange]
  /// An optional value describing when the action should be performed.
  final Range? timingRange;

  /// [timingTiming]
  /// An optional value describing when the action should be performed.
  final Timing? timingTiming;

  /// [participant]
  /// The participant that should perform or be responsible for this action.
  final List<Reference>? participant;

  /// [type]
  /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior]
  /// Defines the grouping behavior for the action and its children.
  final ActionGroupingBehavior? groupingBehavior;

  /// Extensions for [groupingBehavior]
  final Element? groupingBehaviorElement;

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  final ActionSelectionBehavior? selectionBehavior;

  /// Extensions for [selectionBehavior]
  final Element? selectionBehaviorElement;

  /// [requiredBehavior]
  /// Defines expectations around whether an action is required.
  final ActionRequiredBehavior? requiredBehavior;

  /// Extensions for [requiredBehavior]
  final Element? requiredBehaviorElement;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  final ActionPrecheckBehavior? precheckBehavior;

  /// Extensions for [precheckBehavior]
  final Element? precheckBehaviorElement;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  final ActionCardinalityBehavior? cardinalityBehavior;

  /// Extensions for [cardinalityBehavior]
  final Element? cardinalityBehaviorElement;

  /// [resource]
  /// The resource that is the target of the action (e.g.
  /// CommunicationRequest).
  final Reference? resource;

  /// [action]
  /// Sub actions.
  final List<RequestGroupAction>? action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (prefix?.value != null) {
      json['prefix'] = prefix!.toJson();
    }
    if (prefixElement != null) {
      json['_prefix'] = prefixElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (textEquivalent?.value != null) {
      json['textEquivalent'] = textEquivalent!.toJson();
    }
    if (textEquivalentElement != null) {
      json['_textEquivalent'] = textEquivalentElement!.toJson();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (documentation != null && documentation!.isNotEmpty) {
      json['documentation'] =
          documentation!.map((RelatedArtifact v) => v.toJson()).toList();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] =
          condition!.map((RequestGroupCondition v) => v.toJson()).toList();
    }
    if (relatedAction != null && relatedAction!.isNotEmpty) {
      json['relatedAction'] = relatedAction!
          .map((RequestGroupRelatedAction v) => v.toJson())
          .toList();
    }
    if (timingDateTime?.value != null) {
      json['timingDateTime'] = timingDateTime!.toJson();
    }
    if (timingDateTimeElement != null) {
      json['_timingDateTime'] = timingDateTimeElement!.toJson();
    }
    if (timingAge != null) {
      json['timingAge'] = timingAge!.toJson();
    }
    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }
    if (timingDuration != null) {
      json['timingDuration'] = timingDuration!.toJson();
    }
    if (timingRange != null) {
      json['timingRange'] = timingRange!.toJson();
    }
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] =
          participant!.map((Reference v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (groupingBehavior != null) {
      json['groupingBehavior'] = groupingBehavior!.toJson();
    }
    if (selectionBehavior != null) {
      json['selectionBehavior'] = selectionBehavior!.toJson();
    }
    if (requiredBehavior != null) {
      json['requiredBehavior'] = requiredBehavior!.toJson();
    }
    if (precheckBehavior != null) {
      json['precheckBehavior'] = precheckBehavior!.toJson();
    }
    if (cardinalityBehavior != null) {
      json['cardinalityBehavior'] = cardinalityBehavior!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] =
          action!.map((RequestGroupAction v) => v.toJson()).toList();
    }
    return json;
  }

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
    CodeableConcept? type,
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
}

/// [RequestGroupCondition]
/// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
class RequestGroupCondition extends BackboneElement {
  /// Primary constructor for [RequestGroupCondition]

  RequestGroupCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,

    /// Extensions for [kind]
    this.kindElement,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupCondition.fromJson(Map<String, dynamic> json) {
    return RequestGroupCondition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      kind: ActionConditionKind.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      expression: json['expression'] != null
          ? FhirExpression.fromJson(
              json['expression'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RequestGroupCondition] from a [String] or [YamlMap] object
  factory RequestGroupCondition.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RequestGroupCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'RequestGroupCondition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RequestGroupCondition] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RequestGroupCondition';

  /// [kind]
  /// The kind of condition.
  final ActionConditionKind kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [expression]
  /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  final FhirExpression? expression;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['kind'] = kind.toJson();
    if (expression != null) {
      json['expression'] = expression!.toJson();
    }
    return json;
  }

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
}

/// [RequestGroupRelatedAction]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class RequestGroupRelatedAction extends BackboneElement {
  /// Primary constructor for [RequestGroupRelatedAction]

  RequestGroupRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,

    /// Extensions for [actionId]
    this.actionIdElement,
    required this.relationship,

    /// Extensions for [relationship]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupRelatedAction.fromJson(Map<String, dynamic> json) {
    return RequestGroupRelatedAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      actionId: FhirId.fromJson(json['actionId']),
      actionIdElement: json['_actionId'] != null
          ? Element.fromJson(
              json['_actionId'] as Map<String, dynamic>,
            )
          : null,
      relationship: ActionRelationshipType.fromJson(json['relationship']),
      relationshipElement: json['_relationship'] != null
          ? Element.fromJson(
              json['_relationship'] as Map<String, dynamic>,
            )
          : null,
      offsetDuration: json['offsetDuration'] != null
          ? FhirDuration.fromJson(
              json['offsetDuration'] as Map<String, dynamic>,
            )
          : null,
      offsetRange: json['offsetRange'] != null
          ? Range.fromJson(
              json['offsetRange'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RequestGroupRelatedAction] from a [String] or [YamlMap] object
  factory RequestGroupRelatedAction.fromYaml(dynamic yaml) => yaml is String
      ? RequestGroupRelatedAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RequestGroupRelatedAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'RequestGroupRelatedAction cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RequestGroupRelatedAction] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupRelatedAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RequestGroupRelatedAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RequestGroupRelatedAction';

  /// [actionId]
  /// The element id of the action this is related to.
  final FhirId actionId;

  /// Extensions for [actionId]
  final Element? actionIdElement;

  /// [relationship]
  /// The relationship of this action to the related action.
  final ActionRelationshipType relationship;

  /// Extensions for [relationship]
  final Element? relationshipElement;

  /// [offsetDuration]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  final FhirDuration? offsetDuration;

  /// [offsetRange]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  final Range? offsetRange;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['actionId'] = actionId.toJson();
    if (actionIdElement != null) {
      json['_actionId'] = actionIdElement!.toJson();
    }
    json['relationship'] = relationship.toJson();
    if (offsetDuration != null) {
      json['offsetDuration'] = offsetDuration!.toJson();
    }
    if (offsetRange != null) {
      json['offsetRange'] = offsetRange!.toJson();
    }
    return json;
  }

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
}
