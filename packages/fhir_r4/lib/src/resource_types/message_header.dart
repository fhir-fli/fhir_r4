import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MessageHeader]
/// The header for a message exchange that is either requesting or
/// responding to an action. The reference(s) that are the subject of the
/// action as well as other information related to the action are typically
/// transmitted in a bundle in which the MessageHeader resource instance is
/// the first resource in the bundle.
class MessageHeader extends DomainResource {
  /// Primary constructor for
  /// [MessageHeader]

  const MessageHeader({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.eventX,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
  }) : super(
          objectPath: 'MessageHeader',
          resourceType: R4ResourceType.MessageHeader,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageHeader.empty() => MessageHeader(
        eventX: Coding.empty(),
        source: MessageHeaderSource.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader';
    return MessageHeader(
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
      eventX: JsonParser.parsePolymorphic<EventXMessageHeader>(
        json,
        {
          'eventCoding': Coding.fromJson,
          'eventUri': FhirUri.fromJson,
        },
        objectPath,
      )!,
      destination: (json['destination'] as List<dynamic>?)
          ?.map<MessageHeaderDestination>(
            (v) => MessageHeaderDestination.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.destination',
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
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
        '$objectPath.enterer',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      source: JsonParser.parseObject<MessageHeaderSource>(
        json,
        'source',
        MessageHeaderSource.fromJson,
        '$objectPath.source',
      )!,
      responsible: JsonParser.parseObject<Reference>(
        json,
        'responsible',
        Reference.fromJson,
        '$objectPath.responsible',
      ),
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
        '$objectPath.reason',
      ),
      response: JsonParser.parseObject<MessageHeaderResponse>(
        json,
        'response',
        MessageHeaderResponse.fromJson,
        '$objectPath.response',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
        '$objectPath.definition',
      ),
    );
  }

  /// Deserialize [MessageHeader]
  /// from a [String] or [YamlMap] object
  factory MessageHeader.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeader.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeader.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeader '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeader]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeader.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeader';

  /// [eventX]
  /// Code that identifies the event this message represents and connects it
  /// with its definition. Events defined as part of the FHIR specification
  /// have the system value
  /// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
  /// uri to the EventDefinition.
  final EventXMessageHeader eventX;

  /// Getter for [eventCoding] as a Coding
  Coding? get eventCoding => eventX.isAs<Coding>();

  /// Getter for [eventUri] as a FhirUri
  FhirUri? get eventUri => eventX.isAs<FhirUri>();

  /// [destination]
  /// The destination application which the message is intended for.
  final List<MessageHeaderDestination>? destination;

  /// [sender]
  /// Identifies the sending system to allow the use of a trust relationship.
  final Reference? sender;

  /// [enterer]
  /// The person or device that performed the data entry leading to this
  /// message. When there is more than one candidate, pick the most proximal
  /// to the message. Can provide other enterers in extensions.
  final Reference? enterer;

  /// [author]
  /// The logical author of the message - the person or device that decided
  /// the described event should happen. When there is more than one
  /// candidate, pick the most proximal to the MessageHeader. Can provide
  /// other authors in extensions.
  final Reference? author;

  /// [source]
  /// The source application from which this message originated.
  final MessageHeaderSource source;

  /// [responsible]
  /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event
  /// happened under the policies of the responsible party.
  final Reference? responsible;

  /// [reason]
  /// Coded indication of the cause for the event - indicates a reason for
  /// the occurrence of the event that is a focus of this message.
  final CodeableConcept? reason;

  /// [response]
  /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  final MessageHeaderResponse? response;

  /// [focus]
  /// The actual data of the message - a reference to the root/focus class of
  /// the event.
  final List<Reference>? focus;

  /// [definition]
  /// Permanent link to the MessageDefinition for this message.
  final FhirCanonical? definition;
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
    final eventXFhirType = eventX.fhirType;
    addField('event${eventXFhirType.capitalize()}', eventX);

    addField('destination', destination);
    addField('sender', sender);
    addField('enterer', enterer);
    addField('author', author);
    addField('source', source);
    addField('responsible', responsible);
    addField('reason', reason);
    addField('response', response);
    addField('focus', focus);
    addField('definition', definition);
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
      'eventX',
      'destination',
      'sender',
      'enterer',
      'author',
      'source',
      'responsible',
      'reason',
      'response',
      'focus',
      'definition',
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
      case 'event':
        fields.add(eventX);
      case 'eventX':
        fields.add(eventX);
      case 'eventCoding':
        if (eventX is Coding) {
          fields.add(eventX);
        }
      case 'eventUri':
        if (eventX is FhirUri) {
          fields.add(eventX);
        }
      case 'destination':
        if (destination != null) {
          fields.addAll(destination!);
        }
      case 'sender':
        if (sender != null) {
          fields.add(sender!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'source':
        fields.add(source);
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'contained':
        if (contained != null) {
          return contained!;
        } else {
          return <FhirBase>[];
        }
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'destination':
        if (destination != null) {
          return destination!;
        } else {
          return <FhirBase>[];
        }
      case 'focus':
        if (focus != null) {
          return focus!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'eventX':
        {
          if (child is EventXMessageHeader) {
            // child is e.g. SubjectX union
            return copyWith(eventX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'eventCoding':
        {
          if (child is Coding) {
            return copyWith(eventX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'eventFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(eventX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'destination':
        {
          if (child is List<MessageHeaderDestination>) {
            return copyWith(destination: child);
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
      case 'enterer':
        {
          if (child is Reference) {
            return copyWith(enterer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is Reference) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'source':
        {
          if (child is MessageHeaderSource) {
            return copyWith(source: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'responsible':
        {
          if (child is Reference) {
            return copyWith(responsible: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reason':
        {
          if (child is CodeableConcept) {
            return copyWith(reason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'response':
        {
          if (child is MessageHeaderResponse) {
            return copyWith(response: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'focus':
        {
          if (child is List<Reference>) {
            return copyWith(focus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definition':
        {
          if (child is FhirCanonical) {
            return copyWith(definition: child);
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
      case 'event':
      case 'eventX':
        return ['Coding', 'FhirUri'];
      case 'eventCoding':
        return ['Coding'];
      case 'eventUri':
        return ['FhirUri'];
      case 'destination':
        return ['MessageHeaderDestination'];
      case 'sender':
        return ['Reference'];
      case 'enterer':
        return ['Reference'];
      case 'author':
        return ['Reference'];
      case 'source':
        return ['MessageHeaderSource'];
      case 'responsible':
        return ['Reference'];
      case 'reason':
        return ['CodeableConcept'];
      case 'response':
        return ['MessageHeaderResponse'];
      case 'focus':
        return ['Reference'];
      case 'definition':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeader]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageHeader createProperty(String propertyName) {
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
      case 'event':
      case 'eventX':
      case 'eventCoding':
        {
          return copyWith(eventX: Coding.empty());
        }
      case 'eventUri':
        {
          return copyWith(eventX: FhirUri.empty());
        }
      case 'destination':
        {
          return copyWith(destination: <MessageHeaderDestination>[]);
        }
      case 'sender':
        {
          return copyWith(sender: Reference.empty());
        }
      case 'enterer':
        {
          return copyWith(enterer: Reference.empty());
        }
      case 'author':
        {
          return copyWith(author: Reference.empty());
        }
      case 'source':
        {
          return copyWith(source: MessageHeaderSource.empty());
        }
      case 'responsible':
        {
          return copyWith(responsible: Reference.empty());
        }
      case 'reason':
        {
          return copyWith(reason: CodeableConcept.empty());
        }
      case 'response':
        {
          return copyWith(response: MessageHeaderResponse.empty());
        }
      case 'focus':
        {
          return copyWith(focus: <Reference>[]);
        }
      case 'definition':
        {
          return copyWith(definition: FhirCanonical.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageHeader clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool destination = false,
    bool sender = false,
    bool enterer = false,
    bool author = false,
    bool responsible = false,
    bool reason = false,
    bool response = false,
    bool focus = false,
    bool definition = false,
  }) {
    return MessageHeader(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      eventX: eventX,
      destination: destination ? null : this.destination,
      sender: sender ? null : this.sender,
      enterer: enterer ? null : this.enterer,
      author: author ? null : this.author,
      source: source,
      responsible: responsible ? null : this.responsible,
      reason: reason ? null : this.reason,
      response: response ? null : this.response,
      focus: focus ? null : this.focus,
      definition: definition ? null : this.definition,
    );
  }

  @override
  MessageHeader clone() => throw UnimplementedError();
  @override
  MessageHeader copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventXMessageHeader? eventX,
    List<MessageHeaderDestination>? destination,
    Reference? sender,
    Reference? enterer,
    Reference? author,
    MessageHeaderSource? source,
    Reference? responsible,
    CodeableConcept? reason,
    MessageHeaderResponse? response,
    List<Reference>? focus,
    FhirCanonical? definition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MessageHeader(
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
      eventX: eventX?.copyWith(
            objectPath: '$newObjectPath.eventX',
          ) as EventXMessageHeader? ??
          this.eventX,
      destination: destination
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.destination',
                ),
              )
              .toList() ??
          this.destination,
      sender: sender?.copyWith(
            objectPath: '$newObjectPath.sender',
          ) ??
          this.sender,
      enterer: enterer?.copyWith(
            objectPath: '$newObjectPath.enterer',
          ) ??
          this.enterer,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      responsible: responsible?.copyWith(
            objectPath: '$newObjectPath.responsible',
          ) ??
          this.responsible,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
      response: response?.copyWith(
            objectPath: '$newObjectPath.response',
          ) ??
          this.response,
      focus: focus
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.focus',
                ),
              )
              .toList() ??
          this.focus,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageHeader) {
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
    if (!equalsDeepWithNull(eventX, o.eventX)) {
      return false;
    }
    if (!listEquals<MessageHeaderDestination>(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(sender, o.sender)) {
      return false;
    }
    if (!equalsDeepWithNull(enterer, o.enterer)) {
      return false;
    }
    if (!equalsDeepWithNull(author, o.author)) {
      return false;
    }
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!equalsDeepWithNull(responsible, o.responsible)) {
      return false;
    }
    if (!equalsDeepWithNull(reason, o.reason)) {
      return false;
    }
    if (!equalsDeepWithNull(response, o.response)) {
      return false;
    }
    if (!listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(definition, o.definition)) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderDestination]
/// The destination application which the message is intended for.
class MessageHeaderDestination extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderDestination]

  const MessageHeaderDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.target,
    required this.endpoint,
    this.receiver,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.destination',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageHeaderDestination.empty() => MessageHeaderDestination(
        endpoint: FhirUrl.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.destination';
    return MessageHeaderDestination(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
        '$objectPath.target',
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
        '$objectPath.endpoint',
      )!,
      receiver: JsonParser.parseObject<Reference>(
        json,
        'receiver',
        Reference.fromJson,
        '$objectPath.receiver',
      ),
    );
  }

  /// Deserialize [MessageHeaderDestination]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderDestination.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderDestination.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderDestination.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderDestination '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderDestination]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderDestination.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderDestination';

  /// [name]
  /// Human-readable name for the target system.
  final FhirString? name;

  /// [target]
  /// Identifies the target end system in situations where the initial
  /// message transmission is to an intermediary system.
  final Reference? target;

  /// [endpoint]
  /// Indicates where the message should be routed to.
  final FhirUrl endpoint;

  /// [receiver]
  /// Allows data conveyed by a message to be addressed to a particular
  /// person or department when routing to a specific application isn't
  /// sufficient.
  final Reference? receiver;
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
    addField('name', name);
    addField('target', target);
    addField('endpoint', endpoint);
    addField('receiver', receiver);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'target',
      'endpoint',
      'receiver',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'endpoint':
        fields.add(endpoint);
      case 'receiver':
        if (receiver != null) {
          fields.add(receiver!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is Reference) {
            return copyWith(target: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endpoint':
        {
          if (child is FhirUrl) {
            return copyWith(endpoint: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'receiver':
        {
          if (child is Reference) {
            return copyWith(receiver: child);
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
      case 'name':
        return ['FhirString'];
      case 'target':
        return ['Reference'];
      case 'endpoint':
        return ['FhirUrl'];
      case 'receiver':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderDestination]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageHeaderDestination createProperty(String propertyName) {
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
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'target':
        {
          return copyWith(target: Reference.empty());
        }
      case 'endpoint':
        {
          return copyWith(endpoint: FhirUrl.empty());
        }
      case 'receiver':
        {
          return copyWith(receiver: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageHeaderDestination clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool target = false,
    bool receiver = false,
  }) {
    return MessageHeaderDestination(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name ? null : this.name,
      target: target ? null : this.target,
      endpoint: endpoint,
      receiver: receiver ? null : this.receiver,
    );
  }

  @override
  MessageHeaderDestination clone() => throw UnimplementedError();
  @override
  MessageHeaderDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Reference? target,
    FhirUrl? endpoint,
    Reference? receiver,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MessageHeaderDestination(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      target: target?.copyWith(
            objectPath: '$newObjectPath.target',
          ) ??
          this.target,
      endpoint: endpoint?.copyWith(
            objectPath: '$newObjectPath.endpoint',
          ) ??
          this.endpoint,
      receiver: receiver?.copyWith(
            objectPath: '$newObjectPath.receiver',
          ) ??
          this.receiver,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageHeaderDestination) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(target, o.target)) {
      return false;
    }
    if (!equalsDeepWithNull(endpoint, o.endpoint)) {
      return false;
    }
    if (!equalsDeepWithNull(receiver, o.receiver)) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderSource]
/// The source application from which this message originated.
class MessageHeaderSource extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderSource]

  const MessageHeaderSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    required this.endpoint,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.source',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageHeaderSource.empty() => MessageHeaderSource(
        endpoint: FhirUrl.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderSource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.source';
    return MessageHeaderSource(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      software: JsonParser.parsePrimitive<FhirString>(
        json,
        'software',
        FhirString.fromJson,
        '$objectPath.software',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      contact: JsonParser.parseObject<ContactPoint>(
        json,
        'contact',
        ContactPoint.fromJson,
        '$objectPath.contact',
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
        '$objectPath.endpoint',
      )!,
    );
  }

  /// Deserialize [MessageHeaderSource]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderSource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderSource';

  /// [name]
  /// Human-readable name for the source system.
  final FhirString? name;

  /// [software]
  /// May include configuration or other information useful in debugging.
  final FhirString? software;

  /// [version]
  /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  final FhirString? version;

  /// [contact]
  /// An e-mail, phone, website or other contact point to use to resolve
  /// issues with message communications.
  final ContactPoint? contact;

  /// [endpoint]
  /// Identifies the routing target to send acknowledgements to.
  final FhirUrl endpoint;
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
    addField('name', name);
    addField('software', software);
    addField('version', version);
    addField('contact', contact);
    addField('endpoint', endpoint);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'software',
      'version',
      'contact',
      'endpoint',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'software':
        if (software != null) {
          fields.add(software!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'contact':
        if (contact != null) {
          fields.add(contact!);
        }
      case 'endpoint':
        fields.add(endpoint);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'software':
        {
          if (child is FhirString) {
            return copyWith(software: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is ContactPoint) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endpoint':
        {
          if (child is FhirUrl) {
            return copyWith(endpoint: child);
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
      case 'name':
        return ['FhirString'];
      case 'software':
        return ['FhirString'];
      case 'version':
        return ['FhirString'];
      case 'contact':
        return ['ContactPoint'];
      case 'endpoint':
        return ['FhirUrl'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderSource]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageHeaderSource createProperty(String propertyName) {
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
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'software':
        {
          return copyWith(software: FhirString.empty());
        }
      case 'version':
        {
          return copyWith(version: FhirString.empty());
        }
      case 'contact':
        {
          return copyWith(contact: ContactPoint.empty());
        }
      case 'endpoint':
        {
          return copyWith(endpoint: FhirUrl.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageHeaderSource clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool software = false,
    bool version = false,
    bool contact = false,
  }) {
    return MessageHeaderSource(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name ? null : this.name,
      software: software ? null : this.software,
      version: version ? null : this.version,
      contact: contact ? null : this.contact,
      endpoint: endpoint,
    );
  }

  @override
  MessageHeaderSource clone() => throw UnimplementedError();
  @override
  MessageHeaderSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? software,
    FhirString? version,
    ContactPoint? contact,
    FhirUrl? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MessageHeaderSource(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      software: software?.copyWith(
            objectPath: '$newObjectPath.software',
          ) ??
          this.software,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      contact: contact?.copyWith(
            objectPath: '$newObjectPath.contact',
          ) ??
          this.contact,
      endpoint: endpoint?.copyWith(
            objectPath: '$newObjectPath.endpoint',
          ) ??
          this.endpoint,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageHeaderSource) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(software, o.software)) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(contact, o.contact)) {
      return false;
    }
    if (!equalsDeepWithNull(endpoint, o.endpoint)) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderResponse]
/// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponse extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderResponse]

  const MessageHeaderResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identifier,
    required this.code,
    this.details,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.response',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageHeaderResponse.empty() => MessageHeaderResponse(
        identifier: FhirId.empty(),
        code: ResponseType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.response';
    return MessageHeaderResponse(
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
      identifier: JsonParser.parsePrimitive<FhirId>(
        json,
        'identifier',
        FhirId.fromJson,
        '$objectPath.identifier',
      )!,
      code: JsonParser.parsePrimitive<ResponseType>(
        json,
        'code',
        ResponseType.fromJson,
        '$objectPath.code',
      )!,
      details: JsonParser.parseObject<Reference>(
        json,
        'details',
        Reference.fromJson,
        '$objectPath.details',
      ),
    );
  }

  /// Deserialize [MessageHeaderResponse]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderResponse';

  /// [identifier]
  /// The MessageHeader.id of the message to which this message is a
  /// response.
  final FhirId identifier;

  /// [code]
  /// Code that identifies the type of response to the message - whether it
  /// was successful or not, and whether it should be resent or not.
  final ResponseType code;

  /// [details]
  /// Full details of any issues found in the message.
  final Reference? details;
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
    addField('identifier', identifier);
    addField('code', code);
    addField('details', details);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'code',
      'details',
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
      case 'identifier':
        fields.add(identifier);
      case 'code':
        fields.add(code);
      case 'details':
        if (details != null) {
          fields.add(details!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'identifier':
        {
          if (child is FhirId) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is ResponseType) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'details':
        {
          if (child is Reference) {
            return copyWith(details: child);
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
      case 'identifier':
        return ['FhirId'];
      case 'code':
        return ['FhirCode'];
      case 'details':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderResponse]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageHeaderResponse createProperty(String propertyName) {
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
      case 'identifier':
        {
          return copyWith(identifier: FhirId.empty());
        }
      case 'code':
        {
          return copyWith(code: ResponseType.empty());
        }
      case 'details':
        {
          return copyWith(details: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageHeaderResponse clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool details = false,
  }) {
    return MessageHeaderResponse(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier,
      code: code,
      details: details ? null : this.details,
    );
  }

  @override
  MessageHeaderResponse clone() => throw UnimplementedError();
  @override
  MessageHeaderResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identifier,
    ResponseType? code,
    Reference? details,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MessageHeaderResponse(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      details: details?.copyWith(
            objectPath: '$newObjectPath.details',
          ) ??
          this.details,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageHeaderResponse) {
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
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(details, o.details)) {
      return false;
    }
    return true;
  }
}
