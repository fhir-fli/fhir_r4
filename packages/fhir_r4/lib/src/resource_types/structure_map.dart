import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [StructureMap]
/// A Map of relationships between 2 structures that can be used to
/// transform data.
class StructureMap extends CanonicalResource {
  /// Primary constructor for
  /// [StructureMap]

  const StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required super.url,
    this.identifier,
    super.version,
    required this.name,
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
    this.structure,
    this.import_,
    required this.group,
  }) : super(
          objectPath: 'StructureMap',
          resourceType: R4ResourceType.StructureMap,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMap.empty() => StructureMap(
        url: FhirUri.empty(),
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
        group: <StructureMapGroup>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMap.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap';
    return StructureMap(
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
      structure: (json['structure'] as List<dynamic>?)
          ?.map<StructureMapStructure>(
            (v) => StructureMapStructure.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.structure',
              },
            ),
          )
          .toList(),
      import_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'import',
        FhirCanonical.fromJson,
        '$objectPath.import',
      ),
      group: (json['group'] as List<dynamic>)
          .map<StructureMapGroup>(
            (v) => StructureMapGroup.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMap]
  /// from a [String] or [YamlMap] object
  factory StructureMap.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMap.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMap.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMap '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMap]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMap.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMap';

  /// [identifier]
  /// A formal identifier that is used to identify this structure map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the structure map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the structure map and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure map.
  final FhirMarkdown? copyright;

  /// [structure]
  /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are
  /// produced.
  final List<StructureMapStructure>? structure;

  /// [import_]
  /// Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? import_;

  /// [group]
  /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  final List<StructureMapGroup> group;
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
      'structure',
      structure,
    );
    addField(
      'import',
      import_,
    );
    addField(
      'group',
      group,
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
      'structure',
      'import',
      'group',
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
        fields.add(name);
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
      case 'structure':
        if (structure != null) {
          fields.addAll(structure!);
        }
      case 'import':
        if (import_ != null) {
          fields.addAll(import_!);
        }
      case 'group':
        fields.addAll(group);
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
      case 'structure':
        {
          if (child is List<StructureMapStructure>) {
            // Add all elements from passed list
            final newList = [...?structure, ...child];
            return copyWith(structure: newList);
          } else if (child is StructureMapStructure) {
            // Add single element to existing list or create new list
            final newList = [
              ...?structure,
              child,
            ];
            return copyWith(structure: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'import':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?import_, ...child];
            return copyWith(import_: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?import_,
              child,
            ];
            return copyWith(import_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'group':
        {
          if (child is List<StructureMapGroup>) {
            // Add all elements from passed list
            final newList = [...group, ...child];
            return copyWith(group: newList);
          } else if (child is StructureMapGroup) {
            // Add single element to existing list or create new list
            final newList = [
              ...group,
              child,
            ];
            return copyWith(group: newList);
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
      case 'structure':
        return ['StructureMapStructure'];
      case 'import':
        return ['FhirCanonical'];
      case 'group':
        return ['StructureMapGroup'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMap]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMap createProperty(
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
      case 'structure':
        {
          return copyWith(
            structure: <StructureMapStructure>[],
          );
        }
      case 'import':
        {
          return copyWith(
            import_: <FhirCanonical>[],
          );
        }
      case 'group':
        {
          return copyWith(
            group: <StructureMapGroup>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMap clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
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
    bool copyright = false,
    bool structure = false,
    bool import_ = false,
  }) {
    return StructureMap(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      name: name,
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
      structure: structure ? null : this.structure,
      import_: import_ ? null : this.import_,
      group: group,
    );
  }

  @override
  StructureMap clone() => throw UnimplementedError();
  @override
  StructureMap copyWith({
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
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<StructureMapGroup>? group,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return StructureMap(
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
      structure: structure
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.structure',
                ),
              )
              .toList() ??
          this.structure,
      import_: import_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.import',
                ),
              )
              .toList() ??
          this.import_,
      group: group
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.group',
                ),
              )
              .toList() ??
          this.group,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMap) {
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
    if (!listEquals<StructureMapStructure>(
      structure,
      o.structure,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      import_,
      o.import_,
    )) {
      return false;
    }
    if (!listEquals<StructureMapGroup>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapStructure]
/// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are
/// produced.
class StructureMapStructure extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapStructure]

  const StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    required this.mode,
    this.alias,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.structure',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapStructure.empty() => StructureMapStructure(
        url: FhirCanonical.empty(),
        mode: StructureMapModelMode.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.structure';
    return StructureMapStructure(
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
      url: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'url',
        FhirCanonical.fromJson,
        '$objectPath.url',
      )!,
      mode: JsonParser.parsePrimitive<StructureMapModelMode>(
        json,
        'mode',
        StructureMapModelMode.fromJson,
        '$objectPath.mode',
      )!,
      alias: JsonParser.parsePrimitive<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
        '$objectPath.alias',
      ),
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapStructure]
  /// from a [String] or [YamlMap] object
  factory StructureMapStructure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapStructure';

  /// [url]
  /// The canonical reference to the structure.
  final FhirCanonical url;

  /// [mode]
  /// How the referenced structure is used in this mapping.
  final StructureMapModelMode mode;

  /// [alias]
  /// The name used for this type in the map.
  final FhirString? alias;

  /// [documentation]
  /// Documentation that describes how the structure is used in the mapping.
  final FhirString? documentation;
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
      'url',
      url,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'documentation',
      documentation,
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
      'url',
      'mode',
      'alias',
      'documentation',
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
      case 'url':
        fields.add(url);
      case 'mode':
        fields.add(mode);
      case 'alias':
        if (alias != null) {
          fields.add(alias!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
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
      case 'url':
        {
          if (child is FhirCanonical) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mode':
        {
          if (child is StructureMapModelMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alias':
        {
          if (child is FhirString) {
            return copyWith(alias: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
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
      case 'url':
        return ['FhirCanonical'];
      case 'mode':
        return ['FhirCode'];
      case 'alias':
        return ['FhirString'];
      case 'documentation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapStructure]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapStructure createProperty(
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
      case 'url':
        {
          return copyWith(
            url: FhirCanonical.empty(),
          );
        }
      case 'mode':
        {
          return copyWith(
            mode: StructureMapModelMode.empty(),
          );
        }
      case 'alias':
        {
          return copyWith(
            alias: FhirString.empty(),
          );
        }
      case 'documentation':
        {
          return copyWith(
            documentation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapStructure clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool alias = false,
    bool documentation = false,
  }) {
    return StructureMapStructure(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      mode: mode,
      alias: alias ? null : this.alias,
      documentation: documentation ? null : this.documentation,
    );
  }

  @override
  StructureMapStructure clone() => throw UnimplementedError();
  @override
  StructureMapStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    StructureMapModelMode? mode,
    FhirString? alias,
    FhirString? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapStructure(
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
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      alias: alias?.copyWith(
            objectPath: '$newObjectPath.alias',
          ) ??
          this.alias,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapStructure) {
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
      url,
      o.url,
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
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapGroup]
/// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapGroup]

  const StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.extends_,
    required this.typeMode,
    this.documentation,
    required this.input,
    required this.rule,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapGroup.empty() => StructureMapGroup(
        name: FhirId.empty(),
        typeMode: StructureMapGroupTypeMode.values.first,
        input: <StructureMapInput>[],
        rule: <StructureMapRule>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group';
    return StructureMapGroup(
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
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
        '$objectPath.name',
      )!,
      extends_: JsonParser.parsePrimitive<FhirId>(
        json,
        'extends',
        FhirId.fromJson,
        '$objectPath.extends',
      ),
      typeMode: JsonParser.parsePrimitive<StructureMapGroupTypeMode>(
        json,
        'typeMode',
        StructureMapGroupTypeMode.fromJson,
        '$objectPath.typeMode',
      )!,
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
      input: (json['input'] as List<dynamic>)
          .map<StructureMapInput>(
            (v) => StructureMapInput.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>)
          .map<StructureMapRule>(
            (v) => StructureMapRule.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMapGroup]
  /// from a [String] or [YamlMap] object
  factory StructureMapGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapGroup';

  /// [name]
  /// A unique name for the group for the convenience of human readers.
  final FhirId name;

  /// [extends_]
  /// Another group that this group adds rules to.
  final FhirId? extends_;

  /// [typeMode]
  /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  final StructureMapGroupTypeMode typeMode;

  /// [documentation]
  /// Additional supporting documentation that explains the purpose of the
  /// group and the types of mappings within it.
  final FhirString? documentation;

  /// [input]
  /// A name assigned to an instance of data. The instance must be provided
  /// when the mapping is invoked.
  final List<StructureMapInput> input;

  /// [rule]
  /// Transform Rule from source to target.
  final List<StructureMapRule> rule;
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
      'name',
      name,
    );
    addField(
      'extends',
      extends_,
    );
    addField(
      'typeMode',
      typeMode,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'input',
      input,
    );
    addField(
      'rule',
      rule,
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
      'name',
      'extends',
      'typeMode',
      'documentation',
      'input',
      'rule',
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
      case 'extends':
        if (extends_ != null) {
          fields.add(extends_!);
        }
      case 'typeMode':
        fields.add(typeMode);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'input':
        fields.addAll(input);
      case 'rule':
        fields.addAll(rule);
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
      case 'name':
        {
          if (child is FhirId) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extends':
        {
          if (child is FhirId) {
            return copyWith(extends_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'typeMode':
        {
          if (child is StructureMapGroupTypeMode) {
            return copyWith(typeMode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'input':
        {
          if (child is List<StructureMapInput>) {
            // Add all elements from passed list
            final newList = [...input, ...child];
            return copyWith(input: newList);
          } else if (child is StructureMapInput) {
            // Add single element to existing list or create new list
            final newList = [
              ...input,
              child,
            ];
            return copyWith(input: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rule':
        {
          if (child is List<StructureMapRule>) {
            // Add all elements from passed list
            final newList = [...rule, ...child];
            return copyWith(rule: newList);
          } else if (child is StructureMapRule) {
            // Add single element to existing list or create new list
            final newList = [
              ...rule,
              child,
            ];
            return copyWith(rule: newList);
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
      case 'name':
        return ['FhirId'];
      case 'extends':
        return ['FhirId'];
      case 'typeMode':
        return ['FhirCode'];
      case 'documentation':
        return ['FhirString'];
      case 'input':
        return ['StructureMapInput'];
      case 'rule':
        return ['StructureMapRule'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapGroup]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapGroup createProperty(
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
      case 'name':
        {
          return copyWith(
            name: FhirId.empty(),
          );
        }
      case 'extends':
        {
          return copyWith(
            extends_: FhirId.empty(),
          );
        }
      case 'typeMode':
        {
          return copyWith(
            typeMode: StructureMapGroupTypeMode.empty(),
          );
        }
      case 'documentation':
        {
          return copyWith(
            documentation: FhirString.empty(),
          );
        }
      case 'input':
        {
          return copyWith(
            input: <StructureMapInput>[],
          );
        }
      case 'rule':
        {
          return copyWith(
            rule: <StructureMapRule>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapGroup clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool extends_ = false,
    bool documentation = false,
  }) {
    return StructureMapGroup(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      extends_: extends_ ? null : this.extends_,
      typeMode: typeMode,
      documentation: documentation ? null : this.documentation,
      input: input,
      rule: rule,
    );
  }

  @override
  StructureMapGroup clone() => throw UnimplementedError();
  @override
  StructureMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirId? extends_,
    StructureMapGroupTypeMode? typeMode,
    FhirString? documentation,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapGroup(
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
      extends_: extends_?.copyWith(
            objectPath: '$newObjectPath.extends',
          ) ??
          this.extends_,
      typeMode: typeMode?.copyWith(
            objectPath: '$newObjectPath.typeMode',
          ) ??
          this.typeMode,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      input: input
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.input',
                ),
              )
              .toList() ??
          this.input,
      rule: rule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.rule',
                ),
              )
              .toList() ??
          this.rule,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapGroup) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      extends_,
      o.extends_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      typeMode,
      o.typeMode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<StructureMapInput>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<StructureMapRule>(
      rule,
      o.rule,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapInput]
/// A name assigned to an instance of data. The instance must be provided
/// when the mapping is invoked.
class StructureMapInput extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapInput]

  const StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    required this.mode,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.input',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapInput.empty() => StructureMapInput(
        name: FhirId.empty(),
        mode: StructureMapInputMode.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapInput.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.input';
    return StructureMapInput(
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
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
        '$objectPath.name',
      )!,
      type: JsonParser.parsePrimitive<FhirString>(
        json,
        'type',
        FhirString.fromJson,
        '$objectPath.type',
      ),
      mode: JsonParser.parsePrimitive<StructureMapInputMode>(
        json,
        'mode',
        StructureMapInputMode.fromJson,
        '$objectPath.mode',
      )!,
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapInput]
  /// from a [String] or [YamlMap] object
  factory StructureMapInput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapInput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapInput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapInput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapInput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapInput';

  /// [name]
  /// Name for this instance of data.
  final FhirId name;

  /// [type]
  /// Type for this instance of data.
  final FhirString? type;

  /// [mode]
  /// Mode for this instance of data.
  final StructureMapInputMode mode;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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
      'name',
      name,
    );
    addField(
      'type',
      type,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'documentation',
      documentation,
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
      'name',
      'type',
      'mode',
      'documentation',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'mode':
        fields.add(mode);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
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
      case 'name':
        {
          if (child is FhirId) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FhirString) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mode':
        {
          if (child is StructureMapInputMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
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
      case 'name':
        return ['FhirId'];
      case 'type':
        return ['FhirString'];
      case 'mode':
        return ['FhirCode'];
      case 'documentation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapInput]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapInput createProperty(
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
      case 'name':
        {
          return copyWith(
            name: FhirId.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: FhirString.empty(),
          );
        }
      case 'mode':
        {
          return copyWith(
            mode: StructureMapInputMode.empty(),
          );
        }
      case 'documentation':
        {
          return copyWith(
            documentation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapInput clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool documentation = false,
  }) {
    return StructureMapInput(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      type: type ? null : this.type,
      mode: mode,
      documentation: documentation ? null : this.documentation,
    );
  }

  @override
  StructureMapInput clone() => throw UnimplementedError();
  @override
  StructureMapInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirString? type,
    StructureMapInputMode? mode,
    FhirString? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapInput(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapInput) {
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
      name,
      o.name,
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
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapRule]
/// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapRule]

  const StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapRule.empty() => StructureMapRule(
        name: FhirId.empty(),
        source: <StructureMapSource>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapRule.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule';
    return StructureMapRule(
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
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
        '$objectPath.name',
      )!,
      source: (json['source'] as List<dynamic>)
          .map<StructureMapSource>(
            (v) => StructureMapSource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<StructureMapTarget>(
            (v) => StructureMapTarget.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<StructureMapRule>(
            (v) => StructureMapRule.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
      dependent: (json['dependent'] as List<dynamic>?)
          ?.map<StructureMapDependent>(
            (v) => StructureMapDependent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dependent',
              },
            ),
          )
          .toList(),
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapRule]
  /// from a [String] or [YamlMap] object
  factory StructureMapRule.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapRule.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapRule.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapRule '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapRule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapRule.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapRule';

  /// [name]
  /// Name of the rule for internal references.
  final FhirId name;

  /// [source]
  /// Source inputs to the mapping.
  final List<StructureMapSource> source;

  /// [target]
  /// Content to create because of this mapping rule.
  final List<StructureMapTarget>? target;

  /// [rule]
  /// Rules contained in this rule.
  final List<StructureMapRule>? rule;

  /// [dependent]
  /// Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? dependent;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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
      'name',
      name,
    );
    addField(
      'source',
      source,
    );
    addField(
      'target',
      target,
    );
    addField(
      'rule',
      rule,
    );
    addField(
      'dependent',
      dependent,
    );
    addField(
      'documentation',
      documentation,
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
      'name',
      'source',
      'target',
      'rule',
      'dependent',
      'documentation',
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
      case 'source':
        fields.addAll(source);
      case 'target':
        if (target != null) {
          fields.addAll(target!);
        }
      case 'rule':
        if (rule != null) {
          fields.addAll(rule!);
        }
      case 'dependent':
        if (dependent != null) {
          fields.addAll(dependent!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
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
      case 'name':
        {
          if (child is FhirId) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is List<StructureMapSource>) {
            // Add all elements from passed list
            final newList = [...source, ...child];
            return copyWith(source: newList);
          } else if (child is StructureMapSource) {
            // Add single element to existing list or create new list
            final newList = [
              ...source,
              child,
            ];
            return copyWith(source: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is List<StructureMapTarget>) {
            // Add all elements from passed list
            final newList = [...?target, ...child];
            return copyWith(target: newList);
          } else if (child is StructureMapTarget) {
            // Add single element to existing list or create new list
            final newList = [
              ...?target,
              child,
            ];
            return copyWith(target: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rule':
        {
          if (child is List<StructureMapRule>) {
            // Add all elements from passed list
            final newList = [...?rule, ...child];
            return copyWith(rule: newList);
          } else if (child is StructureMapRule) {
            // Add single element to existing list or create new list
            final newList = [
              ...?rule,
              child,
            ];
            return copyWith(rule: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dependent':
        {
          if (child is List<StructureMapDependent>) {
            // Add all elements from passed list
            final newList = [...?dependent, ...child];
            return copyWith(dependent: newList);
          } else if (child is StructureMapDependent) {
            // Add single element to existing list or create new list
            final newList = [
              ...?dependent,
              child,
            ];
            return copyWith(dependent: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
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
      case 'name':
        return ['FhirId'];
      case 'source':
        return ['StructureMapSource'];
      case 'target':
        return ['StructureMapTarget'];
      case 'rule':
        return ['StructureMapRule'];
      case 'dependent':
        return ['StructureMapDependent'];
      case 'documentation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapRule]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapRule createProperty(
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
      case 'name':
        {
          return copyWith(
            name: FhirId.empty(),
          );
        }
      case 'source':
        {
          return copyWith(
            source: <StructureMapSource>[],
          );
        }
      case 'target':
        {
          return copyWith(
            target: <StructureMapTarget>[],
          );
        }
      case 'rule':
        {
          return copyWith(
            rule: <StructureMapRule>[],
          );
        }
      case 'dependent':
        {
          return copyWith(
            dependent: <StructureMapDependent>[],
          );
        }
      case 'documentation':
        {
          return copyWith(
            documentation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapRule clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool target = false,
    bool rule = false,
    bool dependent = false,
    bool documentation = false,
  }) {
    return StructureMapRule(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      source: source,
      target: target ? null : this.target,
      rule: rule ? null : this.rule,
      dependent: dependent ? null : this.dependent,
      documentation: documentation ? null : this.documentation,
    );
  }

  @override
  StructureMapRule clone() => throw UnimplementedError();
  @override
  StructureMapRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapRule(
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
      source: source
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.source',
                ),
              )
              .toList() ??
          this.source,
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
      rule: rule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.rule',
                ),
              )
              .toList() ??
          this.rule,
      dependent: dependent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dependent',
                ),
              )
              .toList() ??
          this.dependent,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapRule) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<StructureMapSource>(
      source,
      o.source,
    )) {
      return false;
    }
    if (!listEquals<StructureMapTarget>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!listEquals<StructureMapRule>(
      rule,
      o.rule,
    )) {
      return false;
    }
    if (!listEquals<StructureMapDependent>(
      dependent,
      o.dependent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapSource]
/// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapSource]

  const StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.min,
    this.max,
    this.type,
    this.defaultValueX,
    this.element,
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule.source',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapSource.empty() => StructureMapSource(
        context: FhirId.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.source';
    return StructureMapSource(
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
      context: JsonParser.parsePrimitive<FhirId>(
        json,
        'context',
        FhirId.fromJson,
        '$objectPath.context',
      )!,
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
      type: JsonParser.parsePrimitive<FhirString>(
        json,
        'type',
        FhirString.fromJson,
        '$objectPath.type',
      ),
      defaultValueX:
          JsonParser.parsePolymorphic<DefaultValueXStructureMapSource>(
        json,
        {
          'defaultValueBase64Binary': FhirBase64Binary.fromJson,
          'defaultValueBoolean': FhirBoolean.fromJson,
          'defaultValueCanonical': FhirCanonical.fromJson,
          'defaultValueCode': FhirCode.fromJson,
          'defaultValueDate': FhirDate.fromJson,
          'defaultValueDateTime': FhirDateTime.fromJson,
          'defaultValueDecimal': FhirDecimal.fromJson,
          'defaultValueId': FhirId.fromJson,
          'defaultValueInstant': FhirInstant.fromJson,
          'defaultValueInteger': FhirInteger.fromJson,
          'defaultValueMarkdown': FhirMarkdown.fromJson,
          'defaultValueOid': FhirOid.fromJson,
          'defaultValuePositiveInt': FhirPositiveInt.fromJson,
          'defaultValueString': FhirString.fromJson,
          'defaultValueTime': FhirTime.fromJson,
          'defaultValueUnsignedInt': FhirUnsignedInt.fromJson,
          'defaultValueUri': FhirUri.fromJson,
          'defaultValueUrl': FhirUrl.fromJson,
          'defaultValueUuid': FhirUuid.fromJson,
          'defaultValueAddress': Address.fromJson,
          'defaultValueAge': Age.fromJson,
          'defaultValueAnnotation': Annotation.fromJson,
          'defaultValueAttachment': Attachment.fromJson,
          'defaultValueCodeableConcept': CodeableConcept.fromJson,
          'defaultValueCoding': Coding.fromJson,
          'defaultValueContactPoint': ContactPoint.fromJson,
          'defaultValueCount': Count.fromJson,
          'defaultValueDistance': Distance.fromJson,
          'defaultValueDuration': FhirDuration.fromJson,
          'defaultValueHumanName': HumanName.fromJson,
          'defaultValueIdentifier': Identifier.fromJson,
          'defaultValueMoney': Money.fromJson,
          'defaultValuePeriod': Period.fromJson,
          'defaultValueQuantity': Quantity.fromJson,
          'defaultValueRange': Range.fromJson,
          'defaultValueRatio': Ratio.fromJson,
          'defaultValueReference': Reference.fromJson,
          'defaultValueSampledData': SampledData.fromJson,
          'defaultValueSignature': Signature.fromJson,
          'defaultValueTiming': Timing.fromJson,
          'defaultValueContactDetail': ContactDetail.fromJson,
          'defaultValueContributor': Contributor.fromJson,
          'defaultValueDataRequirement': DataRequirement.fromJson,
          'defaultValueExpression': FhirExpression.fromJson,
          'defaultValueParameterDefinition': ParameterDefinition.fromJson,
          'defaultValueRelatedArtifact': RelatedArtifact.fromJson,
          'defaultValueTriggerDefinition': TriggerDefinition.fromJson,
          'defaultValueUsageContext': UsageContext.fromJson,
          'defaultValueDosage': Dosage.fromJson,
          'defaultValueMeta': FhirMeta.fromJson,
        },
        objectPath,
      ),
      element: JsonParser.parsePrimitive<FhirString>(
        json,
        'element',
        FhirString.fromJson,
        '$objectPath.element',
      ),
      listMode: JsonParser.parsePrimitive<StructureMapSourceListMode>(
        json,
        'listMode',
        StructureMapSourceListMode.fromJson,
        '$objectPath.listMode',
      ),
      variable: JsonParser.parsePrimitive<FhirId>(
        json,
        'variable',
        FhirId.fromJson,
        '$objectPath.variable',
      ),
      condition: JsonParser.parsePrimitive<FhirString>(
        json,
        'condition',
        FhirString.fromJson,
        '$objectPath.condition',
      ),
      check: JsonParser.parsePrimitive<FhirString>(
        json,
        'check',
        FhirString.fromJson,
        '$objectPath.check',
      ),
      logMessage: JsonParser.parsePrimitive<FhirString>(
        json,
        'logMessage',
        FhirString.fromJson,
        '$objectPath.logMessage',
      ),
    );
  }

  /// Deserialize [StructureMapSource]
  /// from a [String] or [YamlMap] object
  factory StructureMapSource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapSource';

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId context;

  /// [min]
  /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  final FhirInteger? min;

  /// [max]
  /// Specified maximum cardinality for the element - a number or a "*". This
  /// is optional; if present, it acts an implicit check on the input content
  /// (* just serves as documentation; it's the default value).
  final FhirString? max;

  /// [type]
  /// Specified type for the element. This works as a condition on the
  /// mapping - use for polymorphic elements.
  final FhirString? type;

  /// [defaultValueX]
  /// A value to use if there is no existing value in the source object.
  final DefaultValueXStructureMapSource? defaultValueX;

  /// Getter for [defaultValueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get defaultValueBase64Binary =>
      defaultValueX?.isAs<FhirBase64Binary>();

  /// Getter for [defaultValueBoolean] as a FhirBoolean
  FhirBoolean? get defaultValueBoolean => defaultValueX?.isAs<FhirBoolean>();

  /// Getter for [defaultValueCanonical] as a FhirCanonical
  FhirCanonical? get defaultValueCanonical =>
      defaultValueX?.isAs<FhirCanonical>();

  /// Getter for [defaultValueCode] as a FhirCode
  FhirCode? get defaultValueCode => defaultValueX?.isAs<FhirCode>();

  /// Getter for [defaultValueDate] as a FhirDate
  FhirDate? get defaultValueDate => defaultValueX?.isAs<FhirDate>();

  /// Getter for [defaultValueDateTime] as a FhirDateTime
  FhirDateTime? get defaultValueDateTime => defaultValueX?.isAs<FhirDateTime>();

  /// Getter for [defaultValueDecimal] as a FhirDecimal
  FhirDecimal? get defaultValueDecimal => defaultValueX?.isAs<FhirDecimal>();

  /// Getter for [defaultValueId] as a FhirId
  FhirId? get defaultValueId => defaultValueX?.isAs<FhirId>();

  /// Getter for [defaultValueInstant] as a FhirInstant
  FhirInstant? get defaultValueInstant => defaultValueX?.isAs<FhirInstant>();

  /// Getter for [defaultValueInteger] as a FhirInteger
  FhirInteger? get defaultValueInteger => defaultValueX?.isAs<FhirInteger>();

  /// Getter for [defaultValueMarkdown] as a FhirMarkdown
  FhirMarkdown? get defaultValueMarkdown => defaultValueX?.isAs<FhirMarkdown>();

  /// Getter for [defaultValueOid] as a FhirOid
  FhirOid? get defaultValueOid => defaultValueX?.isAs<FhirOid>();

  /// Getter for [defaultValuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get defaultValuePositiveInt =>
      defaultValueX?.isAs<FhirPositiveInt>();

  /// Getter for [defaultValueString] as a FhirString
  FhirString? get defaultValueString => defaultValueX?.isAs<FhirString>();

  /// Getter for [defaultValueTime] as a FhirTime
  FhirTime? get defaultValueTime => defaultValueX?.isAs<FhirTime>();

  /// Getter for [defaultValueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get defaultValueUnsignedInt =>
      defaultValueX?.isAs<FhirUnsignedInt>();

  /// Getter for [defaultValueUri] as a FhirUri
  FhirUri? get defaultValueUri => defaultValueX?.isAs<FhirUri>();

  /// Getter for [defaultValueUrl] as a FhirUrl
  FhirUrl? get defaultValueUrl => defaultValueX?.isAs<FhirUrl>();

  /// Getter for [defaultValueUuid] as a FhirUuid
  FhirUuid? get defaultValueUuid => defaultValueX?.isAs<FhirUuid>();

  /// Getter for [defaultValueAddress] as a Address
  Address? get defaultValueAddress => defaultValueX?.isAs<Address>();

  /// Getter for [defaultValueAge] as a Age
  Age? get defaultValueAge => defaultValueX?.isAs<Age>();

  /// Getter for [defaultValueAnnotation] as a Annotation
  Annotation? get defaultValueAnnotation => defaultValueX?.isAs<Annotation>();

  /// Getter for [defaultValueAttachment] as a Attachment
  Attachment? get defaultValueAttachment => defaultValueX?.isAs<Attachment>();

  /// Getter for [defaultValueCodeableConcept] as a CodeableConcept
  CodeableConcept? get defaultValueCodeableConcept =>
      defaultValueX?.isAs<CodeableConcept>();

  /// Getter for [defaultValueCoding] as a Coding
  Coding? get defaultValueCoding => defaultValueX?.isAs<Coding>();

  /// Getter for [defaultValueContactPoint] as a ContactPoint
  ContactPoint? get defaultValueContactPoint =>
      defaultValueX?.isAs<ContactPoint>();

  /// Getter for [defaultValueCount] as a Count
  Count? get defaultValueCount => defaultValueX?.isAs<Count>();

  /// Getter for [defaultValueDistance] as a Distance
  Distance? get defaultValueDistance => defaultValueX?.isAs<Distance>();

  /// Getter for [defaultValueDuration] as a FhirDuration
  FhirDuration? get defaultValueDuration => defaultValueX?.isAs<FhirDuration>();

  /// Getter for [defaultValueHumanName] as a HumanName
  HumanName? get defaultValueHumanName => defaultValueX?.isAs<HumanName>();

  /// Getter for [defaultValueIdentifier] as a Identifier
  Identifier? get defaultValueIdentifier => defaultValueX?.isAs<Identifier>();

  /// Getter for [defaultValueMoney] as a Money
  Money? get defaultValueMoney => defaultValueX?.isAs<Money>();

  /// Getter for [defaultValuePeriod] as a Period
  Period? get defaultValuePeriod => defaultValueX?.isAs<Period>();

  /// Getter for [defaultValueQuantity] as a Quantity
  Quantity? get defaultValueQuantity => defaultValueX?.isAs<Quantity>();

  /// Getter for [defaultValueRange] as a Range
  Range? get defaultValueRange => defaultValueX?.isAs<Range>();

  /// Getter for [defaultValueRatio] as a Ratio
  Ratio? get defaultValueRatio => defaultValueX?.isAs<Ratio>();

  /// Getter for [defaultValueReference] as a Reference
  Reference? get defaultValueReference => defaultValueX?.isAs<Reference>();

  /// Getter for [defaultValueSampledData] as a SampledData
  SampledData? get defaultValueSampledData =>
      defaultValueX?.isAs<SampledData>();

  /// Getter for [defaultValueSignature] as a Signature
  Signature? get defaultValueSignature => defaultValueX?.isAs<Signature>();

  /// Getter for [defaultValueTiming] as a Timing
  Timing? get defaultValueTiming => defaultValueX?.isAs<Timing>();

  /// Getter for [defaultValueContactDetail] as a ContactDetail
  ContactDetail? get defaultValueContactDetail =>
      defaultValueX?.isAs<ContactDetail>();

  /// Getter for [defaultValueContributor] as a Contributor
  Contributor? get defaultValueContributor =>
      defaultValueX?.isAs<Contributor>();

  /// Getter for [defaultValueDataRequirement] as a DataRequirement
  DataRequirement? get defaultValueDataRequirement =>
      defaultValueX?.isAs<DataRequirement>();

  /// Getter for [defaultValueExpression] as a FhirExpression
  FhirExpression? get defaultValueExpression =>
      defaultValueX?.isAs<FhirExpression>();

  /// Getter for [defaultValueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get defaultValueParameterDefinition =>
      defaultValueX?.isAs<ParameterDefinition>();

  /// Getter for [defaultValueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get defaultValueRelatedArtifact =>
      defaultValueX?.isAs<RelatedArtifact>();

  /// Getter for [defaultValueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get defaultValueTriggerDefinition =>
      defaultValueX?.isAs<TriggerDefinition>();

  /// Getter for [defaultValueUsageContext] as a UsageContext
  UsageContext? get defaultValueUsageContext =>
      defaultValueX?.isAs<UsageContext>();

  /// Getter for [defaultValueDosage] as a Dosage
  Dosage? get defaultValueDosage => defaultValueX?.isAs<Dosage>();

  /// Getter for [defaultValueMeta] as a FhirMeta
  FhirMeta? get defaultValueMeta => defaultValueX?.isAs<FhirMeta>();

  /// [element]
  /// Optional field for this source.
  final FhirString? element;

  /// [listMode]
  /// How to handle the list mode for this element.
  final StructureMapSourceListMode? listMode;

  /// [variable]
  /// Named context for field, if a field is specified.
  final FhirId? variable;

  /// [condition]
  /// FHIRPath expression - must be true or the rule does not apply.
  final FhirString? condition;

  /// [check]
  /// FHIRPath expression - must be true or the mapping engine throws an
  /// error instead of completing.
  final FhirString? check;

  /// [logMessage]
  /// A FHIRPath expression which specifies a message to put in the transform
  /// log when content matching the source rule is found.
  final FhirString? logMessage;
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
      'context',
      context,
    );
    addField(
      'min',
      min,
    );
    addField(
      'max',
      max,
    );
    addField(
      'type',
      type,
    );
    if (defaultValueX != null) {
      final fhirType = defaultValueX!.fhirType;
      addField(
        'defaultValue${fhirType.capitalize()}',
        defaultValueX,
      );
    }

    addField(
      'element',
      element,
    );
    addField(
      'listMode',
      listMode,
    );
    addField(
      'variable',
      variable,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'check',
      check,
    );
    addField(
      'logMessage',
      logMessage,
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
      'context',
      'min',
      'max',
      'type',
      'defaultValueX',
      'element',
      'listMode',
      'variable',
      'condition',
      'check',
      'logMessage',
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
      case 'context':
        fields.add(context);
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'defaultValue':
        fields.add(defaultValueX!);
      case 'defaultValueX':
        fields.add(defaultValueX!);
      case 'defaultValueBase64Binary':
        if (defaultValueX is FhirBase64Binary) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBoolean':
        if (defaultValueX is FhirBoolean) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCanonical':
        if (defaultValueX is FhirCanonical) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCode':
        if (defaultValueX is FhirCode) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDate':
        if (defaultValueX is FhirDate) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDateTime':
        if (defaultValueX is FhirDateTime) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDecimal':
        if (defaultValueX is FhirDecimal) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueId':
        if (defaultValueX is FhirId) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInstant':
        if (defaultValueX is FhirInstant) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInteger':
        if (defaultValueX is FhirInteger) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMarkdown':
        if (defaultValueX is FhirMarkdown) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueOid':
        if (defaultValueX is FhirOid) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePositiveInt':
        if (defaultValueX is FhirPositiveInt) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueString':
        if (defaultValueX is FhirString) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTime':
        if (defaultValueX is FhirTime) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUnsignedInt':
        if (defaultValueX is FhirUnsignedInt) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUri':
        if (defaultValueX is FhirUri) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUrl':
        if (defaultValueX is FhirUrl) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUuid':
        if (defaultValueX is FhirUuid) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAddress':
        if (defaultValueX is Address) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAge':
        if (defaultValueX is Age) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAnnotation':
        if (defaultValueX is Annotation) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAttachment':
        if (defaultValueX is Attachment) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableConcept':
        if (defaultValueX is CodeableConcept) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCoding':
        if (defaultValueX is Coding) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactPoint':
        if (defaultValueX is ContactPoint) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCount':
        if (defaultValueX is Count) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDistance':
        if (defaultValueX is Distance) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDuration':
        if (defaultValueX is FhirDuration) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueHumanName':
        if (defaultValueX is HumanName) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueIdentifier':
        if (defaultValueX is Identifier) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMoney':
        if (defaultValueX is Money) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePeriod':
        if (defaultValueX is Period) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueQuantity':
        if (defaultValueX is Quantity) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRange':
        if (defaultValueX is Range) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatio':
        if (defaultValueX is Ratio) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueReference':
        if (defaultValueX is Reference) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSampledData':
        if (defaultValueX is SampledData) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSignature':
        if (defaultValueX is Signature) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTiming':
        if (defaultValueX is Timing) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactDetail':
        if (defaultValueX is ContactDetail) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContributor':
        if (defaultValueX is Contributor) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDataRequirement':
        if (defaultValueX is DataRequirement) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueExpression':
        if (defaultValueX is FhirExpression) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueParameterDefinition':
        if (defaultValueX is ParameterDefinition) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRelatedArtifact':
        if (defaultValueX is RelatedArtifact) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTriggerDefinition':
        if (defaultValueX is TriggerDefinition) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUsageContext':
        if (defaultValueX is UsageContext) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDosage':
        if (defaultValueX is Dosage) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMeta':
        if (defaultValueX is FhirMeta) {
          fields.add(defaultValueX!);
        }
      case 'element':
        if (element != null) {
          fields.add(element!);
        }
      case 'listMode':
        if (listMode != null) {
          fields.add(listMode!);
        }
      case 'variable':
        if (variable != null) {
          fields.add(variable!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
      case 'check':
        if (check != null) {
          fields.add(check!);
        }
      case 'logMessage':
        if (logMessage != null) {
          fields.add(logMessage!);
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
      case 'context':
        {
          if (child is FhirId) {
            return copyWith(context: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'min':
        {
          if (child is FhirInteger) {
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
      case 'type':
        {
          if (child is FhirString) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueX':
        {
          if (child is DefaultValueXStructureMapSource) {
            return copyWith(defaultValueX: child);
          } else {
            if (child is FhirBase64Binary) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirCode) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDate) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirId) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirInstant) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirOid) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirPositiveInt) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirString) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirTime) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUnsignedInt) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUri) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUrl) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirUuid) {
              return copyWith(defaultValueX: child);
            }
            if (child is Address) {
              return copyWith(defaultValueX: child);
            }
            if (child is Age) {
              return copyWith(defaultValueX: child);
            }
            if (child is Annotation) {
              return copyWith(defaultValueX: child);
            }
            if (child is Attachment) {
              return copyWith(defaultValueX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(defaultValueX: child);
            }
            if (child is Coding) {
              return copyWith(defaultValueX: child);
            }
            if (child is ContactPoint) {
              return copyWith(defaultValueX: child);
            }
            if (child is Count) {
              return copyWith(defaultValueX: child);
            }
            if (child is Distance) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirDuration) {
              return copyWith(defaultValueX: child);
            }
            if (child is HumanName) {
              return copyWith(defaultValueX: child);
            }
            if (child is Identifier) {
              return copyWith(defaultValueX: child);
            }
            if (child is Money) {
              return copyWith(defaultValueX: child);
            }
            if (child is Period) {
              return copyWith(defaultValueX: child);
            }
            if (child is Quantity) {
              return copyWith(defaultValueX: child);
            }
            if (child is Range) {
              return copyWith(defaultValueX: child);
            }
            if (child is Ratio) {
              return copyWith(defaultValueX: child);
            }
            if (child is Reference) {
              return copyWith(defaultValueX: child);
            }
            if (child is SampledData) {
              return copyWith(defaultValueX: child);
            }
            if (child is Signature) {
              return copyWith(defaultValueX: child);
            }
            if (child is Timing) {
              return copyWith(defaultValueX: child);
            }
            if (child is ContactDetail) {
              return copyWith(defaultValueX: child);
            }
            if (child is Contributor) {
              return copyWith(defaultValueX: child);
            }
            if (child is DataRequirement) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirExpression) {
              return copyWith(defaultValueX: child);
            }
            if (child is ParameterDefinition) {
              return copyWith(defaultValueX: child);
            }
            if (child is RelatedArtifact) {
              return copyWith(defaultValueX: child);
            }
            if (child is TriggerDefinition) {
              return copyWith(defaultValueX: child);
            }
            if (child is UsageContext) {
              return copyWith(defaultValueX: child);
            }
            if (child is Dosage) {
              return copyWith(defaultValueX: child);
            }
            if (child is FhirMeta) {
              return copyWith(defaultValueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirId':
        {
          if (child is FhirId) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirString':
        {
          if (child is FhirString) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAddress':
        {
          if (child is Address) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAge':
        {
          if (child is Age) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAttachment':
        {
          if (child is Attachment) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCoding':
        {
          if (child is Coding) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCount':
        {
          if (child is Count) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDistance':
        {
          if (child is Distance) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueHumanName':
        {
          if (child is HumanName) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMoney':
        {
          if (child is Money) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePeriod':
        {
          if (child is Period) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueQuantity':
        {
          if (child is Quantity) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRange':
        {
          if (child is Range) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatio':
        {
          if (child is Ratio) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueReference':
        {
          if (child is Reference) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSampledData':
        {
          if (child is SampledData) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSignature':
        {
          if (child is Signature) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTiming':
        {
          if (child is Timing) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContributor':
        {
          if (child is Contributor) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDosage':
        {
          if (child is Dosage) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueFhirMeta':
        {
          if (child is FhirMeta) {
            return copyWith(defaultValueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'element':
        {
          if (child is FhirString) {
            return copyWith(element: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'listMode':
        {
          if (child is StructureMapSourceListMode) {
            return copyWith(listMode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variable':
        {
          if (child is FhirId) {
            return copyWith(variable: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is FhirString) {
            return copyWith(condition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'check':
        {
          if (child is FhirString) {
            return copyWith(check: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'logMessage':
        {
          if (child is FhirString) {
            return copyWith(logMessage: child);
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
      case 'context':
        return ['FhirId'];
      case 'min':
        return ['FhirInteger'];
      case 'max':
        return ['FhirString'];
      case 'type':
        return ['FhirString'];
      case 'defaultValue':
      case 'defaultValueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
          'FhirMeta',
        ];
      case 'defaultValueBase64Binary':
        return ['FhirBase64Binary'];
      case 'defaultValueBoolean':
        return ['FhirBoolean'];
      case 'defaultValueCanonical':
        return ['FhirCanonical'];
      case 'defaultValueCode':
        return ['FhirCode'];
      case 'defaultValueDate':
        return ['FhirDate'];
      case 'defaultValueDateTime':
        return ['FhirDateTime'];
      case 'defaultValueDecimal':
        return ['FhirDecimal'];
      case 'defaultValueId':
        return ['FhirId'];
      case 'defaultValueInstant':
        return ['FhirInstant'];
      case 'defaultValueInteger':
        return ['FhirInteger'];
      case 'defaultValueMarkdown':
        return ['FhirMarkdown'];
      case 'defaultValueOid':
        return ['FhirOid'];
      case 'defaultValuePositiveInt':
        return ['FhirPositiveInt'];
      case 'defaultValueString':
        return ['FhirString'];
      case 'defaultValueTime':
        return ['FhirTime'];
      case 'defaultValueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'defaultValueUri':
        return ['FhirUri'];
      case 'defaultValueUrl':
        return ['FhirUrl'];
      case 'defaultValueUuid':
        return ['FhirUuid'];
      case 'defaultValueAddress':
        return ['Address'];
      case 'defaultValueAge':
        return ['Age'];
      case 'defaultValueAnnotation':
        return ['Annotation'];
      case 'defaultValueAttachment':
        return ['Attachment'];
      case 'defaultValueCodeableConcept':
        return ['CodeableConcept'];
      case 'defaultValueCoding':
        return ['Coding'];
      case 'defaultValueContactPoint':
        return ['ContactPoint'];
      case 'defaultValueCount':
        return ['Count'];
      case 'defaultValueDistance':
        return ['Distance'];
      case 'defaultValueDuration':
        return ['FhirDuration'];
      case 'defaultValueHumanName':
        return ['HumanName'];
      case 'defaultValueIdentifier':
        return ['Identifier'];
      case 'defaultValueMoney':
        return ['Money'];
      case 'defaultValuePeriod':
        return ['Period'];
      case 'defaultValueQuantity':
        return ['Quantity'];
      case 'defaultValueRange':
        return ['Range'];
      case 'defaultValueRatio':
        return ['Ratio'];
      case 'defaultValueReference':
        return ['Reference'];
      case 'defaultValueSampledData':
        return ['SampledData'];
      case 'defaultValueSignature':
        return ['Signature'];
      case 'defaultValueTiming':
        return ['Timing'];
      case 'defaultValueContactDetail':
        return ['ContactDetail'];
      case 'defaultValueContributor':
        return ['Contributor'];
      case 'defaultValueDataRequirement':
        return ['DataRequirement'];
      case 'defaultValueExpression':
        return ['FhirExpression'];
      case 'defaultValueParameterDefinition':
        return ['ParameterDefinition'];
      case 'defaultValueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'defaultValueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'defaultValueUsageContext':
        return ['UsageContext'];
      case 'defaultValueDosage':
        return ['Dosage'];
      case 'defaultValueMeta':
        return ['FhirMeta'];
      case 'element':
        return ['FhirString'];
      case 'listMode':
        return ['FhirCode'];
      case 'variable':
        return ['FhirId'];
      case 'condition':
        return ['FhirString'];
      case 'check':
        return ['FhirString'];
      case 'logMessage':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapSource]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapSource createProperty(
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
      case 'context':
        {
          return copyWith(
            context: FhirId.empty(),
          );
        }
      case 'min':
        {
          return copyWith(
            min: FhirInteger.empty(),
          );
        }
      case 'max':
        {
          return copyWith(
            max: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: FhirString.empty(),
          );
        }
      case 'defaultValue':
      case 'defaultValueX':
      case 'defaultValueBase64Binary':
        {
          return copyWith(
            defaultValueX: FhirBase64Binary.empty(),
          );
        }
      case 'defaultValueBoolean':
        {
          return copyWith(
            defaultValueX: FhirBoolean.empty(),
          );
        }
      case 'defaultValueCanonical':
        {
          return copyWith(
            defaultValueX: FhirCanonical.empty(),
          );
        }
      case 'defaultValueCode':
        {
          return copyWith(
            defaultValueX: FhirCode.empty(),
          );
        }
      case 'defaultValueDate':
        {
          return copyWith(
            defaultValueX: FhirDate.empty(),
          );
        }
      case 'defaultValueDateTime':
        {
          return copyWith(
            defaultValueX: FhirDateTime.empty(),
          );
        }
      case 'defaultValueDecimal':
        {
          return copyWith(
            defaultValueX: FhirDecimal.empty(),
          );
        }
      case 'defaultValueId':
        {
          return copyWith(
            defaultValueX: FhirId.empty(),
          );
        }
      case 'defaultValueInstant':
        {
          return copyWith(
            defaultValueX: FhirInstant.empty(),
          );
        }
      case 'defaultValueInteger':
        {
          return copyWith(
            defaultValueX: FhirInteger.empty(),
          );
        }
      case 'defaultValueMarkdown':
        {
          return copyWith(
            defaultValueX: FhirMarkdown.empty(),
          );
        }
      case 'defaultValueOid':
        {
          return copyWith(
            defaultValueX: FhirOid.empty(),
          );
        }
      case 'defaultValuePositiveInt':
        {
          return copyWith(
            defaultValueX: FhirPositiveInt.empty(),
          );
        }
      case 'defaultValueString':
        {
          return copyWith(
            defaultValueX: FhirString.empty(),
          );
        }
      case 'defaultValueTime':
        {
          return copyWith(
            defaultValueX: FhirTime.empty(),
          );
        }
      case 'defaultValueUnsignedInt':
        {
          return copyWith(
            defaultValueX: FhirUnsignedInt.empty(),
          );
        }
      case 'defaultValueUri':
        {
          return copyWith(
            defaultValueX: FhirUri.empty(),
          );
        }
      case 'defaultValueUrl':
        {
          return copyWith(
            defaultValueX: FhirUrl.empty(),
          );
        }
      case 'defaultValueUuid':
        {
          return copyWith(
            defaultValueX: FhirUuid.empty(),
          );
        }
      case 'defaultValueAddress':
        {
          return copyWith(
            defaultValueX: Address.empty(),
          );
        }
      case 'defaultValueAge':
        {
          return copyWith(
            defaultValueX: Age.empty(),
          );
        }
      case 'defaultValueAnnotation':
        {
          return copyWith(
            defaultValueX: Annotation.empty(),
          );
        }
      case 'defaultValueAttachment':
        {
          return copyWith(
            defaultValueX: Attachment.empty(),
          );
        }
      case 'defaultValueCodeableConcept':
        {
          return copyWith(
            defaultValueX: CodeableConcept.empty(),
          );
        }
      case 'defaultValueCoding':
        {
          return copyWith(
            defaultValueX: Coding.empty(),
          );
        }
      case 'defaultValueContactPoint':
        {
          return copyWith(
            defaultValueX: ContactPoint.empty(),
          );
        }
      case 'defaultValueCount':
        {
          return copyWith(
            defaultValueX: Count.empty(),
          );
        }
      case 'defaultValueDistance':
        {
          return copyWith(
            defaultValueX: Distance.empty(),
          );
        }
      case 'defaultValueDuration':
        {
          return copyWith(
            defaultValueX: FhirDuration.empty(),
          );
        }
      case 'defaultValueHumanName':
        {
          return copyWith(
            defaultValueX: HumanName.empty(),
          );
        }
      case 'defaultValueIdentifier':
        {
          return copyWith(
            defaultValueX: Identifier.empty(),
          );
        }
      case 'defaultValueMoney':
        {
          return copyWith(
            defaultValueX: Money.empty(),
          );
        }
      case 'defaultValuePeriod':
        {
          return copyWith(
            defaultValueX: Period.empty(),
          );
        }
      case 'defaultValueQuantity':
        {
          return copyWith(
            defaultValueX: Quantity.empty(),
          );
        }
      case 'defaultValueRange':
        {
          return copyWith(
            defaultValueX: Range.empty(),
          );
        }
      case 'defaultValueRatio':
        {
          return copyWith(
            defaultValueX: Ratio.empty(),
          );
        }
      case 'defaultValueReference':
        {
          return copyWith(
            defaultValueX: Reference.empty(),
          );
        }
      case 'defaultValueSampledData':
        {
          return copyWith(
            defaultValueX: SampledData.empty(),
          );
        }
      case 'defaultValueSignature':
        {
          return copyWith(
            defaultValueX: Signature.empty(),
          );
        }
      case 'defaultValueTiming':
        {
          return copyWith(
            defaultValueX: Timing.empty(),
          );
        }
      case 'defaultValueContactDetail':
        {
          return copyWith(
            defaultValueX: ContactDetail.empty(),
          );
        }
      case 'defaultValueContributor':
        {
          return copyWith(
            defaultValueX: Contributor.empty(),
          );
        }
      case 'defaultValueDataRequirement':
        {
          return copyWith(
            defaultValueX: DataRequirement.empty(),
          );
        }
      case 'defaultValueExpression':
        {
          return copyWith(
            defaultValueX: FhirExpression.empty(),
          );
        }
      case 'defaultValueParameterDefinition':
        {
          return copyWith(
            defaultValueX: ParameterDefinition.empty(),
          );
        }
      case 'defaultValueRelatedArtifact':
        {
          return copyWith(
            defaultValueX: RelatedArtifact.empty(),
          );
        }
      case 'defaultValueTriggerDefinition':
        {
          return copyWith(
            defaultValueX: TriggerDefinition.empty(),
          );
        }
      case 'defaultValueUsageContext':
        {
          return copyWith(
            defaultValueX: UsageContext.empty(),
          );
        }
      case 'defaultValueDosage':
        {
          return copyWith(
            defaultValueX: Dosage.empty(),
          );
        }
      case 'defaultValueMeta':
        {
          return copyWith(
            defaultValueX: FhirMeta.empty(),
          );
        }
      case 'element':
        {
          return copyWith(
            element: FhirString.empty(),
          );
        }
      case 'listMode':
        {
          return copyWith(
            listMode: StructureMapSourceListMode.empty(),
          );
        }
      case 'variable':
        {
          return copyWith(
            variable: FhirId.empty(),
          );
        }
      case 'condition':
        {
          return copyWith(
            condition: FhirString.empty(),
          );
        }
      case 'check':
        {
          return copyWith(
            check: FhirString.empty(),
          );
        }
      case 'logMessage':
        {
          return copyWith(
            logMessage: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapSource clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool min = false,
    bool max = false,
    bool type = false,
    bool defaultValue = false,
    bool element = false,
    bool listMode = false,
    bool variable = false,
    bool condition = false,
    bool check = false,
    bool logMessage = false,
  }) {
    return StructureMapSource(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      context: context,
      min: min ? null : this.min,
      max: max ? null : this.max,
      type: type ? null : this.type,
      defaultValueX: defaultValue ? null : defaultValueX,
      element: element ? null : this.element,
      listMode: listMode ? null : this.listMode,
      variable: variable ? null : this.variable,
      condition: condition ? null : this.condition,
      check: check ? null : this.check,
      logMessage: logMessage ? null : this.logMessage,
    );
  }

  @override
  StructureMapSource clone() => throw UnimplementedError();
  @override
  StructureMapSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    FhirInteger? min,
    FhirString? max,
    FhirString? type,
    DefaultValueXStructureMapSource? defaultValueX,
    FhirString? element,
    StructureMapSourceListMode? listMode,
    FhirId? variable,
    FhirString? condition,
    FhirString? check,
    FhirString? logMessage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapSource(
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
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      defaultValueX: defaultValueX?.copyWith(
            objectPath: '$newObjectPath.defaultValueX',
          ) as DefaultValueXStructureMapSource? ??
          this.defaultValueX,
      element: element?.copyWith(
            objectPath: '$newObjectPath.element',
          ) ??
          this.element,
      listMode: listMode?.copyWith(
            objectPath: '$newObjectPath.listMode',
          ) ??
          this.listMode,
      variable: variable?.copyWith(
            objectPath: '$newObjectPath.variable',
          ) ??
          this.variable,
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
      check: check?.copyWith(
            objectPath: '$newObjectPath.check',
          ) ??
          this.check,
      logMessage: logMessage?.copyWith(
            objectPath: '$newObjectPath.logMessage',
          ) ??
          this.logMessage,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapSource) {
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
      context,
      o.context,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      defaultValueX,
      o.defaultValueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      element,
      o.element,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      listMode,
      o.listMode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      check,
      o.check,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      logMessage,
      o.logMessage,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapTarget]
/// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapTarget]

  const StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.contextType,
    this.element,
    this.variable,
    this.listMode,
    this.listRuleId,
    this.transform,
    this.parameter,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule.target',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapTarget.empty() => const StructureMapTarget();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.target';
    return StructureMapTarget(
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
      context: JsonParser.parsePrimitive<FhirId>(
        json,
        'context',
        FhirId.fromJson,
        '$objectPath.context',
      ),
      contextType: JsonParser.parsePrimitive<StructureMapContextType>(
        json,
        'contextType',
        StructureMapContextType.fromJson,
        '$objectPath.contextType',
      ),
      element: JsonParser.parsePrimitive<FhirString>(
        json,
        'element',
        FhirString.fromJson,
        '$objectPath.element',
      ),
      variable: JsonParser.parsePrimitive<FhirId>(
        json,
        'variable',
        FhirId.fromJson,
        '$objectPath.variable',
      ),
      listMode: JsonParser.parsePrimitiveList<StructureMapTargetListMode>(
        json,
        'listMode',
        StructureMapTargetListMode.fromJson,
        '$objectPath.listMode',
      ),
      listRuleId: JsonParser.parsePrimitive<FhirId>(
        json,
        'listRuleId',
        FhirId.fromJson,
        '$objectPath.listRuleId',
      ),
      transform: JsonParser.parsePrimitive<StructureMapTransform>(
        json,
        'transform',
        StructureMapTransform.fromJson,
        '$objectPath.transform',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<StructureMapParameter>(
            (v) => StructureMapParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMapTarget]
  /// from a [String] or [YamlMap] object
  factory StructureMapTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapTarget';

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId? context;

  /// [contextType]
  /// How to interpret the context.
  final StructureMapContextType? contextType;

  /// [element]
  /// Field to create in the context.
  final FhirString? element;

  /// [variable]
  /// Named context for field, if desired, and a field is specified.
  final FhirId? variable;

  /// [listMode]
  /// If field is a list, how to manage the list.
  final List<StructureMapTargetListMode>? listMode;

  /// [listRuleId]
  /// Internal rule reference for shared list items.
  final FhirId? listRuleId;

  /// [transform]
  /// How the data is copied / created.
  final StructureMapTransform? transform;

  /// [parameter]
  /// Parameters to the transform.
  final List<StructureMapParameter>? parameter;
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
      'context',
      context,
    );
    addField(
      'contextType',
      contextType,
    );
    addField(
      'element',
      element,
    );
    addField(
      'variable',
      variable,
    );
    addField(
      'listMode',
      listMode,
    );
    addField(
      'listRuleId',
      listRuleId,
    );
    addField(
      'transform',
      transform,
    );
    addField(
      'parameter',
      parameter,
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
      'context',
      'contextType',
      'element',
      'variable',
      'listMode',
      'listRuleId',
      'transform',
      'parameter',
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
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'contextType':
        if (contextType != null) {
          fields.add(contextType!);
        }
      case 'element':
        if (element != null) {
          fields.add(element!);
        }
      case 'variable':
        if (variable != null) {
          fields.add(variable!);
        }
      case 'listMode':
        if (listMode != null) {
          fields.addAll(listMode!);
        }
      case 'listRuleId':
        if (listRuleId != null) {
          fields.add(listRuleId!);
        }
      case 'transform':
        if (transform != null) {
          fields.add(transform!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
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
      case 'context':
        {
          if (child is FhirId) {
            return copyWith(context: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contextType':
        {
          if (child is StructureMapContextType) {
            return copyWith(contextType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'element':
        {
          if (child is FhirString) {
            return copyWith(element: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variable':
        {
          if (child is FhirId) {
            return copyWith(variable: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'listMode':
        {
          if (child is List<StructureMapTargetListMode>) {
            // Add all elements from passed list
            final newList = [...?listMode, ...child];
            return copyWith(listMode: newList);
          } else if (child is StructureMapTargetListMode) {
            // Add single element to existing list or create new list
            final newList = [
              ...?listMode,
              child,
            ];
            return copyWith(listMode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'listRuleId':
        {
          if (child is FhirId) {
            return copyWith(listRuleId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'transform':
        {
          if (child is StructureMapTransform) {
            return copyWith(transform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parameter':
        {
          if (child is List<StructureMapParameter>) {
            // Add all elements from passed list
            final newList = [...?parameter, ...child];
            return copyWith(parameter: newList);
          } else if (child is StructureMapParameter) {
            // Add single element to existing list or create new list
            final newList = [
              ...?parameter,
              child,
            ];
            return copyWith(parameter: newList);
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
      case 'context':
        return ['FhirId'];
      case 'contextType':
        return ['FhirCode'];
      case 'element':
        return ['FhirString'];
      case 'variable':
        return ['FhirId'];
      case 'listMode':
        return ['FhirCode'];
      case 'listRuleId':
        return ['FhirId'];
      case 'transform':
        return ['FhirCode'];
      case 'parameter':
        return ['StructureMapParameter'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapTarget]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapTarget createProperty(
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
      case 'context':
        {
          return copyWith(
            context: FhirId.empty(),
          );
        }
      case 'contextType':
        {
          return copyWith(
            contextType: StructureMapContextType.empty(),
          );
        }
      case 'element':
        {
          return copyWith(
            element: FhirString.empty(),
          );
        }
      case 'variable':
        {
          return copyWith(
            variable: FhirId.empty(),
          );
        }
      case 'listMode':
        {
          return copyWith(
            listMode: <StructureMapTargetListMode>[],
          );
        }
      case 'listRuleId':
        {
          return copyWith(
            listRuleId: FhirId.empty(),
          );
        }
      case 'transform':
        {
          return copyWith(
            transform: StructureMapTransform.empty(),
          );
        }
      case 'parameter':
        {
          return copyWith(
            parameter: <StructureMapParameter>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapTarget clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool context = false,
    bool contextType = false,
    bool element = false,
    bool variable = false,
    bool listMode = false,
    bool listRuleId = false,
    bool transform = false,
    bool parameter = false,
  }) {
    return StructureMapTarget(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      context: context ? null : this.context,
      contextType: contextType ? null : this.contextType,
      element: element ? null : this.element,
      variable: variable ? null : this.variable,
      listMode: listMode ? null : this.listMode,
      listRuleId: listRuleId ? null : this.listRuleId,
      transform: transform ? null : this.transform,
      parameter: parameter ? null : this.parameter,
    );
  }

  @override
  StructureMapTarget clone() => throw UnimplementedError();
  @override
  StructureMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    StructureMapContextType? contextType,
    FhirString? element,
    FhirId? variable,
    List<StructureMapTargetListMode>? listMode,
    FhirId? listRuleId,
    StructureMapTransform? transform,
    List<StructureMapParameter>? parameter,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapTarget(
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
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      contextType: contextType?.copyWith(
            objectPath: '$newObjectPath.contextType',
          ) ??
          this.contextType,
      element: element?.copyWith(
            objectPath: '$newObjectPath.element',
          ) ??
          this.element,
      variable: variable?.copyWith(
            objectPath: '$newObjectPath.variable',
          ) ??
          this.variable,
      listMode: listMode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.listMode',
                ),
              )
              .toList() ??
          this.listMode,
      listRuleId: listRuleId?.copyWith(
            objectPath: '$newObjectPath.listRuleId',
          ) ??
          this.listRuleId,
      transform: transform?.copyWith(
            objectPath: '$newObjectPath.transform',
          ) ??
          this.transform,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapTarget) {
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
      context,
      o.context,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contextType,
      o.contextType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      element,
      o.element,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!listEquals<StructureMapTargetListMode>(
      listMode,
      o.listMode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      listRuleId,
      o.listRuleId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!listEquals<StructureMapParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapParameter]
/// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapParameter]

  const StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule.target.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapParameter.empty() => StructureMapParameter(
        valueX: FhirId.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.target.parameter';
    return StructureMapParameter(
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
      valueX: JsonParser.parsePolymorphic<ValueXStructureMapParameter>(
        json,
        {
          'valueId': FhirId.fromJson,
          'valueString': FhirString.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [StructureMapParameter]
  /// from a [String] or [YamlMap] object
  factory StructureMapParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapParameter';

  /// [valueX]
  /// Parameter value - variable or literal.
  final ValueXStructureMapParameter valueX;

  /// Getter for [valueId] as a FhirId
  FhirId? get valueId => valueX.isAs<FhirId>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueId':
        if (valueX is FhirId) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
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
      case 'valueX':
        {
          if (child is ValueXStructureMapParameter) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirId) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirId':
        {
          if (child is FhirId) {
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
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
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
      case 'value':
      case 'valueX':
        return [
          'FhirId',
          'FhirString',
          'FhirBoolean',
          'FhirInteger',
          'FhirDecimal',
        ];
      case 'valueId':
        return ['FhirId'];
      case 'valueString':
        return ['FhirString'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapParameter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapParameter createProperty(
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
      case 'value':
      case 'valueX':
      case 'valueId':
        {
          return copyWith(
            valueX: FhirId.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
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
  StructureMapParameter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return StructureMapParameter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      valueX: valueX,
    );
  }

  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXStructureMapParameter? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapParameter(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXStructureMapParameter? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapParameter) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapDependent]
/// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapDependent]

  const StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.variable,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule.dependent',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory StructureMapDependent.empty() => StructureMapDependent(
        name: FhirId.empty(),
        variable: <FhirString>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapDependent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.dependent';
    return StructureMapDependent(
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
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
        '$objectPath.name',
      )!,
      variable: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'variable',
        FhirString.fromJson,
        '$objectPath.variable',
      )!,
    );
  }

  /// Deserialize [StructureMapDependent]
  /// from a [String] or [YamlMap] object
  factory StructureMapDependent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapDependent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapDependent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapDependent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapDependent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapDependent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapDependent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapDependent';

  /// [name]
  /// Name of a rule or group to apply.
  final FhirId name;

  /// [variable]
  /// Variable to pass to the rule or group.
  final List<FhirString> variable;
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
      'name',
      name,
    );
    addField(
      'variable',
      variable,
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
      'name',
      'variable',
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
      case 'variable':
        fields.addAll(variable);
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
      case 'name':
        {
          if (child is FhirId) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variable':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...variable, ...child];
            return copyWith(variable: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...variable,
              child,
            ];
            return copyWith(variable: newList);
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
      case 'name':
        return ['FhirId'];
      case 'variable':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapDependent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  StructureMapDependent createProperty(
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
      case 'name':
        {
          return copyWith(
            name: FhirId.empty(),
          );
        }
      case 'variable':
        {
          return copyWith(
            variable: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  StructureMapDependent clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return StructureMapDependent(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      variable: variable,
    );
  }

  @override
  StructureMapDependent clone() => throw UnimplementedError();
  @override
  StructureMapDependent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<FhirString>? variable,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureMapDependent(
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
      variable: variable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.variable',
                ),
              )
              .toList() ??
          this.variable,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! StructureMapDependent) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      variable,
      o.variable,
    )) {
      return false;
    }
    return true;
  }
}
