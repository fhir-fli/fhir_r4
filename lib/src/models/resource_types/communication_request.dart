import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CommunicationRequest]
/// A request to convey information; e.g. the CDS system proposes that an
/// alert be sent to a responsible provider, the CDS system proposes that
/// the public health agency be notified about a reportable condition.
class CommunicationRequest extends DomainResource {
  /// Primary constructor for
  /// [CommunicationRequest]

  const CommunicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
    this.occurrenceX,
    this.authoredOn,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note,
  }) : super(
          objectPath: 'CommunicationRequest',
          resourceType: R4ResourceType.CommunicationRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CommunicationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CommunicationRequest';
    return CommunicationRequest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.replaces',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
        '$objectPath.groupIdentifier',
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      medium: (json['medium'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.medium',
              },
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      about: (json['about'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.about',
              },
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      payload: (json['payload'] as List<dynamic>?)
          ?.map<CommunicationRequestPayload>(
            (v) => CommunicationRequestPayload.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.payload',
              },
            ),
          )
          .toList(),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXCommunicationRequest>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
        },
        objectPath,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
        '$objectPath.requester',
      ),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recipient',
              },
            ),
          )
          .toList(),
      sender: JsonParser.parseObject<Reference>(
        json,
        'sender',
        Reference.fromJson,
        '$objectPath.sender',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CommunicationRequest]
  /// from a [String] or [YamlMap] object
  factory CommunicationRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CommunicationRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CommunicationRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CommunicationRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CommunicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CommunicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CommunicationRequest';

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

  /// [occurrenceX]
  /// The time when this communication is to occur.
  final OccurrenceXCommunicationRequest? occurrenceX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('replaces', replaces);
    addField('groupIdentifier', groupIdentifier);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    addField('medium', medium);
    addField('subject', subject);
    addField('about', about);
    addField('encounter', encounter);
    addField('payload', payload);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('recipient', recipient);
    addField('sender', sender);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'basedOn',
      'replaces',
      'groupIdentifier',
      'status',
      'statusReason',
      'category',
      'priority',
      'doNotPerform',
      'medium',
      'subject',
      'about',
      'encounter',
      'payload',
      'occurrenceX',
      'authoredOn',
      'requester',
      'recipient',
      'sender',
      'reasonCode',
      'reasonReference',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'medium':
        if (medium != null) {
          fields.addAll(medium!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'about':
        if (about != null) {
          fields.addAll(about!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'payload':
        if (payload != null) {
          fields.addAll(payload!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.addAll(recipient!);
        }
      case 'sender':
        if (sender != null) {
          fields.add(sender!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    OccurrenceXCommunicationRequest? occurrenceX,
    FhirDateTime? authoredOn,
    Reference? requester,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CommunicationRequest(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      replaces: replaces
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.replaces',
                ),
              )
              .toList() ??
          this.replaces,
      groupIdentifier: groupIdentifier?.copyWith(
            objectPath: '$newObjectPath.groupIdentifier',
          ) ??
          this.groupIdentifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      medium: medium
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.medium',
                ),
              )
              .toList() ??
          this.medium,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      about: about
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.about',
                ),
              )
              .toList() ??
          this.about,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      payload: payload
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.payload',
                ),
              )
              .toList() ??
          this.payload,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXCommunicationRequest? ??
          this.occurrenceX,
      authoredOn: authoredOn?.copyWith(
            objectPath: '$newObjectPath.authoredOn',
          ) ??
          this.authoredOn,
      requester: requester?.copyWith(
            objectPath: '$newObjectPath.requester',
          ) ??
          this.requester,
      recipient: recipient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.recipient',
                ),
              )
              .toList() ??
          this.recipient,
      sender: sender?.copyWith(
            objectPath: '$newObjectPath.sender',
          ) ??
          this.sender,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CommunicationRequest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (meta != o.meta) {
      return false;
    }
    if (implicitRules != o.implicitRules) {
      return false;
    }
    if (language != o.language) {
      return false;
    }
    if (text != o.text) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (groupIdentifier != o.groupIdentifier) {
      return false;
    }
    if (status != o.status) {
      return false;
    }
    if (statusReason != o.statusReason) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (priority != o.priority) {
      return false;
    }
    if (doNotPerform != o.doNotPerform) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      medium,
      o.medium,
    )) {
      return false;
    }
    if (subject != o.subject) {
      return false;
    }
    if (!listEquals<Reference>(
      about,
      o.about,
    )) {
      return false;
    }
    if (encounter != o.encounter) {
      return false;
    }
    if (!listEquals<CommunicationRequestPayload>(
      payload,
      o.payload,
    )) {
      return false;
    }
    if (occurrenceX != o.occurrenceX) {
      return false;
    }
    if (authoredOn != o.authoredOn) {
      return false;
    }
    if (requester != o.requester) {
      return false;
    }
    if (!listEquals<Reference>(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (sender != o.sender) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [CommunicationRequestPayload]
/// Text, attachment(s), or resource(s) to be communicated to the
/// recipient.
class CommunicationRequestPayload extends BackboneElement {
  /// Primary constructor for
  /// [CommunicationRequestPayload]

  const CommunicationRequestPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CommunicationRequest.payload',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CommunicationRequestPayload.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CommunicationRequest.payload';
    return CommunicationRequestPayload(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX:
          JsonParser.parsePolymorphic<ContentXCommunicationRequestPayload>(
        json,
        {
          'contentString': FhirString.fromJson,
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [CommunicationRequestPayload]
  /// from a [String] or [YamlMap] object
  factory CommunicationRequestPayload.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CommunicationRequestPayload.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CommunicationRequestPayload.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CommunicationRequestPayload '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CommunicationRequestPayload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationRequestPayload.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CommunicationRequestPayload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CommunicationRequestPayload';

  /// [contentX]
  /// The communicated content (or for multi-part communications, one portion
  /// of the communication).
  final ContentXCommunicationRequestPayload contentX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final contentXFhirType = contentX.fhirType;
    addField('content${contentXFhirType.capitalize()}', contentX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'contentX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'contentString':
        if (contentX is FhirString) {
          fields.add(contentX);
        }
      case 'contentAttachment':
        if (contentX is Attachment) {
          fields.add(contentX);
        }
      case 'contentReference':
        if (contentX is Reference) {
          fields.add(contentX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CommunicationRequestPayload clone() => throw UnimplementedError();
  @override
  CommunicationRequestPayload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXCommunicationRequestPayload? contentX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CommunicationRequestPayload(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      contentX: contentX?.copyWith(
            objectPath: '$newObjectPath.contentX',
          ) as ContentXCommunicationRequestPayload? ??
          this.contentX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CommunicationRequestPayload) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (contentX != o.contentX) {
      return false;
    }
    return true;
  }
}
