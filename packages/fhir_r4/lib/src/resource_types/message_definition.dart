import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'message_definition.g.dart';

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
          resourceType: R4ResourceType.MessageDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      replaces: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'replaces',
        FhirCanonical.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      base: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'base',
        FhirCanonical.fromJson,
      ),
      parent: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'parent',
        FhirCanonical.fromJson,
      ),
      eventX: JsonParser.parsePolymorphic<EventXMessageDefinition>(
        json,
        {
          'eventCoding': Coding.fromJson,
          'eventUri': FhirUri.fromJson,
        },
      )!,
      category: JsonParser.parsePrimitive<MessageSignificanceCategory>(
        json,
        'category',
        MessageSignificanceCategory.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<MessageDefinitionFocus>(
            (v) => MessageDefinitionFocus.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      responseRequired: JsonParser.parsePrimitive<MessageheaderResponseRequest>(
        json,
        'responseRequired',
        MessageheaderResponseRequest.fromJson,
      ),
      allowedResponse: (json['allowedResponse'] as List<dynamic>?)
          ?.map<MessageDefinitionAllowedResponse>(
            (v) => MessageDefinitionAllowedResponse.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      graph: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'graph',
        FhirCanonical.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  MessageDefinition clone() => copyWith();

  /// Copy function for [MessageDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MessageDefinitionCopyWith<MessageDefinition> get copyWith =>
      _$MessageDefinitionCopyWithImpl<MessageDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirCanonical>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirCanonical>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      eventX,
      o.eventX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MessageDefinitionFocus>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      responseRequired,
      o.responseRequired,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MessageDefinitionAllowedResponse>(
      allowedResponse,
      o.allowedResponse,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirCanonical>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionFocus.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionFocus(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  MessageDefinitionFocus clone() => copyWith();

  /// Copy function for [MessageDefinitionFocus]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MessageDefinitionFocusCopyWith<MessageDefinitionFocus> get copyWith =>
      _$MessageDefinitionFocusCopyWithImpl<MessageDefinitionFocus>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinitionFocus) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      min,
      o.min,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionAllowedResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionAllowedResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      message: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'message',
        FhirCanonical.fromJson,
      )!,
      situation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'situation',
        FhirMarkdown.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  MessageDefinitionAllowedResponse clone() => copyWith();

  /// Copy function for [MessageDefinitionAllowedResponse]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MessageDefinitionAllowedResponseCopyWith<MessageDefinitionAllowedResponse>
      get copyWith => _$MessageDefinitionAllowedResponseCopyWithImpl<
              MessageDefinitionAllowedResponse>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MessageDefinitionAllowedResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      message,
      o.message,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      situation,
      o.situation,
    )) {
      return false;
    }
    return true;
  }
}
