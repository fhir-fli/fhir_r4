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
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    required this.status,
    this.statusReason,
    this.category,
    this.priority,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.received,
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
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
          json['instantiatesCanonical'] as List<dynamic>?,
          json['_instantiatesCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      inResponseTo: json['inResponseTo'] != null
          ? (json['inResponseTo'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EventStatus.fromJson({
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
      topic: json['topic'] != null
          ? CodeableConcept.fromJson(
              json['topic'] as Map<String, dynamic>,
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
      sent: json['sent'] != null
          ? FhirDateTime.fromJson({
              'value': json['sent'],
              '_value': json['_sent'],
            })
          : null,
      received: json['received'] != null
          ? FhirDateTime.fromJson({
              'value': json['received'],
              '_value': json['_received'],
            })
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
      payload: json['payload'] != null
          ? (json['payload'] as List<dynamic>)
              .map<CommunicationPayload>(
                (v) => CommunicationPayload.fromJson(
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

  /// Deserialize [Communication] from a [String]
  /// or [YamlMap] object
  factory Communication.fromYaml(dynamic yaml) => yaml is String
      ? Communication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Communication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Communication cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Communication]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this Communication.
  final List<FhirUri>? instantiatesUri;

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

  /// [received]
  /// The time when this communication arrived at the destination.
  final FhirDateTime? received;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson9 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson10 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson11 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson12 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (inResponseTo != null && inResponseTo!.isNotEmpty) {
      final fieldJson13 = inResponseTo!.map((e) => e.toJson()).toList();
      json['inResponseTo'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_inResponseTo'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    if (statusReason != null) {
      final fieldJson15 = statusReason!.toJson();
      json['statusReason'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_statusReason'] = fieldJson15['_value'];
      }
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson16 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (priority != null) {
      final fieldJson17 = priority!.toJson();
      json['priority'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_priority'] = fieldJson17['_value'];
      }
    }

    if (medium != null && medium!.isNotEmpty) {
      final fieldJson18 = medium!.map((e) => e.toJson()).toList();
      json['medium'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_medium'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (subject != null) {
      final fieldJson19 = subject!.toJson();
      json['subject'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_subject'] = fieldJson19['_value'];
      }
    }

    if (topic != null) {
      final fieldJson20 = topic!.toJson();
      json['topic'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_topic'] = fieldJson20['_value'];
      }
    }

    if (about != null && about!.isNotEmpty) {
      final fieldJson21 = about!.map((e) => e.toJson()).toList();
      json['about'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_about'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (encounter != null) {
      final fieldJson22 = encounter!.toJson();
      json['encounter'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_encounter'] = fieldJson22['_value'];
      }
    }

    if (sent != null) {
      final fieldJson23 = sent!.toJson();
      json['sent'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_sent'] = fieldJson23['_value'];
      }
    }

    if (received != null) {
      final fieldJson24 = received!.toJson();
      json['received'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_received'] = fieldJson24['_value'];
      }
    }

    if (recipient != null && recipient!.isNotEmpty) {
      final fieldJson25 = recipient!.map((e) => e.toJson()).toList();
      json['recipient'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_recipient'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (sender != null) {
      final fieldJson26 = sender!.toJson();
      json['sender'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_sender'] = fieldJson26['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson27 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson28 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (payload != null && payload!.isNotEmpty) {
      final fieldJson29 = payload!.map((e) => e.toJson()).toList();
      json['payload'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_payload'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson30 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson30.map((e) => e['_value']).toList();
      }
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    List<Reference>? inResponseTo,
    EventStatus? status,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    List<CodeableConcept>? medium,
    Reference? subject,
    CodeableConcept? topic,
    List<Reference>? about,
    Reference? encounter,
    FhirDateTime? sent,
    FhirDateTime? received,
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
      partOf: partOf ?? this.partOf,
      inResponseTo: inResponseTo ?? this.inResponseTo,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      medium: medium ?? this.medium,
      subject: subject ?? this.subject,
      topic: topic ?? this.topic,
      about: about ?? this.about,
      encounter: encounter ?? this.encounter,
      sent: sent ?? this.sent,
      received: received ?? this.received,
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
  factory CommunicationPayload.fromJson(Map<String, dynamic> json) {
    return CommunicationPayload(
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

  /// Deserialize [CommunicationPayload] from a [String]
  /// or [YamlMap] object
  factory CommunicationPayload.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationPayload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CommunicationPayload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CommunicationPayload cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CommunicationPayload]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [contentString]
  /// A communicated content (or for multi-part communications, one portion
  /// of the communication).
  final FhirString? contentString;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (contentString != null) {
      final fieldJson3 = contentString!.toJson();
      json['contentString'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_contentString'] = fieldJson3['_value'];
      }
    }

    if (contentAttachment != null) {
      final fieldJson4 = contentAttachment!.toJson();
      json['contentAttachment'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_contentAttachment'] = fieldJson4['_value'];
      }
    }

    if (contentReference != null) {
      final fieldJson5 = contentReference!.toJson();
      json['contentReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_contentReference'] = fieldJson5['_value'];
      }
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
