import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [GraphDefinition]
/// A formal computable definition of a graph of resources - that is, a
/// coherent set of resources that form a graph by following references.
/// The Graph Definition resource defines a set and makes rules about the
/// set.
class GraphDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [GraphDefinition]

  const GraphDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    super.version,
    required this.name,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    required this.start,
    this.profile,
    this.link,
  }) : super(
          objectPath: 'GraphDefinition',
          resourceType: R4ResourceType.GraphDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GraphDefinition.empty() => GraphDefinition(
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
        start: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GraphDefinition';
    return GraphDefinition(
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
      )!,
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
      start: JsonParser.parsePrimitive<FhirCode>(
        json,
        'start',
        FhirCode.fromJson,
        '$objectPath.start',
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<GraphDefinitionLink>(
            (v) => GraphDefinitionLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GraphDefinition]
  /// from a [String] or [YamlMap] object
  factory GraphDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GraphDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GraphDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GraphDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GraphDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinition';

  /// [name]
  /// A natural language name identifying the graph definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [purpose]
  /// Explanation of why this graph definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [start]
  /// The type of FHIR resource at which instances of this graph start.
  final FhirCode start;

  /// [profile]
  /// The profile that describes the use of the base resource.
  final FhirCanonical? profile;

  /// [link]
  /// Links this graph makes rules about.
  final List<GraphDefinitionLink>? link;
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
    addField('url', url);
    addField('version', version);
    addField('name', name);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('start', start);
    addField('profile', profile);
    addField('link', link);
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
      'version',
      'name',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'start',
      'profile',
      'link',
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
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        fields.add(name);
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
      case 'start':
        fields.add(start);
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
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
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
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
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            return copyWith(useContext: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'start':
        {
          if (child is FhirCode) {
            return copyWith(start: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'profile':
        {
          if (child is FhirCanonical) {
            return copyWith(profile: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'link':
        {
          if (child is List<GraphDefinitionLink>) {
            return copyWith(link: child);
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
      case 'url':
        return ['FhirUri'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
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
      case 'start':
        return ['FhirCode'];
      case 'profile':
        return ['FhirCanonical'];
      case 'link':
        return ['GraphDefinitionLink'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GraphDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GraphDefinition createProperty(String propertyName) {
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
      case 'url':
        {
          return copyWith(url: FhirUri.empty());
        }
      case 'version':
        {
          return copyWith(version: FhirString.empty());
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'status':
        {
          return copyWith(status: PublicationStatus.empty());
        }
      case 'experimental':
        {
          return copyWith(experimental: FhirBoolean.empty());
        }
      case 'date':
        {
          return copyWith(date: FhirDateTime.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: FhirString.empty());
        }
      case 'contact':
        {
          return copyWith(contact: <ContactDetail>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirMarkdown.empty());
        }
      case 'useContext':
        {
          return copyWith(useContext: <UsageContext>[]);
        }
      case 'jurisdiction':
        {
          return copyWith(jurisdiction: <CodeableConcept>[]);
        }
      case 'purpose':
        {
          return copyWith(purpose: FhirMarkdown.empty());
        }
      case 'start':
        {
          return copyWith(start: FhirCode.empty());
        }
      case 'profile':
        {
          return copyWith(profile: FhirCanonical.empty());
        }
      case 'link':
        {
          return copyWith(link: <GraphDefinitionLink>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GraphDefinition clone() => throw UnimplementedError();
  @override
  GraphDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? version,
    FhirString? name,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirCode? start,
    FhirCanonical? profile,
    List<GraphDefinitionLink>? link,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return GraphDefinition(
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
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
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
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GraphDefinition) {
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
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(experimental, o.experimental)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
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
    if (!equalsDeepWithNull(purpose, o.purpose)) {
      return false;
    }
    if (!equalsDeepWithNull(start, o.start)) {
      return false;
    }
    if (!equalsDeepWithNull(profile, o.profile)) {
      return false;
    }
    if (!listEquals<GraphDefinitionLink>(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
  }
}

/// [GraphDefinitionLink]
/// Links this graph makes rules about.
class GraphDefinitionLink extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionLink]

  const GraphDefinitionLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.sliceName,
    this.min,
    this.max,
    this.description,
    this.target,
    super.disallowExtensions,
  }) : super(
          objectPath: 'GraphDefinition.link',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GraphDefinitionLink.empty() => const GraphDefinitionLink();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionLink.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GraphDefinition.link';
    return GraphDefinitionLink(
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
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      ),
      sliceName: JsonParser.parsePrimitive<FhirString>(
        json,
        'sliceName',
        FhirString.fromJson,
        '$objectPath.sliceName',
      ),
      min: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'min',
        FhirInteger.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      target: (json['target'] as List<dynamic>?)
          ?.map<GraphDefinitionTarget>(
            (v) => GraphDefinitionTarget.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GraphDefinitionLink]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GraphDefinitionLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GraphDefinitionLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionLink';

  /// [path]
  /// A FHIR expression that identifies one of FHIR References to other
  /// resources.
  final FhirString? path;

  /// [sliceName]
  /// Which slice (if profiled).
  final FhirString? sliceName;

  /// [min]
  /// Minimum occurrences for this link.
  final FhirInteger? min;

  /// [max]
  /// Maximum occurrences for this link.
  final FhirString? max;

  /// [description]
  /// Information about why this link is of interest in this graph
  /// definition.
  final FhirString? description;

  /// [target]
  /// Potential target for the link.
  final List<GraphDefinitionTarget>? target;
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
    addField('path', path);
    addField('sliceName', sliceName);
    addField('min', min);
    addField('max', max);
    addField('description', description);
    addField('target', target);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'path',
      'sliceName',
      'min',
      'max',
      'description',
      'target',
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
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'sliceName':
        if (sliceName != null) {
          fields.add(sliceName!);
        }
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
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
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sliceName':
        {
          if (child is FhirString) {
            return copyWith(sliceName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'min':
        {
          if (child is FhirInteger) {
            return copyWith(min: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'max':
        {
          if (child is FhirString) {
            return copyWith(max: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is List<GraphDefinitionTarget>) {
            return copyWith(target: child);
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
      case 'path':
        return ['FhirString'];
      case 'sliceName':
        return ['FhirString'];
      case 'min':
        return ['FhirInteger'];
      case 'max':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'target':
        return ['GraphDefinitionTarget'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GraphDefinitionLink]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GraphDefinitionLink createProperty(String propertyName) {
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
      case 'path':
        {
          return copyWith(path: FhirString.empty());
        }
      case 'sliceName':
        {
          return copyWith(sliceName: FhirString.empty());
        }
      case 'min':
        {
          return copyWith(min: FhirInteger.empty());
        }
      case 'max':
        {
          return copyWith(max: FhirString.empty());
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'target':
        {
          return copyWith(target: <GraphDefinitionTarget>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
  @override
  GraphDefinitionLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    FhirString? sliceName,
    FhirInteger? min,
    FhirString? max,
    FhirString? description,
    List<GraphDefinitionTarget>? target,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return GraphDefinitionLink(
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
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      sliceName: sliceName?.copyWith(
            objectPath: '$newObjectPath.sliceName',
          ) ??
          this.sliceName,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GraphDefinitionLink) {
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
    if (!equalsDeepWithNull(path, o.path)) {
      return false;
    }
    if (!equalsDeepWithNull(sliceName, o.sliceName)) {
      return false;
    }
    if (!equalsDeepWithNull(min, o.min)) {
      return false;
    }
    if (!equalsDeepWithNull(max, o.max)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<GraphDefinitionTarget>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [GraphDefinitionTarget]
/// Potential target for the link.
class GraphDefinitionTarget extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionTarget]

  const GraphDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.params,
    this.profile,
    this.compartment,
    this.link,
    super.disallowExtensions,
  }) : super(
          objectPath: 'GraphDefinition.link.target',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GraphDefinitionTarget.empty() => GraphDefinitionTarget(
        type: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GraphDefinition.link.target';
    return GraphDefinitionTarget(
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
      type: JsonParser.parsePrimitive<FhirCode>(
        json,
        'type',
        FhirCode.fromJson,
        '$objectPath.type',
      )!,
      params: JsonParser.parsePrimitive<FhirString>(
        json,
        'params',
        FhirString.fromJson,
        '$objectPath.params',
      ),
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      compartment: (json['compartment'] as List<dynamic>?)
          ?.map<GraphDefinitionCompartment>(
            (v) => GraphDefinitionCompartment.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.compartment',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<GraphDefinitionLink>(
            (v) => GraphDefinitionLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GraphDefinitionTarget]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GraphDefinitionTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GraphDefinitionTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionTarget';

  /// [type]
  /// Type of resource this link refers to.
  final FhirCode type;

  /// [params]
  /// A set of parameters to look up.
  final FhirString? params;

  /// [profile]
  /// Profile for the target resource.
  final FhirCanonical? profile;

  /// [compartment]
  /// Compartment Consistency Rules.
  final List<GraphDefinitionCompartment>? compartment;

  /// [link]
  /// Additional links from target resource.
  final List<GraphDefinitionLink>? link;
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
    addField('type', type);
    addField('params', params);
    addField('profile', profile);
    addField('compartment', compartment);
    addField('link', link);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'params',
      'profile',
      'compartment',
      'link',
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
      case 'type':
        fields.add(type);
      case 'params':
        if (params != null) {
          fields.add(params!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'compartment':
        if (compartment != null) {
          fields.addAll(compartment!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
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
      case 'type':
        {
          if (child is FhirCode) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'params':
        {
          if (child is FhirString) {
            return copyWith(params: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'profile':
        {
          if (child is FhirCanonical) {
            return copyWith(profile: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'compartment':
        {
          if (child is List<GraphDefinitionCompartment>) {
            return copyWith(compartment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'link':
        {
          if (child is List<GraphDefinitionLink>) {
            return copyWith(link: child);
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
      case 'type':
        return ['FhirCode'];
      case 'params':
        return ['FhirString'];
      case 'profile':
        return ['FhirCanonical'];
      case 'compartment':
        return ['GraphDefinitionCompartment'];
      case 'link':
        return ['GraphDefinitionLink'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GraphDefinitionTarget]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GraphDefinitionTarget createProperty(String propertyName) {
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
      case 'type':
        {
          return copyWith(type: FhirCode.empty());
        }
      case 'params':
        {
          return copyWith(params: FhirString.empty());
        }
      case 'profile':
        {
          return copyWith(profile: FhirCanonical.empty());
        }
      case 'compartment':
        {
          return copyWith(compartment: <GraphDefinitionCompartment>[]);
        }
      case 'link':
        {
          return copyWith(link: <GraphDefinitionLink>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
  @override
  GraphDefinitionTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirString? params,
    FhirCanonical? profile,
    List<GraphDefinitionCompartment>? compartment,
    List<GraphDefinitionLink>? link,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return GraphDefinitionTarget(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      params: params?.copyWith(
            objectPath: '$newObjectPath.params',
          ) ??
          this.params,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
      compartment: compartment
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.compartment',
                ),
              )
              .toList() ??
          this.compartment,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GraphDefinitionTarget) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(params, o.params)) {
      return false;
    }
    if (!equalsDeepWithNull(profile, o.profile)) {
      return false;
    }
    if (!listEquals<GraphDefinitionCompartment>(
      compartment,
      o.compartment,
    )) {
      return false;
    }
    if (!listEquals<GraphDefinitionLink>(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
  }
}

/// [GraphDefinitionCompartment]
/// Compartment Consistency Rules.
class GraphDefinitionCompartment extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionCompartment]

  const GraphDefinitionCompartment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.use,
    required this.code,
    required this.rule,
    this.expression,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'GraphDefinition.link.target.compartment',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GraphDefinitionCompartment.empty() => GraphDefinitionCompartment(
        use: GraphCompartmentUse.values.first,
        code: CompartmentType.values.first,
        rule: GraphCompartmentRule.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionCompartment.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GraphDefinition.link.target.compartment';
    return GraphDefinitionCompartment(
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
      use: JsonParser.parsePrimitive<GraphCompartmentUse>(
        json,
        'use',
        GraphCompartmentUse.fromJson,
        '$objectPath.use',
      )!,
      code: JsonParser.parsePrimitive<CompartmentType>(
        json,
        'code',
        CompartmentType.fromJson,
        '$objectPath.code',
      )!,
      rule: JsonParser.parsePrimitive<GraphCompartmentRule>(
        json,
        'rule',
        GraphCompartmentRule.fromJson,
        '$objectPath.rule',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [GraphDefinitionCompartment]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionCompartment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionCompartment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionCompartment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionCompartment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GraphDefinitionCompartment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionCompartment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GraphDefinitionCompartment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionCompartment';

  /// [use]
  /// Defines how the compartment rule is used - whether it it is used to
  /// test whether resources are subject to the rule, or whether it is a rule
  /// that must be followed.
  final GraphCompartmentUse use;

  /// [code]
  /// Identifies the compartment.
  final CompartmentType code;

  /// [rule]
  /// identical | matching | different | no-rule | custom.
  final GraphCompartmentRule rule;

  /// [expression]
  /// Custom rule, as a FHIRPath expression.
  final FhirString? expression;

  /// [description]
  /// Documentation for FHIRPath expression.
  final FhirString? description;
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
    addField('use', use);
    addField('code', code);
    addField('rule', rule);
    addField('expression', expression);
    addField('description', description);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'use',
      'code',
      'rule',
      'expression',
      'description',
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
      case 'use':
        fields.add(use);
      case 'code':
        fields.add(code);
      case 'rule':
        fields.add(rule);
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
      case 'use':
        {
          if (child is GraphCompartmentUse) {
            return copyWith(use: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CompartmentType) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rule':
        {
          if (child is GraphCompartmentRule) {
            return copyWith(rule: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
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
      case 'use':
        return ['FhirCode'];
      case 'code':
        return ['FhirCode'];
      case 'rule':
        return ['FhirCode'];
      case 'expression':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GraphDefinitionCompartment]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GraphDefinitionCompartment createProperty(String propertyName) {
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
      case 'use':
        {
          return copyWith(use: GraphCompartmentUse.empty());
        }
      case 'code':
        {
          return copyWith(code: CompartmentType.empty());
        }
      case 'rule':
        {
          return copyWith(rule: GraphCompartmentRule.empty());
        }
      case 'expression':
        {
          return copyWith(expression: FhirString.empty());
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
  @override
  GraphDefinitionCompartment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GraphCompartmentUse? use,
    CompartmentType? code,
    GraphCompartmentRule? rule,
    FhirString? expression,
    FhirString? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return GraphDefinitionCompartment(
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
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      rule: rule?.copyWith(
            objectPath: '$newObjectPath.rule',
          ) ??
          this.rule,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GraphDefinitionCompartment) {
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
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(rule, o.rule)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    return true;
  }
}
