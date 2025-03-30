import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        OperationDefinition,
        OperationDefinitionBinding,
        OperationDefinitionOverload,
        OperationDefinitionParameter,
        OperationDefinitionReferencedFrom,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [OperationDefinitionBuilder]
/// A formal computable definition of an operation (on the RESTful
/// interface) or a named query (using the search interaction).
class OperationDefinitionBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [OperationDefinitionBuilder]

  OperationDefinitionBuilder({
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
    this.name,
    this.title,
    super.status,
    this.kind,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.affectsState,
    this.code,
    this.comment,
    this.base,
    this.resource,
    this.system,
    this.type,
    this.instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  }) : super(
          objectPath: 'OperationDefinition',
          resourceType: R4ResourceType.OperationDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory OperationDefinitionBuilder.empty() => OperationDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition';
    return OperationDefinitionBuilder(
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
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      kind: JsonParser.parsePrimitive<OperationKindBuilder>(
        json,
        'kind',
        OperationKindBuilder.fromJson,
        '$objectPath.kind',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      affectsState: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'affectsState',
        FhirBooleanBuilder.fromJson,
        '$objectPath.affectsState',
      ),
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
      base: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'base',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.base',
      ),
      resource: JsonParser.parsePrimitiveList<FhirCodeBuilder>(
        json,
        'resource',
        FhirCodeBuilder.fromJson,
        '$objectPath.resource',
      ),
      system: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'system',
        FhirBooleanBuilder.fromJson,
        '$objectPath.system',
      ),
      type: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'type',
        FhirBooleanBuilder.fromJson,
        '$objectPath.type',
      ),
      instance: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'instance',
        FhirBooleanBuilder.fromJson,
        '$objectPath.instance',
      ),
      inputProfile: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'inputProfile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.inputProfile',
      ),
      outputProfile: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'outputProfile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.outputProfile',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<OperationDefinitionParameterBuilder>(
            (v) => OperationDefinitionParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      overload: (json['overload'] as List<dynamic>?)
          ?.map<OperationDefinitionOverloadBuilder>(
            (v) => OperationDefinitionOverloadBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.overload',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionBuilder.fromJson(json);
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
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the operation definition.
  FhirStringBuilder? title;

  /// [kind]
  /// Whether this is an operation or a named query.
  OperationKindBuilder? kind;

  /// [purpose]
  /// Explanation of why this operation definition is needed and why it has
  /// been designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [affectsState]
  /// Whether the operation affects state. Side effects such as producing
  /// audit trail entries do not count as 'affecting state'.
  FhirBooleanBuilder? affectsState;

  /// [code]
  /// The name used to invoke the operation.
  FhirCodeBuilder? code;

  /// [comment]
  /// Additional information about how to use this operation or named query.
  FhirMarkdownBuilder? comment;

  /// [base]
  /// Indicates that this operation definition is a constraining profile on
  /// the base.
  FhirCanonicalBuilder? base;

  /// [resource]
  /// The types on which this operation can be executed.
  List<FhirCodeBuilder>? resource;

  /// [system]
  /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  FhirBooleanBuilder? system;

  /// [type]
  /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without
  /// needing to choose a specific resource id for the context).
  FhirBooleanBuilder? type;

  /// [instance]
  /// Indicates whether this operation can be invoked on a particular
  /// instance of one of the given types.
  FhirBooleanBuilder? instance;

  /// [inputProfile]
  /// Additional validation information for the in parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource as a whole.
  FhirCanonicalBuilder? inputProfile;

  /// [outputProfile]
  /// Additional validation information for the out parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource.
  FhirCanonicalBuilder? outputProfile;

  /// [parameter]
  /// The parameters for the operation/query.
  List<OperationDefinitionParameterBuilder>? parameter;

  /// [overload]
  /// Defines an appropriate combination of parameters to use when invoking
  /// this operation, to help code generators when generating overloaded
  /// parameter sets for this operation.
  List<OperationDefinitionOverloadBuilder>? overload;

  /// converts a [OperationDefinitionBuilder]
  /// to [OperationDefinition]
  @override
  OperationDefinition build() => OperationDefinition.fromJson(toJson());

  /// converts a [OperationDefinitionBuilder]
  /// to [Map<String, dynamic>]
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
      case 'url':
        if (url != null) {
          fields.add(url!);
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
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
      case 'affectsState':
        if (affectsState != null) {
          fields.add(affectsState!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
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
        if (system != null) {
          fields.add(system!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'instance':
        if (instance != null) {
          fields.add(instance!);
        }
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
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'kind':
        {
          if (child is OperationKindBuilder) {
            kind = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [...(useContext ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [...(jurisdiction ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'affectsState':
        {
          if (child is FhirBooleanBuilder) {
            affectsState = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'base':
        {
          if (child is FhirCanonicalBuilder) {
            base = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is List<FhirCodeBuilder>) {
            // Replace or create new list
            resource = child;
            return;
          } else if (child is FhirCodeBuilder) {
            // Add single element to existing list or create new list
            resource = [...(resource ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'system':
        {
          if (child is FhirBooleanBuilder) {
            system = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FhirBooleanBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instance':
        {
          if (child is FhirBooleanBuilder) {
            instance = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'inputProfile':
        {
          if (child is FhirCanonicalBuilder) {
            inputProfile = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outputProfile':
        {
          if (child is FhirCanonicalBuilder) {
            outputProfile = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parameter':
        {
          if (child is List<OperationDefinitionParameterBuilder>) {
            // Replace or create new list
            parameter = child;
            return;
          } else if (child is OperationDefinitionParameterBuilder) {
            // Add single element to existing list or create new list
            parameter = [...(parameter ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'overload':
        {
          if (child is List<OperationDefinitionOverloadBuilder>) {
            // Replace or create new list
            overload = child;
            return;
          } else if (child is OperationDefinitionOverloadBuilder) {
            // Add single element to existing list or create new list
            overload = [...(overload ?? []), child];
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
      case 'url':
        return ['FhirUriBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'kind':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'affectsState':
        return ['FhirBooleanBuilder'];
      case 'code':
        return ['FhirCodeBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      case 'base':
        return ['FhirCanonicalBuilder'];
      case 'resource':
        return ['FhirCodeBuilder'];
      case 'system':
        return ['FhirBooleanBuilder'];
      case 'type':
        return ['FhirBooleanBuilder'];
      case 'instance':
        return ['FhirBooleanBuilder'];
      case 'inputProfile':
        return ['FhirCanonicalBuilder'];
      case 'outputProfile':
        return ['FhirCanonicalBuilder'];
      case 'parameter':
        return ['OperationDefinitionParameterBuilder'];
      case 'overload':
        return ['OperationDefinitionOverloadBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionBuilder]
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
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'kind':
        {
          kind = OperationKindBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'affectsState':
        {
          affectsState = FhirBooleanBuilder.empty();
          return;
        }
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
          return;
        }
      case 'base':
        {
          base = FhirCanonicalBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = <FhirCodeBuilder>[];
          return;
        }
      case 'system':
        {
          system = FhirBooleanBuilder.empty();
          return;
        }
      case 'type':
        {
          type = FhirBooleanBuilder.empty();
          return;
        }
      case 'instance':
        {
          instance = FhirBooleanBuilder.empty();
          return;
        }
      case 'inputProfile':
        {
          inputProfile = FhirCanonicalBuilder.empty();
          return;
        }
      case 'outputProfile':
        {
          outputProfile = FhirCanonicalBuilder.empty();
          return;
        }
      case 'parameter':
        {
          parameter = <OperationDefinitionParameterBuilder>[];
          return;
        }
      case 'overload':
        {
          overload = <OperationDefinitionOverloadBuilder>[];
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
    bool url = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool status = false,
    bool kind = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool affectsState = false,
    bool code = false,
    bool comment = false,
    bool base = false,
    bool resource = false,
    bool system = false,
    bool type = false,
    bool instance = false,
    bool inputProfile = false,
    bool outputProfile = false,
    bool parameter = false,
    bool overload = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (version) this.version = null;
    if (name) this.name = null;
    if (title) this.title = null;
    if (status) this.status = null;
    if (kind) this.kind = null;
    if (experimental) this.experimental = null;
    if (date) this.date = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (description) this.description = null;
    if (useContext) this.useContext = null;
    if (jurisdiction) this.jurisdiction = null;
    if (purpose) this.purpose = null;
    if (affectsState) this.affectsState = null;
    if (code) this.code = null;
    if (comment) this.comment = null;
    if (base) this.base = null;
    if (resource) this.resource = null;
    if (system) this.system = null;
    if (type) this.type = null;
    if (instance) this.instance = null;
    if (inputProfile) this.inputProfile = null;
    if (outputProfile) this.outputProfile = null;
    if (parameter) this.parameter = null;
    if (overload) this.overload = null;
  }

  @override
  OperationDefinitionBuilder clone() => throw UnimplementedError();
  @override
  OperationDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    PublicationStatusBuilder? status,
    OperationKindBuilder? kind,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirBooleanBuilder? affectsState,
    FhirCodeBuilder? code,
    FhirMarkdownBuilder? comment,
    FhirCanonicalBuilder? base,
    List<FhirCodeBuilder>? resource,
    FhirBooleanBuilder? system,
    FhirBooleanBuilder? type,
    FhirBooleanBuilder? instance,
    FhirCanonicalBuilder? inputProfile,
    FhirCanonicalBuilder? outputProfile,
    List<OperationDefinitionParameterBuilder>? parameter,
    List<OperationDefinitionOverloadBuilder>? overload,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = OperationDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      kind: kind ?? this.kind,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      affectsState: affectsState ?? this.affectsState,
      code: code ?? this.code,
      comment: comment ?? this.comment,
      base: base ?? this.base,
      resource: resource ?? this.resource,
      system: system ?? this.system,
      type: type ?? this.type,
      instance: instance ?? this.instance,
      inputProfile: inputProfile ?? this.inputProfile,
      outputProfile: outputProfile ?? this.outputProfile,
      parameter: parameter ?? this.parameter,
      overload: overload ?? this.overload,
    )..objectPath = newObjectPath;
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
    if (o is! OperationDefinitionBuilder) {
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
      url,
      o.url,
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      kind,
      o.kind,
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
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
      affectsState,
      o.affectsState,
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
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    if (!listEquals<FhirCodeBuilder>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inputProfile,
      o.inputProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outputProfile,
      o.outputProfile,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameterBuilder>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionOverloadBuilder>(
      overload,
      o.overload,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionParameterBuilder]
/// The parameters for the operation/query.
class OperationDefinitionParameterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [OperationDefinitionParameterBuilder]

  OperationDefinitionParameterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.use,
    this.min,
    this.max,
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
  /// For Builder classes, no fields are required
  factory OperationDefinitionParameterBuilder.empty() =>
      OperationDefinitionParameterBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionParameterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter';
    return OperationDefinitionParameterBuilder(
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
      name: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'name',
        FhirCodeBuilder.fromJson,
        '$objectPath.name',
      ),
      use: JsonParser.parsePrimitive<OperationParameterUseBuilder>(
        json,
        'use',
        OperationParameterUseBuilder.fromJson,
        '$objectPath.use',
      ),
      min: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'min',
        FhirIntegerBuilder.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'max',
        FhirStringBuilder.fromJson,
        '$objectPath.max',
      ),
      documentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentation',
        FhirStringBuilder.fromJson,
        '$objectPath.documentation',
      ),
      type: JsonParser.parsePrimitive<FHIRAllTypesBuilder>(
        json,
        'type',
        FHIRAllTypesBuilder.fromJson,
        '$objectPath.type',
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'targetProfile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.targetProfile',
      ),
      searchType: JsonParser.parsePrimitive<SearchParamTypeBuilder>(
        json,
        'searchType',
        SearchParamTypeBuilder.fromJson,
        '$objectPath.searchType',
      ),
      binding: JsonParser.parseObject<OperationDefinitionBindingBuilder>(
        json,
        'binding',
        OperationDefinitionBindingBuilder.fromJson,
        '$objectPath.binding',
      ),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)
          ?.map<OperationDefinitionReferencedFromBuilder>(
            (v) => OperationDefinitionReferencedFromBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referencedFrom',
              },
            ),
          )
          .toList(),
      part_: (json['part'] as List<dynamic>?)
          ?.map<OperationDefinitionParameterBuilder>(
            (v) => OperationDefinitionParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.part',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinitionParameterBuilder]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionParameterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionParameterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionParameterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionParameterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionParameterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionParameterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionParameterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionParameter';

  /// [name]
  /// The name of used to identify the parameter.
  FhirCodeBuilder? name;

  /// [use]
  /// Whether this is an input or an output parameter.
  OperationParameterUseBuilder? use;

  /// [min]
  /// The minimum number of times this parameter SHALL appear in the request
  /// or response.
  FhirIntegerBuilder? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  FhirStringBuilder? max;

  /// [documentation]
  /// Describes the meaning or use of this parameter.
  FhirStringBuilder? documentation;

  /// [type]
  /// The type for this parameter.
  FHIRAllTypesBuilder? type;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this parameter refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  List<FhirCanonicalBuilder>? targetProfile;

  /// [searchType]
  /// How the parameter is understood as a search parameter. This is only
  /// used if the parameter type is 'string'.
  SearchParamTypeBuilder? searchType;

  /// [binding]
  /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  OperationDefinitionBindingBuilder? binding;

  /// [referencedFrom]
  /// Identifies other resource parameters within the operation invocation
  /// that are expected to resolve to this resource.
  List<OperationDefinitionReferencedFromBuilder>? referencedFrom;

  /// [part_]
  /// The parts of a nested Parameter.
  List<OperationDefinitionParameterBuilder>? part_;

  /// converts a [OperationDefinitionParameterBuilder]
  /// to [OperationDefinitionParameter]
  @override
  OperationDefinitionParameter build() =>
      OperationDefinitionParameter.fromJson(toJson());

  /// converts a [OperationDefinitionParameterBuilder]
  /// to [Map<String, dynamic>]
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
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
        }
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
          if (child is FhirCodeBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is OperationParameterUseBuilder) {
            use = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'min':
        {
          if (child is FhirIntegerBuilder) {
            min = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'max':
        {
          if (child is FhirStringBuilder) {
            max = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirStringBuilder) {
            documentation = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FHIRAllTypesBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetProfile':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            targetProfile = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            targetProfile = [...(targetProfile ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'searchType':
        {
          if (child is SearchParamTypeBuilder) {
            searchType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'binding':
        {
          if (child is OperationDefinitionBindingBuilder) {
            binding = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referencedFrom':
        {
          if (child is List<OperationDefinitionReferencedFromBuilder>) {
            // Replace or create new list
            referencedFrom = child;
            return;
          } else if (child is OperationDefinitionReferencedFromBuilder) {
            // Add single element to existing list or create new list
            referencedFrom = [...(referencedFrom ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'part':
        {
          if (child is List<OperationDefinitionParameterBuilder>) {
            // Replace or create new list
            part_ = child;
            return;
          } else if (child is OperationDefinitionParameterBuilder) {
            // Add single element to existing list or create new list
            part_ = [...(part_ ?? []), child];
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
        return ['FhirCodeBuilder'];
      case 'use':
        return ['FhirCodeEnumBuilder'];
      case 'min':
        return ['FhirIntegerBuilder'];
      case 'max':
        return ['FhirStringBuilder'];
      case 'documentation':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'targetProfile':
        return ['FhirCanonicalBuilder'];
      case 'searchType':
        return ['FhirCodeEnumBuilder'];
      case 'binding':
        return ['OperationDefinitionBindingBuilder'];
      case 'referencedFrom':
        return ['OperationDefinitionReferencedFromBuilder'];
      case 'part':
        return ['OperationDefinitionParameterBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionParameterBuilder]
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
          name = FhirCodeBuilder.empty();
          return;
        }
      case 'use':
        {
          use = OperationParameterUseBuilder.empty();
          return;
        }
      case 'min':
        {
          min = FhirIntegerBuilder.empty();
          return;
        }
      case 'max':
        {
          max = FhirStringBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = FHIRAllTypesBuilder.empty();
          return;
        }
      case 'targetProfile':
        {
          targetProfile = <FhirCanonicalBuilder>[];
          return;
        }
      case 'searchType':
        {
          searchType = SearchParamTypeBuilder.empty();
          return;
        }
      case 'binding':
        {
          binding = OperationDefinitionBindingBuilder.empty();
          return;
        }
      case 'referencedFrom':
        {
          referencedFrom = <OperationDefinitionReferencedFromBuilder>[];
          return;
        }
      case 'part':
        {
          part_ = <OperationDefinitionParameterBuilder>[];
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
    bool use = false,
    bool min = false,
    bool max = false,
    bool documentation = false,
    bool type = false,
    bool targetProfile = false,
    bool searchType = false,
    bool binding = false,
    bool referencedFrom = false,
    bool part_ = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (use) this.use = null;
    if (min) this.min = null;
    if (max) this.max = null;
    if (documentation) this.documentation = null;
    if (type) this.type = null;
    if (targetProfile) this.targetProfile = null;
    if (searchType) this.searchType = null;
    if (binding) this.binding = null;
    if (referencedFrom) this.referencedFrom = null;
    if (part_) this.part_ = null;
  }

  @override
  OperationDefinitionParameterBuilder clone() => throw UnimplementedError();
  @override
  OperationDefinitionParameterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? name,
    OperationParameterUseBuilder? use,
    FhirIntegerBuilder? min,
    FhirStringBuilder? max,
    FhirStringBuilder? documentation,
    FHIRAllTypesBuilder? type,
    List<FhirCanonicalBuilder>? targetProfile,
    SearchParamTypeBuilder? searchType,
    OperationDefinitionBindingBuilder? binding,
    List<OperationDefinitionReferencedFromBuilder>? referencedFrom,
    List<OperationDefinitionParameterBuilder>? part_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = OperationDefinitionParameterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      use: use ?? this.use,
      min: min ?? this.min,
      max: max ?? this.max,
      documentation: documentation ?? this.documentation,
      type: type ?? this.type,
      targetProfile: targetProfile ?? this.targetProfile,
      searchType: searchType ?? this.searchType,
      binding: binding ?? this.binding,
      referencedFrom: referencedFrom ?? this.referencedFrom,
      part_: part_ ?? this.part_,
    )..objectPath = newObjectPath;
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
    if (o is! OperationDefinitionParameterBuilder) {
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
      use,
      o.use,
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
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      targetProfile,
      o.targetProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      searchType,
      o.searchType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      binding,
      o.binding,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionReferencedFromBuilder>(
      referencedFrom,
      o.referencedFrom,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameterBuilder>(
      part_,
      o.part_,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionBindingBuilder]
/// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
class OperationDefinitionBindingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [OperationDefinitionBindingBuilder]

  OperationDefinitionBindingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.strength,
    this.valueSet,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.parameter.binding',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory OperationDefinitionBindingBuilder.empty() =>
      OperationDefinitionBindingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBindingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter.binding';
    return OperationDefinitionBindingBuilder(
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
      strength: JsonParser.parsePrimitive<BindingStrengthBuilder>(
        json,
        'strength',
        BindingStrengthBuilder.fromJson,
        '$objectPath.strength',
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'valueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.valueSet',
      ),
    );
  }

  /// Deserialize [OperationDefinitionBindingBuilder]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionBindingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionBindingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionBindingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionBindingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionBindingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionBindingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionBindingBuilder.fromJson(json);
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
  BindingStrengthBuilder? strength;

  /// [valueSet]
  /// Points to the value set or external definition (e.g. implicit value
  /// set) that identifies the set of codes to be used.
  FhirCanonicalBuilder? valueSet;

  /// converts a [OperationDefinitionBindingBuilder]
  /// to [OperationDefinitionBinding]
  @override
  OperationDefinitionBinding build() =>
      OperationDefinitionBinding.fromJson(toJson());

  /// converts a [OperationDefinitionBindingBuilder]
  /// to [Map<String, dynamic>]
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
      case 'strength':
        if (strength != null) {
          fields.add(strength!);
        }
      case 'valueSet':
        if (valueSet != null) {
          fields.add(valueSet!);
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
      case 'strength':
        {
          if (child is BindingStrengthBuilder) {
            strength = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSet':
        {
          if (child is FhirCanonicalBuilder) {
            valueSet = child;
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
      case 'strength':
        return ['FhirCodeEnumBuilder'];
      case 'valueSet':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionBindingBuilder]
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
      case 'strength':
        {
          strength = BindingStrengthBuilder.empty();
          return;
        }
      case 'valueSet':
        {
          valueSet = FhirCanonicalBuilder.empty();
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
    bool strength = false,
    bool valueSet = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (strength) this.strength = null;
    if (valueSet) this.valueSet = null;
  }

  @override
  OperationDefinitionBindingBuilder clone() => throw UnimplementedError();
  @override
  OperationDefinitionBindingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    BindingStrengthBuilder? strength,
    FhirCanonicalBuilder? valueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = OperationDefinitionBindingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
      valueSet: valueSet ?? this.valueSet,
    )..objectPath = newObjectPath;
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
    if (o is! OperationDefinitionBindingBuilder) {
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
      strength,
      o.strength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionReferencedFromBuilder]
/// Identifies other resource parameters within the operation invocation
/// that are expected to resolve to this resource.
class OperationDefinitionReferencedFromBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [OperationDefinitionReferencedFromBuilder]

  OperationDefinitionReferencedFromBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceId,
    super.disallowExtensions,
  }) : super(
          objectPath: 'OperationDefinition.parameter.referencedFrom',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory OperationDefinitionReferencedFromBuilder.empty() =>
      OperationDefinitionReferencedFromBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionReferencedFromBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.parameter.referencedFrom';
    return OperationDefinitionReferencedFromBuilder(
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
      source: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'source',
        FhirStringBuilder.fromJson,
        '$objectPath.source',
      ),
      sourceId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sourceId',
        FhirStringBuilder.fromJson,
        '$objectPath.sourceId',
      ),
    );
  }

  /// Deserialize [OperationDefinitionReferencedFromBuilder]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionReferencedFromBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionReferencedFromBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionReferencedFromBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionReferencedFromBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionReferencedFromBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionReferencedFromBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionReferencedFromBuilder.fromJson(json);
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
  FhirStringBuilder? source;

  /// [sourceId]
  /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  FhirStringBuilder? sourceId;

  /// converts a [OperationDefinitionReferencedFromBuilder]
  /// to [OperationDefinitionReferencedFrom]
  @override
  OperationDefinitionReferencedFrom build() =>
      OperationDefinitionReferencedFrom.fromJson(toJson());

  /// converts a [OperationDefinitionReferencedFromBuilder]
  /// to [Map<String, dynamic>]
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
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
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
      case 'source':
        {
          if (child is FhirStringBuilder) {
            source = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceId':
        {
          if (child is FhirStringBuilder) {
            sourceId = child;
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
      case 'source':
        return ['FhirStringBuilder'];
      case 'sourceId':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionReferencedFromBuilder]
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
      case 'source':
        {
          source = FhirStringBuilder.empty();
          return;
        }
      case 'sourceId':
        {
          sourceId = FhirStringBuilder.empty();
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
    bool source = false,
    bool sourceId = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (source) this.source = null;
    if (sourceId) this.sourceId = null;
  }

  @override
  OperationDefinitionReferencedFromBuilder clone() =>
      throw UnimplementedError();
  @override
  OperationDefinitionReferencedFromBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? source,
    FhirStringBuilder? sourceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = OperationDefinitionReferencedFromBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceId: sourceId ?? this.sourceId,
    )..objectPath = newObjectPath;
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
    if (o is! OperationDefinitionReferencedFromBuilder) {
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceId,
      o.sourceId,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionOverloadBuilder]
/// Defines an appropriate combination of parameters to use when invoking
/// this operation, to help code generators when generating overloaded
/// parameter sets for this operation.
class OperationDefinitionOverloadBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [OperationDefinitionOverloadBuilder]

  OperationDefinitionOverloadBuilder({
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
  /// For Builder classes, no fields are required
  factory OperationDefinitionOverloadBuilder.empty() =>
      OperationDefinitionOverloadBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionOverloadBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'OperationDefinition.overload';
    return OperationDefinitionOverloadBuilder(
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
      parameterName: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'parameterName',
        FhirStringBuilder.fromJson,
        '$objectPath.parameterName',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [OperationDefinitionOverloadBuilder]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionOverloadBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionOverloadBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionOverloadBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionOverloadBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionOverloadBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionOverloadBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionOverloadBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionOverload';

  /// [parameterName]
  /// Name of parameter to include in overload.
  List<FhirStringBuilder>? parameterName;

  /// [comment]
  /// Comments to go on overload.
  FhirStringBuilder? comment;

  /// converts a [OperationDefinitionOverloadBuilder]
  /// to [OperationDefinitionOverload]
  @override
  OperationDefinitionOverload build() =>
      OperationDefinitionOverload.fromJson(toJson());

  /// converts a [OperationDefinitionOverloadBuilder]
  /// to [Map<String, dynamic>]
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
      case 'parameterName':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            parameterName = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            parameterName = [...(parameterName ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
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
      case 'parameterName':
        return ['FhirStringBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [OperationDefinitionOverloadBuilder]
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
      case 'parameterName':
        {
          parameterName = <FhirStringBuilder>[];
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
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
    bool parameterName = false,
    bool comment = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (parameterName) this.parameterName = null;
    if (comment) this.comment = null;
  }

  @override
  OperationDefinitionOverloadBuilder clone() => throw UnimplementedError();
  @override
  OperationDefinitionOverloadBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirStringBuilder>? parameterName,
    FhirStringBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = OperationDefinitionOverloadBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameterName: parameterName ?? this.parameterName,
      comment: comment ?? this.comment,
    )..objectPath = newObjectPath;
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
    if (o is! OperationDefinitionOverloadBuilder) {
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
    if (!listEquals<FhirStringBuilder>(
      parameterName,
      o.parameterName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}
