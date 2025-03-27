import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [OperationDefinition]
/// A formal computable definition of an operation (on the RESTful
/// interface) or a named query (using the search interaction).
class OperationDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [OperationDefinition]

  const OperationDefinition({
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
    this.title,
    required super.status,
    required this.kind,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.affectsState,
    required this.code,
    this.comment,
    this.base,
    this.resource,
    required this.system,
    required this.type,
    required this.instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  }) : super(
          objectPath: 'OperationDefinition',
          resourceType: R4ResourceType.OperationDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationDefinition.empty() => OperationDefinition(
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
        kind: OperationKind.values.first,
        code: FhirCode.empty(),
        system: FhirBoolean.empty(),
        type: FhirBoolean.empty(),
        instance: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition';
    return OperationDefinition(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      kind: JsonParser.parsePrimitive<OperationKind>(
        json,
        'kind',
        OperationKind.fromJson,
        '$objectPath.kind',
      )!,
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
      affectsState: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'affectsState',
        FhirBoolean.fromJson,
        '$objectPath.affectsState',
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      )!,
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
        '$objectPath.comment',
      ),
      base: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'base',
        FhirCanonical.fromJson,
        '$objectPath.base',
      ),
      resource: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'resource',
        FhirCode.fromJson,
        '$objectPath.resource',
      ),
      system: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'system',
        FhirBoolean.fromJson,
        '$objectPath.system',
      )!,
      type: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'type',
        FhirBoolean.fromJson,
        '$objectPath.type',
      )!,
      instance: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'instance',
        FhirBoolean.fromJson,
        '$objectPath.instance',
      )!,
      inputProfile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'inputProfile',
        FhirCanonical.fromJson,
        '$objectPath.inputProfile',
      ),
      outputProfile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'outputProfile',
        FhirCanonical.fromJson,
        '$objectPath.outputProfile',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<OperationDefinitionParameter>(
            (v) => OperationDefinitionParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      overload: (json['overload'] as List<dynamic>?)
          ?.map<OperationDefinitionOverload>(
            (v) => OperationDefinitionOverload.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.overload',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinition]
  /// from a [String] or [YamlMap] object
  factory OperationDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinition';

  /// [name]
  /// A natural language name identifying the operation definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the operation definition.
  final FhirString? title;

  /// [kind]
  /// Whether this is an operation or a named query.
  final OperationKind kind;

  /// [purpose]
  /// Explanation of why this operation definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [affectsState]
  /// Whether the operation affects state. Side effects such as producing
  /// audit trail entries do not count as 'affecting state'.
  final FhirBoolean? affectsState;

  /// [code]
  /// The name used to invoke the operation.
  final FhirCode code;

  /// [comment]
  /// Additional information about how to use this operation or named query.
  final FhirMarkdown? comment;

  /// [base]
  /// Indicates that this operation definition is a constraining profile on
  /// the base.
  final FhirCanonical? base;

  /// [resource]
  /// The types on which this operation can be executed.
  final List<FhirCode>? resource;

  /// [system]
  /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  final FhirBoolean system;

  /// [type]
  /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without
  /// needing to choose a specific resource id for the context).
  final FhirBoolean type;

  /// [instance]
  /// Indicates whether this operation can be invoked on a particular
  /// instance of one of the given types.
  final FhirBoolean instance;

  /// [inputProfile]
  /// Additional validation information for the in parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource as a whole.
  final FhirCanonical? inputProfile;

  /// [outputProfile]
  /// Additional validation information for the out parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource.
  final FhirCanonical? outputProfile;

  /// [parameter]
  /// The parameters for the operation/query.
  final List<OperationDefinitionParameter>? parameter;

  /// [overload]
  /// Defines an appropriate combination of parameters to use when invoking
  /// this operation, to help code generators when generating overloaded
  /// parameter sets for this operation.
  final List<OperationDefinitionOverload>? overload;
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
    addField('title', title);
    addField('status', status);
    addField('kind', kind);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('affectsState', affectsState);
    addField('code', code);
    addField('comment', comment);
    addField('base', base);
    addField('resource', resource);
    addField('system', system);
    addField('type', type);
    addField('instance', instance);
    addField('inputProfile', inputProfile);
    addField('outputProfile', outputProfile);
    addField('parameter', parameter);
    addField('overload', overload);
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
      'title',
      'status',
      'kind',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'affectsState',
      'code',
      'comment',
      'base',
      'resource',
      'system',
      'type',
      'instance',
      'inputProfile',
      'outputProfile',
      'parameter',
      'overload',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'kind':
        fields.add(kind);
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
      case 'affectsState':
        if (affectsState != null) {
          fields.add(affectsState!);
        }
      case 'code':
        fields.add(code);
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'base':
        if (base != null) {
          fields.add(base!);
        }
      case 'resource':
        if (resource != null) {
          fields.addAll(resource!);
        }
      case 'system':
        fields.add(system);
      case 'type':
        fields.add(type);
      case 'instance':
        fields.add(instance);
      case 'inputProfile':
        if (inputProfile != null) {
          fields.add(inputProfile!);
        }
      case 'outputProfile':
        if (outputProfile != null) {
          fields.add(outputProfile!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'overload':
        if (overload != null) {
          fields.addAll(overload!);
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
      case 'contact':
        if (contact != null) {
          return contact!;
        } else {
          return <FhirBase>[];
        }
      case 'useContext':
        if (useContext != null) {
          return useContext!;
        } else {
          return <FhirBase>[];
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          return jurisdiction!;
        } else {
          return <FhirBase>[];
        }
      case 'resource':
        if (resource != null) {
          return resource!;
        } else {
          return <FhirBase>[];
        }
      case 'parameter':
        if (parameter != null) {
          return parameter!;
        } else {
          return <FhirBase>[];
        }
      case 'overload':
        if (overload != null) {
          return overload!;
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
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
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
      case 'kind':
        {
          if (child is OperationKind) {
            return copyWith(kind: child);
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
      case 'affectsState':
        {
          if (child is FhirBoolean) {
            return copyWith(affectsState: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirMarkdown) {
            return copyWith(comment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'base':
        {
          if (child is FhirCanonical) {
            return copyWith(base: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'resource':
        {
          if (child is List<FhirCode>) {
            return copyWith(resource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'system':
        {
          if (child is FhirBoolean) {
            return copyWith(system: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is FhirBoolean) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instance':
        {
          if (child is FhirBoolean) {
            return copyWith(instance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'inputProfile':
        {
          if (child is FhirCanonical) {
            return copyWith(inputProfile: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'outputProfile':
        {
          if (child is FhirCanonical) {
            return copyWith(outputProfile: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'parameter':
        {
          if (child is List<OperationDefinitionParameter>) {
            return copyWith(parameter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'overload':
        {
          if (child is List<OperationDefinitionOverload>) {
            return copyWith(overload: child);
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
      case 'title':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'kind':
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
      case 'affectsState':
        return ['FhirBoolean'];
      case 'code':
        return ['FhirCode'];
      case 'comment':
        return ['FhirMarkdown'];
      case 'base':
        return ['FhirCanonical'];
      case 'resource':
        return ['FhirCode'];
      case 'system':
        return ['FhirBoolean'];
      case 'type':
        return ['FhirBoolean'];
      case 'instance':
        return ['FhirBoolean'];
      case 'inputProfile':
        return ['FhirCanonical'];
      case 'outputProfile':
        return ['FhirCanonical'];
      case 'parameter':
        return ['OperationDefinitionParameter'];
      case 'overload':
        return ['OperationDefinitionOverload'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  OperationDefinition createProperty(String propertyName) {
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
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'status':
        {
          return copyWith(status: PublicationStatus.empty());
        }
      case 'kind':
        {
          return copyWith(kind: OperationKind.empty());
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
      case 'affectsState':
        {
          return copyWith(affectsState: FhirBoolean.empty());
        }
      case 'code':
        {
          return copyWith(code: FhirCode.empty());
        }
      case 'comment':
        {
          return copyWith(comment: FhirMarkdown.empty());
        }
      case 'base':
        {
          return copyWith(base: FhirCanonical.empty());
        }
      case 'resource':
        {
          return copyWith(resource: <FhirCode>[]);
        }
      case 'system':
        {
          return copyWith(system: FhirBoolean.empty());
        }
      case 'type':
        {
          return copyWith(type: FhirBoolean.empty());
        }
      case 'instance':
        {
          return copyWith(instance: FhirBoolean.empty());
        }
      case 'inputProfile':
        {
          return copyWith(inputProfile: FhirCanonical.empty());
        }
      case 'outputProfile':
        {
          return copyWith(outputProfile: FhirCanonical.empty());
        }
      case 'parameter':
        {
          return copyWith(parameter: <OperationDefinitionParameter>[]);
        }
      case 'overload':
        {
          return copyWith(overload: <OperationDefinitionOverload>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  OperationDefinition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool version = false,
    bool title = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool affectsState = false,
    bool comment = false,
    bool base = false,
    bool resource = false,
    bool inputProfile = false,
    bool outputProfile = false,
    bool parameter = false,
    bool overload = false,
  }) {
    return OperationDefinition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      version: version ? null : this.version,
      name: name,
      title: title ? null : this.title,
      status: status,
      kind: kind,
      experimental: experimental ? null : this.experimental,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      affectsState: affectsState ? null : this.affectsState,
      code: code,
      comment: comment ? null : this.comment,
      base: base ? null : this.base,
      resource: resource ? null : this.resource,
      system: system,
      type: type,
      instance: instance,
      inputProfile: inputProfile ? null : this.inputProfile,
      outputProfile: outputProfile ? null : this.outputProfile,
      parameter: parameter ? null : this.parameter,
      overload: overload ? null : this.overload,
    );
  }

  @override
  OperationDefinition clone() => throw UnimplementedError();
  @override
  OperationDefinition copyWith({
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
    FhirString? title,
    PublicationStatus? status,
    OperationKind? kind,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirBoolean? affectsState,
    FhirCode? code,
    FhirMarkdown? comment,
    FhirCanonical? base,
    List<FhirCode>? resource,
    FhirBoolean? system,
    FhirBoolean? type,
    FhirBoolean? instance,
    FhirCanonical? inputProfile,
    FhirCanonical? outputProfile,
    List<OperationDefinitionParameter>? parameter,
    List<OperationDefinitionOverload>? overload,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return OperationDefinition(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
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
      affectsState: affectsState?.copyWith(
            objectPath: '$newObjectPath.affectsState',
          ) ??
          this.affectsState,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
      base: base?.copyWith(
            objectPath: '$newObjectPath.base',
          ) ??
          this.base,
      resource: resource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resource',
                ),
              )
              .toList() ??
          this.resource,
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      instance: instance?.copyWith(
            objectPath: '$newObjectPath.instance',
          ) ??
          this.instance,
      inputProfile: inputProfile?.copyWith(
            objectPath: '$newObjectPath.inputProfile',
          ) ??
          this.inputProfile,
      outputProfile: outputProfile?.copyWith(
            objectPath: '$newObjectPath.outputProfile',
          ) ??
          this.outputProfile,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
      overload: overload
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.overload',
                ),
              )
              .toList() ??
          this.overload,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinition) {
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
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(kind, o.kind)) {
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
    if (!equalsDeepWithNull(affectsState, o.affectsState)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    if (!equalsDeepWithNull(base, o.base)) {
      return false;
    }
    if (!listEquals<FhirCode>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(system, o.system)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(instance, o.instance)) {
      return false;
    }
    if (!equalsDeepWithNull(inputProfile, o.inputProfile)) {
      return false;
    }
    if (!equalsDeepWithNull(outputProfile, o.outputProfile)) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionOverload>(
      overload,
      o.overload,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionParameter]
/// The parameters for the operation/query.
class OperationDefinitionParameter extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionParameter]

  const OperationDefinitionParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.use,
    required this.min,
    required this.max,
    this.documentation,
    this.type,
    this.targetProfile,
    this.searchType,
    this.binding,
    this.referencedFrom,
    this.part_,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationDefinitionParameter.empty() => OperationDefinitionParameter(
        name: FhirCode.empty(),
        use: OperationParameterUse.values.first,
        min: FhirInteger.empty(),
        max: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter';
    return OperationDefinitionParameter(
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
      name: JsonParser.parsePrimitive<FhirCode>(
        json,
        'name',
        FhirCode.fromJson,
        '$objectPath.name',
      )!,
      use: JsonParser.parsePrimitive<OperationParameterUse>(
        json,
        'use',
        OperationParameterUse.fromJson,
        '$objectPath.use',
      )!,
      min: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'min',
        FhirInteger.fromJson,
        '$objectPath.min',
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      )!,
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
      type: JsonParser.parsePrimitive<FHIRAllTypes>(
        json,
        'type',
        FHIRAllTypes.fromJson,
        '$objectPath.type',
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'targetProfile',
        FhirCanonical.fromJson,
        '$objectPath.targetProfile',
      ),
      searchType: JsonParser.parsePrimitive<SearchParamType>(
        json,
        'searchType',
        SearchParamType.fromJson,
        '$objectPath.searchType',
      ),
      binding: JsonParser.parseObject<OperationDefinitionBinding>(
        json,
        'binding',
        OperationDefinitionBinding.fromJson,
        '$objectPath.binding',
      ),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)
          ?.map<OperationDefinitionReferencedFrom>(
            (v) => OperationDefinitionReferencedFrom.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referencedFrom',
              },
            ),
          )
          .toList(),
      part_: (json['part'] as List<dynamic>?)
          ?.map<OperationDefinitionParameter>(
            (v) => OperationDefinitionParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.part',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinitionParameter]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionParameter';

  /// [name]
  /// The name of used to identify the parameter.
  final FhirCode name;

  /// [use]
  /// Whether this is an input or an output parameter.
  final OperationParameterUse use;

  /// [min]
  /// The minimum number of times this parameter SHALL appear in the request
  /// or response.
  final FhirInteger min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString max;

  /// [documentation]
  /// Describes the meaning or use of this parameter.
  final FhirString? documentation;

  /// [type]
  /// The type for this parameter.
  final FHIRAllTypes? type;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this parameter refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [searchType]
  /// How the parameter is understood as a search parameter. This is only
  /// used if the parameter type is 'string'.
  final SearchParamType? searchType;

  /// [binding]
  /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  final OperationDefinitionBinding? binding;

  /// [referencedFrom]
  /// Identifies other resource parameters within the operation invocation
  /// that are expected to resolve to this resource.
  final List<OperationDefinitionReferencedFrom>? referencedFrom;

  /// [part_]
  /// The parts of a nested Parameter.
  final List<OperationDefinitionParameter>? part_;
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
    addField('use', use);
    addField('min', min);
    addField('max', max);
    addField('documentation', documentation);
    addField('type', type);
    addField('targetProfile', targetProfile);
    addField('searchType', searchType);
    addField('binding', binding);
    addField('referencedFrom', referencedFrom);
    addField('part', part_);
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
      'use',
      'min',
      'max',
      'documentation',
      'type',
      'targetProfile',
      'searchType',
      'binding',
      'referencedFrom',
      'part',
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
        fields.add(name);
      case 'use':
        fields.add(use);
      case 'min':
        fields.add(min);
      case 'max':
        fields.add(max);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'targetProfile':
        if (targetProfile != null) {
          fields.addAll(targetProfile!);
        }
      case 'searchType':
        if (searchType != null) {
          fields.add(searchType!);
        }
      case 'binding':
        if (binding != null) {
          fields.add(binding!);
        }
      case 'referencedFrom':
        if (referencedFrom != null) {
          fields.addAll(referencedFrom!);
        }
      case 'part':
        if (part_ != null) {
          fields.addAll(part_!);
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
      case 'targetProfile':
        if (targetProfile != null) {
          return targetProfile!;
        } else {
          return <FhirBase>[];
        }
      case 'referencedFrom':
        if (referencedFrom != null) {
          return referencedFrom!;
        } else {
          return <FhirBase>[];
        }
      case 'part':
        if (part_ != null) {
          return part_!;
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
          if (child is FhirCode) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'use':
        {
          if (child is OperationParameterUse) {
            return copyWith(use: child);
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
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is FHIRAllTypes) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetProfile':
        {
          if (child is List<FhirCanonical>) {
            return copyWith(targetProfile: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'searchType':
        {
          if (child is SearchParamType) {
            return copyWith(searchType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'binding':
        {
          if (child is OperationDefinitionBinding) {
            return copyWith(binding: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'referencedFrom':
        {
          if (child is List<OperationDefinitionReferencedFrom>) {
            return copyWith(referencedFrom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'part':
        {
          if (child is List<OperationDefinitionParameter>) {
            return copyWith(part_: child);
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
        return ['FhirCode'];
      case 'use':
        return ['FhirCode'];
      case 'min':
        return ['FhirInteger'];
      case 'max':
        return ['FhirString'];
      case 'documentation':
        return ['FhirString'];
      case 'type':
        return ['FhirCode'];
      case 'targetProfile':
        return ['FhirCanonical'];
      case 'searchType':
        return ['FhirCode'];
      case 'binding':
        return ['OperationDefinitionBinding'];
      case 'referencedFrom':
        return ['OperationDefinitionReferencedFrom'];
      case 'part':
        return ['OperationDefinitionParameter'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionParameter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  OperationDefinitionParameter createProperty(String propertyName) {
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
          return copyWith(name: FhirCode.empty());
        }
      case 'use':
        {
          return copyWith(use: OperationParameterUse.empty());
        }
      case 'min':
        {
          return copyWith(min: FhirInteger.empty());
        }
      case 'max':
        {
          return copyWith(max: FhirString.empty());
        }
      case 'documentation':
        {
          return copyWith(documentation: FhirString.empty());
        }
      case 'type':
        {
          return copyWith(type: FHIRAllTypes.empty());
        }
      case 'targetProfile':
        {
          return copyWith(targetProfile: <FhirCanonical>[]);
        }
      case 'searchType':
        {
          return copyWith(searchType: SearchParamType.empty());
        }
      case 'binding':
        {
          return copyWith(binding: OperationDefinitionBinding.empty());
        }
      case 'referencedFrom':
        {
          return copyWith(
              referencedFrom: <OperationDefinitionReferencedFrom>[],);
        }
      case 'part':
        {
          return copyWith(part_: <OperationDefinitionParameter>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  OperationDefinitionParameter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool documentation = false,
    bool type = false,
    bool targetProfile = false,
    bool searchType = false,
    bool binding = false,
    bool referencedFrom = false,
    bool part_ = false,
  }) {
    return OperationDefinitionParameter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      use: use,
      min: min,
      max: max,
      documentation: documentation ? null : this.documentation,
      type: type ? null : this.type,
      targetProfile: targetProfile ? null : this.targetProfile,
      searchType: searchType ? null : this.searchType,
      binding: binding ? null : this.binding,
      referencedFrom: referencedFrom ? null : this.referencedFrom,
      part_: part_ ? null : this.part_,
    );
  }

  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
  @override
  OperationDefinitionParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    OperationParameterUse? use,
    FhirInteger? min,
    FhirString? max,
    FhirString? documentation,
    FHIRAllTypes? type,
    List<FhirCanonical>? targetProfile,
    SearchParamType? searchType,
    OperationDefinitionBinding? binding,
    List<OperationDefinitionReferencedFrom>? referencedFrom,
    List<OperationDefinitionParameter>? part_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return OperationDefinitionParameter(
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
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      targetProfile: targetProfile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetProfile',
                ),
              )
              .toList() ??
          this.targetProfile,
      searchType: searchType?.copyWith(
            objectPath: '$newObjectPath.searchType',
          ) ??
          this.searchType,
      binding: binding?.copyWith(
            objectPath: '$newObjectPath.binding',
          ) ??
          this.binding,
      referencedFrom: referencedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referencedFrom',
                ),
              )
              .toList() ??
          this.referencedFrom,
      part_: part_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.part',
                ),
              )
              .toList() ??
          this.part_,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionParameter) {
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
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(min, o.min)) {
      return false;
    }
    if (!equalsDeepWithNull(max, o.max)) {
      return false;
    }
    if (!equalsDeepWithNull(documentation, o.documentation)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      targetProfile,
      o.targetProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(searchType, o.searchType)) {
      return false;
    }
    if (!equalsDeepWithNull(binding, o.binding)) {
      return false;
    }
    if (!listEquals<OperationDefinitionReferencedFrom>(
      referencedFrom,
      o.referencedFrom,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameter>(
      part_,
      o.part_,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionBinding]
/// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
class OperationDefinitionBinding extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionBinding]

  const OperationDefinitionBinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.strength,
    required this.valueSet,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.parameter.binding',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationDefinitionBinding.empty() => OperationDefinitionBinding(
        strength: BindingStrength.values.first,
        valueSet: FhirCanonical.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter.binding';
    return OperationDefinitionBinding(
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
      strength: JsonParser.parsePrimitive<BindingStrength>(
        json,
        'strength',
        BindingStrength.fromJson,
        '$objectPath.strength',
      )!,
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
        '$objectPath.valueSet',
      )!,
    );
  }

  /// Deserialize [OperationDefinitionBinding]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionBinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionBinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionBinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionBinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionBinding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionBinding';

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [valueSet]
  /// Points to the value set or external definition (e.g. implicit value
  /// set) that identifies the set of codes to be used.
  final FhirCanonical valueSet;
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
    addField('strength', strength);
    addField('valueSet', valueSet);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'strength',
      'valueSet',
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
      case 'strength':
        fields.add(strength);
      case 'valueSet':
        fields.add(valueSet);
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
      case 'strength':
        {
          if (child is BindingStrength) {
            return copyWith(strength: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSet':
        {
          if (child is FhirCanonical) {
            return copyWith(valueSet: child);
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
      case 'strength':
        return ['FhirCode'];
      case 'valueSet':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionBinding]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  OperationDefinitionBinding createProperty(String propertyName) {
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
      case 'strength':
        {
          return copyWith(strength: BindingStrength.empty());
        }
      case 'valueSet':
        {
          return copyWith(valueSet: FhirCanonical.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  OperationDefinitionBinding clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return OperationDefinitionBinding(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      strength: strength,
      valueSet: valueSet,
    );
  }

  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
  @override
  OperationDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    BindingStrength? strength,
    FhirCanonical? valueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return OperationDefinitionBinding(
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
      strength: strength?.copyWith(
            objectPath: '$newObjectPath.strength',
          ) ??
          this.strength,
      valueSet: valueSet?.copyWith(
            objectPath: '$newObjectPath.valueSet',
          ) ??
          this.valueSet,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionBinding) {
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
    if (!equalsDeepWithNull(strength, o.strength)) {
      return false;
    }
    if (!equalsDeepWithNull(valueSet, o.valueSet)) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionReferencedFrom]
/// Identifies other resource parameters within the operation invocation
/// that are expected to resolve to this resource.
class OperationDefinitionReferencedFrom extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionReferencedFrom]

  const OperationDefinitionReferencedFrom({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceId,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.parameter.referencedFrom',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationDefinitionReferencedFrom.empty() =>
      OperationDefinitionReferencedFrom(
        source: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionReferencedFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter.referencedFrom';
    return OperationDefinitionReferencedFrom(
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
      source: JsonParser.parsePrimitive<FhirString>(
        json,
        'source',
        FhirString.fromJson,
        '$objectPath.source',
      )!,
      sourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'sourceId',
        FhirString.fromJson,
        '$objectPath.sourceId',
      ),
    );
  }

  /// Deserialize [OperationDefinitionReferencedFrom]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionReferencedFrom.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionReferencedFrom.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionReferencedFrom.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionReferencedFrom '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionReferencedFrom]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionReferencedFrom.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionReferencedFrom.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionReferencedFrom';

  /// [source]
  /// The name of the parameter or dot-separated path of parameter names
  /// pointing to the resource parameter that is expected to contain a
  /// reference to this resource.
  final FhirString source;

  /// [sourceId]
  /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  final FhirString? sourceId;
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
    addField('source', source);
    addField('sourceId', sourceId);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'source',
      'sourceId',
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
      case 'source':
        fields.add(source);
      case 'sourceId':
        if (sourceId != null) {
          fields.add(sourceId!);
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
      case 'source':
        {
          if (child is FhirString) {
            return copyWith(source: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sourceId':
        {
          if (child is FhirString) {
            return copyWith(sourceId: child);
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
      case 'source':
        return ['FhirString'];
      case 'sourceId':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionReferencedFrom]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  OperationDefinitionReferencedFrom createProperty(String propertyName) {
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
      case 'source':
        {
          return copyWith(source: FhirString.empty());
        }
      case 'sourceId':
        {
          return copyWith(sourceId: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  OperationDefinitionReferencedFrom clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sourceId = false,
  }) {
    return OperationDefinitionReferencedFrom(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      source: source,
      sourceId: sourceId ? null : this.sourceId,
    );
  }

  @override
  OperationDefinitionReferencedFrom clone() => throw UnimplementedError();
  @override
  OperationDefinitionReferencedFrom copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? source,
    FhirString? sourceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return OperationDefinitionReferencedFrom(
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
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      sourceId: sourceId?.copyWith(
            objectPath: '$newObjectPath.sourceId',
          ) ??
          this.sourceId,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionReferencedFrom) {
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
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!equalsDeepWithNull(sourceId, o.sourceId)) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionOverload]
/// Defines an appropriate combination of parameters to use when invoking
/// this operation, to help code generators when generating overloaded
/// parameter sets for this operation.
class OperationDefinitionOverload extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionOverload]

  const OperationDefinitionOverload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterName,
    this.comment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.overload',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory OperationDefinitionOverload.empty() => const OperationDefinitionOverload();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionOverload.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.overload';
    return OperationDefinitionOverload(
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
      parameterName: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'parameterName',
        FhirString.fromJson,
        '$objectPath.parameterName',
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [OperationDefinitionOverload]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionOverload.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionOverload.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionOverload.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionOverload '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionOverload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionOverload.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionOverload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionOverload';

  /// [parameterName]
  /// Name of parameter to include in overload.
  final List<FhirString>? parameterName;

  /// [comment]
  /// Comments to go on overload.
  final FhirString? comment;
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
    addField('parameterName', parameterName);
    addField('comment', comment);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'parameterName',
      'comment',
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
      case 'parameterName':
        if (parameterName != null) {
          fields.addAll(parameterName!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
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
      case 'parameterName':
        if (parameterName != null) {
          return parameterName!;
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
      case 'parameterName':
        {
          if (child is List<FhirString>) {
            return copyWith(parameterName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
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
      case 'parameterName':
        return ['FhirString'];
      case 'comment':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionOverload]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  OperationDefinitionOverload createProperty(String propertyName) {
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
      case 'parameterName':
        {
          return copyWith(parameterName: <FhirString>[]);
        }
      case 'comment':
        {
          return copyWith(comment: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  OperationDefinitionOverload clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool parameterName = false,
    bool comment = false,
  }) {
    return OperationDefinitionOverload(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      parameterName: parameterName ? null : this.parameterName,
      comment: comment ? null : this.comment,
    );
  }

  @override
  OperationDefinitionOverload clone() => throw UnimplementedError();
  @override
  OperationDefinitionOverload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirString>? parameterName,
    FhirString? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return OperationDefinitionOverload(
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
      parameterName: parameterName
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameterName',
                ),
              )
              .toList() ??
          this.parameterName,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionOverload) {
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
    if (!listEquals<FhirString>(
      parameterName,
      o.parameterName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    return true;
  }
}
