import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MessageDefinition]
/// Defines the characteristics of a message that can be shared between
/// systems, including the type of event that initiates the message, the
/// content to be transmitted and what response(s), if any, are permitted.
class MessageDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [MessageDefinition]

  const MessageDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.replaces,
    required super.status,
    super.experimental,
    required super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.base,
    this.parent,
    required this.eventX,
    this.category,
    this.focus,
    this.responseRequired,
    this.allowedResponse,
    this.graph,
  }) : super(
          objectPath: 'MessageDefinition',
          resourceType: R4ResourceType.MessageDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageDefinition.empty() => MessageDefinition(
        status: PublicationStatus.values.first,
        date: FhirDateTime.empty(),
        eventX: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageDefinition';
    return MessageDefinition(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
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
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      replaces: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'replaces',
        FhirCanonical.fromJson,
        '$objectPath.replaces',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      base: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'base',
        FhirCanonical.fromJson,
        '$objectPath.base',
      ),
      parent: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'parent',
        FhirCanonical.fromJson,
        '$objectPath.parent',
      ),
      eventX: JsonParser.parsePolymorphic<EventXMessageDefinition>(
        json,
        {
          'eventCoding': Coding.fromJson,
          'eventUri': FhirUri.fromJson,
        },
        objectPath,
      )!,
      category: JsonParser.parsePrimitive<MessageSignificanceCategory>(
        json,
        'category',
        MessageSignificanceCategory.fromJson,
        '$objectPath.category',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<MessageDefinitionFocus>(
            (v) => MessageDefinitionFocus.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      responseRequired: JsonParser.parsePrimitive<MessageheaderResponseRequest>(
        json,
        'responseRequired',
        MessageheaderResponseRequest.fromJson,
        '$objectPath.responseRequired',
      ),
      allowedResponse: (json['allowedResponse'] as List<dynamic>?)
          ?.map<MessageDefinitionAllowedResponse>(
            (v) => MessageDefinitionAllowedResponse.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.allowedResponse',
              },
            ),
          )
          .toList(),
      graph: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'graph',
        FhirCanonical.fromJson,
        '$objectPath.graph',
      ),
    );
  }

  /// Deserialize [MessageDefinition]
  /// from a [String] or [YamlMap] object
  factory MessageDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this message definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the message definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the message definition.
  final FhirString? title;

  /// [replaces]
  /// A MessageDefinition that is superseded by this definition.
  final List<FhirCanonical>? replaces;

  /// [purpose]
  /// Explanation of why this message definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the message definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the message definition.
  final FhirMarkdown? copyright;

  /// [base]
  /// The MessageDefinition that is the basis for the contents of this
  /// resource.
  final FhirCanonical? base;

  /// [parent]
  /// Identifies a protocol or workflow that this MessageDefinition
  /// represents a step in.
  final List<FhirCanonical>? parent;

  /// [eventX]
  /// Event code or link to the EventDefinition.
  final EventXMessageDefinition eventX;

  /// Getter for [eventCoding] as a Coding
  Coding? get eventCoding => eventX.isAs<Coding>();

  /// Getter for [eventUri] as a FhirUri
  FhirUri? get eventUri => eventX.isAs<FhirUri>();

  /// [category]
  /// The impact of the content of the message.
  final MessageSignificanceCategory? category;

  /// [focus]
  /// Identifies the resource (or resources) that are being addressed by the
  /// event. For example, the Encounter for an admit message or two Account
  /// records for a merge.
  final List<MessageDefinitionFocus>? focus;

  /// [responseRequired]
  /// Declare at a message definition level whether a response is required or
  /// only upon error or success, or never.
  final MessageheaderResponseRequest? responseRequired;

  /// [allowedResponse]
  /// Indicates what types of messages may be sent as an application-level
  /// response to this message.
  final List<MessageDefinitionAllowedResponse>? allowedResponse;

  /// [graph]
  /// Canonical reference to a GraphDefinition. If a URL is provided, it is
  /// the canonical reference to a [GraphDefinition](graphdefinition.html)
  /// that it controls what resources are to be added to the bundle when
  /// building the document. The GraphDefinition can also specify profiles
  /// that apply to the various resources.
  final List<FhirCanonical>? graph;
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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'replaces',
      replaces,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'base',
      base,
    );
    addField(
      'parent',
      parent,
    );
    final eventXFhirType = eventX.fhirType;
    addField(
      'event${eventXFhirType.capitalize()}',
      eventX,
    );

    addField(
      'category',
      category,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'responseRequired',
      responseRequired,
    );
    addField(
      'allowedResponse',
      allowedResponse,
    );
    addField(
      'graph',
      graph,
    );
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
      'url',
      'identifier',
      'version',
      'name',
      'title',
      'replaces',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'base',
      'parent',
      'eventX',
      'category',
      'focus',
      'responseRequired',
      'allowedResponse',
      'graph',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'base':
        if (base != null) {
          fields.add(base!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'responseRequired':
        if (responseRequired != null) {
          fields.add(responseRequired!);
        }
      case 'allowedResponse':
        if (allowedResponse != null) {
          fields.addAll(allowedResponse!);
        }
      case 'graph':
        if (graph != null) {
          fields.addAll(graph!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'replaces':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?replaces, ...child];
            return copyWith(replaces: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?replaces,
              child,
            ];
            return copyWith(replaces: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contact,
              child,
            ];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [
              ...?useContext,
              child,
            ];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?jurisdiction,
              child,
            ];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'base':
        {
          if (child is FhirCanonical) {
            return copyWith(base: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?parent, ...child];
            return copyWith(parent: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?parent,
              child,
            ];
            return copyWith(parent: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventX':
        {
          if (child is EventXMessageDefinition) {
            return copyWith(eventX: child);
          } else {
            if (child is Coding) {
              return copyWith(eventX: child);
            }
            if (child is FhirUri) {
              return copyWith(eventX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventCoding':
        {
          if (child is Coding) {
            return copyWith(eventX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(eventX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is MessageSignificanceCategory) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focus':
        {
          if (child is List<MessageDefinitionFocus>) {
            // Add all elements from passed list
            final newList = [...?focus, ...child];
            return copyWith(focus: newList);
          } else if (child is MessageDefinitionFocus) {
            // Add single element to existing list or create new list
            final newList = [
              ...?focus,
              child,
            ];
            return copyWith(focus: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responseRequired':
        {
          if (child is MessageheaderResponseRequest) {
            return copyWith(responseRequired: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedResponse':
        {
          if (child is List<MessageDefinitionAllowedResponse>) {
            // Add all elements from passed list
            final newList = [...?allowedResponse, ...child];
            return copyWith(allowedResponse: newList);
          } else if (child is MessageDefinitionAllowedResponse) {
            // Add single element to existing list or create new list
            final newList = [
              ...?allowedResponse,
              child,
            ];
            return copyWith(allowedResponse: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'graph':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?graph, ...child];
            return copyWith(graph: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?graph,
              child,
            ];
            return copyWith(graph: newList);
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
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'replaces':
        return ['FhirCanonical'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'base':
        return ['FhirCanonical'];
      case 'parent':
        return ['FhirCanonical'];
      case 'event':
      case 'eventX':
        return [
          'Coding',
          'FhirUri',
        ];
      case 'eventCoding':
        return ['Coding'];
      case 'eventUri':
        return ['FhirUri'];
      case 'category':
        return ['FhirCode'];
      case 'focus':
        return ['MessageDefinitionFocus'];
      case 'responseRequired':
        return ['FhirCode'];
      case 'allowedResponse':
        return ['MessageDefinitionAllowedResponse'];
      case 'graph':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'replaces':
        {
          return copyWith(
            replaces: <FhirCanonical>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'base':
        {
          return copyWith(
            base: FhirCanonical.empty(),
          );
        }
      case 'parent':
        {
          return copyWith(
            parent: <FhirCanonical>[],
          );
        }
      case 'event':
      case 'eventX':
      case 'eventCoding':
        {
          return copyWith(
            eventX: Coding.empty(),
          );
        }
      case 'eventUri':
        {
          return copyWith(
            eventX: FhirUri.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: MessageSignificanceCategory.empty(),
          );
        }
      case 'focus':
        {
          return copyWith(
            focus: <MessageDefinitionFocus>[],
          );
        }
      case 'responseRequired':
        {
          return copyWith(
            responseRequired: MessageheaderResponseRequest.empty(),
          );
        }
      case 'allowedResponse':
        {
          return copyWith(
            allowedResponse: <MessageDefinitionAllowedResponse>[],
          );
        }
      case 'graph':
        {
          return copyWith(
            graph: <FhirCanonical>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageDefinition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool replaces = false,
    bool experimental = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool base = false,
    bool parent = false,
    bool category = false,
    bool focus = false,
    bool responseRequired = false,
    bool allowedResponse = false,
    bool graph = false,
  }) {
    return MessageDefinition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      name: name ? null : this.name,
      title: title ? null : this.title,
      replaces: replaces ? null : this.replaces,
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      base: base ? null : this.base,
      parent: parent ? null : this.parent,
      eventX: eventX,
      category: category ? null : this.category,
      focus: focus ? null : this.focus,
      responseRequired: responseRequired ? null : this.responseRequired,
      allowedResponse: allowedResponse ? null : this.allowedResponse,
      graph: graph ? null : this.graph,
    );
  }

  @override
  MessageDefinition clone() => throw UnimplementedError();
  @override
  MessageDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirCanonical? base,
    List<FhirCanonical>? parent,
    EventXMessageDefinition? eventX,
    MessageSignificanceCategory? category,
    List<MessageDefinitionFocus>? focus,
    MessageheaderResponseRequest? responseRequired,
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    List<FhirCanonical>? graph,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MessageDefinition(
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
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      replaces: replaces
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.replaces',
                ),
              )
              .toList() ??
          this.replaces,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      base: base?.copyWith(
            objectPath: '$newObjectPath.base',
          ) ??
          this.base,
      parent: parent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parent',
                ),
              )
              .toList() ??
          this.parent,
      eventX: eventX?.copyWith(
            objectPath: '$newObjectPath.eventX',
          ) as EventXMessageDefinition? ??
          this.eventX,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      focus: focus
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.focus',
                ),
              )
              .toList() ??
          this.focus,
      responseRequired: responseRequired?.copyWith(
            objectPath: '$newObjectPath.responseRequired',
          ) ??
          this.responseRequired,
      allowedResponse: allowedResponse
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.allowedResponse',
                ),
              )
              .toList() ??
          this.allowedResponse,
      graph: graph
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.graph',
                ),
              )
              .toList() ??
          this.graph,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinition) {
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
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      eventX,
      o.eventX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<MessageDefinitionFocus>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responseRequired,
      o.responseRequired,
    )) {
      return false;
    }
    if (!listEquals<MessageDefinitionAllowedResponse>(
      allowedResponse,
      o.allowedResponse,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      graph,
      o.graph,
    )) {
      return false;
    }
    return true;
  }
}

/// [MessageDefinitionFocus]
/// Identifies the resource (or resources) that are being addressed by the
/// event. For example, the Encounter for an admit message or two Account
/// records for a merge.
class MessageDefinitionFocus extends BackboneElement {
  /// Primary constructor for
  /// [MessageDefinitionFocus]

  const MessageDefinitionFocus({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.profile,
    required this.min,
    this.max,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageDefinition.focus',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageDefinitionFocus.empty() => MessageDefinitionFocus(
        code: FhirCode.empty(),
        min: FhirUnsignedInt.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionFocus.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageDefinition.focus';
    return MessageDefinitionFocus(
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
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
        '$objectPath.min',
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      ),
    );
  }

  /// Deserialize [MessageDefinitionFocus]
  /// from a [String] or [YamlMap] object
  factory MessageDefinitionFocus.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinitionFocus.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinitionFocus.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinitionFocus '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinitionFocus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionFocus.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageDefinitionFocus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinitionFocus';

  /// [code]
  /// The kind of resource that must be the focus for this message.
  final FhirCode code;

  /// [profile]
  /// A profile that reflects constraints for the focal resource (and
  /// potentially for related resources).
  final FhirCanonical? profile;

  /// [min]
  /// Identifies the minimum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirUnsignedInt min;

  /// [max]
  /// Identifies the maximum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirString? max;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'min',
      min,
    );
    addField(
      'max',
      max,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'profile',
      'min',
      'max',
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
      case 'code':
        fields.add(code);
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'min':
        fields.add(min);
      case 'max':
        if (max != null) {
          fields.add(max!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is FhirCanonical) {
            return copyWith(profile: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'min':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(min: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'max':
        {
          if (child is FhirString) {
            return copyWith(max: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['FhirCode'];
      case 'profile':
        return ['FhirCanonical'];
      case 'min':
        return ['FhirUnsignedInt'];
      case 'max':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageDefinitionFocus]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageDefinitionFocus createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: FhirCode.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: FhirCanonical.empty(),
          );
        }
      case 'min':
        {
          return copyWith(
            min: FhirUnsignedInt.empty(),
          );
        }
      case 'max':
        {
          return copyWith(
            max: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageDefinitionFocus clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool profile = false,
    bool max = false,
  }) {
    return MessageDefinitionFocus(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      profile: profile ? null : this.profile,
      min: min,
      max: max ? null : this.max,
    );
  }

  @override
  MessageDefinitionFocus clone() => throw UnimplementedError();
  @override
  MessageDefinitionFocus copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCanonical? profile,
    FhirUnsignedInt? min,
    FhirString? max,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MessageDefinitionFocus(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinitionFocus) {
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      min,
      o.min,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      max,
      o.max,
    )) {
      return false;
    }
    return true;
  }
}

/// [MessageDefinitionAllowedResponse]
/// Indicates what types of messages may be sent as an application-level
/// response to this message.
class MessageDefinitionAllowedResponse extends BackboneElement {
  /// Primary constructor for
  /// [MessageDefinitionAllowedResponse]

  const MessageDefinitionAllowedResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.message,
    this.situation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageDefinition.allowedResponse',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MessageDefinitionAllowedResponse.empty() =>
      MessageDefinitionAllowedResponse(
        message: FhirCanonical.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionAllowedResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageDefinition.allowedResponse';
    return MessageDefinitionAllowedResponse(
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
      message: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'message',
        FhirCanonical.fromJson,
        '$objectPath.message',
      )!,
      situation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'situation',
        FhirMarkdown.fromJson,
        '$objectPath.situation',
      ),
    );
  }

  /// Deserialize [MessageDefinitionAllowedResponse]
  /// from a [String] or [YamlMap] object
  factory MessageDefinitionAllowedResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinitionAllowedResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinitionAllowedResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinitionAllowedResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinitionAllowedResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionAllowedResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageDefinitionAllowedResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinitionAllowedResponse';

  /// [message]
  /// A reference to the message definition that must be adhered to by this
  /// supported response.
  final FhirCanonical message;

  /// [situation]
  /// Provides a description of the circumstances in which this response
  /// should be used (as opposed to one of the alternative responses).
  final FhirMarkdown? situation;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'message',
      message,
    );
    addField(
      'situation',
      situation,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'message',
      'situation',
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
      case 'message':
        fields.add(message);
      case 'situation':
        if (situation != null) {
          fields.add(situation!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'message':
        {
          if (child is FhirCanonical) {
            return copyWith(message: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'situation':
        {
          if (child is FhirMarkdown) {
            return copyWith(situation: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'message':
        return ['FhirCanonical'];
      case 'situation':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageDefinitionAllowedResponse]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MessageDefinitionAllowedResponse createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'message':
        {
          return copyWith(
            message: FhirCanonical.empty(),
          );
        }
      case 'situation':
        {
          return copyWith(
            situation: FhirMarkdown.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MessageDefinitionAllowedResponse clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool situation = false,
  }) {
    return MessageDefinitionAllowedResponse(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      message: message,
      situation: situation ? null : this.situation,
    );
  }

  @override
  MessageDefinitionAllowedResponse clone() => throw UnimplementedError();
  @override
  MessageDefinitionAllowedResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? message,
    FhirMarkdown? situation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MessageDefinitionAllowedResponse(
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
      message: message?.copyWith(
            objectPath: '$newObjectPath.message',
          ) ??
          this.message,
      situation: situation?.copyWith(
            objectPath: '$newObjectPath.situation',
          ) ??
          this.situation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinitionAllowedResponse) {
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
    if (!equalsDeepWithNull(
      message,
      o.message,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      situation,
      o.situation,
    )) {
      return false;
    }
    return true;
  }
}
