import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        ConceptMap,
        ConceptMapGroup,
        ConceptMapElement,
        ConceptMapTarget,
        ConceptMapDependsOn,
        ConceptMapUnmapped;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ConceptMapBuilder]
/// A statement of relationships from one set of concepts to one or more
/// other concepts - either concepts in code systems, or data element/data
/// element concepts, or classes in class models.
class ConceptMapBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [ConceptMapBuilder]

  ConceptMapBuilder({
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
    super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.sourceX,
    this.targetX,
    this.group,
  }) : super(
          objectPath: 'ConceptMap',
          resourceType: R4ResourceType.ConceptMap,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapBuilder.empty() => ConceptMapBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap';
    return ConceptMapBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
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
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      sourceX: JsonParser.parsePolymorphic<SourceXConceptMapBuilder>(
        json,
        {
          'sourceUri': FhirUriBuilder.fromJson,
          'sourceCanonical': FhirCanonicalBuilder.fromJson,
        },
        objectPath,
      ),
      targetX: JsonParser.parsePolymorphic<TargetXConceptMapBuilder>(
        json,
        {
          'targetUri': FhirUriBuilder.fromJson,
          'targetCanonical': FhirCanonicalBuilder.fromJson,
        },
        objectPath,
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<ConceptMapGroupBuilder>(
            (v) => ConceptMapGroupBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMapBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMap';

  /// [identifier]
  /// A formal identifier that is used to identify this concept map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  IdentifierBuilder? identifier;

  /// [name]
  /// A natural language name identifying the concept map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the concept map.
  FhirStringBuilder? title;

  /// [purpose]
  /// Explanation of why this concept map is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  FhirMarkdownBuilder? copyright;

  /// [sourceX]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  SourceXConceptMapBuilder? sourceX;

  /// Getter for [sourceUri] as a FhirUriBuilder
  FhirUriBuilder? get sourceUri => sourceX?.isAs<FhirUriBuilder>();

  /// Getter for [sourceCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get sourceCanonical =>
      sourceX?.isAs<FhirCanonicalBuilder>();

  /// [targetX]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  TargetXConceptMapBuilder? targetX;

  /// Getter for [targetUri] as a FhirUriBuilder
  FhirUriBuilder? get targetUri => targetX?.isAs<FhirUriBuilder>();

  /// Getter for [targetCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get targetCanonical =>
      targetX?.isAs<FhirCanonicalBuilder>();

  /// [group]
  /// A group of mappings that all have the same source and target system.
  List<ConceptMapGroupBuilder>? group;

  /// Converts a ConceptMapBuilder to [ConceptMap]
  ConceptMap build() => ConceptMap.fromJson(toJson());

  /// Converts a [ConceptMapBuilder] to a [Map<String, dynamic>]
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
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField('source${fhirType.capitalize()}', sourceX);
    }

    if (targetX != null) {
      final fhirType = targetX!.fhirType;
      addField('target${fhirType.capitalize()}', targetX);
    }

    addField('group', group);
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
      'sourceX',
      'targetX',
      'group',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
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
      case 'source':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceX':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceUri':
        if (sourceX is FhirUriBuilder) {
          fields.add(sourceX!);
        }
      case 'sourceCanonical':
        if (sourceX is FhirCanonicalBuilder) {
          fields.add(sourceX!);
        }
      case 'target':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetX':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetUri':
        if (targetX is FhirUriBuilder) {
          fields.add(targetX!);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonicalBuilder) {
          fields.add(targetX!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
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
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceX':
        {
          if (child is SourceXConceptMapBuilder) {
            sourceX = child;
            return;
          } else {
            if (child is FhirUriBuilder) {
              sourceX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              sourceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceUri':
        {
          if (child is FhirUriBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetX':
        {
          if (child is TargetXConceptMapBuilder) {
            targetX = child;
            return;
          } else {
            if (child is FhirUriBuilder) {
              targetX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              targetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetUri':
        {
          if (child is FhirUriBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'group':
        {
          if (child is List<ConceptMapGroupBuilder>) {
            // Replace or create new list
            group = child;
            return;
          } else if (child is ConceptMapGroupBuilder) {
            // Add single element to existing list or create new list
            group = [...(group ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'status':
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
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'source':
      case 'sourceX':
        return ['FhirUriBuilder', 'FhirCanonicalBuilder'];
      case 'sourceUri':
        return ['FhirUriBuilder'];
      case 'sourceCanonical':
        return ['FhirCanonicalBuilder'];
      case 'target':
      case 'targetX':
        return ['FhirUriBuilder', 'FhirCanonicalBuilder'];
      case 'targetUri':
        return ['FhirUriBuilder'];
      case 'targetCanonical':
        return ['FhirCanonicalBuilder'];
      case 'group':
        return ['ConceptMapGroupBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapBuilder]
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
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
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
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'source':
      case 'sourceX':
      case 'sourceUri':
        {
          sourceX = FhirUriBuilder.empty();
          return;
        }
      case 'sourceCanonical':
        {
          sourceX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'target':
      case 'targetX':
      case 'targetUri':
        {
          targetX = FhirUriBuilder.empty();
          return;
        }
      case 'targetCanonical':
        {
          targetX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'group':
        {
          group = <ConceptMapGroupBuilder>[];
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
    bool identifier = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool status = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool source = false,
    bool target = false,
    bool group = false,
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
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (name) this.name = null;
    if (title) this.title = null;
    if (status) this.status = null;
    if (experimental) this.experimental = null;
    if (date) this.date = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (description) this.description = null;
    if (useContext) this.useContext = null;
    if (jurisdiction) this.jurisdiction = null;
    if (purpose) this.purpose = null;
    if (copyright) this.copyright = null;
    if (source) this.sourceX = null;
    if (target) this.targetX = null;
    if (group) this.group = null;
  }

  @override
  ConceptMapBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    IdentifierBuilder? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    SourceXConceptMapBuilder? sourceX,
    TargetXConceptMapBuilder? targetX,
    List<ConceptMapGroupBuilder>? group,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ConceptMapBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      sourceX: sourceX ?? this.sourceX,
      targetX: targetX ?? this.targetX,
      group: group ?? this.group,
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
    if (o is! ConceptMapBuilder) {
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
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceX,
      o.sourceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetX,
      o.targetX,
    )) {
      return false;
    }
    if (!listEquals<ConceptMapGroupBuilder>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConceptMapGroupBuilder]
/// A group of mappings that all have the same source and target system.
class ConceptMapGroupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConceptMapGroupBuilder]

  ConceptMapGroupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceVersion,
    this.target,
    this.targetVersion,
    this.element,
    this.unmapped,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ConceptMap.group',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapGroupBuilder.empty() => ConceptMapGroupBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap.group';
    return ConceptMapGroupBuilder(
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
      source: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'source',
        FhirUriBuilder.fromJson,
        '$objectPath.source',
      ),
      sourceVersion: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sourceVersion',
        FhirStringBuilder.fromJson,
        '$objectPath.sourceVersion',
      ),
      target: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'target',
        FhirUriBuilder.fromJson,
        '$objectPath.target',
      ),
      targetVersion: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'targetVersion',
        FhirStringBuilder.fromJson,
        '$objectPath.targetVersion',
      ),
      element: (json['element'] as List<dynamic>?)
          ?.map<ConceptMapElementBuilder>(
            (v) => ConceptMapElementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.element',
              },
            ),
          )
          .toList(),
      unmapped: JsonParser.parseObject<ConceptMapUnmappedBuilder>(
        json,
        'unmapped',
        ConceptMapUnmappedBuilder.fromJson,
        '$objectPath.unmapped',
      ),
    );
  }

  /// Deserialize [ConceptMapGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapGroupBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapGroup';

  /// [source]
  /// An absolute URI that identifies the source system where the concepts to
  /// be mapped are defined.
  FhirUriBuilder? source;

  /// [sourceVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  FhirStringBuilder? sourceVersion;

  /// [target]
  /// An absolute URI that identifies the target system that the concepts
  /// will be mapped to.
  FhirUriBuilder? target;

  /// [targetVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  FhirStringBuilder? targetVersion;

  /// [element]
  /// Mappings for an individual concept in the source to one or more
  /// concepts in the target.
  List<ConceptMapElementBuilder>? element;

  /// [unmapped]
  /// What to do when there is no mapping for the source concept. "Unmapped"
  /// does not include codes that are unmatched, and the unmapped element is
  /// ignored in a code is specified to have equivalence = unmatched.
  ConceptMapUnmappedBuilder? unmapped;

  /// Converts a ConceptMapGroupBuilder to [ConceptMapGroup]
  ConceptMapGroup build() => ConceptMapGroup.fromJson(toJson());

  /// Converts a [ConceptMapGroupBuilder] to a [Map<String, dynamic>]
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
    addField('sourceVersion', sourceVersion);
    addField('target', target);
    addField('targetVersion', targetVersion);
    addField('element', element);
    addField('unmapped', unmapped);
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
      'sourceVersion',
      'target',
      'targetVersion',
      'element',
      'unmapped',
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
      case 'sourceVersion':
        if (sourceVersion != null) {
          fields.add(sourceVersion!);
        }
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'targetVersion':
        if (targetVersion != null) {
          fields.add(targetVersion!);
        }
      case 'element':
        if (element != null) {
          fields.addAll(element!);
        }
      case 'unmapped':
        if (unmapped != null) {
          fields.add(unmapped!);
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
          if (child is FhirUriBuilder) {
            source = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceVersion':
        {
          if (child is FhirStringBuilder) {
            sourceVersion = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is FhirUriBuilder) {
            target = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetVersion':
        {
          if (child is FhirStringBuilder) {
            targetVersion = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'element':
        {
          if (child is List<ConceptMapElementBuilder>) {
            // Replace or create new list
            element = child;
            return;
          } else if (child is ConceptMapElementBuilder) {
            // Add single element to existing list or create new list
            element = [...(element ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unmapped':
        {
          if (child is ConceptMapUnmappedBuilder) {
            unmapped = child;
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
        return ['FhirUriBuilder'];
      case 'sourceVersion':
        return ['FhirStringBuilder'];
      case 'target':
        return ['FhirUriBuilder'];
      case 'targetVersion':
        return ['FhirStringBuilder'];
      case 'element':
        return ['ConceptMapElementBuilder'];
      case 'unmapped':
        return ['ConceptMapUnmappedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapGroupBuilder]
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
          source = FhirUriBuilder.empty();
          return;
        }
      case 'sourceVersion':
        {
          sourceVersion = FhirStringBuilder.empty();
          return;
        }
      case 'target':
        {
          target = FhirUriBuilder.empty();
          return;
        }
      case 'targetVersion':
        {
          targetVersion = FhirStringBuilder.empty();
          return;
        }
      case 'element':
        {
          element = <ConceptMapElementBuilder>[];
          return;
        }
      case 'unmapped':
        {
          unmapped = ConceptMapUnmappedBuilder.empty();
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
    bool sourceVersion = false,
    bool target = false,
    bool targetVersion = false,
    bool element = false,
    bool unmapped = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (source) this.source = null;
    if (sourceVersion) this.sourceVersion = null;
    if (target) this.target = null;
    if (targetVersion) this.targetVersion = null;
    if (element) this.element = null;
    if (unmapped) this.unmapped = null;
  }

  @override
  ConceptMapGroupBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapGroupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? source,
    FhirStringBuilder? sourceVersion,
    FhirUriBuilder? target,
    FhirStringBuilder? targetVersion,
    List<ConceptMapElementBuilder>? element,
    ConceptMapUnmappedBuilder? unmapped,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConceptMapGroupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      target: target ?? this.target,
      targetVersion: targetVersion ?? this.targetVersion,
      element: element ?? this.element,
      unmapped: unmapped ?? this.unmapped,
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
    if (o is! ConceptMapGroupBuilder) {
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
      sourceVersion,
      o.sourceVersion,
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
      targetVersion,
      o.targetVersion,
    )) {
      return false;
    }
    if (!listEquals<ConceptMapElementBuilder>(
      element,
      o.element,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unmapped,
      o.unmapped,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConceptMapElementBuilder]
/// Mappings for an individual concept in the source to one or more
/// concepts in the target.
class ConceptMapElementBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConceptMapElementBuilder]

  ConceptMapElementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    this.target,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ConceptMap.group.element',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapElementBuilder.empty() => ConceptMapElementBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapElementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap.group.element';
    return ConceptMapElementBuilder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      target: (json['target'] as List<dynamic>?)
          ?.map<ConceptMapTargetBuilder>(
            (v) => ConceptMapTargetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMapElementBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapElementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapElementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapElementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapElementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapElementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapElementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapElement';

  /// [code]
  /// Identity (code or path) or the element/item being mapped.
  FhirCodeBuilder? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  FhirStringBuilder? display;

  /// [target]
  /// A concept from the target value set that this concept maps to.
  List<ConceptMapTargetBuilder>? target;

  /// Converts a ConceptMapElementBuilder to [ConceptMapElement]
  ConceptMapElement build() => ConceptMapElement.fromJson(toJson());

  /// Converts a [ConceptMapElementBuilder] to a [Map<String, dynamic>]
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
    addField('code', code);
    addField('display', display);
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
      'code',
      'display',
      'target',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
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
      case 'code':
        {
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is List<ConceptMapTargetBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is ConceptMapTargetBuilder) {
            // Add single element to existing list or create new list
            target = [...(target ?? []), child];
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
      case 'code':
        return ['FhirCodeBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'target':
        return ['ConceptMapTargetBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapElementBuilder]
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
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'target':
        {
          target = <ConceptMapTargetBuilder>[];
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
    bool code = false,
    bool display = false,
    bool target = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (display) this.display = null;
    if (target) this.target = null;
  }

  @override
  ConceptMapElementBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapElementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    FhirStringBuilder? display,
    List<ConceptMapTargetBuilder>? target,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConceptMapElementBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      target: target ?? this.target,
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
    if (o is! ConceptMapElementBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!listEquals<ConceptMapTargetBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConceptMapTargetBuilder]
/// A concept from the target value set that this concept maps to.
class ConceptMapTargetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConceptMapTargetBuilder]

  ConceptMapTargetBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    this.equivalence,
    this.comment,
    this.dependsOn,
    this.product,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ConceptMap.group.element.target',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapTargetBuilder.empty() => ConceptMapTargetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapTargetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap.group.element.target';
    return ConceptMapTargetBuilder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      equivalence: JsonParser.parsePrimitive<ConceptMapEquivalenceBuilder>(
        json,
        'equivalence',
        ConceptMapEquivalenceBuilder.fromJson,
        '$objectPath.equivalence',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
      dependsOn: (json['dependsOn'] as List<dynamic>?)
          ?.map<ConceptMapDependsOnBuilder>(
            (v) => ConceptMapDependsOnBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dependsOn',
              },
            ),
          )
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map<ConceptMapDependsOnBuilder>(
            (v) => ConceptMapDependsOnBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.product',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMapTargetBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapTargetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapTargetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapTargetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapTargetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapTargetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapTargetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapTargetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapTarget';

  /// [code]
  /// Identity (code or path) or the element/item that the map refers to.
  FhirCodeBuilder? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  FhirStringBuilder? display;

  /// [equivalence]
  /// The equivalence between the source and target concepts (counting for
  /// the dependencies and products). The equivalence is read from target to
  /// source (e.g. the target is 'wider' than the source).
  ConceptMapEquivalenceBuilder? equivalence;

  /// [comment]
  /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  FhirStringBuilder? comment;

  /// [dependsOn]
  /// A set of additional dependencies for this mapping to hold. This mapping
  /// is only applicable if the specified element can be resolved, and it has
  /// the specified value.
  List<ConceptMapDependsOnBuilder>? dependsOn;

  /// [product]
  /// A set of additional outcomes from this mapping to other elements. To
  /// properly execute this mapping, the specified element must be mapped to
  /// some data element or source that is in context. The mapping may still
  /// be useful without a place for the additional data elements, but the
  /// equivalence cannot be relied on.
  List<ConceptMapDependsOnBuilder>? product;

  /// Converts a ConceptMapTargetBuilder to [ConceptMapTarget]
  ConceptMapTarget build() => ConceptMapTarget.fromJson(toJson());

  /// Converts a [ConceptMapTargetBuilder] to a [Map<String, dynamic>]
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
    addField('code', code);
    addField('display', display);
    addField('equivalence', equivalence);
    addField('comment', comment);
    addField('dependsOn', dependsOn);
    addField('product', product);
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
      'display',
      'equivalence',
      'comment',
      'dependsOn',
      'product',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'equivalence':
        if (equivalence != null) {
          fields.add(equivalence!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'dependsOn':
        if (dependsOn != null) {
          fields.addAll(dependsOn!);
        }
      case 'product':
        if (product != null) {
          fields.addAll(product!);
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
      case 'code':
        {
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'equivalence':
        {
          if (child is ConceptMapEquivalenceBuilder) {
            equivalence = child;
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
      case 'dependsOn':
        {
          if (child is List<ConceptMapDependsOnBuilder>) {
            // Replace or create new list
            dependsOn = child;
            return;
          } else if (child is ConceptMapDependsOnBuilder) {
            // Add single element to existing list or create new list
            dependsOn = [...(dependsOn ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'product':
        {
          if (child is List<ConceptMapDependsOnBuilder>) {
            // Replace or create new list
            product = child;
            return;
          } else if (child is ConceptMapDependsOnBuilder) {
            // Add single element to existing list or create new list
            product = [...(product ?? []), child];
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
      case 'code':
        return ['FhirCodeBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'equivalence':
        return ['FhirCodeEnumBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      case 'dependsOn':
        return ['ConceptMapDependsOnBuilder'];
      case 'product':
        return ['ConceptMapDependsOnBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapTargetBuilder]
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
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'equivalence':
        {
          equivalence = ConceptMapEquivalenceBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      case 'dependsOn':
        {
          dependsOn = <ConceptMapDependsOnBuilder>[];
          return;
        }
      case 'product':
        {
          product = <ConceptMapDependsOnBuilder>[];
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
    bool code = false,
    bool display = false,
    bool equivalence = false,
    bool comment = false,
    bool dependsOn = false,
    bool product = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (display) this.display = null;
    if (equivalence) this.equivalence = null;
    if (comment) this.comment = null;
    if (dependsOn) this.dependsOn = null;
    if (product) this.product = null;
  }

  @override
  ConceptMapTargetBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapTargetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    FhirStringBuilder? display,
    ConceptMapEquivalenceBuilder? equivalence,
    FhirStringBuilder? comment,
    List<ConceptMapDependsOnBuilder>? dependsOn,
    List<ConceptMapDependsOnBuilder>? product,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConceptMapTargetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      equivalence: equivalence ?? this.equivalence,
      comment: comment ?? this.comment,
      dependsOn: dependsOn ?? this.dependsOn,
      product: product ?? this.product,
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
    if (o is! ConceptMapTargetBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      equivalence,
      o.equivalence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!listEquals<ConceptMapDependsOnBuilder>(
      dependsOn,
      o.dependsOn,
    )) {
      return false;
    }
    if (!listEquals<ConceptMapDependsOnBuilder>(
      product,
      o.product,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConceptMapDependsOnBuilder]
/// A set of additional dependencies for this mapping to hold. This mapping
/// is only applicable if the specified element can be resolved, and it has
/// the specified value.
class ConceptMapDependsOnBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConceptMapDependsOnBuilder]

  ConceptMapDependsOnBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.property,
    this.system,
    this.value,
    this.display,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ConceptMap.group.element.target.dependsOn',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapDependsOnBuilder.empty() => ConceptMapDependsOnBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapDependsOnBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap.group.element.target.dependsOn';
    return ConceptMapDependsOnBuilder(
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
      property: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'property',
        FhirUriBuilder.fromJson,
        '$objectPath.property',
      ),
      system: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'system',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.system',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
    );
  }

  /// Deserialize [ConceptMapDependsOnBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapDependsOnBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapDependsOnBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapDependsOnBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapDependsOnBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapDependsOnBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapDependsOnBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapDependsOnBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapDependsOn';

  /// [property]
  /// A reference to an element that holds a coded value that corresponds to
  /// a code system property. The idea is that the information model carries
  /// an element somewhere that is labeled to correspond with a code system
  /// property.
  FhirUriBuilder? property;

  /// [system]
  /// An absolute URI that identifies the code system of the dependency code
  /// (if the source/dependency is a value set that crosses code systems).
  FhirCanonicalBuilder? system;

  /// [value]
  /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  FhirStringBuilder? value;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  FhirStringBuilder? display;

  /// Converts a ConceptMapDependsOnBuilder to [ConceptMapDependsOn]
  ConceptMapDependsOn build() => ConceptMapDependsOn.fromJson(toJson());

  /// Converts a [ConceptMapDependsOnBuilder] to a [Map<String, dynamic>]
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
    addField('property', property);
    addField('system', system);
    addField('value', value);
    addField('display', display);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'property',
      'system',
      'value',
      'display',
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
      case 'property':
        if (property != null) {
          fields.add(property!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
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
      case 'property':
        {
          if (child is FhirUriBuilder) {
            property = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'system':
        {
          if (child is FhirCanonicalBuilder) {
            system = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
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
      case 'property':
        return ['FhirUriBuilder'];
      case 'system':
        return ['FhirCanonicalBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapDependsOnBuilder]
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
      case 'property':
        {
          property = FhirUriBuilder.empty();
          return;
        }
      case 'system':
        {
          system = FhirCanonicalBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
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
    bool property = false,
    bool system = false,
    bool value = false,
    bool display = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (property) this.property = null;
    if (system) this.system = null;
    if (value) this.value = null;
    if (display) this.display = null;
  }

  @override
  ConceptMapDependsOnBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapDependsOnBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? property,
    FhirCanonicalBuilder? system,
    FhirStringBuilder? value,
    FhirStringBuilder? display,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConceptMapDependsOnBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      system: system ?? this.system,
      value: value ?? this.value,
      display: display ?? this.display,
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
    if (o is! ConceptMapDependsOnBuilder) {
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
      property,
      o.property,
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
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConceptMapUnmappedBuilder]
/// What to do when there is no mapping for the source concept. "Unmapped"
/// does not include codes that are unmatched, and the unmapped element is
/// ignored in a code is specified to have equivalence = unmatched.
class ConceptMapUnmappedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConceptMapUnmappedBuilder]

  ConceptMapUnmappedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.code,
    this.display,
    this.url,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ConceptMap.group.unmapped',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConceptMapUnmappedBuilder.empty() => ConceptMapUnmappedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapUnmappedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ConceptMap.group.unmapped';
    return ConceptMapUnmappedBuilder(
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
      mode: JsonParser.parsePrimitive<ConceptMapGroupUnmappedModeBuilder>(
        json,
        'mode',
        ConceptMapGroupUnmappedModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      url: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'url',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.url',
      ),
    );
  }

  /// Deserialize [ConceptMapUnmappedBuilder]
  /// from a [String] or [YamlMap] object
  factory ConceptMapUnmappedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapUnmappedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapUnmappedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapUnmappedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapUnmappedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapUnmappedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConceptMapUnmappedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapUnmapped';

  /// [mode]
  /// Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a
  /// mapping between versions, and only a few codes have changed), use a
  /// fixed code (a default code), or alternatively, a reference to a
  /// different concept map can be provided (by canonical URL).
  ConceptMapGroupUnmappedModeBuilder? mode;

  /// [code]
  /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  FhirCodeBuilder? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  FhirStringBuilder? display;

  /// [url]
  /// The canonical reference to an additional ConceptMap resource instance
  /// to use for mapping if this ConceptMap resource contains no matching
  /// mapping for the source concept.
  FhirCanonicalBuilder? url;

  /// Converts a ConceptMapUnmappedBuilder to [ConceptMapUnmapped]
  ConceptMapUnmapped build() => ConceptMapUnmapped.fromJson(toJson());

  /// Converts a [ConceptMapUnmappedBuilder] to a [Map<String, dynamic>]
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
    addField('mode', mode);
    addField('code', code);
    addField('display', display);
    addField('url', url);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'mode',
      'code',
      'display',
      'url',
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
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
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
      case 'mode':
        {
          if (child is ConceptMapGroupUnmappedModeBuilder) {
            mode = child;
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
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirCanonicalBuilder) {
            url = child;
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
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['FhirCodeBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'url':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConceptMapUnmappedBuilder]
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
      case 'mode':
        {
          mode = ConceptMapGroupUnmappedModeBuilder.empty();
          return;
        }
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirCanonicalBuilder.empty();
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
    bool mode = false,
    bool code = false,
    bool display = false,
    bool url = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (mode) this.mode = null;
    if (code) this.code = null;
    if (display) this.display = null;
    if (url) this.url = null;
  }

  @override
  ConceptMapUnmappedBuilder clone() => throw UnimplementedError();
  @override
  ConceptMapUnmappedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ConceptMapGroupUnmappedModeBuilder? mode,
    FhirCodeBuilder? code,
    FhirStringBuilder? display,
    FhirCanonicalBuilder? url,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConceptMapUnmappedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      code: code ?? this.code,
      display: display ?? this.display,
      url: url ?? this.url,
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
    if (o is! ConceptMapUnmappedBuilder) {
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
      mode,
      o.mode,
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
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
  }
}
