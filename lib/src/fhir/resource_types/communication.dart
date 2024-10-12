import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Communication]
/// An occurrence of information being transmitted; e.g. an alert that was
/// sent to a responsible provider, a public health agency that was
/// notified about a reportable condition.
class Communication extends DomainResource {
  /// Primary constructor for [Communication]

  Communication({
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
    this.partOf,
    this.inResponseTo,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.statusReason,
    this.category,
    this.priority,

    /// Extensions for [priority]
    this.priorityElement,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,

    /// Extensions for [sent]
    this.sentElement,
    this.received,

    /// Extensions for [received]
    this.receivedElement,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.payload,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Communication,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Communication.fromJson(Map<String, dynamic> json) {
    return Communication(
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
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      inResponseTo: json['inResponseTo'] != null
          ? (json['inResponseTo'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EventStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'])
          : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(
              json['_priority'] as Map<String, dynamic>,
            )
          : null,
      medium: json['medium'] != null
          ? (json['medium'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
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
      topic: json['topic'] != null
          ? CodeableConcept.fromJson(
              json['topic'] as Map<String, dynamic>,
            )
          : null,
      about: json['about'] != null
          ? (json['about'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
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
      sent: json['sent'] != null ? FhirDateTime.fromJson(json['sent']) : null,
      sentElement: json['_sent'] != null
          ? Element.fromJson(
              json['_sent'] as Map<String, dynamic>,
            )
          : null,
      received: json['received'] != null
          ? FhirDateTime.fromJson(json['received'])
          : null,
      receivedElement: json['_received'] != null
          ? Element.fromJson(
              json['_received'] as Map<String, dynamic>,
            )
          : null,
      recipient: json['recipient'] != null
          ? (json['recipient'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
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
      payload: json['payload'] != null
          ? (json['payload'] as List<dynamic>)
              .map<CommunicationPayload>(
                (dynamic v) => CommunicationPayload.fromJson(
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
    );
  }

  /// Deserialize [Communication] from a [String] or [YamlMap] object
  factory Communication.fromYaml(dynamic yaml) => yaml is String
      ? Communication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Communication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'Communication cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Communication] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Communication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Communication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Communication';

  /// [identifier]
  /// Business identifiers assigned to this communication by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// Communication.
  final List<FhirCanonical>? instantiatesCanonical;

  /// Extensions for [instantiatesCanonical]
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this Communication.
  final List<FhirUri>? instantiatesUri;

  /// Extensions for [instantiatesUri]
  final List<Element>? instantiatesUriElement;

  /// [basedOn]
  /// An order, proposal or plan fulfilled in whole or in part by this
  /// Communication.
  final List<Reference>? basedOn;

  /// [partOf]
  /// Part of this action.
  final List<Reference>? partOf;

  /// [inResponseTo]
  /// Prior communication that this communication is in response to.
  final List<Reference>? inResponseTo;

  /// [status]
  /// The status of the transmission.
  final EventStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [statusReason]
  /// Captures the reason for the current state of the Communication.
  final CodeableConcept? statusReason;

  /// [category]
  /// The type of message conveyed such as alert, notification, reminder,
  /// instruction, etc.
  final List<CodeableConcept>? category;

  /// [priority]
  /// Characterizes how quickly the planned or in progress communication must
  /// be addressed. Includes concepts such as stat, urgent, routine.
  final RequestPriority? priority;

  /// Extensions for [priority]
  final Element? priorityElement;

  /// [medium]
  /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// [subject]
  /// The patient or group that was the focus of this communication.
  final Reference? subject;

  /// [topic]
  /// Description of the purpose/content, similar to a subject line in an
  /// email.
  final CodeableConcept? topic;

  /// [about]
  /// Other resources that pertain to this communication and to which this
  /// communication should be associated.
  final List<Reference>? about;

  /// [encounter]
  /// The Encounter during which this Communication was created or to which
  /// the creation of this record is tightly associated.
  final Reference? encounter;

  /// [sent]
  /// The time when this communication was sent.
  final FhirDateTime? sent;

  /// Extensions for [sent]
  final Element? sentElement;

  /// [received]
  /// The time when this communication arrived at the destination.
  final FhirDateTime? received;

  /// Extensions for [received]
  final Element? receivedElement;

  /// [recipient]
  /// The entity (e.g. person, organization, clinical information system,
  /// care team or device) which was the target of the communication. If
  /// receipts need to be tracked by an individual, a separate resource
  /// instance will need to be created for each recipient. Multiple recipient
  /// communications are intended where either receipts are not tracked (e.g.
  /// a mass mail-out) or a receipt is captured in aggregate (all emails
  /// confirmed received by a particular time).
  final List<Reference>? recipient;

  /// [sender]
  /// The entity (e.g. person, organization, clinical information system, or
  /// device) which was the source of the communication.
  final Reference? sender;

  /// [reasonCode]
  /// The reason or justification for the communication.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies this
  /// communication.
  final List<Reference>? reasonReference;

  /// [payload]
  /// Text, attachment(s), or resource(s) that was communicated to the
  /// recipient.
  final List<CommunicationPayload>? payload;

  /// [note]
  /// Additional notes or commentary about the communication by the sender,
  /// receiver or other interested parties.
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
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((Reference v) => v.toJson()).toList();
    }
    if (inResponseTo != null && inResponseTo!.isNotEmpty) {
      json['inResponseTo'] =
          inResponseTo!.map((Reference v) => v.toJson()).toList();
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
    if (medium != null && medium!.isNotEmpty) {
      json['medium'] = medium!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (topic != null) {
      json['topic'] = topic!.toJson();
    }
    if (about != null && about!.isNotEmpty) {
      json['about'] = about!.map((Reference v) => v.toJson()).toList();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (sent?.value != null) {
      json['sent'] = sent!.toJson();
    }
    if (sentElement != null) {
      json['_sent'] = sentElement!.toJson();
    }
    if (received?.value != null) {
      json['received'] = received!.toJson();
    }
    if (receivedElement != null) {
      json['_received'] = receivedElement!.toJson();
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
    if (payload != null && payload!.isNotEmpty) {
      json['payload'] =
          payload!.map((CommunicationPayload v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  Communication clone() => throw UnimplementedError();
  @override
  Communication copyWith({
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
    List<Reference>? partOf,
    List<Reference>? inResponseTo,
    EventStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    Element? priorityElement,
    List<CodeableConcept>? medium,
    Reference? subject,
    CodeableConcept? topic,
    List<Reference>? about,
    Reference? encounter,
    FhirDateTime? sent,
    Element? sentElement,
    FhirDateTime? received,
    Element? receivedElement,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<CommunicationPayload>? payload,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Communication(
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
      partOf: partOf ?? this.partOf,
      inResponseTo: inResponseTo ?? this.inResponseTo,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      medium: medium ?? this.medium,
      subject: subject ?? this.subject,
      topic: topic ?? this.topic,
      about: about ?? this.about,
      encounter: encounter ?? this.encounter,
      sent: sent ?? this.sent,
      sentElement: sentElement ?? this.sentElement,
      received: received ?? this.received,
      receivedElement: receivedElement ?? this.receivedElement,
      recipient: recipient ?? this.recipient,
      sender: sender ?? this.sender,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      payload: payload ?? this.payload,
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

/// [CommunicationPayload]
/// Text, attachment(s), or resource(s) that was communicated to the
/// recipient.
class CommunicationPayload extends BackboneElement {
  /// Primary constructor for [CommunicationPayload]

  CommunicationPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.contentString,

    /// Extensions for [contentString]
    this.contentStringElement,
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
  factory CommunicationPayload.fromJson(Map<String, dynamic> json) {
    return CommunicationPayload(
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
      contentString: json['contentString'] != null
          ? FhirString.fromJson(json['contentString'])
          : null,
      contentStringElement: json['_contentString'] != null
          ? Element.fromJson(
              json['_contentString'] as Map<String, dynamic>,
            )
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

  /// Deserialize [CommunicationPayload] from a [String] or [YamlMap] object
  factory CommunicationPayload.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationPayload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CommunicationPayload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CommunicationPayload cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CommunicationPayload] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationPayload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CommunicationPayload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CommunicationPayload';

  /// [contentString]
  /// A communicated content (or for multi-part communications, one portion
  /// of the communication).
  final FhirString? contentString;

  /// Extensions for [contentString]
  final Element? contentStringElement;

  /// [contentAttachment]
  /// A communicated content (or for multi-part communications, one portion
  /// of the communication).
  final Attachment? contentAttachment;

  /// [contentReference]
  /// A communicated content (or for multi-part communications, one portion
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
    if (contentStringElement != null) {
      json['_contentString'] = contentStringElement!.toJson();
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
  CommunicationPayload clone() => throw UnimplementedError();
  @override
  CommunicationPayload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? contentString,
    Element? contentStringElement,
    Attachment? contentAttachment,
    Reference? contentReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CommunicationPayload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentString: contentString ?? this.contentString,
      contentStringElement: contentStringElement ?? this.contentStringElement,
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
