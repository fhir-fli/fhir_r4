import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Communication]
/// An occurrence of information being transmitted; e.g. an alert that was
/// sent to a responsible provider, a public health agency that was
/// notified about a reportable condition.
class Communication extends DomainResource {
  /// Primary constructor for
  /// [Communication]

  const Communication({
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
  }) : super(
          objectPath: 'Communication',
          resourceType: R4ResourceType.Communication,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Communication.empty() => Communication(
        status: EventStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Communication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Communication';
    return Communication(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      inResponseTo: (json['inResponseTo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.inResponseTo',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
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
      topic: JsonParser.parseObject<CodeableConcept>(
        json,
        'topic',
        CodeableConcept.fromJson,
        '$objectPath.topic',
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
      sent: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'sent',
        FhirDateTime.fromJson,
        '$objectPath.sent',
      ),
      received: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'received',
        FhirDateTime.fromJson,
        '$objectPath.received',
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
      payload: (json['payload'] as List<dynamic>?)
          ?.map<CommunicationPayload>(
            (v) => CommunicationPayload.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.payload',
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

  /// Deserialize [Communication]
  /// from a [String] or [YamlMap] object
  factory Communication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Communication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Communication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Communication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Communication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Communication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Communication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('inResponseTo', inResponseTo);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    addField('priority', priority);
    addField('medium', medium);
    addField('subject', subject);
    addField('topic', topic);
    addField('about', about);
    addField('encounter', encounter);
    addField('sent', sent);
    addField('received', received);
    addField('recipient', recipient);
    addField('sender', sender);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('payload', payload);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'partOf',
      'inResponseTo',
      'status',
      'statusReason',
      'category',
      'priority',
      'medium',
      'subject',
      'topic',
      'about',
      'encounter',
      'sent',
      'received',
      'recipient',
      'sender',
      'reasonCode',
      'reasonReference',
      'payload',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'inResponseTo':
        if (inResponseTo != null) {
          fields.addAll(inResponseTo!);
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
      case 'medium':
        if (medium != null) {
          fields.addAll(medium!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'topic':
        if (topic != null) {
          fields.add(topic!);
        }
      case 'about':
        if (about != null) {
          fields.addAll(about!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'sent':
        if (sent != null) {
          fields.add(sent!);
        }
      case 'received':
        if (received != null) {
          fields.add(received!);
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
      case 'payload':
        if (payload != null) {
          fields.addAll(payload!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            return copyWith(instantiatesCanonical: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            return copyWith(instantiatesUri: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            return copyWith(basedOn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            return copyWith(partOf: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'inResponseTo':
        {
          if (child is List<Reference>) {
            return copyWith(inResponseTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is EventStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'medium':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(medium: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'topic':
        {
          if (child is CodeableConcept) {
            return copyWith(topic: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'about':
        {
          if (child is List<Reference>) {
            return copyWith(about: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sent':
        {
          if (child is FhirDateTime) {
            return copyWith(sent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'received':
        {
          if (child is FhirDateTime) {
            return copyWith(received: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recipient':
        {
          if (child is List<Reference>) {
            return copyWith(recipient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sender':
        {
          if (child is Reference) {
            return copyWith(sender: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(reasonCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            return copyWith(reasonReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'payload':
        {
          if (child is List<CommunicationPayload>) {
            return copyWith(payload: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'basedOn':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      case 'inResponseTo':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'priority':
        return ['FhirCode'];
      case 'medium':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'topic':
        return ['CodeableConcept'];
      case 'about':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'sent':
        return ['FhirDateTime'];
      case 'received':
        return ['FhirDateTime'];
      case 'recipient':
        return ['Reference'];
      case 'sender':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'payload':
        return ['CommunicationPayload'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Communication]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Communication createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'instantiatesCanonical':
        {
          return copyWith(instantiatesCanonical: <FhirCanonical>[]);
        }
      case 'instantiatesUri':
        {
          return copyWith(instantiatesUri: <FhirUri>[]);
        }
      case 'basedOn':
        {
          return copyWith(basedOn: <Reference>[]);
        }
      case 'partOf':
        {
          return copyWith(partOf: <Reference>[]);
        }
      case 'inResponseTo':
        {
          return copyWith(inResponseTo: <Reference>[]);
        }
      case 'status':
        {
          return copyWith(status: EventStatus.empty());
        }
      case 'statusReason':
        {
          return copyWith(statusReason: CodeableConcept.empty());
        }
      case 'category':
        {
          return copyWith(category: <CodeableConcept>[]);
        }
      case 'priority':
        {
          return copyWith(priority: RequestPriority.empty());
        }
      case 'medium':
        {
          return copyWith(medium: <CodeableConcept>[]);
        }
      case 'subject':
        {
          return copyWith(subject: Reference.empty());
        }
      case 'topic':
        {
          return copyWith(topic: CodeableConcept.empty());
        }
      case 'about':
        {
          return copyWith(about: <Reference>[]);
        }
      case 'encounter':
        {
          return copyWith(encounter: Reference.empty());
        }
      case 'sent':
        {
          return copyWith(sent: FhirDateTime.empty());
        }
      case 'received':
        {
          return copyWith(received: FhirDateTime.empty());
        }
      case 'recipient':
        {
          return copyWith(recipient: <Reference>[]);
        }
      case 'sender':
        {
          return copyWith(sender: Reference.empty());
        }
      case 'reasonCode':
        {
          return copyWith(reasonCode: <CodeableConcept>[]);
        }
      case 'reasonReference':
        {
          return copyWith(reasonReference: <Reference>[]);
        }
      case 'payload':
        {
          return copyWith(payload: <CommunicationPayload>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Communication(
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
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      inResponseTo: inResponseTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.inResponseTo',
                ),
              )
              .toList() ??
          this.inResponseTo,
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
      topic: topic?.copyWith(
            objectPath: '$newObjectPath.topic',
          ) ??
          this.topic,
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
      sent: sent?.copyWith(
            objectPath: '$newObjectPath.sent',
          ) ??
          this.sent,
      received: received?.copyWith(
            objectPath: '$newObjectPath.received',
          ) ??
          this.received,
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
      payload: payload
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.payload',
                ),
              )
              .toList() ??
          this.payload,
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
    if (o is! Communication) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
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
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      inResponseTo,
      o.inResponseTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusReason, o.statusReason)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      medium,
      o.medium,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(topic, o.topic)) {
      return false;
    }
    if (!listEquals<Reference>(
      about,
      o.about,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(sent, o.sent)) {
      return false;
    }
    if (!equalsDeepWithNull(received, o.received)) {
      return false;
    }
    if (!listEquals<Reference>(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(sender, o.sender)) {
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
    if (!listEquals<CommunicationPayload>(
      payload,
      o.payload,
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

/// [CommunicationPayload]
/// Text, attachment(s), or resource(s) that was communicated to the
/// recipient.
class CommunicationPayload extends BackboneElement {
  /// Primary constructor for
  /// [CommunicationPayload]

  const CommunicationPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Communication.payload',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CommunicationPayload.empty() => CommunicationPayload(
        contentX: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CommunicationPayload.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Communication.payload';
    return CommunicationPayload(
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
      contentX: JsonParser.parsePolymorphic<ContentXCommunicationPayload>(
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

  /// Deserialize [CommunicationPayload]
  /// from a [String] or [YamlMap] object
  factory CommunicationPayload.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CommunicationPayload.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CommunicationPayload.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CommunicationPayload '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CommunicationPayload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CommunicationPayload.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CommunicationPayload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CommunicationPayload';

  /// [contentX]
  /// A communicated content (or for multi-part communications, one portion
  /// of the communication).
  final ContentXCommunicationPayload contentX;

  /// Getter for [contentString] as a FhirString
  FhirString? get contentString => contentX.isAs<FhirString>();

  /// Getter for [contentAttachment] as a Attachment
  Attachment? get contentAttachment => contentX.isAs<Attachment>();

  /// Getter for [contentReference] as a Reference
  Reference? get contentReference => contentX.isAs<Reference>();
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
  List<String> listChildrenNames() {
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
  List<FhirBase> getChildrenByName(
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
      case 'content':
        fields.add(contentX);
      case 'contentX':
        fields.add(contentX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contentX':
        {
          if (child is ContentXCommunicationPayload) {
            // child is e.g. SubjectX union
            return copyWith(contentX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contentFhirString':
        {
          if (child is FhirString) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contentAttachment':
        {
          if (child is Attachment) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contentReference':
        {
          if (child is Reference) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'content':
      case 'contentX':
        return ['FhirString', 'Attachment', 'Reference'];
      case 'contentString':
        return ['FhirString'];
      case 'contentAttachment':
        return ['Attachment'];
      case 'contentReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CommunicationPayload]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CommunicationPayload createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'content':
      case 'contentX':
      case 'contentString':
        {
          return copyWith(contentX: FhirString.empty());
        }
      case 'contentAttachment':
        {
          return copyWith(contentX: Attachment.empty());
        }
      case 'contentReference':
        {
          return copyWith(contentX: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CommunicationPayload clone() => throw UnimplementedError();
  @override
  CommunicationPayload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXCommunicationPayload? contentX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CommunicationPayload(
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
          ) as ContentXCommunicationPayload? ??
          this.contentX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CommunicationPayload) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(contentX, o.contentX)) {
      return false;
    }
    return true;
  }
}
