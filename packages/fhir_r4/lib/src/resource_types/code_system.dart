import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeSystem]
/// The CodeSystem resource is used to declare the existence of and
/// describe a code system or code system supplement and its key
/// properties, and optionally define a part or all of its content.
class CodeSystem extends CanonicalResource {
  /// Primary constructor for
  /// [CodeSystem]

  const CodeSystem({
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
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.caseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.compositional,
    this.versionNeeded,
    required this.content,
    this.supplements,
    this.count,
    this.filter,
    this.property,
    this.concept,
  }) : super(
          objectPath: 'CodeSystem',
          resourceType: R4ResourceType.CodeSystem,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystem.empty() => CodeSystem(
        status: PublicationStatus.values.first,
        content: CodeSystemContentMode.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem';
    return CodeSystem(
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
      caseSensitive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'caseSensitive',
        FhirBoolean.fromJson,
        '$objectPath.caseSensitive',
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
        '$objectPath.valueSet',
      ),
      hierarchyMeaning: JsonParser.parsePrimitive<CodeSystemHierarchyMeaning>(
        json,
        'hierarchyMeaning',
        CodeSystemHierarchyMeaning.fromJson,
        '$objectPath.hierarchyMeaning',
      ),
      compositional: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'compositional',
        FhirBoolean.fromJson,
        '$objectPath.compositional',
      ),
      versionNeeded: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'versionNeeded',
        FhirBoolean.fromJson,
        '$objectPath.versionNeeded',
      ),
      content: JsonParser.parsePrimitive<CodeSystemContentMode>(
        json,
        'content',
        CodeSystemContentMode.fromJson,
        '$objectPath.content',
      )!,
      supplements: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'supplements',
        FhirCanonical.fromJson,
        '$objectPath.supplements',
      ),
      count: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'count',
        FhirUnsignedInt.fromJson,
        '$objectPath.count',
      ),
      filter: (json['filter'] as List<dynamic>?)
          ?.map<CodeSystemFilter>(
            (v) => CodeSystemFilter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.filter',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<CodeSystemProperty>(
            (v) => CodeSystemProperty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      concept: (json['concept'] as List<dynamic>?)
          ?.map<CodeSystemConcept>(
            (v) => CodeSystemConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.concept',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CodeSystem]
  /// from a [String] or [YamlMap] object
  factory CodeSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystem';

  /// [identifier]
  /// A formal identifier that is used to identify this code system when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the code system. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the code system.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this code system is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the code system and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the code system.
  final FhirMarkdown? copyright;

  /// [caseSensitive]
  /// If code comparison is case sensitive when codes within this system are
  /// compared to each other.
  final FhirBoolean? caseSensitive;

  /// [valueSet]
  /// Canonical reference to the value set that contains the entire code
  /// system.
  final FhirCanonical? valueSet;

  /// [hierarchyMeaning]
  /// The meaning of the hierarchy of concepts as represented in this
  /// resource.
  final CodeSystemHierarchyMeaning? hierarchyMeaning;

  /// [compositional]
  /// The code system defines a compositional (post-coordination) grammar.
  final FhirBoolean? compositional;

  /// [versionNeeded]
  /// This flag is used to signify that the code system does not commit to
  /// concept permanence across versions. If true, a version must be
  /// specified when referencing this code system.
  final FhirBoolean? versionNeeded;

  /// [content]
  /// The extent of the content of the code system (the concepts and codes it
  /// defines) are represented in this resource instance.
  final CodeSystemContentMode content;

  /// [supplements]
  /// The canonical URL of the code system that this code system supplement
  /// is adding designations and properties to.
  final FhirCanonical? supplements;

  /// [count]
  /// The total number of concepts defined by the code system. Where the code
  /// system has a compositional grammar, the basis of this count is defined
  /// by the system steward.
  final FhirUnsignedInt? count;

  /// [filter]
  /// A filter that can be used in a value set compose statement when
  /// selecting concepts using a filter.
  final List<CodeSystemFilter>? filter;

  /// [property]
  /// A property defines an additional slot through which additional
  /// information can be provided about a concept.
  final List<CodeSystemProperty>? property;

  /// [concept]
  /// Concepts that are in the code system. The concept definitions are
  /// inherently hierarchical, but the definitions must be consulted to
  /// determine what the meanings of the hierarchical relationships are.
  final List<CodeSystemConcept>? concept;
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
      'caseSensitive',
      caseSensitive,
    );
    addField(
      'valueSet',
      valueSet,
    );
    addField(
      'hierarchyMeaning',
      hierarchyMeaning,
    );
    addField(
      'compositional',
      compositional,
    );
    addField(
      'versionNeeded',
      versionNeeded,
    );
    addField(
      'content',
      content,
    );
    addField(
      'supplements',
      supplements,
    );
    addField(
      'count',
      count,
    );
    addField(
      'filter',
      filter,
    );
    addField(
      'property',
      property,
    );
    addField(
      'concept',
      concept,
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
      'caseSensitive',
      'valueSet',
      'hierarchyMeaning',
      'compositional',
      'versionNeeded',
      'content',
      'supplements',
      'count',
      'filter',
      'property',
      'concept',
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
      case 'caseSensitive':
        if (caseSensitive != null) {
          fields.add(caseSensitive!);
        }
      case 'valueSet':
        if (valueSet != null) {
          fields.add(valueSet!);
        }
      case 'hierarchyMeaning':
        if (hierarchyMeaning != null) {
          fields.add(hierarchyMeaning!);
        }
      case 'compositional':
        if (compositional != null) {
          fields.add(compositional!);
        }
      case 'versionNeeded':
        if (versionNeeded != null) {
          fields.add(versionNeeded!);
        }
      case 'content':
        fields.add(content);
      case 'supplements':
        if (supplements != null) {
          fields.add(supplements!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'filter':
        if (filter != null) {
          fields.addAll(filter!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'concept':
        if (concept != null) {
          fields.addAll(concept!);
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
      case 'caseSensitive':
        {
          if (child is FhirBoolean) {
            return copyWith(caseSensitive: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSet':
        {
          if (child is FhirCanonical) {
            return copyWith(valueSet: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hierarchyMeaning':
        {
          if (child is CodeSystemHierarchyMeaning) {
            return copyWith(hierarchyMeaning: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'compositional':
        {
          if (child is FhirBoolean) {
            return copyWith(compositional: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'versionNeeded':
        {
          if (child is FhirBoolean) {
            return copyWith(versionNeeded: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'content':
        {
          if (child is CodeSystemContentMode) {
            return copyWith(content: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supplements':
        {
          if (child is FhirCanonical) {
            return copyWith(supplements: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'count':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(count: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'filter':
        {
          if (child is List<CodeSystemFilter>) {
            // Add all elements from passed list
            final newList = [...?filter, ...child];
            return copyWith(filter: newList);
          } else if (child is CodeSystemFilter) {
            // Add single element to existing list or create new list
            final newList = [
              ...?filter,
              child,
            ];
            return copyWith(filter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<CodeSystemProperty>) {
            // Add all elements from passed list
            final newList = [...?property, ...child];
            return copyWith(property: newList);
          } else if (child is CodeSystemProperty) {
            // Add single element to existing list or create new list
            final newList = [
              ...?property,
              child,
            ];
            return copyWith(property: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'concept':
        {
          if (child is List<CodeSystemConcept>) {
            // Add all elements from passed list
            final newList = [...?concept, ...child];
            return copyWith(concept: newList);
          } else if (child is CodeSystemConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?concept,
              child,
            ];
            return copyWith(concept: newList);
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
      case 'caseSensitive':
        return ['FhirBoolean'];
      case 'valueSet':
        return ['FhirCanonical'];
      case 'hierarchyMeaning':
        return ['FhirCode'];
      case 'compositional':
        return ['FhirBoolean'];
      case 'versionNeeded':
        return ['FhirBoolean'];
      case 'content':
        return ['FhirCode'];
      case 'supplements':
        return ['FhirCanonical'];
      case 'count':
        return ['FhirUnsignedInt'];
      case 'filter':
        return ['CodeSystemFilter'];
      case 'property':
        return ['CodeSystemProperty'];
      case 'concept':
        return ['CodeSystemConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystem createProperty(
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
      case 'caseSensitive':
        {
          return copyWith(
            caseSensitive: FhirBoolean.empty(),
          );
        }
      case 'valueSet':
        {
          return copyWith(
            valueSet: FhirCanonical.empty(),
          );
        }
      case 'hierarchyMeaning':
        {
          return copyWith(
            hierarchyMeaning: CodeSystemHierarchyMeaning.empty(),
          );
        }
      case 'compositional':
        {
          return copyWith(
            compositional: FhirBoolean.empty(),
          );
        }
      case 'versionNeeded':
        {
          return copyWith(
            versionNeeded: FhirBoolean.empty(),
          );
        }
      case 'content':
        {
          return copyWith(
            content: CodeSystemContentMode.empty(),
          );
        }
      case 'supplements':
        {
          return copyWith(
            supplements: FhirCanonical.empty(),
          );
        }
      case 'count':
        {
          return copyWith(
            count: FhirUnsignedInt.empty(),
          );
        }
      case 'filter':
        {
          return copyWith(
            filter: <CodeSystemFilter>[],
          );
        }
      case 'property':
        {
          return copyWith(
            property: <CodeSystemProperty>[],
          );
        }
      case 'concept':
        {
          return copyWith(
            concept: <CodeSystemConcept>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystem clear({
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
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool caseSensitive = false,
    bool valueSet = false,
    bool hierarchyMeaning = false,
    bool compositional = false,
    bool versionNeeded = false,
    bool supplements = false,
    bool count = false,
    bool filter = false,
    bool property = false,
    bool concept = false,
  }) {
    return CodeSystem(
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
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      caseSensitive: caseSensitive ? null : this.caseSensitive,
      valueSet: valueSet ? null : this.valueSet,
      hierarchyMeaning: hierarchyMeaning ? null : this.hierarchyMeaning,
      compositional: compositional ? null : this.compositional,
      versionNeeded: versionNeeded ? null : this.versionNeeded,
      content: content,
      supplements: supplements ? null : this.supplements,
      count: count ? null : this.count,
      filter: filter ? null : this.filter,
      property: property ? null : this.property,
      concept: concept ? null : this.concept,
    );
  }

  @override
  CodeSystem clone() => throw UnimplementedError();
  @override
  CodeSystem copyWith({
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
    FhirBoolean? caseSensitive,
    FhirCanonical? valueSet,
    CodeSystemHierarchyMeaning? hierarchyMeaning,
    FhirBoolean? compositional,
    FhirBoolean? versionNeeded,
    CodeSystemContentMode? content,
    FhirCanonical? supplements,
    FhirUnsignedInt? count,
    List<CodeSystemFilter>? filter,
    List<CodeSystemProperty>? property,
    List<CodeSystemConcept>? concept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CodeSystem(
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
      caseSensitive: caseSensitive?.copyWith(
            objectPath: '$newObjectPath.caseSensitive',
          ) ??
          this.caseSensitive,
      valueSet: valueSet?.copyWith(
            objectPath: '$newObjectPath.valueSet',
          ) ??
          this.valueSet,
      hierarchyMeaning: hierarchyMeaning?.copyWith(
            objectPath: '$newObjectPath.hierarchyMeaning',
          ) ??
          this.hierarchyMeaning,
      compositional: compositional?.copyWith(
            objectPath: '$newObjectPath.compositional',
          ) ??
          this.compositional,
      versionNeeded: versionNeeded?.copyWith(
            objectPath: '$newObjectPath.versionNeeded',
          ) ??
          this.versionNeeded,
      content: content?.copyWith(
            objectPath: '$newObjectPath.content',
          ) ??
          this.content,
      supplements: supplements?.copyWith(
            objectPath: '$newObjectPath.supplements',
          ) ??
          this.supplements,
      count: count?.copyWith(
            objectPath: '$newObjectPath.count',
          ) ??
          this.count,
      filter: filter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.filter',
                ),
              )
              .toList() ??
          this.filter,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      concept: concept
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.concept',
                ),
              )
              .toList() ??
          this.concept,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystem) {
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
      caseSensitive,
      o.caseSensitive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hierarchyMeaning,
      o.hierarchyMeaning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compositional,
      o.compositional,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionNeeded,
      o.versionNeeded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      supplements,
      o.supplements,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      count,
      o.count,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemFilter>(
      filter,
      o.filter,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemConcept>(
      concept,
      o.concept,
    )) {
      return false;
    }
    return true;
  }
}

/// [CodeSystemFilter]
/// A filter that can be used in a value set compose statement when
/// selecting concepts using a filter.
class CodeSystemFilter extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemFilter]

  const CodeSystemFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.description,
    required this.operator_,
    required this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CodeSystem.filter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystemFilter.empty() => CodeSystemFilter(
        code: FhirCode.empty(),
        operator_: <FilterOperator>[],
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem.filter';
    return CodeSystemFilter(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      operator_: JsonParser.parsePrimitiveList<FilterOperator>(
        json,
        'operator',
        FilterOperator.fromJson,
        '$objectPath.operator',
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
    );
  }

  /// Deserialize [CodeSystemFilter]
  /// from a [String] or [YamlMap] object
  factory CodeSystemFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemFilter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystemFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemFilter';

  /// [code]
  /// The code that identifies this filter when it is used as a filter in
  /// [ValueSet](valueset.html#).compose.include.filter.
  final FhirCode code;

  /// [description]
  /// A description of how or why the filter is used.
  final FhirString? description;

  /// [operator_]
  /// A list of operators that can be used with the filter.
  final List<FilterOperator> operator_;

  /// [value]
  /// A description of what the value for the filter should be.
  final FhirString value;
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
      'description',
      description,
    );
    addField(
      'operator',
      operator_,
    );
    addField(
      'value',
      value,
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
      'description',
      'operator',
      'value',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'operator':
        fields.addAll(operator_);
      case 'value':
        fields.add(value);
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
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operator':
        {
          if (child is List<FilterOperator>) {
            // Add all elements from passed list
            final newList = [...operator_, ...child];
            return copyWith(operator_: newList);
          } else if (child is FilterOperator) {
            // Add single element to existing list or create new list
            final newList = [
              ...operator_,
              child,
            ];
            return copyWith(operator_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
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
      case 'description':
        return ['FhirString'];
      case 'operator':
        return ['FhirCode'];
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystemFilter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystemFilter createProperty(
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
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'operator':
        {
          return copyWith(
            operator_: <FilterOperator>[],
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystemFilter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
  }) {
    return CodeSystemFilter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      description: description ? null : this.description,
      operator_: operator_,
      value: value,
    );
  }

  @override
  CodeSystemFilter clone() => throw UnimplementedError();
  @override
  CodeSystemFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? description,
    List<FilterOperator>? operator_,
    FhirString? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CodeSystemFilter(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      operator_: operator_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.operator',
                ),
              )
              .toList() ??
          this.operator_,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystemFilter) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<FilterOperator>(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [CodeSystemProperty]
/// A property defines an additional slot through which additional
/// information can be provided about a concept.
class CodeSystemProperty extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemProperty]

  const CodeSystemProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.uri,
    this.description,
    required this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CodeSystem.property',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystemProperty.empty() => CodeSystemProperty(
        code: FhirCode.empty(),
        type: PropertyTypeEnum.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem.property';
    return CodeSystemProperty(
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
      uri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'uri',
        FhirUri.fromJson,
        '$objectPath.uri',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      type: JsonParser.parsePrimitive<PropertyTypeEnum>(
        json,
        'type',
        PropertyTypeEnum.fromJson,
        '$objectPath.type',
      )!,
    );
  }

  /// Deserialize [CodeSystemProperty]
  /// from a [String] or [YamlMap] object
  factory CodeSystemProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystemProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemProperty';

  /// [code]
  /// A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally,
  /// such as in property filters.
  final FhirCode code;

  /// [uri]
  /// Reference to the formal meaning of the property. One possible source of
  /// meaning is the [Concept Properties](codesystem-concept-properties.html)
  /// code system.
  final FhirUri? uri;

  /// [description]
  /// A description of the property- why it is defined, and how its value
  /// might be used.
  final FhirString? description;

  /// [type]
  /// The type of the property value. Properties of type "code" contain a
  /// code defined by the code system (e.g. a reference to another defined
  /// concept).
  final PropertyTypeEnum type;
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
      'uri',
      uri,
    );
    addField(
      'description',
      description,
    );
    addField(
      'type',
      type,
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
      'uri',
      'description',
      'type',
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
      case 'uri':
        if (uri != null) {
          fields.add(uri!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'type':
        fields.add(type);
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
      case 'uri':
        {
          if (child is FhirUri) {
            return copyWith(uri: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is PropertyTypeEnum) {
            return copyWith(type: child);
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
      case 'uri':
        return ['FhirUri'];
      case 'description':
        return ['FhirString'];
      case 'type':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystemProperty]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystemProperty createProperty(
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
      case 'uri':
        {
          return copyWith(
            uri: FhirUri.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: PropertyTypeEnum.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystemProperty clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool uri = false,
    bool description = false,
  }) {
    return CodeSystemProperty(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      uri: uri ? null : this.uri,
      description: description ? null : this.description,
      type: type,
    );
  }

  @override
  CodeSystemProperty clone() => throw UnimplementedError();
  @override
  CodeSystemProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    FhirString? description,
    PropertyTypeEnum? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CodeSystemProperty(
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
      uri: uri?.copyWith(
            objectPath: '$newObjectPath.uri',
          ) ??
          this.uri,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystemProperty) {
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
      uri,
      o.uri,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [CodeSystemConcept]
/// Concepts that are in the code system. The concept definitions are
/// inherently hierarchical, but the definitions must be consulted to
/// determine what the meanings of the hierarchical relationships are.
class CodeSystemConcept extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemConcept]

  const CodeSystemConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.display,
    this.definition,
    this.designation,
    this.property,
    this.concept,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CodeSystem.concept',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystemConcept.empty() => CodeSystemConcept(
        code: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemConcept.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem.concept';
    return CodeSystemConcept(
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
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
        '$objectPath.display',
      ),
      definition: JsonParser.parsePrimitive<FhirString>(
        json,
        'definition',
        FhirString.fromJson,
        '$objectPath.definition',
      ),
      designation: (json['designation'] as List<dynamic>?)
          ?.map<CodeSystemDesignation>(
            (v) => CodeSystemDesignation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.designation',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<CodeSystemProperty1>(
            (v) => CodeSystemProperty1.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      concept: (json['concept'] as List<dynamic>?)
          ?.map<CodeSystemConcept>(
            (v) => CodeSystemConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.concept',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CodeSystemConcept]
  /// from a [String] or [YamlMap] object
  factory CodeSystemConcept.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemConcept.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemConcept.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemConcept '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemConcept]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemConcept.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystemConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemConcept';

  /// [code]
  /// A code - a text symbol - that uniquely identifies the concept within
  /// the code system.
  final FhirCode code;

  /// [display]
  /// A human readable string that is the recommended default way to present
  /// this concept to a user.
  final FhirString? display;

  /// [definition]
  /// The formal definition of the concept. The code system resource does not
  /// make formal definitions required, because of the prevalence of legacy
  /// systems. However, they are highly recommended, as without them there is
  /// no formal meaning associated with the concept.
  final FhirString? definition;

  /// [designation]
  /// Additional representations for the concept - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc.
  final List<CodeSystemDesignation>? designation;

  /// [property]
  /// A property value for this concept.
  final List<CodeSystemProperty1>? property;

  /// [concept]
  /// Defines children of a concept to produce a hierarchy of concepts. The
  /// nature of the relationships is variable (is-a/contains/categorizes) -
  /// see hierarchyMeaning.
  final List<CodeSystemConcept>? concept;
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
      'display',
      display,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'designation',
      designation,
    );
    addField(
      'property',
      property,
    );
    addField(
      'concept',
      concept,
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
      'display',
      'definition',
      'designation',
      'property',
      'concept',
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
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'designation':
        if (designation != null) {
          fields.addAll(designation!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'concept':
        if (concept != null) {
          fields.addAll(concept!);
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
      case 'display':
        {
          if (child is FhirString) {
            return copyWith(display: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is FhirString) {
            return copyWith(definition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'designation':
        {
          if (child is List<CodeSystemDesignation>) {
            // Add all elements from passed list
            final newList = [...?designation, ...child];
            return copyWith(designation: newList);
          } else if (child is CodeSystemDesignation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?designation,
              child,
            ];
            return copyWith(designation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<CodeSystemProperty1>) {
            // Add all elements from passed list
            final newList = [...?property, ...child];
            return copyWith(property: newList);
          } else if (child is CodeSystemProperty1) {
            // Add single element to existing list or create new list
            final newList = [
              ...?property,
              child,
            ];
            return copyWith(property: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'concept':
        {
          if (child is List<CodeSystemConcept>) {
            // Add all elements from passed list
            final newList = [...?concept, ...child];
            return copyWith(concept: newList);
          } else if (child is CodeSystemConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?concept,
              child,
            ];
            return copyWith(concept: newList);
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
      case 'display':
        return ['FhirString'];
      case 'definition':
        return ['FhirString'];
      case 'designation':
        return ['CodeSystemDesignation'];
      case 'property':
        return ['CodeSystemProperty1'];
      case 'concept':
        return ['CodeSystemConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystemConcept]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystemConcept createProperty(
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
      case 'display':
        {
          return copyWith(
            display: FhirString.empty(),
          );
        }
      case 'definition':
        {
          return copyWith(
            definition: FhirString.empty(),
          );
        }
      case 'designation':
        {
          return copyWith(
            designation: <CodeSystemDesignation>[],
          );
        }
      case 'property':
        {
          return copyWith(
            property: <CodeSystemProperty1>[],
          );
        }
      case 'concept':
        {
          return copyWith(
            concept: <CodeSystemConcept>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystemConcept clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool display = false,
    bool definition = false,
    bool designation = false,
    bool property = false,
    bool concept = false,
  }) {
    return CodeSystemConcept(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      display: display ? null : this.display,
      definition: definition ? null : this.definition,
      designation: designation ? null : this.designation,
      property: property ? null : this.property,
      concept: concept ? null : this.concept,
    );
  }

  @override
  CodeSystemConcept clone() => throw UnimplementedError();
  @override
  CodeSystemConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    FhirString? definition,
    List<CodeSystemDesignation>? designation,
    List<CodeSystemProperty1>? property,
    List<CodeSystemConcept>? concept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CodeSystemConcept(
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
      display: display?.copyWith(
            objectPath: '$newObjectPath.display',
          ) ??
          this.display,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      designation: designation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.designation',
                ),
              )
              .toList() ??
          this.designation,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      concept: concept
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.concept',
                ),
              )
              .toList() ??
          this.concept,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystemConcept) {
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
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemDesignation>(
      designation,
      o.designation,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemProperty1>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<CodeSystemConcept>(
      concept,
      o.concept,
    )) {
      return false;
    }
    return true;
  }
}

/// [CodeSystemDesignation]
/// Additional representations for the concept - other languages, aliases,
/// specialized purposes, used for particular purposes, etc.
class CodeSystemDesignation extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemDesignation]

  const CodeSystemDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.use,
    required this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CodeSystem.concept.designation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystemDesignation.empty() => CodeSystemDesignation(
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemDesignation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem.concept.designation';
    return CodeSystemDesignation(
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
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      use: JsonParser.parseObject<Coding>(
        json,
        'use',
        Coding.fromJson,
        '$objectPath.use',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
    );
  }

  /// Deserialize [CodeSystemDesignation]
  /// from a [String] or [YamlMap] object
  factory CodeSystemDesignation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemDesignation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemDesignation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemDesignation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemDesignation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemDesignation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystemDesignation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemDesignation';

  /// [language]
  /// The language this designation is defined for.
  final CommonLanguages? language;

  /// [use]
  /// A code that details how this designation would be used.
  final Coding? use;

  /// [value]
  /// The text value for this designation.
  final FhirString value;
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
      'language',
      language,
    );
    addField(
      'use',
      use,
    );
    addField(
      'value',
      value,
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
      'language',
      'use',
      'value',
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
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'value':
        fields.add(value);
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
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is Coding) {
            return copyWith(use: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
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
      case 'language':
        return ['FhirCode'];
      case 'use':
        return ['Coding'];
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystemDesignation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystemDesignation createProperty(
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
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'use':
        {
          return copyWith(
            use: Coding.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystemDesignation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool language = false,
    bool use = false,
  }) {
    return CodeSystemDesignation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      language: language ? null : this.language,
      use: use ? null : this.use,
      value: value,
    );
  }

  @override
  CodeSystemDesignation clone() => throw UnimplementedError();
  @override
  CodeSystemDesignation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Coding? use,
    FhirString? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CodeSystemDesignation(
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
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystemDesignation) {
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
      language,
      o.language,
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
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [CodeSystemProperty1]
/// A property value for this concept.
class CodeSystemProperty1 extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemProperty1]

  const CodeSystemProperty1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CodeSystem.concept.property',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CodeSystemProperty1.empty() => CodeSystemProperty1(
        code: FhirCode.empty(),
        valueX: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CodeSystem.concept.property';
    return CodeSystemProperty1(
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
      valueX: JsonParser.parsePolymorphic<ValueXCodeSystemProperty>(
        json,
        {
          'valueCode': FhirCode.fromJson,
          'valueCoding': Coding.fromJson,
          'valueString': FhirString.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [CodeSystemProperty1]
  /// from a [String] or [YamlMap] object
  factory CodeSystemProperty1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemProperty1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemProperty1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemProperty1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemProperty1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemProperty1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeSystemProperty1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemProperty1';

  /// [code]
  /// A code that is a reference to CodeSystem.property.code.
  final FhirCode code;

  /// [valueX]
  /// The value of this property.
  final ValueXCodeSystemProperty valueX;

  /// Getter for [valueCode] as a FhirCode
  FhirCode? get valueCode => valueX.isAs<FhirCode>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCode':
        if (valueX is FhirCode) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
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
      case 'valueX':
        {
          if (child is ValueXCodeSystemProperty) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirCode) {
              return copyWith(valueX: child);
            }
            if (child is Coding) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
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
      case 'value':
      case 'valueX':
        return [
          'FhirCode',
          'Coding',
          'FhirString',
          'FhirInteger',
          'FhirBoolean',
          'FhirDateTime',
          'FhirDecimal',
        ];
      case 'valueCode':
        return ['FhirCode'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueString':
        return ['FhirString'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeSystemProperty1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CodeSystemProperty1 createProperty(
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
      case 'value':
      case 'valueX':
      case 'valueCode':
        {
          return copyWith(
            valueX: FhirCode.empty(),
          );
        }
      case 'valueCoding':
        {
          return copyWith(
            valueX: Coding.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valueDecimal':
        {
          return copyWith(
            valueX: FhirDecimal.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CodeSystemProperty1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return CodeSystemProperty1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      valueX: valueX,
    );
  }

  @override
  CodeSystemProperty1 clone() => throw UnimplementedError();
  @override
  CodeSystemProperty1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    ValueXCodeSystemProperty? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CodeSystemProperty1(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXCodeSystemProperty? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CodeSystemProperty1) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
