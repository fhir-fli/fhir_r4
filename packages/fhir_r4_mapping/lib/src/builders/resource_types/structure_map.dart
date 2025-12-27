import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        StructureMap,
        StructureMapDependent,
        StructureMapGroup,
        StructureMapInput,
        StructureMapParameter,
        StructureMapRule,
        StructureMapSource,
        StructureMapStructure,
        StructureMapTarget,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [StructureMapBuilder]
/// A Map of relationships between 2 structures that can be used to
/// transform data.
class StructureMapBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [StructureMapBuilder]

  StructureMapBuilder({
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
    this.structure,
    this.import_,
    this.group,
  }) : super(
          objectPath: 'StructureMap',
          resourceType: R4ResourceType.StructureMap,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapBuilder.empty() => StructureMapBuilder(
        url: FhirUriBuilder.empty(),
        name: FhirStringBuilder.empty(),
        status: PublicationStatusBuilder.values.first,
        group: <StructureMapGroupBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap';
    return StructureMapBuilder(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
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
      structure: (json['structure'] as List<dynamic>?)
          ?.map<StructureMapStructureBuilder>(
            (v) => StructureMapStructureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.structure',
              },
            ),
          )
          .toList(),
      import_: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'import',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.import',
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<StructureMapGroupBuilder>(
            (v) => StructureMapGroupBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMapBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [name]
  /// A natural language name identifying the structure map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure map.
  FhirStringBuilder? title;

  /// [purpose]
  /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the structure map and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure map.
  FhirMarkdownBuilder? copyright;

  /// [structure]
  /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are
  /// produced.
  List<StructureMapStructureBuilder>? structure;

  /// [import_]
  /// Other maps used by this map (canonical URLs).
  List<FhirCanonicalBuilder>? import_;

  /// [group]
  /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  List<StructureMapGroupBuilder>? group;

  /// Converts a [StructureMapBuilder]
  /// to [StructureMap]
  @override
  StructureMap build() => StructureMap.fromJson(toJson());

  /// Converts a [StructureMapBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('structure', structure);
    addField('import', import_);
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
      'structure',
      'import',
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
      case 'structure':
        if (structure != null) {
          fields.addAll(structure!);
        }
      case 'import':
        if (import_ != null) {
          fields.addAll(import_!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structure':
        {
          if (child is List<StructureMapStructureBuilder>) {
            // Replace or create new list
            structure = child;
            return;
          } else if (child is StructureMapStructureBuilder) {
            // Add single element to existing list or create new list
            structure = [
              ...(structure ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'import':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            import_ = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            import_ = [
              ...(import_ ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              import_ = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                import_ = [
                  ...(import_ ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'group':
        {
          if (child is List<StructureMapGroupBuilder>) {
            // Replace or create new list
            group = child;
            return;
          } else if (child is StructureMapGroupBuilder) {
            // Add single element to existing list or create new list
            group = [
              ...(group ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'structure':
        return ['StructureMapStructureBuilder'];
      case 'import':
        return ['FhirCanonicalBuilder'];
      case 'group':
        return ['StructureMapGroupBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapBuilder]
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
          identifier = <IdentifierBuilder>[];
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
      case 'structure':
        {
          structure = <StructureMapStructureBuilder>[];
          return;
        }
      case 'import':
        {
          import_ = <FhirCanonicalBuilder>[];
          return;
        }
      case 'group':
        {
          group = <StructureMapGroupBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapBuilder clone() => throw UnimplementedError();
  @override
  StructureMapBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
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
    List<StructureMapStructureBuilder>? structure,
    List<FhirCanonicalBuilder>? import_,
    List<StructureMapGroupBuilder>? group,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = StructureMapBuilder(
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
      group: group ?? this.group,
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
    if (o is! StructureMapBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<StructureMapStructureBuilder>(
      structure,
      o.structure,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      import_,
      o.import_,
    )) {
      return false;
    }
    if (!listEquals<StructureMapGroupBuilder>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapStructureBuilder]
/// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are
/// produced.
class StructureMapStructureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapStructureBuilder]

  StructureMapStructureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.mode,
    this.alias,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.structure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapStructureBuilder.empty() => StructureMapStructureBuilder(
        url: FhirCanonicalBuilder.empty(),
        mode: StructureMapModelModeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapStructureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.structure';
    return StructureMapStructureBuilder(
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
      url: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'url',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.url',
      ),
      mode: JsonParser.parsePrimitive<StructureMapModelModeBuilder>(
        json,
        'mode',
        StructureMapModelModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      alias: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'alias',
        FhirStringBuilder.fromJson,
        '$objectPath.alias',
      ),
      documentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentation',
        FhirStringBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapStructureBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapStructureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapStructureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapStructureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapStructureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapStructureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapStructureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapStructureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapStructure';

  /// [url]
  /// The canonical reference to the structure.
  FhirCanonicalBuilder? url;

  /// [mode]
  /// How the referenced structure is used in this mapping.
  StructureMapModelModeBuilder? mode;

  /// [alias]
  /// The name used for this type in the map.
  FhirStringBuilder? alias;

  /// [documentation]
  /// Documentation that describes how the structure is used in the mapping.
  FhirStringBuilder? documentation;

  /// Converts a [StructureMapStructureBuilder]
  /// to [StructureMapStructure]
  @override
  StructureMapStructure build() => StructureMapStructure.fromJson(toJson());

  /// Converts a [StructureMapStructureBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('url', url);
    addField('mode', mode);
    addField('alias', alias);
    addField('documentation', documentation);
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirCanonicalBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mode':
        {
          if (child is StructureMapModelModeBuilder) {
            mode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StructureMapModelModeBuilder(stringValue);
                mode = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alias':
        {
          if (child is FhirStringBuilder) {
            alias = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                alias = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is FhirStringBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                documentation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'url':
        return ['FhirCanonicalBuilder'];
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'alias':
        return ['FhirStringBuilder'];
      case 'documentation':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapStructureBuilder]
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
      case 'url':
        {
          url = FhirCanonicalBuilder.empty();
          return;
        }
      case 'mode':
        {
          mode = StructureMapModelModeBuilder.empty();
          return;
        }
      case 'alias':
        {
          alias = FhirStringBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapStructureBuilder clone() => throw UnimplementedError();
  @override
  StructureMapStructureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCanonicalBuilder? url,
    StructureMapModelModeBuilder? mode,
    FhirStringBuilder? alias,
    FhirStringBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapStructureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      mode: mode ?? this.mode,
      alias: alias ?? this.alias,
      documentation: documentation ?? this.documentation,
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
    if (o is! StructureMapStructureBuilder) {
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

/// [StructureMapGroupBuilder]
/// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapGroupBuilder]

  StructureMapGroupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.extends_,
    this.typeMode,
    this.documentation,
    this.input,
    this.rule,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapGroupBuilder.empty() => StructureMapGroupBuilder(
        name: FhirIdBuilder.empty(),
        typeMode: StructureMapGroupTypeModeBuilder.values.first,
        input: <StructureMapInputBuilder>[],
        rule: <StructureMapRuleBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group';
    return StructureMapGroupBuilder(
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
      name: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'name',
        FhirIdBuilder.fromJson,
        '$objectPath.name',
      ),
      extends_: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'extends',
        FhirIdBuilder.fromJson,
        '$objectPath.extends',
      ),
      typeMode: JsonParser.parsePrimitive<StructureMapGroupTypeModeBuilder>(
        json,
        'typeMode',
        StructureMapGroupTypeModeBuilder.fromJson,
        '$objectPath.typeMode',
      ),
      documentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentation',
        FhirStringBuilder.fromJson,
        '$objectPath.documentation',
      ),
      input: (json['input'] as List<dynamic>?)
          ?.map<StructureMapInputBuilder>(
            (v) => StructureMapInputBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<StructureMapRuleBuilder>(
            (v) => StructureMapRuleBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMapGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapGroupBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapGroup';

  /// [name]
  /// A unique name for the group for the convenience of human readers.
  FhirIdBuilder? name;

  /// [extends_]
  /// Another group that this group adds rules to.
  FhirIdBuilder? extends_;

  /// [typeMode]
  /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  StructureMapGroupTypeModeBuilder? typeMode;

  /// [documentation]
  /// Additional supporting documentation that explains the purpose of the
  /// group and the types of mappings within it.
  FhirStringBuilder? documentation;

  /// [input]
  /// A name assigned to an instance of data. The instance must be provided
  /// when the mapping is invoked.
  List<StructureMapInputBuilder>? input;

  /// [rule]
  /// Transform Rule from source to target.
  List<StructureMapRuleBuilder>? rule;

  /// Converts a [StructureMapGroupBuilder]
  /// to [StructureMapGroup]
  @override
  StructureMapGroup build() => StructureMapGroup.fromJson(toJson());

  /// Converts a [StructureMapGroupBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('extends', extends_);
    addField('typeMode', typeMode);
    addField('documentation', documentation);
    addField('input', input);
    addField('rule', rule);
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
      case 'extends':
        if (extends_ != null) {
          fields.add(extends_!);
        }
      case 'typeMode':
        if (typeMode != null) {
          fields.add(typeMode!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'rule':
        if (rule != null) {
          fields.addAll(rule!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirIdBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extends':
        {
          if (child is FhirIdBuilder) {
            extends_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                extends_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeMode':
        {
          if (child is StructureMapGroupTypeModeBuilder) {
            typeMode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StructureMapGroupTypeModeBuilder(stringValue);
                typeMode = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is FhirStringBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                documentation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'input':
        {
          if (child is List<StructureMapInputBuilder>) {
            // Replace or create new list
            input = child;
            return;
          } else if (child is StructureMapInputBuilder) {
            // Add single element to existing list or create new list
            input = [
              ...(input ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rule':
        {
          if (child is List<StructureMapRuleBuilder>) {
            // Replace or create new list
            rule = child;
            return;
          } else if (child is StructureMapRuleBuilder) {
            // Add single element to existing list or create new list
            rule = [
              ...(rule ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirIdBuilder'];
      case 'extends':
        return ['FhirIdBuilder'];
      case 'typeMode':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirStringBuilder'];
      case 'input':
        return ['StructureMapInputBuilder'];
      case 'rule':
        return ['StructureMapRuleBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapGroupBuilder]
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
          name = FhirIdBuilder.empty();
          return;
        }
      case 'extends':
        {
          extends_ = FhirIdBuilder.empty();
          return;
        }
      case 'typeMode':
        {
          typeMode = StructureMapGroupTypeModeBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirStringBuilder.empty();
          return;
        }
      case 'input':
        {
          input = <StructureMapInputBuilder>[];
          return;
        }
      case 'rule':
        {
          rule = <StructureMapRuleBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapGroupBuilder clone() => throw UnimplementedError();
  @override
  StructureMapGroupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? name,
    FhirIdBuilder? extends_,
    StructureMapGroupTypeModeBuilder? typeMode,
    FhirStringBuilder? documentation,
    List<StructureMapInputBuilder>? input,
    List<StructureMapRuleBuilder>? rule,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapGroupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      extends_: extends_ ?? this.extends_,
      typeMode: typeMode ?? this.typeMode,
      documentation: documentation ?? this.documentation,
      input: input ?? this.input,
      rule: rule ?? this.rule,
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
    if (o is! StructureMapGroupBuilder) {
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
    if (!listEquals<StructureMapInputBuilder>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<StructureMapRuleBuilder>(
      rule,
      o.rule,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapInputBuilder]
/// A name assigned to an instance of data. The instance must be provided
/// when the mapping is invoked.
class StructureMapInputBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapInputBuilder]

  StructureMapInputBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.mode,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.input',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapInputBuilder.empty() => StructureMapInputBuilder(
        name: FhirIdBuilder.empty(),
        mode: StructureMapInputModeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapInputBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.input';
    return StructureMapInputBuilder(
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
      name: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'name',
        FhirIdBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'type',
        FhirStringBuilder.fromJson,
        '$objectPath.type',
      ),
      mode: JsonParser.parsePrimitive<StructureMapInputModeBuilder>(
        json,
        'mode',
        StructureMapInputModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      documentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentation',
        FhirStringBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapInputBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapInputBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapInputBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapInputBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapInputBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapInputBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapInputBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapInputBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapInput';

  /// [name]
  /// Name for this instance of data.
  FhirIdBuilder? name;

  /// [type]
  /// Type for this instance of data.
  FhirStringBuilder? type;

  /// [mode]
  /// Mode for this instance of data.
  StructureMapInputModeBuilder? mode;

  /// [documentation]
  /// Documentation for this instance of data.
  FhirStringBuilder? documentation;

  /// Converts a [StructureMapInputBuilder]
  /// to [StructureMapInput]
  @override
  StructureMapInput build() => StructureMapInput.fromJson(toJson());

  /// Converts a [StructureMapInputBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('type', type);
    addField('mode', mode);
    addField('documentation', documentation);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirIdBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is FhirStringBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                type = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mode':
        {
          if (child is StructureMapInputModeBuilder) {
            mode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StructureMapInputModeBuilder(stringValue);
                mode = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is FhirStringBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                documentation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirIdBuilder'];
      case 'type':
        return ['FhirStringBuilder'];
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapInputBuilder]
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
          name = FhirIdBuilder.empty();
          return;
        }
      case 'type':
        {
          type = FhirStringBuilder.empty();
          return;
        }
      case 'mode':
        {
          mode = StructureMapInputModeBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapInputBuilder clone() => throw UnimplementedError();
  @override
  StructureMapInputBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? name,
    FhirStringBuilder? type,
    StructureMapInputModeBuilder? mode,
    FhirStringBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapInputBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
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
    if (o is! StructureMapInputBuilder) {
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

/// [StructureMapRuleBuilder]
/// Transform Rule from source to target.
class StructureMapRuleBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapRuleBuilder]

  StructureMapRuleBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapRuleBuilder.empty() => StructureMapRuleBuilder(
        name: FhirIdBuilder.empty(),
        source: <StructureMapSourceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapRuleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule';
    return StructureMapRuleBuilder(
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
      name: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'name',
        FhirIdBuilder.fromJson,
        '$objectPath.name',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<StructureMapSourceBuilder>(
            (v) => StructureMapSourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<StructureMapTargetBuilder>(
            (v) => StructureMapTargetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<StructureMapRuleBuilder>(
            (v) => StructureMapRuleBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
      dependent: (json['dependent'] as List<dynamic>?)
          ?.map<StructureMapDependentBuilder>(
            (v) => StructureMapDependentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dependent',
              },
            ),
          )
          .toList(),
      documentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentation',
        FhirStringBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [StructureMapRuleBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapRuleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapRuleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapRuleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapRuleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapRuleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapRuleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapRuleBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapRule';

  /// [name]
  /// Name of the rule for internal references.
  FhirIdBuilder? name;

  /// [source]
  /// Source inputs to the mapping.
  List<StructureMapSourceBuilder>? source;

  /// [target]
  /// Content to create because of this mapping rule.
  List<StructureMapTargetBuilder>? target;

  /// [rule]
  /// Rules contained in this rule.
  List<StructureMapRuleBuilder>? rule;

  /// [dependent]
  /// Which other rules to apply in the context of this rule.
  List<StructureMapDependentBuilder>? dependent;

  /// [documentation]
  /// Documentation for this instance of data.
  FhirStringBuilder? documentation;

  /// Converts a [StructureMapRuleBuilder]
  /// to [StructureMapRule]
  @override
  StructureMapRule build() => StructureMapRule.fromJson(toJson());

  /// Converts a [StructureMapRuleBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('source', source);
    addField('target', target);
    addField('rule', rule);
    addField('dependent', dependent);
    addField('documentation', documentation);
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
      case 'source':
        if (source != null) {
          fields.addAll(source!);
        }
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirIdBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<StructureMapSourceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is StructureMapSourceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'target':
        {
          if (child is List<StructureMapTargetBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is StructureMapTargetBuilder) {
            // Add single element to existing list or create new list
            target = [
              ...(target ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rule':
        {
          if (child is List<StructureMapRuleBuilder>) {
            // Replace or create new list
            rule = child;
            return;
          } else if (child is StructureMapRuleBuilder) {
            // Add single element to existing list or create new list
            rule = [
              ...(rule ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dependent':
        {
          if (child is List<StructureMapDependentBuilder>) {
            // Replace or create new list
            dependent = child;
            return;
          } else if (child is StructureMapDependentBuilder) {
            // Add single element to existing list or create new list
            dependent = [
              ...(dependent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is FhirStringBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                documentation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirIdBuilder'];
      case 'source':
        return ['StructureMapSourceBuilder'];
      case 'target':
        return ['StructureMapTargetBuilder'];
      case 'rule':
        return ['StructureMapRuleBuilder'];
      case 'dependent':
        return ['StructureMapDependentBuilder'];
      case 'documentation':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapRuleBuilder]
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
          name = FhirIdBuilder.empty();
          return;
        }
      case 'source':
        {
          source = <StructureMapSourceBuilder>[];
          return;
        }
      case 'target':
        {
          target = <StructureMapTargetBuilder>[];
          return;
        }
      case 'rule':
        {
          rule = <StructureMapRuleBuilder>[];
          return;
        }
      case 'dependent':
        {
          dependent = <StructureMapDependentBuilder>[];
          return;
        }
      case 'documentation':
        {
          documentation = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapRuleBuilder clone() => throw UnimplementedError();
  @override
  StructureMapRuleBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? name,
    List<StructureMapSourceBuilder>? source,
    List<StructureMapTargetBuilder>? target,
    List<StructureMapRuleBuilder>? rule,
    List<StructureMapDependentBuilder>? dependent,
    FhirStringBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapRuleBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      source: source ?? this.source,
      target: target ?? this.target,
      rule: rule ?? this.rule,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
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
    if (o is! StructureMapRuleBuilder) {
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
    if (!listEquals<StructureMapSourceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    if (!listEquals<StructureMapTargetBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!listEquals<StructureMapRuleBuilder>(
      rule,
      o.rule,
    )) {
      return false;
    }
    if (!listEquals<StructureMapDependentBuilder>(
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

/// [StructureMapSourceBuilder]
/// Source inputs to the mapping.
class StructureMapSourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapSourceBuilder]

  StructureMapSourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.min,
    this.max,
    this.type,
    DefaultValueXStructureMapSourceBuilder? defaultValueX,
    FhirBase64BinaryBuilder? defaultValueBase64Binary,
    FhirBooleanBuilder? defaultValueBoolean,
    FhirCanonicalBuilder? defaultValueCanonical,
    FhirCodeBuilder? defaultValueCode,
    FhirDateBuilder? defaultValueDate,
    FhirDateTimeBuilder? defaultValueDateTime,
    FhirDecimalBuilder? defaultValueDecimal,
    FhirIdBuilder? defaultValueId,
    FhirInstantBuilder? defaultValueInstant,
    FhirIntegerBuilder? defaultValueInteger,
    FhirMarkdownBuilder? defaultValueMarkdown,
    FhirOidBuilder? defaultValueOid,
    FhirPositiveIntBuilder? defaultValuePositiveInt,
    FhirStringBuilder? defaultValueString,
    FhirTimeBuilder? defaultValueTime,
    FhirUnsignedIntBuilder? defaultValueUnsignedInt,
    FhirUriBuilder? defaultValueUri,
    FhirUrlBuilder? defaultValueUrl,
    FhirUuidBuilder? defaultValueUuid,
    AddressBuilder? defaultValueAddress,
    AgeBuilder? defaultValueAge,
    AnnotationBuilder? defaultValueAnnotation,
    AttachmentBuilder? defaultValueAttachment,
    CodeableConceptBuilder? defaultValueCodeableConcept,
    CodingBuilder? defaultValueCoding,
    ContactPointBuilder? defaultValueContactPoint,
    CountBuilder? defaultValueCount,
    DistanceBuilder? defaultValueDistance,
    FhirDurationBuilder? defaultValueDuration,
    HumanNameBuilder? defaultValueHumanName,
    IdentifierBuilder? defaultValueIdentifier,
    MoneyBuilder? defaultValueMoney,
    PeriodBuilder? defaultValuePeriod,
    QuantityBuilder? defaultValueQuantity,
    RangeBuilder? defaultValueRange,
    RatioBuilder? defaultValueRatio,
    ReferenceBuilder? defaultValueReference,
    SampledDataBuilder? defaultValueSampledData,
    SignatureBuilder? defaultValueSignature,
    TimingBuilder? defaultValueTiming,
    ContactDetailBuilder? defaultValueContactDetail,
    ContributorBuilder? defaultValueContributor,
    DataRequirementBuilder? defaultValueDataRequirement,
    FhirExpressionBuilder? defaultValueExpression,
    ParameterDefinitionBuilder? defaultValueParameterDefinition,
    RelatedArtifactBuilder? defaultValueRelatedArtifact,
    TriggerDefinitionBuilder? defaultValueTriggerDefinition,
    UsageContextBuilder? defaultValueUsageContext,
    DosageBuilder? defaultValueDosage,
    FhirMetaBuilder? defaultValueMeta,
    this.element,
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
    super.disallowExtensions,
  })  : defaultValueX = defaultValueX ??
            defaultValueBase64Binary ??
            defaultValueBoolean ??
            defaultValueCanonical ??
            defaultValueCode ??
            defaultValueDate ??
            defaultValueDateTime ??
            defaultValueDecimal ??
            defaultValueId ??
            defaultValueInstant ??
            defaultValueInteger ??
            defaultValueMarkdown ??
            defaultValueOid ??
            defaultValuePositiveInt ??
            defaultValueString ??
            defaultValueTime ??
            defaultValueUnsignedInt ??
            defaultValueUri ??
            defaultValueUrl ??
            defaultValueUuid ??
            defaultValueAddress ??
            defaultValueAge ??
            defaultValueAnnotation ??
            defaultValueAttachment ??
            defaultValueCodeableConcept ??
            defaultValueCoding ??
            defaultValueContactPoint ??
            defaultValueCount ??
            defaultValueDistance ??
            defaultValueDuration ??
            defaultValueHumanName ??
            defaultValueIdentifier ??
            defaultValueMoney ??
            defaultValuePeriod ??
            defaultValueQuantity ??
            defaultValueRange ??
            defaultValueRatio ??
            defaultValueReference ??
            defaultValueSampledData ??
            defaultValueSignature ??
            defaultValueTiming ??
            defaultValueContactDetail ??
            defaultValueContributor ??
            defaultValueDataRequirement ??
            defaultValueExpression ??
            defaultValueParameterDefinition ??
            defaultValueRelatedArtifact ??
            defaultValueTriggerDefinition ??
            defaultValueUsageContext ??
            defaultValueDosage ??
            defaultValueMeta,
        super(
          objectPath: 'StructureMap.group.rule.source',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapSourceBuilder.empty() => StructureMapSourceBuilder(
        context: FhirIdBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapSourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.source';
    return StructureMapSourceBuilder(
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
      context: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'context',
        FhirIdBuilder.fromJson,
        '$objectPath.context',
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
      type: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'type',
        FhirStringBuilder.fromJson,
        '$objectPath.type',
      ),
      defaultValueX:
          JsonParser.parsePolymorphic<DefaultValueXStructureMapSourceBuilder>(
        json,
        {
          'defaultValueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'defaultValueBoolean': FhirBooleanBuilder.fromJson,
          'defaultValueCanonical': FhirCanonicalBuilder.fromJson,
          'defaultValueCode': FhirCodeBuilder.fromJson,
          'defaultValueDate': FhirDateBuilder.fromJson,
          'defaultValueDateTime': FhirDateTimeBuilder.fromJson,
          'defaultValueDecimal': FhirDecimalBuilder.fromJson,
          'defaultValueId': FhirIdBuilder.fromJson,
          'defaultValueInstant': FhirInstantBuilder.fromJson,
          'defaultValueInteger': FhirIntegerBuilder.fromJson,
          'defaultValueMarkdown': FhirMarkdownBuilder.fromJson,
          'defaultValueOid': FhirOidBuilder.fromJson,
          'defaultValuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'defaultValueString': FhirStringBuilder.fromJson,
          'defaultValueTime': FhirTimeBuilder.fromJson,
          'defaultValueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'defaultValueUri': FhirUriBuilder.fromJson,
          'defaultValueUrl': FhirUrlBuilder.fromJson,
          'defaultValueUuid': FhirUuidBuilder.fromJson,
          'defaultValueAddress': AddressBuilder.fromJson,
          'defaultValueAge': AgeBuilder.fromJson,
          'defaultValueAnnotation': AnnotationBuilder.fromJson,
          'defaultValueAttachment': AttachmentBuilder.fromJson,
          'defaultValueCodeableConcept': CodeableConceptBuilder.fromJson,
          'defaultValueCoding': CodingBuilder.fromJson,
          'defaultValueContactPoint': ContactPointBuilder.fromJson,
          'defaultValueCount': CountBuilder.fromJson,
          'defaultValueDistance': DistanceBuilder.fromJson,
          'defaultValueDuration': FhirDurationBuilder.fromJson,
          'defaultValueHumanName': HumanNameBuilder.fromJson,
          'defaultValueIdentifier': IdentifierBuilder.fromJson,
          'defaultValueMoney': MoneyBuilder.fromJson,
          'defaultValuePeriod': PeriodBuilder.fromJson,
          'defaultValueQuantity': QuantityBuilder.fromJson,
          'defaultValueRange': RangeBuilder.fromJson,
          'defaultValueRatio': RatioBuilder.fromJson,
          'defaultValueReference': ReferenceBuilder.fromJson,
          'defaultValueSampledData': SampledDataBuilder.fromJson,
          'defaultValueSignature': SignatureBuilder.fromJson,
          'defaultValueTiming': TimingBuilder.fromJson,
          'defaultValueContactDetail': ContactDetailBuilder.fromJson,
          'defaultValueContributor': ContributorBuilder.fromJson,
          'defaultValueDataRequirement': DataRequirementBuilder.fromJson,
          'defaultValueExpression': FhirExpressionBuilder.fromJson,
          'defaultValueParameterDefinition':
              ParameterDefinitionBuilder.fromJson,
          'defaultValueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'defaultValueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'defaultValueUsageContext': UsageContextBuilder.fromJson,
          'defaultValueDosage': DosageBuilder.fromJson,
          'defaultValueMeta': FhirMetaBuilder.fromJson,
        },
        objectPath,
      ),
      element: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'element',
        FhirStringBuilder.fromJson,
        '$objectPath.element',
      ),
      listMode: JsonParser.parsePrimitive<StructureMapSourceListModeBuilder>(
        json,
        'listMode',
        StructureMapSourceListModeBuilder.fromJson,
        '$objectPath.listMode',
      ),
      variable: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'variable',
        FhirIdBuilder.fromJson,
        '$objectPath.variable',
      ),
      condition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'condition',
        FhirStringBuilder.fromJson,
        '$objectPath.condition',
      ),
      check: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'check',
        FhirStringBuilder.fromJson,
        '$objectPath.check',
      ),
      logMessage: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'logMessage',
        FhirStringBuilder.fromJson,
        '$objectPath.logMessage',
      ),
    );
  }

  /// Deserialize [StructureMapSourceBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapSourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapSourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapSourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapSourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapSourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapSourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapSourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapSource';

  /// [context]
  /// Type or variable this rule applies to.
  FhirIdBuilder? context;

  /// [min]
  /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  FhirIntegerBuilder? min;

  /// [max]
  /// Specified maximum cardinality for the element - a number or a "*". This
  /// is optional; if present, it acts an implicit check on the input content
  /// (* just serves as documentation; it's the default value).
  FhirStringBuilder? max;

  /// [type]
  /// Specified type for the element. This works as a condition on the
  /// mapping - use for polymorphic elements.
  FhirStringBuilder? type;

  /// [defaultValueX]
  /// A value to use if there is no existing value in the source object.
  DefaultValueXStructureMapSourceBuilder? defaultValueX;

  /// Getter for [defaultValueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get defaultValueBase64Binary =>
      defaultValueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [defaultValueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get defaultValueBoolean =>
      defaultValueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [defaultValueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get defaultValueCanonical =>
      defaultValueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [defaultValueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get defaultValueCode =>
      defaultValueX?.isAs<FhirCodeBuilder>();

  /// Getter for [defaultValueDate] as a FhirDateBuilder
  FhirDateBuilder? get defaultValueDate =>
      defaultValueX?.isAs<FhirDateBuilder>();

  /// Getter for [defaultValueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get defaultValueDateTime =>
      defaultValueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [defaultValueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get defaultValueDecimal =>
      defaultValueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [defaultValueId] as a FhirIdBuilder
  FhirIdBuilder? get defaultValueId => defaultValueX?.isAs<FhirIdBuilder>();

  /// Getter for [defaultValueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get defaultValueInstant =>
      defaultValueX?.isAs<FhirInstantBuilder>();

  /// Getter for [defaultValueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get defaultValueInteger =>
      defaultValueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [defaultValueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get defaultValueMarkdown =>
      defaultValueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [defaultValueOid] as a FhirOidBuilder
  FhirOidBuilder? get defaultValueOid => defaultValueX?.isAs<FhirOidBuilder>();

  /// Getter for [defaultValuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get defaultValuePositiveInt =>
      defaultValueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [defaultValueString] as a FhirStringBuilder
  FhirStringBuilder? get defaultValueString =>
      defaultValueX?.isAs<FhirStringBuilder>();

  /// Getter for [defaultValueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get defaultValueTime =>
      defaultValueX?.isAs<FhirTimeBuilder>();

  /// Getter for [defaultValueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get defaultValueUnsignedInt =>
      defaultValueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [defaultValueUri] as a FhirUriBuilder
  FhirUriBuilder? get defaultValueUri => defaultValueX?.isAs<FhirUriBuilder>();

  /// Getter for [defaultValueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get defaultValueUrl => defaultValueX?.isAs<FhirUrlBuilder>();

  /// Getter for [defaultValueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get defaultValueUuid =>
      defaultValueX?.isAs<FhirUuidBuilder>();

  /// Getter for [defaultValueAddress] as a AddressBuilder
  AddressBuilder? get defaultValueAddress =>
      defaultValueX?.isAs<AddressBuilder>();

  /// Getter for [defaultValueAge] as a AgeBuilder
  AgeBuilder? get defaultValueAge => defaultValueX?.isAs<AgeBuilder>();

  /// Getter for [defaultValueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get defaultValueAnnotation =>
      defaultValueX?.isAs<AnnotationBuilder>();

  /// Getter for [defaultValueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get defaultValueAttachment =>
      defaultValueX?.isAs<AttachmentBuilder>();

  /// Getter for [defaultValueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get defaultValueCodeableConcept =>
      defaultValueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [defaultValueCoding] as a CodingBuilder
  CodingBuilder? get defaultValueCoding => defaultValueX?.isAs<CodingBuilder>();

  /// Getter for [defaultValueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get defaultValueContactPoint =>
      defaultValueX?.isAs<ContactPointBuilder>();

  /// Getter for [defaultValueCount] as a CountBuilder
  CountBuilder? get defaultValueCount => defaultValueX?.isAs<CountBuilder>();

  /// Getter for [defaultValueDistance] as a DistanceBuilder
  DistanceBuilder? get defaultValueDistance =>
      defaultValueX?.isAs<DistanceBuilder>();

  /// Getter for [defaultValueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get defaultValueDuration =>
      defaultValueX?.isAs<FhirDurationBuilder>();

  /// Getter for [defaultValueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get defaultValueHumanName =>
      defaultValueX?.isAs<HumanNameBuilder>();

  /// Getter for [defaultValueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get defaultValueIdentifier =>
      defaultValueX?.isAs<IdentifierBuilder>();

  /// Getter for [defaultValueMoney] as a MoneyBuilder
  MoneyBuilder? get defaultValueMoney => defaultValueX?.isAs<MoneyBuilder>();

  /// Getter for [defaultValuePeriod] as a PeriodBuilder
  PeriodBuilder? get defaultValuePeriod => defaultValueX?.isAs<PeriodBuilder>();

  /// Getter for [defaultValueQuantity] as a QuantityBuilder
  QuantityBuilder? get defaultValueQuantity =>
      defaultValueX?.isAs<QuantityBuilder>();

  /// Getter for [defaultValueRange] as a RangeBuilder
  RangeBuilder? get defaultValueRange => defaultValueX?.isAs<RangeBuilder>();

  /// Getter for [defaultValueRatio] as a RatioBuilder
  RatioBuilder? get defaultValueRatio => defaultValueX?.isAs<RatioBuilder>();

  /// Getter for [defaultValueReference] as a ReferenceBuilder
  ReferenceBuilder? get defaultValueReference =>
      defaultValueX?.isAs<ReferenceBuilder>();

  /// Getter for [defaultValueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get defaultValueSampledData =>
      defaultValueX?.isAs<SampledDataBuilder>();

  /// Getter for [defaultValueSignature] as a SignatureBuilder
  SignatureBuilder? get defaultValueSignature =>
      defaultValueX?.isAs<SignatureBuilder>();

  /// Getter for [defaultValueTiming] as a TimingBuilder
  TimingBuilder? get defaultValueTiming => defaultValueX?.isAs<TimingBuilder>();

  /// Getter for [defaultValueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get defaultValueContactDetail =>
      defaultValueX?.isAs<ContactDetailBuilder>();

  /// Getter for [defaultValueContributor] as a ContributorBuilder
  ContributorBuilder? get defaultValueContributor =>
      defaultValueX?.isAs<ContributorBuilder>();

  /// Getter for [defaultValueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get defaultValueDataRequirement =>
      defaultValueX?.isAs<DataRequirementBuilder>();

  /// Getter for [defaultValueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get defaultValueExpression =>
      defaultValueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [defaultValueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get defaultValueParameterDefinition =>
      defaultValueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [defaultValueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get defaultValueRelatedArtifact =>
      defaultValueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [defaultValueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get defaultValueTriggerDefinition =>
      defaultValueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [defaultValueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get defaultValueUsageContext =>
      defaultValueX?.isAs<UsageContextBuilder>();

  /// Getter for [defaultValueDosage] as a DosageBuilder
  DosageBuilder? get defaultValueDosage => defaultValueX?.isAs<DosageBuilder>();

  /// Getter for [defaultValueMeta] as a FhirMetaBuilder
  FhirMetaBuilder? get defaultValueMeta =>
      defaultValueX?.isAs<FhirMetaBuilder>();

  /// [element]
  /// Optional field for this source.
  FhirStringBuilder? element;

  /// [listMode]
  /// How to handle the list mode for this element.
  StructureMapSourceListModeBuilder? listMode;

  /// [variable]
  /// Named context for field, if a field is specified.
  FhirIdBuilder? variable;

  /// [condition]
  /// FHIRPath expression - must be true or the rule does not apply.
  FhirStringBuilder? condition;

  /// [check]
  /// FHIRPath expression - must be true or the mapping engine throws an
  /// error instead of completing.
  FhirStringBuilder? check;

  /// [logMessage]
  /// A FHIRPath expression which specifies a message to put in the transform
  /// log when content matching the source rule is found.
  FhirStringBuilder? logMessage;

  /// Converts a [StructureMapSourceBuilder]
  /// to [StructureMapSource]
  @override
  StructureMapSource build() => StructureMapSource.fromJson(toJson());

  /// Converts a [StructureMapSourceBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('context', context);
    addField('min', min);
    addField('max', max);
    addField('type', type);
    if (defaultValueX != null) {
      final fhirType = defaultValueX!.fhirType;
      addField(
        'defaultValue${fhirType.capitalizeFirstLetter()}',
        defaultValueX,
      );
    }

    addField('element', element);
    addField('listMode', listMode);
    addField('variable', variable);
    addField('condition', condition);
    addField('check', check);
    addField('logMessage', logMessage);
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
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
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
        if (defaultValueX != null) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueX':
        if (defaultValueX != null) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBase64Binary':
        if (defaultValueX is FhirBase64BinaryBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueBoolean':
        if (defaultValueX is FhirBooleanBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCanonical':
        if (defaultValueX is FhirCanonicalBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCode':
        if (defaultValueX is FhirCodeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDate':
        if (defaultValueX is FhirDateBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDateTime':
        if (defaultValueX is FhirDateTimeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDecimal':
        if (defaultValueX is FhirDecimalBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueId':
        if (defaultValueX is FhirIdBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInstant':
        if (defaultValueX is FhirInstantBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueInteger':
        if (defaultValueX is FhirIntegerBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMarkdown':
        if (defaultValueX is FhirMarkdownBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueOid':
        if (defaultValueX is FhirOidBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePositiveInt':
        if (defaultValueX is FhirPositiveIntBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueString':
        if (defaultValueX is FhirStringBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTime':
        if (defaultValueX is FhirTimeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUnsignedInt':
        if (defaultValueX is FhirUnsignedIntBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUri':
        if (defaultValueX is FhirUriBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUrl':
        if (defaultValueX is FhirUrlBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUuid':
        if (defaultValueX is FhirUuidBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAddress':
        if (defaultValueX is AddressBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAge':
        if (defaultValueX is AgeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAnnotation':
        if (defaultValueX is AnnotationBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueAttachment':
        if (defaultValueX is AttachmentBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCodeableConcept':
        if (defaultValueX is CodeableConceptBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCoding':
        if (defaultValueX is CodingBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactPoint':
        if (defaultValueX is ContactPointBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueCount':
        if (defaultValueX is CountBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDistance':
        if (defaultValueX is DistanceBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDuration':
        if (defaultValueX is FhirDurationBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueHumanName':
        if (defaultValueX is HumanNameBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueIdentifier':
        if (defaultValueX is IdentifierBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMoney':
        if (defaultValueX is MoneyBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValuePeriod':
        if (defaultValueX is PeriodBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueQuantity':
        if (defaultValueX is QuantityBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRange':
        if (defaultValueX is RangeBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRatio':
        if (defaultValueX is RatioBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueReference':
        if (defaultValueX is ReferenceBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSampledData':
        if (defaultValueX is SampledDataBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueSignature':
        if (defaultValueX is SignatureBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTiming':
        if (defaultValueX is TimingBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContactDetail':
        if (defaultValueX is ContactDetailBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueContributor':
        if (defaultValueX is ContributorBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDataRequirement':
        if (defaultValueX is DataRequirementBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueExpression':
        if (defaultValueX is FhirExpressionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueParameterDefinition':
        if (defaultValueX is ParameterDefinitionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueRelatedArtifact':
        if (defaultValueX is RelatedArtifactBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueTriggerDefinition':
        if (defaultValueX is TriggerDefinitionBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueUsageContext':
        if (defaultValueX is UsageContextBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueDosage':
        if (defaultValueX is DosageBuilder) {
          fields.add(defaultValueX!);
        }
      case 'defaultValueMeta':
        if (defaultValueX is FhirMetaBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is FhirIdBuilder) {
            context = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                context = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'min':
        {
          if (child is FhirIntegerBuilder) {
            min = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  min = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'max':
        {
          if (child is FhirStringBuilder) {
            max = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                max = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is FhirStringBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                type = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValue':
      case 'defaultValueX':
        {
          if (child is DefaultValueXStructureMapSourceBuilder) {
            defaultValueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AddressBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AgeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CodingBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is CountBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RangeBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RatioBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is TimingBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ContributorBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is DosageBuilder) {
              defaultValueX = child;
              return;
            }
            if (child is FhirMetaBuilder) {
              defaultValueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCode':
        {
          if (child is FhirCodeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDate':
        {
          if (child is FhirDateBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueId':
        {
          if (child is FhirIdBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueInstant':
        {
          if (child is FhirInstantBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueInteger':
        {
          if (child is FhirIntegerBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueOid':
        {
          if (child is FhirOidBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueString':
        {
          if (child is FhirStringBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTime':
        {
          if (child is FhirTimeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUri':
        {
          if (child is FhirUriBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUrl':
        {
          if (child is FhirUrlBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUuid':
        {
          if (child is FhirUuidBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAddress':
        {
          if (child is AddressBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAge':
        {
          if (child is AgeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAnnotation':
        {
          if (child is AnnotationBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueAttachment':
        {
          if (child is AttachmentBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCoding':
        {
          if (child is CodingBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactPoint':
        {
          if (child is ContactPointBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueCount':
        {
          if (child is CountBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDistance':
        {
          if (child is DistanceBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDuration':
        {
          if (child is FhirDurationBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueHumanName':
        {
          if (child is HumanNameBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueIdentifier':
        {
          if (child is IdentifierBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMoney':
        {
          if (child is MoneyBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValuePeriod':
        {
          if (child is PeriodBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueQuantity':
        {
          if (child is QuantityBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRange':
        {
          if (child is RangeBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRatio':
        {
          if (child is RatioBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueReference':
        {
          if (child is ReferenceBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSampledData':
        {
          if (child is SampledDataBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueSignature':
        {
          if (child is SignatureBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTiming':
        {
          if (child is TimingBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueContributor':
        {
          if (child is ContributorBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueExpression':
        {
          if (child is FhirExpressionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueUsageContext':
        {
          if (child is UsageContextBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueDosage':
        {
          if (child is DosageBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValueMeta':
        {
          if (child is FhirMetaBuilder) {
            defaultValueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'element':
        {
          if (child is FhirStringBuilder) {
            element = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                element = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'listMode':
        {
          if (child is StructureMapSourceListModeBuilder) {
            listMode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    StructureMapSourceListModeBuilder(stringValue);
                listMode = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variable':
        {
          if (child is FhirIdBuilder) {
            variable = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                variable = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is FhirStringBuilder) {
            condition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                condition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'check':
        {
          if (child is FhirStringBuilder) {
            check = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                check = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'logMessage':
        {
          if (child is FhirStringBuilder) {
            logMessage = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                logMessage = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'context':
        return ['FhirIdBuilder'];
      case 'min':
        return ['FhirIntegerBuilder'];
      case 'max':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirStringBuilder'];
      case 'defaultValue':
      case 'defaultValueX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder',
          'FhirMetaBuilder',
        ];
      case 'defaultValueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'defaultValueBoolean':
        return ['FhirBooleanBuilder'];
      case 'defaultValueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'defaultValueCode':
        return ['FhirCodeBuilder'];
      case 'defaultValueDate':
        return ['FhirDateBuilder'];
      case 'defaultValueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'defaultValueDecimal':
        return ['FhirDecimalBuilder'];
      case 'defaultValueId':
        return ['FhirIdBuilder'];
      case 'defaultValueInstant':
        return ['FhirInstantBuilder'];
      case 'defaultValueInteger':
        return ['FhirIntegerBuilder'];
      case 'defaultValueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'defaultValueOid':
        return ['FhirOidBuilder'];
      case 'defaultValuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'defaultValueString':
        return ['FhirStringBuilder'];
      case 'defaultValueTime':
        return ['FhirTimeBuilder'];
      case 'defaultValueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'defaultValueUri':
        return ['FhirUriBuilder'];
      case 'defaultValueUrl':
        return ['FhirUrlBuilder'];
      case 'defaultValueUuid':
        return ['FhirUuidBuilder'];
      case 'defaultValueAddress':
        return ['AddressBuilder'];
      case 'defaultValueAge':
        return ['AgeBuilder'];
      case 'defaultValueAnnotation':
        return ['AnnotationBuilder'];
      case 'defaultValueAttachment':
        return ['AttachmentBuilder'];
      case 'defaultValueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'defaultValueCoding':
        return ['CodingBuilder'];
      case 'defaultValueContactPoint':
        return ['ContactPointBuilder'];
      case 'defaultValueCount':
        return ['CountBuilder'];
      case 'defaultValueDistance':
        return ['DistanceBuilder'];
      case 'defaultValueDuration':
        return ['FhirDurationBuilder'];
      case 'defaultValueHumanName':
        return ['HumanNameBuilder'];
      case 'defaultValueIdentifier':
        return ['IdentifierBuilder'];
      case 'defaultValueMoney':
        return ['MoneyBuilder'];
      case 'defaultValuePeriod':
        return ['PeriodBuilder'];
      case 'defaultValueQuantity':
        return ['QuantityBuilder'];
      case 'defaultValueRange':
        return ['RangeBuilder'];
      case 'defaultValueRatio':
        return ['RatioBuilder'];
      case 'defaultValueReference':
        return ['ReferenceBuilder'];
      case 'defaultValueSampledData':
        return ['SampledDataBuilder'];
      case 'defaultValueSignature':
        return ['SignatureBuilder'];
      case 'defaultValueTiming':
        return ['TimingBuilder'];
      case 'defaultValueContactDetail':
        return ['ContactDetailBuilder'];
      case 'defaultValueContributor':
        return ['ContributorBuilder'];
      case 'defaultValueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'defaultValueExpression':
        return ['FhirExpressionBuilder'];
      case 'defaultValueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'defaultValueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'defaultValueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'defaultValueUsageContext':
        return ['UsageContextBuilder'];
      case 'defaultValueDosage':
        return ['DosageBuilder'];
      case 'defaultValueMeta':
        return ['FhirMetaBuilder'];
      case 'element':
        return ['FhirStringBuilder'];
      case 'listMode':
        return ['FhirCodeEnumBuilder'];
      case 'variable':
        return ['FhirIdBuilder'];
      case 'condition':
        return ['FhirStringBuilder'];
      case 'check':
        return ['FhirStringBuilder'];
      case 'logMessage':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapSourceBuilder]
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
      case 'context':
        {
          context = FhirIdBuilder.empty();
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
      case 'type':
        {
          type = FhirStringBuilder.empty();
          return;
        }
      case 'defaultValue':
      case 'defaultValueX':
      case 'defaultValueBase64Binary':
        {
          defaultValueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'defaultValueBoolean':
        {
          defaultValueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'defaultValueCanonical':
        {
          defaultValueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'defaultValueCode':
        {
          defaultValueX = FhirCodeBuilder.empty();
          return;
        }
      case 'defaultValueDate':
        {
          defaultValueX = FhirDateBuilder.empty();
          return;
        }
      case 'defaultValueDateTime':
        {
          defaultValueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'defaultValueDecimal':
        {
          defaultValueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'defaultValueId':
        {
          defaultValueX = FhirIdBuilder.empty();
          return;
        }
      case 'defaultValueInstant':
        {
          defaultValueX = FhirInstantBuilder.empty();
          return;
        }
      case 'defaultValueInteger':
        {
          defaultValueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'defaultValueMarkdown':
        {
          defaultValueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'defaultValueOid':
        {
          defaultValueX = FhirOidBuilder.empty();
          return;
        }
      case 'defaultValuePositiveInt':
        {
          defaultValueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'defaultValueString':
        {
          defaultValueX = FhirStringBuilder.empty();
          return;
        }
      case 'defaultValueTime':
        {
          defaultValueX = FhirTimeBuilder.empty();
          return;
        }
      case 'defaultValueUnsignedInt':
        {
          defaultValueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'defaultValueUri':
        {
          defaultValueX = FhirUriBuilder.empty();
          return;
        }
      case 'defaultValueUrl':
        {
          defaultValueX = FhirUrlBuilder.empty();
          return;
        }
      case 'defaultValueUuid':
        {
          defaultValueX = FhirUuidBuilder.empty();
          return;
        }
      case 'defaultValueAddress':
        {
          defaultValueX = AddressBuilder.empty();
          return;
        }
      case 'defaultValueAge':
        {
          defaultValueX = AgeBuilder.empty();
          return;
        }
      case 'defaultValueAnnotation':
        {
          defaultValueX = AnnotationBuilder.empty();
          return;
        }
      case 'defaultValueAttachment':
        {
          defaultValueX = AttachmentBuilder.empty();
          return;
        }
      case 'defaultValueCodeableConcept':
        {
          defaultValueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'defaultValueCoding':
        {
          defaultValueX = CodingBuilder.empty();
          return;
        }
      case 'defaultValueContactPoint':
        {
          defaultValueX = ContactPointBuilder.empty();
          return;
        }
      case 'defaultValueCount':
        {
          defaultValueX = CountBuilder.empty();
          return;
        }
      case 'defaultValueDistance':
        {
          defaultValueX = DistanceBuilder.empty();
          return;
        }
      case 'defaultValueDuration':
        {
          defaultValueX = FhirDurationBuilder.empty();
          return;
        }
      case 'defaultValueHumanName':
        {
          defaultValueX = HumanNameBuilder.empty();
          return;
        }
      case 'defaultValueIdentifier':
        {
          defaultValueX = IdentifierBuilder.empty();
          return;
        }
      case 'defaultValueMoney':
        {
          defaultValueX = MoneyBuilder.empty();
          return;
        }
      case 'defaultValuePeriod':
        {
          defaultValueX = PeriodBuilder.empty();
          return;
        }
      case 'defaultValueQuantity':
        {
          defaultValueX = QuantityBuilder.empty();
          return;
        }
      case 'defaultValueRange':
        {
          defaultValueX = RangeBuilder.empty();
          return;
        }
      case 'defaultValueRatio':
        {
          defaultValueX = RatioBuilder.empty();
          return;
        }
      case 'defaultValueReference':
        {
          defaultValueX = ReferenceBuilder.empty();
          return;
        }
      case 'defaultValueSampledData':
        {
          defaultValueX = SampledDataBuilder.empty();
          return;
        }
      case 'defaultValueSignature':
        {
          defaultValueX = SignatureBuilder.empty();
          return;
        }
      case 'defaultValueTiming':
        {
          defaultValueX = TimingBuilder.empty();
          return;
        }
      case 'defaultValueContactDetail':
        {
          defaultValueX = ContactDetailBuilder.empty();
          return;
        }
      case 'defaultValueContributor':
        {
          defaultValueX = ContributorBuilder.empty();
          return;
        }
      case 'defaultValueDataRequirement':
        {
          defaultValueX = DataRequirementBuilder.empty();
          return;
        }
      case 'defaultValueExpression':
        {
          defaultValueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'defaultValueParameterDefinition':
        {
          defaultValueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'defaultValueRelatedArtifact':
        {
          defaultValueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'defaultValueTriggerDefinition':
        {
          defaultValueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'defaultValueUsageContext':
        {
          defaultValueX = UsageContextBuilder.empty();
          return;
        }
      case 'defaultValueDosage':
        {
          defaultValueX = DosageBuilder.empty();
          return;
        }
      case 'defaultValueMeta':
        {
          defaultValueX = FhirMetaBuilder.empty();
          return;
        }
      case 'element':
        {
          element = FhirStringBuilder.empty();
          return;
        }
      case 'listMode':
        {
          listMode = StructureMapSourceListModeBuilder.empty();
          return;
        }
      case 'variable':
        {
          variable = FhirIdBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = FhirStringBuilder.empty();
          return;
        }
      case 'check':
        {
          check = FhirStringBuilder.empty();
          return;
        }
      case 'logMessage':
        {
          logMessage = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapSourceBuilder clone() => throw UnimplementedError();
  @override
  StructureMapSourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? context,
    FhirIntegerBuilder? min,
    FhirStringBuilder? max,
    FhirStringBuilder? type,
    DefaultValueXStructureMapSourceBuilder? defaultValueX,
    FhirStringBuilder? element,
    StructureMapSourceListModeBuilder? listMode,
    FhirIdBuilder? variable,
    FhirStringBuilder? condition,
    FhirStringBuilder? check,
    FhirStringBuilder? logMessage,
    FhirBase64BinaryBuilder? defaultValueBase64Binary,
    FhirBooleanBuilder? defaultValueBoolean,
    FhirCanonicalBuilder? defaultValueCanonical,
    FhirCodeBuilder? defaultValueCode,
    FhirDateBuilder? defaultValueDate,
    FhirDateTimeBuilder? defaultValueDateTime,
    FhirDecimalBuilder? defaultValueDecimal,
    FhirIdBuilder? defaultValueId,
    FhirInstantBuilder? defaultValueInstant,
    FhirIntegerBuilder? defaultValueInteger,
    FhirMarkdownBuilder? defaultValueMarkdown,
    FhirOidBuilder? defaultValueOid,
    FhirPositiveIntBuilder? defaultValuePositiveInt,
    FhirStringBuilder? defaultValueString,
    FhirTimeBuilder? defaultValueTime,
    FhirUnsignedIntBuilder? defaultValueUnsignedInt,
    FhirUriBuilder? defaultValueUri,
    FhirUrlBuilder? defaultValueUrl,
    FhirUuidBuilder? defaultValueUuid,
    AddressBuilder? defaultValueAddress,
    AgeBuilder? defaultValueAge,
    AnnotationBuilder? defaultValueAnnotation,
    AttachmentBuilder? defaultValueAttachment,
    CodeableConceptBuilder? defaultValueCodeableConcept,
    CodingBuilder? defaultValueCoding,
    ContactPointBuilder? defaultValueContactPoint,
    CountBuilder? defaultValueCount,
    DistanceBuilder? defaultValueDistance,
    FhirDurationBuilder? defaultValueDuration,
    HumanNameBuilder? defaultValueHumanName,
    IdentifierBuilder? defaultValueIdentifier,
    MoneyBuilder? defaultValueMoney,
    PeriodBuilder? defaultValuePeriod,
    QuantityBuilder? defaultValueQuantity,
    RangeBuilder? defaultValueRange,
    RatioBuilder? defaultValueRatio,
    ReferenceBuilder? defaultValueReference,
    SampledDataBuilder? defaultValueSampledData,
    SignatureBuilder? defaultValueSignature,
    TimingBuilder? defaultValueTiming,
    ContactDetailBuilder? defaultValueContactDetail,
    ContributorBuilder? defaultValueContributor,
    DataRequirementBuilder? defaultValueDataRequirement,
    FhirExpressionBuilder? defaultValueExpression,
    ParameterDefinitionBuilder? defaultValueParameterDefinition,
    RelatedArtifactBuilder? defaultValueRelatedArtifact,
    TriggerDefinitionBuilder? defaultValueTriggerDefinition,
    UsageContextBuilder? defaultValueUsageContext,
    DosageBuilder? defaultValueDosage,
    FhirMetaBuilder? defaultValueMeta,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapSourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      min: min ?? this.min,
      max: max ?? this.max,
      type: type ?? this.type,
      defaultValueX: defaultValueX ??
          defaultValueBase64Binary ??
          defaultValueBoolean ??
          defaultValueCanonical ??
          defaultValueCode ??
          defaultValueDate ??
          defaultValueDateTime ??
          defaultValueDecimal ??
          defaultValueId ??
          defaultValueInstant ??
          defaultValueInteger ??
          defaultValueMarkdown ??
          defaultValueOid ??
          defaultValuePositiveInt ??
          defaultValueString ??
          defaultValueTime ??
          defaultValueUnsignedInt ??
          defaultValueUri ??
          defaultValueUrl ??
          defaultValueUuid ??
          defaultValueAddress ??
          defaultValueAge ??
          defaultValueAnnotation ??
          defaultValueAttachment ??
          defaultValueCodeableConcept ??
          defaultValueCoding ??
          defaultValueContactPoint ??
          defaultValueCount ??
          defaultValueDistance ??
          defaultValueDuration ??
          defaultValueHumanName ??
          defaultValueIdentifier ??
          defaultValueMoney ??
          defaultValuePeriod ??
          defaultValueQuantity ??
          defaultValueRange ??
          defaultValueRatio ??
          defaultValueReference ??
          defaultValueSampledData ??
          defaultValueSignature ??
          defaultValueTiming ??
          defaultValueContactDetail ??
          defaultValueContributor ??
          defaultValueDataRequirement ??
          defaultValueExpression ??
          defaultValueParameterDefinition ??
          defaultValueRelatedArtifact ??
          defaultValueTriggerDefinition ??
          defaultValueUsageContext ??
          defaultValueDosage ??
          defaultValueMeta ??
          this.defaultValueX,
      element: element ?? this.element,
      listMode: listMode ?? this.listMode,
      variable: variable ?? this.variable,
      condition: condition ?? this.condition,
      check: check ?? this.check,
      logMessage: logMessage ?? this.logMessage,
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
    if (o is! StructureMapSourceBuilder) {
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

/// [StructureMapTargetBuilder]
/// Content to create because of this mapping rule.
class StructureMapTargetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapTargetBuilder]

  StructureMapTargetBuilder({
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
  /// For Builder classes, no fields are required
  factory StructureMapTargetBuilder.empty() => StructureMapTargetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapTargetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.target';
    return StructureMapTargetBuilder(
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
      context: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'context',
        FhirIdBuilder.fromJson,
        '$objectPath.context',
      ),
      contextType: JsonParser.parsePrimitive<StructureMapContextTypeBuilder>(
        json,
        'contextType',
        StructureMapContextTypeBuilder.fromJson,
        '$objectPath.contextType',
      ),
      element: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'element',
        FhirStringBuilder.fromJson,
        '$objectPath.element',
      ),
      variable: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'variable',
        FhirIdBuilder.fromJson,
        '$objectPath.variable',
      ),
      listMode:
          JsonParser.parsePrimitiveList<StructureMapTargetListModeBuilder>(
        json,
        'listMode',
        StructureMapTargetListModeBuilder.fromJson,
        '$objectPath.listMode',
      ),
      listRuleId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'listRuleId',
        FhirIdBuilder.fromJson,
        '$objectPath.listRuleId',
      ),
      transform: JsonParser.parsePrimitive<StructureMapTransformBuilder>(
        json,
        'transform',
        StructureMapTransformBuilder.fromJson,
        '$objectPath.transform',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<StructureMapParameterBuilder>(
            (v) => StructureMapParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureMapTargetBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapTargetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapTargetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapTargetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapTargetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapTargetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapTargetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapTargetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapTarget';

  /// [context]
  /// Type or variable this rule applies to.
  FhirIdBuilder? context;

  /// [contextType]
  /// How to interpret the context.
  StructureMapContextTypeBuilder? contextType;

  /// [element]
  /// Field to create in the context.
  FhirStringBuilder? element;

  /// [variable]
  /// Named context for field, if desired, and a field is specified.
  FhirIdBuilder? variable;

  /// [listMode]
  /// If field is a list, how to manage the list.
  List<StructureMapTargetListModeBuilder>? listMode;

  /// [listRuleId]
  /// Internal rule reference for shared list items.
  FhirIdBuilder? listRuleId;

  /// [transform]
  /// How the data is copied / created.
  StructureMapTransformBuilder? transform;

  /// [parameter]
  /// Parameters to the transform.
  List<StructureMapParameterBuilder>? parameter;

  /// Converts a [StructureMapTargetBuilder]
  /// to [StructureMapTarget]
  @override
  StructureMapTarget build() => StructureMapTarget.fromJson(toJson());

  /// Converts a [StructureMapTargetBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('context', context);
    addField('contextType', contextType);
    addField('element', element);
    addField('variable', variable);
    addField('listMode', listMode);
    addField('listRuleId', listRuleId);
    addField('transform', transform);
    addField('parameter', parameter);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is FhirIdBuilder) {
            context = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                context = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contextType':
        {
          if (child is StructureMapContextTypeBuilder) {
            contextType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StructureMapContextTypeBuilder(stringValue);
                contextType = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'element':
        {
          if (child is FhirStringBuilder) {
            element = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                element = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variable':
        {
          if (child is FhirIdBuilder) {
            variable = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                variable = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'listMode':
        {
          if (child is List<StructureMapTargetListModeBuilder>) {
            // Replace or create new list
            listMode = child;
            return;
          } else if (child is StructureMapTargetListModeBuilder) {
            // Add single element to existing list or create new list
            listMode = [
              ...(listMode ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <StructureMapTargetListModeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted =
                      StructureMapTargetListModeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              listMode = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    StructureMapTargetListModeBuilder(stringValue);
                listMode = [
                  ...(listMode ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'listRuleId':
        {
          if (child is FhirIdBuilder) {
            listRuleId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                listRuleId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'transform':
        {
          if (child is StructureMapTransformBuilder) {
            transform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StructureMapTransformBuilder(stringValue);
                transform = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parameter':
        {
          if (child is List<StructureMapParameterBuilder>) {
            // Replace or create new list
            parameter = child;
            return;
          } else if (child is StructureMapParameterBuilder) {
            // Add single element to existing list or create new list
            parameter = [
              ...(parameter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'context':
        return ['FhirIdBuilder'];
      case 'contextType':
        return ['FhirCodeEnumBuilder'];
      case 'element':
        return ['FhirStringBuilder'];
      case 'variable':
        return ['FhirIdBuilder'];
      case 'listMode':
        return ['FhirCodeEnumBuilder'];
      case 'listRuleId':
        return ['FhirIdBuilder'];
      case 'transform':
        return ['FhirCodeEnumBuilder'];
      case 'parameter':
        return ['StructureMapParameterBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapTargetBuilder]
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
      case 'context':
        {
          context = FhirIdBuilder.empty();
          return;
        }
      case 'contextType':
        {
          contextType = StructureMapContextTypeBuilder.empty();
          return;
        }
      case 'element':
        {
          element = FhirStringBuilder.empty();
          return;
        }
      case 'variable':
        {
          variable = FhirIdBuilder.empty();
          return;
        }
      case 'listMode':
        {
          listMode = <StructureMapTargetListModeBuilder>[];
          return;
        }
      case 'listRuleId':
        {
          listRuleId = FhirIdBuilder.empty();
          return;
        }
      case 'transform':
        {
          transform = StructureMapTransformBuilder.empty();
          return;
        }
      case 'parameter':
        {
          parameter = <StructureMapParameterBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapTargetBuilder clone() => throw UnimplementedError();
  @override
  StructureMapTargetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? context,
    StructureMapContextTypeBuilder? contextType,
    FhirStringBuilder? element,
    FhirIdBuilder? variable,
    List<StructureMapTargetListModeBuilder>? listMode,
    FhirIdBuilder? listRuleId,
    StructureMapTransformBuilder? transform,
    List<StructureMapParameterBuilder>? parameter,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapTargetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextType: contextType ?? this.contextType,
      element: element ?? this.element,
      variable: variable ?? this.variable,
      listMode: listMode ?? this.listMode,
      listRuleId: listRuleId ?? this.listRuleId,
      transform: transform ?? this.transform,
      parameter: parameter ?? this.parameter,
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
    if (o is! StructureMapTargetBuilder) {
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
    if (!listEquals<StructureMapTargetListModeBuilder>(
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
    if (!listEquals<StructureMapParameterBuilder>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapParameterBuilder]
/// Parameters to the transform.
class StructureMapParameterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapParameterBuilder]

  StructureMapParameterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ValueXStructureMapParameterBuilder? valueX,
    FhirIdBuilder? valueId,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueId ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueDecimal,
        super(
          objectPath: 'StructureMap.group.rule.target.parameter',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapParameterBuilder.empty() => StructureMapParameterBuilder(
        valueX: FhirIdBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapParameterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.target.parameter';
    return StructureMapParameterBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXStructureMapParameterBuilder>(
        json,
        {
          'valueId': FhirIdBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [StructureMapParameterBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapParameterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapParameterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapParameterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapParameterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapParameterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapParameterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapParameterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapParameter';

  /// [valueX]
  /// Parameter value - variable or literal.
  ValueXStructureMapParameterBuilder? valueX;

  /// Getter for [valueId] as a FhirIdBuilder
  FhirIdBuilder? get valueId => valueX?.isAs<FhirIdBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Converts a [StructureMapParameterBuilder]
  /// to [StructureMapParameter]
  @override
  StructureMapParameter build() => StructureMapParameter.fromJson(toJson());

  /// Converts a [StructureMapParameterBuilder]
  /// to a [Map<String, dynamic>]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirIdBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXStructureMapParameterBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirIdBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueId':
        {
          if (child is FhirIdBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
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
      case 'value':
      case 'valueX':
        return [
          'FhirIdBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'FhirDecimalBuilder',
        ];
      case 'valueId':
        return ['FhirIdBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapParameterBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueId':
        {
          valueX = FhirIdBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapParameterBuilder clone() => throw UnimplementedError();
  @override
  StructureMapParameterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXStructureMapParameterBuilder? valueX,
    FhirIdBuilder? valueId,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapParameterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ??
          valueId ??
          valueString ??
          valueBoolean ??
          valueInteger ??
          valueDecimal ??
          this.valueX,
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
    if (o is! StructureMapParameterBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [StructureMapDependentBuilder]
/// Which other rules to apply in the context of this rule.
class StructureMapDependentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [StructureMapDependentBuilder]

  StructureMapDependentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.variable,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureMap.group.rule.dependent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory StructureMapDependentBuilder.empty() => StructureMapDependentBuilder(
        name: FhirIdBuilder.empty(),
        variable: <FhirStringBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapDependentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureMap.group.rule.dependent';
    return StructureMapDependentBuilder(
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
      name: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'name',
        FhirIdBuilder.fromJson,
        '$objectPath.name',
      ),
      variable: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'variable',
        FhirStringBuilder.fromJson,
        '$objectPath.variable',
      ),
    );
  }

  /// Deserialize [StructureMapDependentBuilder]
  /// from a [String] or [YamlMap] object
  factory StructureMapDependentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapDependentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapDependentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapDependentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapDependentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapDependentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return StructureMapDependentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'StructureMapDependent';

  /// [name]
  /// Name of a rule or group to apply.
  FhirIdBuilder? name;

  /// [variable]
  /// Variable to pass to the rule or group.
  List<FhirStringBuilder>? variable;

  /// Converts a [StructureMapDependentBuilder]
  /// to [StructureMapDependent]
  @override
  StructureMapDependent build() => StructureMapDependent.fromJson(toJson());

  /// Converts a [StructureMapDependentBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('variable', variable);
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
      case 'variable':
        if (variable != null) {
          fields.addAll(variable!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirIdBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variable':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            variable = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            variable = [
              ...(variable ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              variable = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                variable = [
                  ...(variable ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirIdBuilder'];
      case 'variable':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [StructureMapDependentBuilder]
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
          name = FhirIdBuilder.empty();
          return;
        }
      case 'variable':
        {
          variable = <FhirStringBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  StructureMapDependentBuilder clone() => throw UnimplementedError();
  @override
  StructureMapDependentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? name,
    List<FhirStringBuilder>? variable,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = StructureMapDependentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      variable: variable ?? this.variable,
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
    if (o is! StructureMapDependentBuilder) {
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
    if (!listEquals<FhirStringBuilder>(
      variable,
      o.variable,
    )) {
      return false;
    }
    return true;
  }
}
