import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RequestGroup]
/// A group of related requests that can be used to capture intended
/// activities that have inter-dependencies such as "give this medication
/// after that one".
class RequestGroup extends DomainResource {
  /// Primary constructor for
  /// [RequestGroup]

  const RequestGroup({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.RequestGroup,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestGroup(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      instantiatesUri: parsePrimitiveList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
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
      status: RequestStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      intent: RequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      priority: (json['priority'] != null || json['_priority'] != null)
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
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
      authoredOn: (json['authoredOn'] != null || json['_authoredOn'] != null)
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<RequestGroupAction>(
                (v) => RequestGroupAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [RequestGroup]
  /// from a [String] or [YamlMap] object
  factory RequestGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroup.fromJsonString(
    String source,
  ) {
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

  /// [instantiatesUri]
  /// A URL referencing an externally defined protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// request.
  final List<FhirUri>? instantiatesUri;

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

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// request and where the request fits into the workflow chain.
  final RequestIntent intent;

  /// [priority]
  /// Indicates how quickly the request should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson0 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson1 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (replaces != null && replaces!.isNotEmpty) {
      json['replaces'] = replaces!.map((e) => e.toJson()).toList();
    }

    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }

    addField('status', status);
    addField('intent', intent);
    addField('priority', priority);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('authoredOn', authoredOn);
    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (action != null && action!.isNotEmpty) {
      json['action'] = action!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authoredOn,
    Reference? author,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<RequestGroupAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RequestGroup(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      authoredOn: authoredOn ?? this.authoredOn,
      author: author ?? this.author,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [RequestGroupAction]
/// The actions, if any, produced by the evaluation of the artifact.
class RequestGroupAction extends BackboneElement {
  /// Primary constructor for
  /// [RequestGroupAction]

  const RequestGroupAction({
    super.id,
    super.extension_,
    super.modifierExtension,
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
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestGroupAction(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prefix: (json['prefix'] != null || json['_prefix'] != null)
          ? FhirString.fromJson({
              'value': json['prefix'],
              '_value': json['_prefix'],
            })
          : null,
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      textEquivalent:
          (json['textEquivalent'] != null || json['_textEquivalent'] != null)
              ? FhirString.fromJson({
                  'value': json['textEquivalent'],
                  '_value': json['_textEquivalent'],
                })
              : null,
      priority: (json['priority'] != null || json['_priority'] != null)
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? (json['documentation'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<RequestGroupCondition>(
                (v) => RequestGroupCondition.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedAction: json['relatedAction'] != null
          ? (json['relatedAction'] as List<dynamic>)
              .map<RequestGroupRelatedAction>(
                (v) => RequestGroupRelatedAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      timingDateTime:
          (json['timingDateTime'] != null || json['_timingDateTime'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['timingDateTime'],
                  '_value': json['_timingDateTime'],
                })
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
                (v) => Reference.fromJson(
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
      groupingBehavior: (json['groupingBehavior'] != null ||
              json['_groupingBehavior'] != null)
          ? ActionGroupingBehavior.fromJson({
              'value': json['groupingBehavior'],
              '_value': json['_groupingBehavior'],
            })
          : null,
      selectionBehavior: (json['selectionBehavior'] != null ||
              json['_selectionBehavior'] != null)
          ? ActionSelectionBehavior.fromJson({
              'value': json['selectionBehavior'],
              '_value': json['_selectionBehavior'],
            })
          : null,
      requiredBehavior: (json['requiredBehavior'] != null ||
              json['_requiredBehavior'] != null)
          ? ActionRequiredBehavior.fromJson({
              'value': json['requiredBehavior'],
              '_value': json['_requiredBehavior'],
            })
          : null,
      precheckBehavior: (json['precheckBehavior'] != null ||
              json['_precheckBehavior'] != null)
          ? ActionPrecheckBehavior.fromJson({
              'value': json['precheckBehavior'],
              '_value': json['_precheckBehavior'],
            })
          : null,
      cardinalityBehavior: (json['cardinalityBehavior'] != null ||
              json['_cardinalityBehavior'] != null)
          ? ActionCardinalityBehavior.fromJson({
              'value': json['cardinalityBehavior'],
              '_value': json['_cardinalityBehavior'],
            })
          : null,
      resource: json['resource'] != null
          ? Reference.fromJson(
              json['resource'] as Map<String, dynamic>,
            )
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<RequestGroupAction>(
                (v) => RequestGroupAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [RequestGroupAction]
  /// from a [String] or [YamlMap] object
  factory RequestGroupAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestGroupAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestGroupAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestGroupAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestGroupAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupAction.fromJsonString(
    String source,
  ) {
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

  /// [title]
  /// The title of the action displayed to a user.
  final FhirString? title;

  /// [description]
  /// A short description of the action used to provide a summary to display
  /// to the user.
  final FhirString? description;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  final RequestPriority? priority;

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

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  final ActionSelectionBehavior? selectionBehavior;

  /// [requiredBehavior]
  /// Defines expectations around whether an action is required.
  final ActionRequiredBehavior? requiredBehavior;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  final ActionPrecheckBehavior? precheckBehavior;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  final ActionCardinalityBehavior? cardinalityBehavior;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('prefix', prefix);
    addField('title', title);
    addField('description', description);
    addField('textEquivalent', textEquivalent);
    addField('priority', priority);
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (documentation != null && documentation!.isNotEmpty) {
      json['documentation'] = documentation!.map((e) => e.toJson()).toList();
    }

    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!.map((e) => e.toJson()).toList();
    }

    if (relatedAction != null && relatedAction!.isNotEmpty) {
      json['relatedAction'] = relatedAction!.map((e) => e.toJson()).toList();
    }

    addField('timingDateTime', timingDateTime);
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
      json['participant'] = participant!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('groupingBehavior', groupingBehavior);
    addField('selectionBehavior', selectionBehavior);
    addField('requiredBehavior', requiredBehavior);
    addField('precheckBehavior', precheckBehavior);
    addField('cardinalityBehavior', cardinalityBehavior);
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }

    if (action != null && action!.isNotEmpty) {
      json['action'] = action!.map((e) => e.toJson()).toList();
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
    FhirString? title,
    FhirString? description,
    FhirString? textEquivalent,
    RequestPriority? priority,
    List<CodeableConcept>? code,
    List<RelatedArtifact>? documentation,
    List<RequestGroupCondition>? condition,
    List<RequestGroupRelatedAction>? relatedAction,
    FhirDateTime? timingDateTime,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    List<Reference>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    ActionSelectionBehavior? selectionBehavior,
    ActionRequiredBehavior? requiredBehavior,
    ActionPrecheckBehavior? precheckBehavior,
    ActionCardinalityBehavior? cardinalityBehavior,
    Reference? resource,
    List<RequestGroupAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RequestGroupAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      title: title ?? this.title,
      description: description ?? this.description,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      condition: condition ?? this.condition,
      relatedAction: relatedAction ?? this.relatedAction,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDuration: timingDuration ?? this.timingDuration,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      resource: resource ?? this.resource,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [RequestGroupCondition]
/// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
class RequestGroupCondition extends BackboneElement {
  /// Primary constructor for
  /// [RequestGroupCondition]

  const RequestGroupCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.expression,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestGroupCondition(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      kind: ActionConditionKind.fromJson({
        'value': json['kind'],
        '_value': json['_kind'],
      }),
      expression: json['expression'] != null
          ? FhirExpression.fromJson(
              json['expression'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RequestGroupCondition]
  /// from a [String] or [YamlMap] object
  factory RequestGroupCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestGroupCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestGroupCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestGroupCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestGroupCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupCondition.fromJsonString(
    String source,
  ) {
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

  /// [expression]
  /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  final FhirExpression? expression;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('kind', kind);
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
    FhirExpression? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RequestGroupCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [RequestGroupRelatedAction]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class RequestGroupRelatedAction extends BackboneElement {
  /// Primary constructor for
  /// [RequestGroupRelatedAction]

  const RequestGroupRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
    required this.relationship,
    this.offsetDuration,
    this.offsetRange,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestGroupRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestGroupRelatedAction(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      actionId: FhirId.fromJson({
        'value': json['actionId'],
        '_value': json['_actionId'],
      }),
      relationship: ActionRelationshipType.fromJson({
        'value': json['relationship'],
        '_value': json['_relationship'],
      }),
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

  /// Deserialize [RequestGroupRelatedAction]
  /// from a [String] or [YamlMap] object
  factory RequestGroupRelatedAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestGroupRelatedAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestGroupRelatedAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestGroupRelatedAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestGroupRelatedAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestGroupRelatedAction.fromJsonString(
    String source,
  ) {
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

  /// [relationship]
  /// The relationship of this action to the related action.
  final ActionRelationshipType relationship;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('actionId', actionId);
    addField('relationship', relationship);
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
    ActionRelationshipType? relationship,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RequestGroupRelatedAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actionId: actionId ?? this.actionId,
      relationship: relationship ?? this.relationship,
      offsetDuration: offsetDuration ?? this.offsetDuration,
      offsetRange: offsetRange ?? this.offsetRange,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
