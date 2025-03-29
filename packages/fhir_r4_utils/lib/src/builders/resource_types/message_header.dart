import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        MessageHeader,
        MessageHeaderDestination,
        MessageHeaderSource,
        MessageHeaderResponse;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [MessageHeader] to a Builder
extension BuilderMessageHeader on MessageHeader {
  /// Converts [MessageHeader] to a [MessageHeaderBuilder]
  MessageHeaderBuilder get toBuilder => MessageHeaderBuilder.fromJson(toJson());
}

/// [MessageHeaderBuilder]
/// The header for a message exchange that is either requesting or
/// responding to an action. The reference(s) that are the subject of the
/// action as well as other information related to the action are typically
/// transmitted in a bundle in which the MessageHeader resource instance is
/// the first resource in the bundle.
class MessageHeaderBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MessageHeaderBuilder]

  MessageHeaderBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.eventX,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    this.source,
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
  /// For Builder classes, no fields are required
  factory MessageHeaderBuilder.empty() => MessageHeaderBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader';
    return MessageHeaderBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      eventX: JsonParser.parsePolymorphic<EventXMessageHeaderBuilder>(
        json,
        {
          'eventCoding': CodingBuilder.fromJson,
          'eventUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      destination: (json['destination'] as List<dynamic>?)
          ?.map<MessageHeaderDestinationBuilder>(
            (v) => MessageHeaderDestinationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.destination',
              },
            ),
          )
          .toList(),
      sender: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sender',
        ReferenceBuilder.fromJson,
        '$objectPath.sender',
      ),
      enterer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'enterer',
        ReferenceBuilder.fromJson,
        '$objectPath.enterer',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      source: JsonParser.parseObject<MessageHeaderSourceBuilder>(
        json,
        'source',
        MessageHeaderSourceBuilder.fromJson,
        '$objectPath.source',
      ),
      responsible: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'responsible',
        ReferenceBuilder.fromJson,
        '$objectPath.responsible',
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      response: JsonParser.parseObject<MessageHeaderResponseBuilder>(
        json,
        'response',
        MessageHeaderResponseBuilder.fromJson,
        '$objectPath.response',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'definition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definition',
      ),
    );
  }

  /// Deserialize [MessageHeaderBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderBuilder.fromJson(json);
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
  EventXMessageHeaderBuilder? eventX;

  /// Getter for [eventCoding] as a CodingBuilder
  CodingBuilder? get eventCoding => eventX?.isAs<CodingBuilder>();

  /// Getter for [eventUri] as a FhirUriBuilder
  FhirUriBuilder? get eventUri => eventX?.isAs<FhirUriBuilder>();

  /// [destination]
  /// The destination application which the message is intended for.
  List<MessageHeaderDestinationBuilder>? destination;

  /// [sender]
  /// Identifies the sending system to allow the use of a trust relationship.
  ReferenceBuilder? sender;

  /// [enterer]
  /// The person or device that performed the data entry leading to this
  /// message. When there is more than one candidate, pick the most proximal
  /// to the message. Can provide other enterers in extensions.
  ReferenceBuilder? enterer;

  /// [author]
  /// The logical author of the message - the person or device that decided
  /// the described event should happen. When there is more than one
  /// candidate, pick the most proximal to the MessageHeader. Can provide
  /// other authors in extensions.
  ReferenceBuilder? author;

  /// [source]
  /// The source application from which this message originated.
  MessageHeaderSourceBuilder? source;

  /// [responsible]
  /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event
  /// happened under the policies of the responsible party.
  ReferenceBuilder? responsible;

  /// [reason]
  /// Coded indication of the cause for the event - indicates a reason for
  /// the occurrence of the event that is a focus of this message.
  CodeableConceptBuilder? reason;

  /// [response]
  /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  MessageHeaderResponseBuilder? response;

  /// [focus]
  /// The actual data of the message - a reference to the root/focus class of
  /// the event.
  List<ReferenceBuilder>? focus;

  /// [definition]
  /// Permanent link to the MessageDefinition for this message.
  FhirCanonicalBuilder? definition;

  /// Converts a MessageHeaderBuilder to [MessageHeader]
  MessageHeader build() => MessageHeader.fromJson(toJson());

  /// Converts a [MessageHeaderBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    if (eventX != null) {
      final fhirType = eventX!.fhirType;
      addField('event${fhirType.capitalize()}', eventX);
    }

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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (eventX != null) {
          fields.add(eventX!);
        }
      case 'eventX':
        if (eventX != null) {
          fields.add(eventX!);
        }
      case 'eventCoding':
        if (eventX is CodingBuilder) {
          fields.add(eventX!);
        }
      case 'eventUri':
        if (eventX is FhirUriBuilder) {
          fields.add(eventX!);
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
        if (source != null) {
          fields.add(source!);
        }
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

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventX':
        {
          if (child is EventXMessageHeaderBuilder) {
            eventX = child;
            return;
          } else {
            if (child is CodingBuilder) {
              eventX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              eventX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventCoding':
        {
          if (child is CodingBuilder) {
            eventX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventUri':
        {
          if (child is FhirUriBuilder) {
            eventX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is List<MessageHeaderDestinationBuilder>) {
            // Replace or create new list
            destination = child;
            return;
          } else if (child is MessageHeaderDestinationBuilder) {
            // Add single element to existing list or create new list
            destination = [...(destination ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sender':
        {
          if (child is ReferenceBuilder) {
            sender = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enterer':
        {
          if (child is ReferenceBuilder) {
            enterer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is MessageHeaderSourceBuilder) {
            source = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsible':
        {
          if (child is ReferenceBuilder) {
            responsible = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'response':
        {
          if (child is MessageHeaderResponseBuilder) {
            response = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focus':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [...(focus ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is FhirCanonicalBuilder) {
            definition = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'event':
      case 'eventX':
        return ['CodingBuilder', 'FhirUriBuilder'];
      case 'eventCoding':
        return ['CodingBuilder'];
      case 'eventUri':
        return ['FhirUriBuilder'];
      case 'destination':
        return ['MessageHeaderDestinationBuilder'];
      case 'sender':
        return ['ReferenceBuilder'];
      case 'enterer':
        return ['ReferenceBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'source':
        return ['MessageHeaderSourceBuilder'];
      case 'responsible':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'response':
        return ['MessageHeaderResponseBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'definition':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'event':
      case 'eventX':
      case 'eventCoding':
        {
          eventX = CodingBuilder.empty();
          return;
        }
      case 'eventUri':
        {
          eventX = FhirUriBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = <MessageHeaderDestinationBuilder>[];
          return;
        }
      case 'sender':
        {
          sender = ReferenceBuilder.empty();
          return;
        }
      case 'enterer':
        {
          enterer = ReferenceBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'source':
        {
          source = MessageHeaderSourceBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'response':
        {
          response = MessageHeaderResponseBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
          return;
        }
      case 'definition':
        {
          definition = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool event = false,
    bool destination = false,
    bool sender = false,
    bool enterer = false,
    bool author = false,
    bool source = false,
    bool responsible = false,
    bool reason = false,
    bool response = false,
    bool focus = false,
    bool definition = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (event) this.eventX = null;
    if (destination) this.destination = null;
    if (sender) this.sender = null;
    if (enterer) this.enterer = null;
    if (author) this.author = null;
    if (source) this.source = null;
    if (responsible) this.responsible = null;
    if (reason) this.reason = null;
    if (response) this.response = null;
    if (focus) this.focus = null;
    if (definition) this.definition = null;
  }

  @override
  MessageHeaderBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EventXMessageHeaderBuilder? eventX,
    List<MessageHeaderDestinationBuilder>? destination,
    ReferenceBuilder? sender,
    ReferenceBuilder? enterer,
    ReferenceBuilder? author,
    MessageHeaderSourceBuilder? source,
    ReferenceBuilder? responsible,
    CodeableConceptBuilder? reason,
    MessageHeaderResponseBuilder? response,
    List<ReferenceBuilder>? focus,
    FhirCanonicalBuilder? definition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MessageHeaderBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventX: eventX ?? this.eventX,
      destination: destination ?? this.destination,
      sender: sender ?? this.sender,
      enterer: enterer ?? this.enterer,
      author: author ?? this.author,
      source: source ?? this.source,
      responsible: responsible ?? this.responsible,
      reason: reason ?? this.reason,
      response: response ?? this.response,
      focus: focus ?? this.focus,
      definition: definition ?? this.definition,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MessageHeaderBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      eventX,
      o.eventX,
    )) {
      return false;
    }
    if (!listEquals<MessageHeaderDestinationBuilder>(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sender,
      o.sender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enterer,
      o.enterer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [MessageHeaderDestination] to a Builder
extension BuilderMessageHeaderDestination on MessageHeaderDestination {
  /// Converts [MessageHeaderDestination] to a [MessageHeaderDestinationBuilder]
  MessageHeaderDestinationBuilder get toBuilder =>
      MessageHeaderDestinationBuilder.fromJson(toJson());
}

/// [MessageHeaderDestinationBuilder]
/// The destination application which the message is intended for.
class MessageHeaderDestinationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderDestinationBuilder]

  MessageHeaderDestinationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.target,
    this.endpoint,
    this.receiver,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.destination',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderDestinationBuilder.empty() =>
      MessageHeaderDestinationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderDestinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.destination';
    return MessageHeaderDestinationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      target: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'target',
        ReferenceBuilder.fromJson,
        '$objectPath.target',
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'endpoint',
        FhirUrlBuilder.fromJson,
        '$objectPath.endpoint',
      ),
      receiver: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'receiver',
        ReferenceBuilder.fromJson,
        '$objectPath.receiver',
      ),
    );
  }

  /// Deserialize [MessageHeaderDestinationBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderDestinationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderDestinationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderDestinationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderDestinationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderDestinationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderDestinationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderDestinationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderDestination';

  /// [name]
  /// Human-readable name for the target system.
  FhirStringBuilder? name;

  /// [target]
  /// Identifies the target end system in situations where the initial
  /// message transmission is to an intermediary system.
  ReferenceBuilder? target;

  /// [endpoint]
  /// Indicates where the message should be routed to.
  FhirUrlBuilder? endpoint;

  /// [receiver]
  /// Allows data conveyed by a message to be addressed to a particular
  /// person or department when routing to a specific application isn't
  /// sufficient.
  ReferenceBuilder? receiver;

  /// Converts a MessageHeaderDestinationBuilder to [MessageHeaderDestination]
  MessageHeaderDestination build() =>
      MessageHeaderDestination.fromJson(toJson());

  /// Converts a [MessageHeaderDestinationBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (endpoint != null) {
          fields.add(endpoint!);
        }
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

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is ReferenceBuilder) {
            target = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpoint':
        {
          if (child is FhirUrlBuilder) {
            endpoint = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'receiver':
        {
          if (child is ReferenceBuilder) {
            receiver = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'target':
        return ['ReferenceBuilder'];
      case 'endpoint':
        return ['FhirUrlBuilder'];
      case 'receiver':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderDestinationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'target':
        {
          target = ReferenceBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = FhirUrlBuilder.empty();
          return;
        }
      case 'receiver':
        {
          receiver = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool target = false,
    bool endpoint = false,
    bool receiver = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (target) this.target = null;
    if (endpoint) this.endpoint = null;
    if (receiver) this.receiver = null;
  }

  @override
  MessageHeaderDestinationBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderDestinationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    ReferenceBuilder? target,
    FhirUrlBuilder? endpoint,
    ReferenceBuilder? receiver,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderDestinationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      target: target ?? this.target,
      endpoint: endpoint ?? this.endpoint,
      receiver: receiver ?? this.receiver,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MessageHeaderDestinationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      receiver,
      o.receiver,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [MessageHeaderSource] to a Builder
extension BuilderMessageHeaderSource on MessageHeaderSource {
  /// Converts [MessageHeaderSource] to a [MessageHeaderSourceBuilder]
  MessageHeaderSourceBuilder get toBuilder =>
      MessageHeaderSourceBuilder.fromJson(toJson());
}

/// [MessageHeaderSourceBuilder]
/// The source application from which this message originated.
class MessageHeaderSourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderSourceBuilder]

  MessageHeaderSourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    this.endpoint,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.source',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderSourceBuilder.empty() => MessageHeaderSourceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderSourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.source';
    return MessageHeaderSourceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      software: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'software',
        FhirStringBuilder.fromJson,
        '$objectPath.software',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      contact: JsonParser.parseObject<ContactPointBuilder>(
        json,
        'contact',
        ContactPointBuilder.fromJson,
        '$objectPath.contact',
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'endpoint',
        FhirUrlBuilder.fromJson,
        '$objectPath.endpoint',
      ),
    );
  }

  /// Deserialize [MessageHeaderSourceBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderSourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderSourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderSourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderSourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderSourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderSourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderSourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderSource';

  /// [name]
  /// Human-readable name for the source system.
  FhirStringBuilder? name;

  /// [software]
  /// May include configuration or other information useful in debugging.
  FhirStringBuilder? software;

  /// [version]
  /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  FhirStringBuilder? version;

  /// [contact]
  /// An e-mail, phone, website or other contact point to use to resolve
  /// issues with message communications.
  ContactPointBuilder? contact;

  /// [endpoint]
  /// Identifies the routing target to send acknowledgements to.
  FhirUrlBuilder? endpoint;

  /// Converts a MessageHeaderSourceBuilder to [MessageHeaderSource]
  MessageHeaderSource build() => MessageHeaderSource.fromJson(toJson());

  /// Converts a [MessageHeaderSourceBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (endpoint != null) {
          fields.add(endpoint!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'software':
        {
          if (child is FhirStringBuilder) {
            software = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is ContactPointBuilder) {
            contact = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpoint':
        {
          if (child is FhirUrlBuilder) {
            endpoint = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'software':
        return ['FhirStringBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'endpoint':
        return ['FhirUrlBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderSourceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'software':
        {
          software = FhirStringBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = ContactPointBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = FhirUrlBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool software = false,
    bool version = false,
    bool contact = false,
    bool endpoint = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (software) this.software = null;
    if (version) this.version = null;
    if (contact) this.contact = null;
    if (endpoint) this.endpoint = null;
  }

  @override
  MessageHeaderSourceBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderSourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirStringBuilder? software,
    FhirStringBuilder? version,
    ContactPointBuilder? contact,
    FhirUrlBuilder? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderSourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      software: software ?? this.software,
      version: version ?? this.version,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MessageHeaderSourceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      software,
      o.software,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [MessageHeaderResponse] to a Builder
extension BuilderMessageHeaderResponse on MessageHeaderResponse {
  /// Converts [MessageHeaderResponse] to a [MessageHeaderResponseBuilder]
  MessageHeaderResponseBuilder get toBuilder =>
      MessageHeaderResponseBuilder.fromJson(toJson());
}

/// [MessageHeaderResponseBuilder]
/// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponseBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderResponseBuilder]

  MessageHeaderResponseBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.details,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.response',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderResponseBuilder.empty() =>
      MessageHeaderResponseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.response';
    return MessageHeaderResponseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'identifier',
        FhirIdBuilder.fromJson,
        '$objectPath.identifier',
      ),
      code: JsonParser.parsePrimitive<ResponseTypeBuilder>(
        json,
        'code',
        ResponseTypeBuilder.fromJson,
        '$objectPath.code',
      ),
      details: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'details',
        ReferenceBuilder.fromJson,
        '$objectPath.details',
      ),
    );
  }

  /// Deserialize [MessageHeaderResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderResponseBuilder.fromJson(json);
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
  FhirIdBuilder? identifier;

  /// [code]
  /// Code that identifies the type of response to the message - whether it
  /// was successful or not, and whether it should be resent or not.
  ResponseTypeBuilder? code;

  /// [details]
  /// Full details of any issues found in the message.
  ReferenceBuilder? details;

  /// Converts a MessageHeaderResponseBuilder to [MessageHeaderResponse]
  MessageHeaderResponse build() => MessageHeaderResponse.fromJson(toJson());

  /// Converts a [MessageHeaderResponseBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
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

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is FhirIdBuilder) {
            identifier = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is ResponseTypeBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'details':
        {
          if (child is ReferenceBuilder) {
            details = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['FhirIdBuilder'];
      case 'code':
        return ['FhirCodeEnumBuilder'];
      case 'details':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderResponseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = FhirIdBuilder.empty();
          return;
        }
      case 'code':
        {
          code = ResponseTypeBuilder.empty();
          return;
        }
      case 'details':
        {
          details = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool code = false,
    bool details = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (code) this.code = null;
    if (details) this.details = null;
  }

  @override
  MessageHeaderResponseBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderResponseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? identifier,
    ResponseTypeBuilder? code,
    ReferenceBuilder? details,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderResponseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      details: details ?? this.details,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MessageHeaderResponseBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      details,
      o.details,
    )) {
      return false;
    }
    return true;
  }
}
