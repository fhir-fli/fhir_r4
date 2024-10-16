import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CommunicationRequest]
/// A request to convey information; e.g. the CDS system proposes that an
/// alert be sent to a responsible provider, the CDS system proposes that
/// the public health agency be notified about a reportable condition.
class CommunicationRequest extends DomainResource {
  /// Primary constructor for [CommunicationRequest]

  CommunicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    this.statusReason,
    this.category,
    this.priority,
    this.doNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.CommunicationRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CommunicationRequest.fromJson(Map<String, dynamic> json) {
    return CommunicationRequest(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson({
              'value': json['doNotPerform'],
              '_value': json['_doNotPerform'],
            })
          : null,
      medium: json['medium'] != null
          ? (json['medium'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      about: json['about'] != null
          ? (json['about'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      payload: json['payload'] != null
          ? (json['payload'] as List<dynamic>)
              .map<CommunicationRequestPayload>(
                (v) => CommunicationRequestPayload.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              json['occurrencePeriod'] as Map<String, dynamic>,
            )
          : null,
      authoredOn: json['authoredOn'] != null
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      recipient: json['recipient'] != null
          ? (json['recipient'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sender: json['sender'] != null
          ? Reference.fromJson(
              json['sender'] as Map<String, dynamic>,
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
    );
  }

  /// Deserialize [CommunicationRequest] from a [String]
  /// or [YamlMap] object
  factory CommunicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CommunicationRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CommunicationRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CommunicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CommunicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CommunicationRequest';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this communication request by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan or proposal that is fulfilled in whole or in part by this
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
  /// The status of the proposal or order.
  final RequestStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the CommunicationRequest.
  final CodeableConcept? statusReason;

  /// [category]
  /// The type of message to be sent such as alert, notification, reminder,
  /// instruction, etc.
  final List<CodeableConcept>? category;

  /// [priority]
  /// Characterizes how quickly the proposed act must be initiated. Includes
  /// concepts such as stat, urgent, routine.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// If true indicates that the CommunicationRequest is asking for the
  /// specified action to *not* occur.
  final FhirBoolean? doNotPerform;

  /// [medium]
  /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// [subject]
  /// The patient or group that is the focus of this communication request.
  final Reference? subject;

  /// [about]
  /// Other resources that pertain to this communication request and to which
  /// this communication request should be associated.
  final List<Reference>? about;

  /// [encounter]
  /// The Encounter during which this CommunicationRequest was created or to
  /// which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [payload]
  /// Text, attachment(s), or resource(s) to be communicated to the
  /// recipient.
  final List<CommunicationRequestPayload>? payload;

  /// [occurrenceDateTime]
  /// The time when this communication is to occur.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The time when this communication is to occur.
  final Period? occurrencePeriod;

  /// [authoredOn]
  /// For draft requests, indicates the date of initial creation. For
  /// requests with other statuses, indicates the date of activation.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The device, individual, or organization who initiated the request and
  /// has responsibility for its activation.
  final Reference? requester;

  /// [recipient]
  /// The entity (e.g. person, organization, clinical information system,
  /// device, group, or care team) which is the intended target of the
  /// communication.
  final List<Reference>? recipient;

  /// [sender]
  /// The entity (e.g. person, organization, clinical information system, or
  /// device) which is to be the source of the communication.
  final Reference? sender;

  /// [reasonCode]
  /// Describes why the request is being made in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies this request.
  final List<Reference>? reasonReference;

  /// [note]
  /// Comments made about the request by the requester, sender, recipient,
  /// subject or other participants.
  final List<Annotation>? note;
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
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.toJson();
    }
    if (medium != null && medium!.isNotEmpty) {
      json['medium'] = medium!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (about != null && about!.isNotEmpty) {
      json['about'] = about!.map((Reference v) => v.toJson()).toList();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (payload != null && payload!.isNotEmpty) {
      json['payload'] =
          payload!.map((CommunicationRequestPayload v) => v.toJson()).toList();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.toJson();
    }
    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.toJson();
    }
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }
    if (recipient != null && recipient!.isNotEmpty) {
      json['recipient'] = recipient!.map((Reference v) => v.toJson()).toList();
    }
    if (sender != null) {
      json['sender'] = sender!.toJson();
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
    return json;
  }

  @override
  CommunicationRequest clone() => throw UnimplementedError();
  @override
  CommunicationRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    List<CodeableConcept>? medium,
    Reference? subject,
    List<Reference>? about,
    Reference? encounter,
    List<CommunicationRequestPayload>? payload,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    FhirDateTime? authoredOn,
    Reference? requester,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CommunicationRequest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      medium: medium ?? this.medium,
      subject: subject ?? this.subject,
      about: about ?? this.about,
      encounter: encounter ?? this.encounter,
      payload: payload ?? this.payload,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      recipient: recipient ?? this.recipient,
      sender: sender ?? this.sender,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CommunicationRequestPayload]
/// Text, attachment(s), or resource(s) to be communicated to the
/// recipient.
class CommunicationRequestPayload extends BackboneElement {
  /// Primary constructor for [CommunicationRequestPayload]

  CommunicationRequestPayload({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.contentString,
    this.contentAttachment,
    this.contentReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CommunicationRequestPayload.fromJson(Map<String, dynamic> json) {
    return CommunicationRequestPayload(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      contentString: json['contentString'] != null
          ? FhirString.fromJson({
              'value': json['contentString'],
              '_value': json['_contentString'],
            })
          : null,
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              json['contentReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CommunicationRequestPayload] from a [String]
  /// or [YamlMap] object
  factory CommunicationRequestPayload.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequestPayload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CommunicationRequestPayload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CommunicationRequestPayload cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CommunicationRequestPayload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationRequestPayload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CommunicationRequestPayload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CommunicationRequestPayload';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [contentString]
  /// The communicated content (or for multi-part communications, one portion
  /// of the communication).
  final FhirString? contentString;

  /// [contentAttachment]
  /// The communicated content (or for multi-part communications, one portion
  /// of the communication).
  final Attachment? contentAttachment;

  /// [contentReference]
  /// The communicated content (or for multi-part communications, one portion
  /// of the communication).
  final Reference? contentReference;
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
    if (contentString?.value != null) {
      json['contentString'] = contentString!.toJson();
    }
    if (contentAttachment != null) {
      json['contentAttachment'] = contentAttachment!.toJson();
    }
    if (contentReference != null) {
      json['contentReference'] = contentReference!.toJson();
    }
    return json;
  }

  @override
  CommunicationRequestPayload clone() => throw UnimplementedError();
  @override
  CommunicationRequestPayload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? contentString,
    Attachment? contentAttachment,
    Reference? contentReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CommunicationRequestPayload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentString: contentString ?? this.contentString,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
