import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        CapabilityStatement,
        CapabilityStatementDocument,
        CapabilityStatementEndpoint,
        CapabilityStatementImplementation,
        CapabilityStatementInteraction,
        CapabilityStatementInteraction1,
        CapabilityStatementMessaging,
        CapabilityStatementOperation,
        CapabilityStatementResource,
        CapabilityStatementRest,
        CapabilityStatementSearchParam,
        CapabilityStatementSecurity,
        CapabilityStatementSoftware,
        CapabilityStatementSupportedMessage,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [CapabilityStatementBuilder]
/// A Capability Statement documents a set of capabilities (behaviors) of a
/// FHIR Server for a particular version of FHIR that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class CapabilityStatementBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [CapabilityStatementBuilder]

  CapabilityStatementBuilder({
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
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.kind,
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    this.fhirVersion,
    this.format,
    this.patchFormat,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document,
  }) : super(
          objectPath: 'CapabilityStatement',
          resourceType: R4ResourceType.CapabilityStatement,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementBuilder.empty() => CapabilityStatementBuilder(
        status: PublicationStatusBuilder.values.first,
        date: FhirDateTimeBuilder.empty(),
        kind: CapabilityStatementKindBuilder.values.first,
        fhirVersion: FHIRVersionBuilder.values.first,
        format: <FhirCodeBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement';
    return CapabilityStatementBuilder(
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
      kind: JsonParser.parsePrimitive<CapabilityStatementKindBuilder>(
        json,
        'kind',
        CapabilityStatementKindBuilder.fromJson,
        '$objectPath.kind',
      ),
      instantiates: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'instantiates',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiates',
      ),
      imports: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'imports',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.imports',
      ),
      software: JsonParser.parseObject<CapabilityStatementSoftwareBuilder>(
        json,
        'software',
        CapabilityStatementSoftwareBuilder.fromJson,
        '$objectPath.software',
      ),
      implementation:
          JsonParser.parseObject<CapabilityStatementImplementationBuilder>(
        json,
        'implementation',
        CapabilityStatementImplementationBuilder.fromJson,
        '$objectPath.implementation',
      ),
      fhirVersion: JsonParser.parsePrimitive<FHIRVersionBuilder>(
        json,
        'fhirVersion',
        FHIRVersionBuilder.fromJson,
        '$objectPath.fhirVersion',
      ),
      format: JsonParser.parsePrimitiveList<FhirCodeBuilder>(
        json,
        'format',
        FhirCodeBuilder.fromJson,
        '$objectPath.format',
      ),
      patchFormat: JsonParser.parsePrimitiveList<FhirCodeBuilder>(
        json,
        'patchFormat',
        FhirCodeBuilder.fromJson,
        '$objectPath.patchFormat',
      ),
      implementationGuide: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'implementationGuide',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.implementationGuide',
      ),
      rest: (json['rest'] as List<dynamic>?)
          ?.map<CapabilityStatementRestBuilder>(
            (v) => CapabilityStatementRestBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rest',
              },
            ),
          )
          .toList(),
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map<CapabilityStatementMessagingBuilder>(
            (v) => CapabilityStatementMessagingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.messaging',
              },
            ),
          )
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map<CapabilityStatementDocumentBuilder>(
            (v) => CapabilityStatementDocumentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.document',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatementBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatement';

  /// [name]
  /// A natural language name identifying the capability statement. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the capability statement.
  FhirStringBuilder? title;

  /// [purpose]
  /// Explanation of why this capability statement is needed and why it has
  /// been designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the capability statement and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the capability statement.
  FhirMarkdownBuilder? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  CapabilityStatementKindBuilder? kind;

  /// [instantiates]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software implements. This capability statement is a published API
  /// description that corresponds to a business service. The server may
  /// actually implement a subset of the capability statement it claims to
  /// implement, so the capability statement must specify the full capability
  /// details.
  List<FhirCanonicalBuilder>? instantiates;

  /// [imports]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software adds to. The capability statement automatically includes
  /// everything in the other statement, and it is not duplicated, though the
  /// server may repeat the same resources, interactions and operations to
  /// add additional details to them.
  List<FhirCanonicalBuilder>? imports;

  /// [software]
  /// Software that is covered by this capability statement. It is used when
  /// the capability statement describes the capabilities of a particular
  /// software version, independent of an installation.
  CapabilityStatementSoftwareBuilder? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// capability statement - i.e. a particular installation, rather than the
  /// capabilities of a software program.
  CapabilityStatementImplementationBuilder? implementation;

  /// [fhirVersion]
  /// The version of the FHIR specification that this CapabilityStatement
  /// describes (which SHALL be the same as the FHIR version of the
  /// CapabilityStatement itself). There is no default value.
  FHIRVersionBuilder? fhirVersion;

  /// [format]
  /// A list of the formats supported by this implementation using their
  /// content types.
  List<FhirCodeBuilder>? format;

  /// [patchFormat]
  /// A list of the patch formats supported by this implementation using
  /// their content types.
  List<FhirCodeBuilder>? patchFormat;

  /// [implementationGuide]
  /// A list of implementation guides that the server does (or should)
  /// support in their entirety.
  List<FhirCanonicalBuilder>? implementationGuide;

  /// [rest]
  /// A definition of the restful capabilities of the solution, if any.
  List<CapabilityStatementRestBuilder>? rest;

  /// [messaging]
  /// A description of the messaging capabilities of the solution.
  List<CapabilityStatementMessagingBuilder>? messaging;

  /// [document]
  /// A document definition.
  List<CapabilityStatementDocumentBuilder>? document;

  /// Converts a [CapabilityStatementBuilder]
  /// to [CapabilityStatement]
  @override
  CapabilityStatement build() => CapabilityStatement.fromJson(toJson());

  /// Converts a [CapabilityStatementBuilder]
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
    addField('kind', kind);
    addField('instantiates', instantiates);
    addField('imports', imports);
    addField('software', software);
    addField('implementation', implementation);
    addField('fhirVersion', fhirVersion);
    addField('format', format);
    addField('patchFormat', patchFormat);
    addField('implementationGuide', implementationGuide);
    addField('rest', rest);
    addField('messaging', messaging);
    addField('document', document);
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
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'kind',
      'instantiates',
      'imports',
      'software',
      'implementation',
      'fhirVersion',
      'format',
      'patchFormat',
      'implementationGuide',
      'rest',
      'messaging',
      'document',
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
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'instantiates':
        if (instantiates != null) {
          fields.addAll(instantiates!);
        }
      case 'imports':
        if (imports != null) {
          fields.addAll(imports!);
        }
      case 'software':
        if (software != null) {
          fields.add(software!);
        }
      case 'implementation':
        if (implementation != null) {
          fields.add(implementation!);
        }
      case 'fhirVersion':
        if (fhirVersion != null) {
          fields.add(fhirVersion!);
        }
      case 'format':
        if (format != null) {
          fields.addAll(format!);
        }
      case 'patchFormat':
        if (patchFormat != null) {
          fields.addAll(patchFormat!);
        }
      case 'implementationGuide':
        if (implementationGuide != null) {
          fields.addAll(implementationGuide!);
        }
      case 'rest':
        if (rest != null) {
          fields.addAll(rest!);
        }
      case 'messaging':
        if (messaging != null) {
          fields.addAll(messaging!);
        }
      case 'document':
        if (document != null) {
          fields.addAll(document!);
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
      case 'kind':
        {
          if (child is CapabilityStatementKindBuilder) {
            kind = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CapabilityStatementKindBuilder(stringValue);
                kind = converted;
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
      case 'instantiates':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            instantiates = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            instantiates = [
              ...(instantiates ?? []),
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
              instantiates = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiates = [
                  ...(instantiates ?? []),
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
      case 'imports':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            imports = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            imports = [
              ...(imports ?? []),
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
              imports = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                imports = [
                  ...(imports ?? []),
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
      case 'software':
        {
          if (child is CapabilityStatementSoftwareBuilder) {
            software = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implementation':
        {
          if (child is CapabilityStatementImplementationBuilder) {
            implementation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fhirVersion':
        {
          if (child is FHIRVersionBuilder) {
            fhirVersion = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = FHIRVersionBuilder(stringValue);
                fhirVersion = converted;
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
      case 'format':
        {
          if (child is List<FhirCodeBuilder>) {
            // Replace or create new list
            format = child;
            return;
          } else if (child is FhirCodeBuilder) {
            // Add single element to existing list or create new list
            format = [
              ...(format ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCodeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCodeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              format = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                format = [
                  ...(format ?? []),
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
      case 'patchFormat':
        {
          if (child is List<FhirCodeBuilder>) {
            // Replace or create new list
            patchFormat = child;
            return;
          } else if (child is FhirCodeBuilder) {
            // Add single element to existing list or create new list
            patchFormat = [
              ...(patchFormat ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCodeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCodeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              patchFormat = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                patchFormat = [
                  ...(patchFormat ?? []),
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
      case 'implementationGuide':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            implementationGuide = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            implementationGuide = [
              ...(implementationGuide ?? []),
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
              implementationGuide = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                implementationGuide = [
                  ...(implementationGuide ?? []),
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
      case 'rest':
        {
          if (child is List<CapabilityStatementRestBuilder>) {
            // Replace or create new list
            rest = child;
            return;
          } else if (child is CapabilityStatementRestBuilder) {
            // Add single element to existing list or create new list
            rest = [
              ...(rest ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'messaging':
        {
          if (child is List<CapabilityStatementMessagingBuilder>) {
            // Replace or create new list
            messaging = child;
            return;
          } else if (child is CapabilityStatementMessagingBuilder) {
            // Add single element to existing list or create new list
            messaging = [
              ...(messaging ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'document':
        {
          if (child is List<CapabilityStatementDocumentBuilder>) {
            // Replace or create new list
            document = child;
            return;
          } else if (child is CapabilityStatementDocumentBuilder) {
            // Add single element to existing list or create new list
            document = [
              ...(document ?? []),
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
      case 'kind':
        return ['FhirCodeEnumBuilder'];
      case 'instantiates':
        return ['FhirCanonicalBuilder'];
      case 'imports':
        return ['FhirCanonicalBuilder'];
      case 'software':
        return ['CapabilityStatementSoftwareBuilder'];
      case 'implementation':
        return ['CapabilityStatementImplementationBuilder'];
      case 'fhirVersion':
        return ['FhirCodeEnumBuilder'];
      case 'format':
        return ['FhirCodeBuilder'];
      case 'patchFormat':
        return ['FhirCodeBuilder'];
      case 'implementationGuide':
        return ['FhirCanonicalBuilder'];
      case 'rest':
        return ['CapabilityStatementRestBuilder'];
      case 'messaging':
        return ['CapabilityStatementMessagingBuilder'];
      case 'document':
        return ['CapabilityStatementDocumentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementBuilder]
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
      case 'kind':
        {
          kind = CapabilityStatementKindBuilder.empty();
          return;
        }
      case 'instantiates':
        {
          instantiates = <FhirCanonicalBuilder>[];
          return;
        }
      case 'imports':
        {
          imports = <FhirCanonicalBuilder>[];
          return;
        }
      case 'software':
        {
          software = CapabilityStatementSoftwareBuilder.empty();
          return;
        }
      case 'implementation':
        {
          implementation = CapabilityStatementImplementationBuilder.empty();
          return;
        }
      case 'fhirVersion':
        {
          fhirVersion = FHIRVersionBuilder.empty();
          return;
        }
      case 'format':
        {
          format = <FhirCodeBuilder>[];
          return;
        }
      case 'patchFormat':
        {
          patchFormat = <FhirCodeBuilder>[];
          return;
        }
      case 'implementationGuide':
        {
          implementationGuide = <FhirCanonicalBuilder>[];
          return;
        }
      case 'rest':
        {
          rest = <CapabilityStatementRestBuilder>[];
          return;
        }
      case 'messaging':
        {
          messaging = <CapabilityStatementMessagingBuilder>[];
          return;
        }
      case 'document':
        {
          document = <CapabilityStatementDocumentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementBuilder copyWith({
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
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    CapabilityStatementKindBuilder? kind,
    List<FhirCanonicalBuilder>? instantiates,
    List<FhirCanonicalBuilder>? imports,
    CapabilityStatementSoftwareBuilder? software,
    CapabilityStatementImplementationBuilder? implementation,
    FHIRVersionBuilder? fhirVersion,
    List<FhirCodeBuilder>? format,
    List<FhirCodeBuilder>? patchFormat,
    List<FhirCanonicalBuilder>? implementationGuide,
    List<CapabilityStatementRestBuilder>? rest,
    List<CapabilityStatementMessagingBuilder>? messaging,
    List<CapabilityStatementDocumentBuilder>? document,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = CapabilityStatementBuilder(
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
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      kind: kind ?? this.kind,
      instantiates: instantiates ?? this.instantiates,
      imports: imports ?? this.imports,
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      format: format ?? this.format,
      patchFormat: patchFormat ?? this.patchFormat,
      implementationGuide: implementationGuide ?? this.implementationGuide,
      rest: rest ?? this.rest,
      messaging: messaging ?? this.messaging,
      document: document ?? this.document,
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
    if (o is! CapabilityStatementBuilder) {
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
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      instantiates,
      o.instantiates,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      imports,
      o.imports,
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
      implementation,
      o.implementation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fhirVersion,
      o.fhirVersion,
    )) {
      return false;
    }
    if (!listEquals<FhirCodeBuilder>(
      format,
      o.format,
    )) {
      return false;
    }
    if (!listEquals<FhirCodeBuilder>(
      patchFormat,
      o.patchFormat,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      implementationGuide,
      o.implementationGuide,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementRestBuilder>(
      rest,
      o.rest,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementMessagingBuilder>(
      messaging,
      o.messaging,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementDocumentBuilder>(
      document,
      o.document,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementSoftwareBuilder]
/// Software that is covered by this capability statement. It is used when
/// the capability statement describes the capabilities of a particular
/// software version, independent of an installation.
class CapabilityStatementSoftwareBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementSoftwareBuilder]

  CapabilityStatementSoftwareBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.version,
    this.releaseDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.software',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementSoftwareBuilder.empty() =>
      CapabilityStatementSoftwareBuilder(
        name: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSoftwareBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.software';
    return CapabilityStatementSoftwareBuilder(
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      releaseDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'releaseDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.releaseDate',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSoftwareBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSoftwareBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSoftwareBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSoftwareBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSoftwareBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSoftwareBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSoftwareBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSoftwareBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSoftware';

  /// [name]
  /// Name the software is known by.
  FhirStringBuilder? name;

  /// [version]
  /// The version identifier for the software covered by this statement.
  FhirStringBuilder? version;

  /// [releaseDate]
  /// Date this version of the software was released.
  FhirDateTimeBuilder? releaseDate;

  /// Converts a [CapabilityStatementSoftwareBuilder]
  /// to [CapabilityStatementSoftware]
  @override
  CapabilityStatementSoftware build() =>
      CapabilityStatementSoftware.fromJson(toJson());

  /// Converts a [CapabilityStatementSoftwareBuilder]
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
    addField('version', version);
    addField('releaseDate', releaseDate);
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
      'version',
      'releaseDate',
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
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'releaseDate':
        if (releaseDate != null) {
          fields.add(releaseDate!);
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
      case 'releaseDate':
        {
          if (child is FhirDateTimeBuilder) {
            releaseDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                releaseDate = converted;
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
        return ['FhirStringBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'releaseDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementSoftwareBuilder]
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
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'releaseDate':
        {
          releaseDate = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementSoftwareBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementSoftwareBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirStringBuilder? version,
    FhirDateTimeBuilder? releaseDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementSoftwareBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      version: version ?? this.version,
      releaseDate: releaseDate ?? this.releaseDate,
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
    if (o is! CapabilityStatementSoftwareBuilder) {
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      releaseDate,
      o.releaseDate,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementImplementationBuilder]
/// Identifies a specific implementation instance that is described by the
/// capability statement - i.e. a particular installation, rather than the
/// capabilities of a software program.
class CapabilityStatementImplementationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementImplementationBuilder]

  CapabilityStatementImplementationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.url,
    this.custodian,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.implementation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementImplementationBuilder.empty() =>
      CapabilityStatementImplementationBuilder(
        description: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementImplementationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.implementation';
    return CapabilityStatementImplementationBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      url: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'url',
        FhirUrlBuilder.fromJson,
        '$objectPath.url',
      ),
      custodian: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'custodian',
        ReferenceBuilder.fromJson,
        '$objectPath.custodian',
      ),
    );
  }

  /// Deserialize [CapabilityStatementImplementationBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementImplementationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementImplementationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementImplementationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementImplementationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementImplementationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementImplementationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementImplementationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementImplementation';

  /// [description]
  /// Information about the specific installation that this capability
  /// statement relates to.
  FhirStringBuilder? description;

  /// [url]
  /// An absolute base URL for the implementation. This forms the base for
  /// REST interfaces as well as the mailbox and document interfaces.
  FhirUrlBuilder? url;

  /// [custodian]
  /// The organization responsible for the management of the instance and
  /// oversight of the data on the server at the specified URL.
  ReferenceBuilder? custodian;

  /// Converts a [CapabilityStatementImplementationBuilder]
  /// to [CapabilityStatementImplementation]
  @override
  CapabilityStatementImplementation build() =>
      CapabilityStatementImplementation.fromJson(toJson());

  /// Converts a [CapabilityStatementImplementationBuilder]
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
    addField('description', description);
    addField('url', url);
    addField('custodian', custodian);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'url',
      'custodian',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'custodian':
        if (custodian != null) {
          fields.add(custodian!);
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'url':
        {
          if (child is FhirUrlBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
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
      case 'custodian':
        {
          if (child is ReferenceBuilder) {
            custodian = child;
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
      case 'description':
        return ['FhirStringBuilder'];
      case 'url':
        return ['FhirUrlBuilder'];
      case 'custodian':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementImplementationBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUrlBuilder.empty();
          return;
        }
      case 'custodian':
        {
          custodian = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementImplementationBuilder clone() =>
      throw UnimplementedError();
  @override
  CapabilityStatementImplementationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    FhirUrlBuilder? url,
    ReferenceBuilder? custodian,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementImplementationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      url: url ?? this.url,
      custodian: custodian ?? this.custodian,
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
    if (o is! CapabilityStatementImplementationBuilder) {
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
      description,
      o.description,
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
      custodian,
      o.custodian,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementRestBuilder]
/// A definition of the restful capabilities of the solution, if any.
class CapabilityStatementRestBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementRestBuilder]

  CapabilityStatementRestBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.documentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementRestBuilder.empty() =>
      CapabilityStatementRestBuilder(
        mode: RestfulCapabilityModeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementRestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest';
    return CapabilityStatementRestBuilder(
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
      mode: JsonParser.parsePrimitive<RestfulCapabilityModeBuilder>(
        json,
        'mode',
        RestfulCapabilityModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
      security: JsonParser.parseObject<CapabilityStatementSecurityBuilder>(
        json,
        'security',
        CapabilityStatementSecurityBuilder.fromJson,
        '$objectPath.security',
      ),
      resource: (json['resource'] as List<dynamic>?)
          ?.map<CapabilityStatementResourceBuilder>(
            (v) => CapabilityStatementResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resource',
              },
            ),
          )
          .toList(),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteractionBuilder>(
            (v) => CapabilityStatementInteractionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interaction',
              },
            ),
          )
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParamBuilder>(
            (v) => CapabilityStatementSearchParamBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.searchParam',
              },
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperationBuilder>(
            (v) => CapabilityStatementOperationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.operation',
              },
            ),
          )
          .toList(),
      compartment: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'compartment',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.compartment',
      ),
    );
  }

  /// Deserialize [CapabilityStatementRestBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementRestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementRestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementRestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementRestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementRestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementRestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementRestBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementRest';

  /// [mode]
  /// Identifies whether this portion of the statement is describing the
  /// ability to initiate or receive restful operations.
  RestfulCapabilityModeBuilder? mode;

  /// [documentation]
  /// Information about the system's restful capabilities that apply across
  /// all applications, such as security.
  FhirMarkdownBuilder? documentation;

  /// [security]
  /// Information about security implementation from an interface perspective
  /// - what a client needs to know.
  CapabilityStatementSecurityBuilder? security;

  /// [resource]
  /// A specification of the restful capabilities of the solution for a
  /// specific resource type.
  List<CapabilityStatementResourceBuilder>? resource;

  /// [interaction]
  /// A specification of restful operations supported by the system.
  List<CapabilityStatementInteractionBuilder>? interaction;

  /// [searchParam]
  /// Search parameters that are supported for searching all resources for
  /// implementations to support and/or make use of - either references to
  /// ones defined in the specification, or additional ones defined for/by
  /// the implementation.
  List<CapabilityStatementSearchParamBuilder>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type.
  List<CapabilityStatementOperationBuilder>? operation;

  /// [compartment]
  /// An absolute URI which is a reference to the definition of a compartment
  /// that the system supports. The reference is to a CompartmentDefinition
  /// resource by its canonical URL .
  List<FhirCanonicalBuilder>? compartment;

  /// Converts a [CapabilityStatementRestBuilder]
  /// to [CapabilityStatementRest]
  @override
  CapabilityStatementRest build() => CapabilityStatementRest.fromJson(toJson());

  /// Converts a [CapabilityStatementRestBuilder]
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
    addField('mode', mode);
    addField('documentation', documentation);
    addField('security', security);
    addField('resource', resource);
    addField('interaction', interaction);
    addField('searchParam', searchParam);
    addField('operation', operation);
    addField('compartment', compartment);
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
      'documentation',
      'security',
      'resource',
      'interaction',
      'searchParam',
      'operation',
      'compartment',
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
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'security':
        if (security != null) {
          fields.add(security!);
        }
      case 'resource':
        if (resource != null) {
          fields.addAll(resource!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.addAll(interaction!);
        }
      case 'searchParam':
        if (searchParam != null) {
          fields.addAll(searchParam!);
        }
      case 'operation':
        if (operation != null) {
          fields.addAll(operation!);
        }
      case 'compartment':
        if (compartment != null) {
          fields.addAll(compartment!);
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
      case 'mode':
        {
          if (child is RestfulCapabilityModeBuilder) {
            mode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RestfulCapabilityModeBuilder(stringValue);
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'security':
        {
          if (child is CapabilityStatementSecurityBuilder) {
            security = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is List<CapabilityStatementResourceBuilder>) {
            // Replace or create new list
            resource = child;
            return;
          } else if (child is CapabilityStatementResourceBuilder) {
            // Add single element to existing list or create new list
            resource = [
              ...(resource ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'interaction':
        {
          if (child is List<CapabilityStatementInteractionBuilder>) {
            // Replace or create new list
            interaction = child;
            return;
          } else if (child is CapabilityStatementInteractionBuilder) {
            // Add single element to existing list or create new list
            interaction = [
              ...(interaction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'searchParam':
        {
          if (child is List<CapabilityStatementSearchParamBuilder>) {
            // Replace or create new list
            searchParam = child;
            return;
          } else if (child is CapabilityStatementSearchParamBuilder) {
            // Add single element to existing list or create new list
            searchParam = [
              ...(searchParam ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is List<CapabilityStatementOperationBuilder>) {
            // Replace or create new list
            operation = child;
            return;
          } else if (child is CapabilityStatementOperationBuilder) {
            // Add single element to existing list or create new list
            operation = [
              ...(operation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'compartment':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            compartment = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            compartment = [
              ...(compartment ?? []),
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
              compartment = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                compartment = [
                  ...(compartment ?? []),
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
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      case 'security':
        return ['CapabilityStatementSecurityBuilder'];
      case 'resource':
        return ['CapabilityStatementResourceBuilder'];
      case 'interaction':
        return ['CapabilityStatementInteractionBuilder'];
      case 'searchParam':
        return ['CapabilityStatementSearchParamBuilder'];
      case 'operation':
        return ['CapabilityStatementOperationBuilder'];
      case 'compartment':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementRestBuilder]
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
          mode = RestfulCapabilityModeBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'security':
        {
          security = CapabilityStatementSecurityBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = <CapabilityStatementResourceBuilder>[];
          return;
        }
      case 'interaction':
        {
          interaction = <CapabilityStatementInteractionBuilder>[];
          return;
        }
      case 'searchParam':
        {
          searchParam = <CapabilityStatementSearchParamBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = <CapabilityStatementOperationBuilder>[];
          return;
        }
      case 'compartment':
        {
          compartment = <FhirCanonicalBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementRestBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementRestBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    RestfulCapabilityModeBuilder? mode,
    FhirMarkdownBuilder? documentation,
    CapabilityStatementSecurityBuilder? security,
    List<CapabilityStatementResourceBuilder>? resource,
    List<CapabilityStatementInteractionBuilder>? interaction,
    List<CapabilityStatementSearchParamBuilder>? searchParam,
    List<CapabilityStatementOperationBuilder>? operation,
    List<FhirCanonicalBuilder>? compartment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementRestBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      security: security ?? this.security,
      resource: resource ?? this.resource,
      interaction: interaction ?? this.interaction,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
      compartment: compartment ?? this.compartment,
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
    if (o is! CapabilityStatementRestBuilder) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      security,
      o.security,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementResourceBuilder>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementInteractionBuilder>(
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementSearchParamBuilder>(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementOperationBuilder>(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      compartment,
      o.compartment,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementSecurityBuilder]
/// Information about security implementation from an interface perspective
/// - what a client needs to know.
class CapabilityStatementSecurityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementSecurityBuilder]

  CapabilityStatementSecurityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cors,
    this.service,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.security',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementSecurityBuilder.empty() =>
      CapabilityStatementSecurityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSecurityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.security';
    return CapabilityStatementSecurityBuilder(
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
      cors: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'cors',
        FhirBooleanBuilder.fromJson,
        '$objectPath.cors',
      ),
      service: (json['service'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.service',
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
    );
  }

  /// Deserialize [CapabilityStatementSecurityBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSecurityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSecurityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSecurityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSecurityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSecurityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSecurityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSecurityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSecurity';

  /// [cors]
  /// Server adds CORS headers when responding to requests - this enables
  /// Javascript applications to use the server.
  FhirBooleanBuilder? cors;

  /// [service]
  /// Types of security services that are supported/required by the system.
  List<CodeableConceptBuilder>? service;

  /// [description]
  /// General description of how security works.
  FhirMarkdownBuilder? description;

  /// Converts a [CapabilityStatementSecurityBuilder]
  /// to [CapabilityStatementSecurity]
  @override
  CapabilityStatementSecurity build() =>
      CapabilityStatementSecurity.fromJson(toJson());

  /// Converts a [CapabilityStatementSecurityBuilder]
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
    addField('cors', cors);
    addField('service', service);
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
      'cors',
      'service',
      'description',
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
      case 'cors':
        if (cors != null) {
          fields.add(cors!);
        }
      case 'service':
        if (service != null) {
          fields.addAll(service!);
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
      case 'cors':
        {
          if (child is FhirBooleanBuilder) {
            cors = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                cors = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'service':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            service = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            service = [
              ...(service ?? []),
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
      case 'cors':
        return ['FhirBooleanBuilder'];
      case 'service':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementSecurityBuilder]
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
      case 'cors':
        {
          cors = FhirBooleanBuilder.empty();
          return;
        }
      case 'service':
        {
          service = <CodeableConceptBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementSecurityBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementSecurityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? cors,
    List<CodeableConceptBuilder>? service,
    FhirMarkdownBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementSecurityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      cors: cors ?? this.cors,
      service: service ?? this.service,
      description: description ?? this.description,
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
    if (o is! CapabilityStatementSecurityBuilder) {
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
      cors,
      o.cors,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      service,
      o.service,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementResourceBuilder]
/// A specification of the restful capabilities of the solution for a
/// specific resource type.
class CapabilityStatementResourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementResourceBuilder]

  CapabilityStatementResourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.interaction,
    this.versioning,
    this.readHistory,
    this.updateCreate,
    this.conditionalCreate,
    this.conditionalRead,
    this.conditionalUpdate,
    this.conditionalDelete,
    this.referencePolicy,
    this.searchInclude,
    this.searchRevInclude,
    this.searchParam,
    this.operation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementResourceBuilder.empty() =>
      CapabilityStatementResourceBuilder(
        type: FhirCodeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementResourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource';
    return CapabilityStatementResourceBuilder(
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
      type: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'type',
        FhirCodeBuilder.fromJson,
        '$objectPath.type',
      ),
      profile: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'profile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.profile',
      ),
      supportedProfile: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'supportedProfile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.supportedProfile',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteractionBuilder>(
            (v) => CapabilityStatementInteractionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interaction',
              },
            ),
          )
          .toList(),
      versioning: JsonParser.parsePrimitive<ResourceVersionPolicyBuilder>(
        json,
        'versioning',
        ResourceVersionPolicyBuilder.fromJson,
        '$objectPath.versioning',
      ),
      readHistory: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'readHistory',
        FhirBooleanBuilder.fromJson,
        '$objectPath.readHistory',
      ),
      updateCreate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'updateCreate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.updateCreate',
      ),
      conditionalCreate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'conditionalCreate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.conditionalCreate',
      ),
      conditionalRead: JsonParser.parsePrimitive<ConditionalReadStatusBuilder>(
        json,
        'conditionalRead',
        ConditionalReadStatusBuilder.fromJson,
        '$objectPath.conditionalRead',
      ),
      conditionalUpdate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'conditionalUpdate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.conditionalUpdate',
      ),
      conditionalDelete:
          JsonParser.parsePrimitive<ConditionalDeleteStatusBuilder>(
        json,
        'conditionalDelete',
        ConditionalDeleteStatusBuilder.fromJson,
        '$objectPath.conditionalDelete',
      ),
      referencePolicy:
          JsonParser.parsePrimitiveList<ReferenceHandlingPolicyBuilder>(
        json,
        'referencePolicy',
        ReferenceHandlingPolicyBuilder.fromJson,
        '$objectPath.referencePolicy',
      ),
      searchInclude: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'searchInclude',
        FhirStringBuilder.fromJson,
        '$objectPath.searchInclude',
      ),
      searchRevInclude: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'searchRevInclude',
        FhirStringBuilder.fromJson,
        '$objectPath.searchRevInclude',
      ),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParamBuilder>(
            (v) => CapabilityStatementSearchParamBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.searchParam',
              },
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperationBuilder>(
            (v) => CapabilityStatementOperationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.operation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatementResourceBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementResourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementResourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementResourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementResourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementResourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementResourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementResourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementResource';

  /// [type]
  /// A type of resource exposed via the restful interface.
  FhirCodeBuilder? type;

  /// [profile]
  /// A specification of the profile that describes the solution's overall
  /// support for the resource, including any constraints on cardinality,
  /// bindings, lengths or other limitations. See further discussion in
  /// [Using Profiles](profiling.html#profile-uses).
  FhirCanonicalBuilder? profile;

  /// [supportedProfile]
  /// A list of profiles that represent different use cases supported by the
  /// system. For a server, "supported by the system" means the system
  /// hosts/produces a set of resources that are conformant to a particular
  /// profile, and allows clients that use its services to search using this
  /// profile and to find appropriate data. For a client, it means the system
  /// will search by this profile and process data according to the guidance
  /// implicit in the profile. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  List<FhirCanonicalBuilder>? supportedProfile;

  /// [documentation]
  /// Additional information about the resource type used by the system.
  FhirMarkdownBuilder? documentation;

  /// [interaction]
  /// Identifies a restful operation supported by the solution.
  List<CapabilityStatementInteractionBuilder>? interaction;

  /// [versioning]
  /// This field is set to no-version to specify that the system does not
  /// support (server) or use (client) versioning for this resource type. If
  /// this has some other value, the server must at least correctly track and
  /// populate the versionId meta-property on resources. If the value is
  /// 'versioned-update', then the server supports all the versioning
  /// features, including using e-tags for version integrity in the API.
  ResourceVersionPolicyBuilder? versioning;

  /// [readHistory]
  /// A flag for whether the server is able to return past versions as part
  /// of the vRead operation.
  FhirBooleanBuilder? readHistory;

  /// [updateCreate]
  /// A flag to indicate that the server allows or needs to allow the client
  /// to create new identities on the server (that is, the client PUTs to a
  /// location where there is no existing resource). Allowing this operation
  /// means that the server allows the client to create new identities on the
  /// server.
  FhirBooleanBuilder? updateCreate;

  /// [conditionalCreate]
  /// A flag that indicates that the server supports conditional create.
  FhirBooleanBuilder? conditionalCreate;

  /// [conditionalRead]
  /// A code that indicates how the server supports conditional read.
  ConditionalReadStatusBuilder? conditionalRead;

  /// [conditionalUpdate]
  /// A flag that indicates that the server supports conditional update.
  FhirBooleanBuilder? conditionalUpdate;

  /// [conditionalDelete]
  /// A code that indicates how the server supports conditional delete.
  ConditionalDeleteStatusBuilder? conditionalDelete;

  /// [referencePolicy]
  /// A set of flags that defines how references are supported.
  List<ReferenceHandlingPolicyBuilder>? referencePolicy;

  /// [searchInclude]
  /// A list of _include values supported by the server.
  List<FhirStringBuilder>? searchInclude;

  /// [searchRevInclude]
  /// A list of _revinclude (reverse include) values supported by the server.
  List<FhirStringBuilder>? searchRevInclude;

  /// [searchParam]
  /// Search parameters for implementations to support and/or make use of -
  /// either references to ones defined in the specification, or additional
  /// ones defined for/by the implementation.
  List<CapabilityStatementSearchParamBuilder>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  /// parameters.
  List<CapabilityStatementOperationBuilder>? operation;

  /// Converts a [CapabilityStatementResourceBuilder]
  /// to [CapabilityStatementResource]
  @override
  CapabilityStatementResource build() =>
      CapabilityStatementResource.fromJson(toJson());

  /// Converts a [CapabilityStatementResourceBuilder]
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
    addField('type', type);
    addField('profile', profile);
    addField('supportedProfile', supportedProfile);
    addField('documentation', documentation);
    addField('interaction', interaction);
    addField('versioning', versioning);
    addField('readHistory', readHistory);
    addField('updateCreate', updateCreate);
    addField('conditionalCreate', conditionalCreate);
    addField('conditionalRead', conditionalRead);
    addField('conditionalUpdate', conditionalUpdate);
    addField('conditionalDelete', conditionalDelete);
    addField('referencePolicy', referencePolicy);
    addField('searchInclude', searchInclude);
    addField('searchRevInclude', searchRevInclude);
    addField('searchParam', searchParam);
    addField('operation', operation);
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
      'profile',
      'supportedProfile',
      'documentation',
      'interaction',
      'versioning',
      'readHistory',
      'updateCreate',
      'conditionalCreate',
      'conditionalRead',
      'conditionalUpdate',
      'conditionalDelete',
      'referencePolicy',
      'searchInclude',
      'searchRevInclude',
      'searchParam',
      'operation',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'supportedProfile':
        if (supportedProfile != null) {
          fields.addAll(supportedProfile!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.addAll(interaction!);
        }
      case 'versioning':
        if (versioning != null) {
          fields.add(versioning!);
        }
      case 'readHistory':
        if (readHistory != null) {
          fields.add(readHistory!);
        }
      case 'updateCreate':
        if (updateCreate != null) {
          fields.add(updateCreate!);
        }
      case 'conditionalCreate':
        if (conditionalCreate != null) {
          fields.add(conditionalCreate!);
        }
      case 'conditionalRead':
        if (conditionalRead != null) {
          fields.add(conditionalRead!);
        }
      case 'conditionalUpdate':
        if (conditionalUpdate != null) {
          fields.add(conditionalUpdate!);
        }
      case 'conditionalDelete':
        if (conditionalDelete != null) {
          fields.add(conditionalDelete!);
        }
      case 'referencePolicy':
        if (referencePolicy != null) {
          fields.addAll(referencePolicy!);
        }
      case 'searchInclude':
        if (searchInclude != null) {
          fields.addAll(searchInclude!);
        }
      case 'searchRevInclude':
        if (searchRevInclude != null) {
          fields.addAll(searchRevInclude!);
        }
      case 'searchParam':
        if (searchParam != null) {
          fields.addAll(searchParam!);
        }
      case 'operation':
        if (operation != null) {
          fields.addAll(operation!);
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
      case 'type':
        {
          if (child is FhirCodeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
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
      case 'profile':
        {
          if (child is FhirCanonicalBuilder) {
            profile = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                profile = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportedProfile':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            supportedProfile = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            supportedProfile = [
              ...(supportedProfile ?? []),
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
              supportedProfile = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                supportedProfile = [
                  ...(supportedProfile ?? []),
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
      case 'documentation':
        {
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'interaction':
        {
          if (child is List<CapabilityStatementInteractionBuilder>) {
            // Replace or create new list
            interaction = child;
            return;
          } else if (child is CapabilityStatementInteractionBuilder) {
            // Add single element to existing list or create new list
            interaction = [
              ...(interaction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versioning':
        {
          if (child is ResourceVersionPolicyBuilder) {
            versioning = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ResourceVersionPolicyBuilder(stringValue);
                versioning = converted;
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
      case 'readHistory':
        {
          if (child is FhirBooleanBuilder) {
            readHistory = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                readHistory = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'updateCreate':
        {
          if (child is FhirBooleanBuilder) {
            updateCreate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                updateCreate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conditionalCreate':
        {
          if (child is FhirBooleanBuilder) {
            conditionalCreate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                conditionalCreate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conditionalRead':
        {
          if (child is ConditionalReadStatusBuilder) {
            conditionalRead = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConditionalReadStatusBuilder(stringValue);
                conditionalRead = converted;
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
      case 'conditionalUpdate':
        {
          if (child is FhirBooleanBuilder) {
            conditionalUpdate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                conditionalUpdate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conditionalDelete':
        {
          if (child is ConditionalDeleteStatusBuilder) {
            conditionalDelete = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConditionalDeleteStatusBuilder(stringValue);
                conditionalDelete = converted;
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
      case 'referencePolicy':
        {
          if (child is List<ReferenceHandlingPolicyBuilder>) {
            // Replace or create new list
            referencePolicy = child;
            return;
          } else if (child is ReferenceHandlingPolicyBuilder) {
            // Add single element to existing list or create new list
            referencePolicy = [
              ...(referencePolicy ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <ReferenceHandlingPolicyBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = ReferenceHandlingPolicyBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              referencePolicy = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ReferenceHandlingPolicyBuilder(stringValue);
                referencePolicy = [
                  ...(referencePolicy ?? []),
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
      case 'searchInclude':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            searchInclude = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            searchInclude = [
              ...(searchInclude ?? []),
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
              searchInclude = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                searchInclude = [
                  ...(searchInclude ?? []),
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
      case 'searchRevInclude':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            searchRevInclude = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            searchRevInclude = [
              ...(searchRevInclude ?? []),
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
              searchRevInclude = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                searchRevInclude = [
                  ...(searchRevInclude ?? []),
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
      case 'searchParam':
        {
          if (child is List<CapabilityStatementSearchParamBuilder>) {
            // Replace or create new list
            searchParam = child;
            return;
          } else if (child is CapabilityStatementSearchParamBuilder) {
            // Add single element to existing list or create new list
            searchParam = [
              ...(searchParam ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is List<CapabilityStatementOperationBuilder>) {
            // Replace or create new list
            operation = child;
            return;
          } else if (child is CapabilityStatementOperationBuilder) {
            // Add single element to existing list or create new list
            operation = [
              ...(operation ?? []),
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
      case 'type':
        return ['FhirCodeBuilder'];
      case 'profile':
        return ['FhirCanonicalBuilder'];
      case 'supportedProfile':
        return ['FhirCanonicalBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      case 'interaction':
        return ['CapabilityStatementInteractionBuilder'];
      case 'versioning':
        return ['FhirCodeEnumBuilder'];
      case 'readHistory':
        return ['FhirBooleanBuilder'];
      case 'updateCreate':
        return ['FhirBooleanBuilder'];
      case 'conditionalCreate':
        return ['FhirBooleanBuilder'];
      case 'conditionalRead':
        return ['FhirCodeEnumBuilder'];
      case 'conditionalUpdate':
        return ['FhirBooleanBuilder'];
      case 'conditionalDelete':
        return ['FhirCodeEnumBuilder'];
      case 'referencePolicy':
        return ['FhirCodeEnumBuilder'];
      case 'searchInclude':
        return ['FhirStringBuilder'];
      case 'searchRevInclude':
        return ['FhirStringBuilder'];
      case 'searchParam':
        return ['CapabilityStatementSearchParamBuilder'];
      case 'operation':
        return ['CapabilityStatementOperationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementResourceBuilder]
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
      case 'type':
        {
          type = FhirCodeBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = FhirCanonicalBuilder.empty();
          return;
        }
      case 'supportedProfile':
        {
          supportedProfile = <FhirCanonicalBuilder>[];
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'interaction':
        {
          interaction = <CapabilityStatementInteractionBuilder>[];
          return;
        }
      case 'versioning':
        {
          versioning = ResourceVersionPolicyBuilder.empty();
          return;
        }
      case 'readHistory':
        {
          readHistory = FhirBooleanBuilder.empty();
          return;
        }
      case 'updateCreate':
        {
          updateCreate = FhirBooleanBuilder.empty();
          return;
        }
      case 'conditionalCreate':
        {
          conditionalCreate = FhirBooleanBuilder.empty();
          return;
        }
      case 'conditionalRead':
        {
          conditionalRead = ConditionalReadStatusBuilder.empty();
          return;
        }
      case 'conditionalUpdate':
        {
          conditionalUpdate = FhirBooleanBuilder.empty();
          return;
        }
      case 'conditionalDelete':
        {
          conditionalDelete = ConditionalDeleteStatusBuilder.empty();
          return;
        }
      case 'referencePolicy':
        {
          referencePolicy = <ReferenceHandlingPolicyBuilder>[];
          return;
        }
      case 'searchInclude':
        {
          searchInclude = <FhirStringBuilder>[];
          return;
        }
      case 'searchRevInclude':
        {
          searchRevInclude = <FhirStringBuilder>[];
          return;
        }
      case 'searchParam':
        {
          searchParam = <CapabilityStatementSearchParamBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = <CapabilityStatementOperationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementResourceBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementResourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? type,
    FhirCanonicalBuilder? profile,
    List<FhirCanonicalBuilder>? supportedProfile,
    FhirMarkdownBuilder? documentation,
    List<CapabilityStatementInteractionBuilder>? interaction,
    ResourceVersionPolicyBuilder? versioning,
    FhirBooleanBuilder? readHistory,
    FhirBooleanBuilder? updateCreate,
    FhirBooleanBuilder? conditionalCreate,
    ConditionalReadStatusBuilder? conditionalRead,
    FhirBooleanBuilder? conditionalUpdate,
    ConditionalDeleteStatusBuilder? conditionalDelete,
    List<ReferenceHandlingPolicyBuilder>? referencePolicy,
    List<FhirStringBuilder>? searchInclude,
    List<FhirStringBuilder>? searchRevInclude,
    List<CapabilityStatementSearchParamBuilder>? searchParam,
    List<CapabilityStatementOperationBuilder>? operation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementResourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      profile: profile ?? this.profile,
      supportedProfile: supportedProfile ?? this.supportedProfile,
      documentation: documentation ?? this.documentation,
      interaction: interaction ?? this.interaction,
      versioning: versioning ?? this.versioning,
      readHistory: readHistory ?? this.readHistory,
      updateCreate: updateCreate ?? this.updateCreate,
      conditionalCreate: conditionalCreate ?? this.conditionalCreate,
      conditionalRead: conditionalRead ?? this.conditionalRead,
      conditionalUpdate: conditionalUpdate ?? this.conditionalUpdate,
      conditionalDelete: conditionalDelete ?? this.conditionalDelete,
      referencePolicy: referencePolicy ?? this.referencePolicy,
      searchInclude: searchInclude ?? this.searchInclude,
      searchRevInclude: searchRevInclude ?? this.searchRevInclude,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
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
    if (o is! CapabilityStatementResourceBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      supportedProfile,
      o.supportedProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementInteractionBuilder>(
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versioning,
      o.versioning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      readHistory,
      o.readHistory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      updateCreate,
      o.updateCreate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionalCreate,
      o.conditionalCreate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionalRead,
      o.conditionalRead,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionalUpdate,
      o.conditionalUpdate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionalDelete,
      o.conditionalDelete,
    )) {
      return false;
    }
    if (!listEquals<ReferenceHandlingPolicyBuilder>(
      referencePolicy,
      o.referencePolicy,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      searchInclude,
      o.searchInclude,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      searchRevInclude,
      o.searchRevInclude,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementSearchParamBuilder>(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementOperationBuilder>(
      operation,
      o.operation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementInteractionBuilder]
/// Identifies a restful operation supported by the solution.
class CapabilityStatementInteractionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementInteractionBuilder]

  CapabilityStatementInteractionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.interaction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementInteractionBuilder.empty() =>
      CapabilityStatementInteractionBuilder(
        code: TypeRestfulInteractionBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteractionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.interaction';
    return CapabilityStatementInteractionBuilder(
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
      code: JsonParser.parsePrimitive<TypeRestfulInteractionBuilder>(
        json,
        'code',
        TypeRestfulInteractionBuilder.fromJson,
        '$objectPath.code',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementInteractionBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteractionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteractionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteractionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteractionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteractionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteractionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementInteractionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction';

  /// [code]
  /// Coded identifier of the operation, supported by the system resource.
  TypeRestfulInteractionBuilder? code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// 'delete is a logical delete' or 'updates are only allowed with version
  /// id' or 'creates permitted from pre-authorized certificates only'.
  FhirMarkdownBuilder? documentation;

  /// Converts a [CapabilityStatementInteractionBuilder]
  /// to [CapabilityStatementInteraction]
  @override
  CapabilityStatementInteraction build() =>
      CapabilityStatementInteraction.fromJson(toJson());

  /// Converts a [CapabilityStatementInteractionBuilder]
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
    addField('code', code);
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
      'code',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'code':
        {
          if (child is TypeRestfulInteractionBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = TypeRestfulInteractionBuilder(stringValue);
                code = converted;
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'code':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementInteractionBuilder]
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
          code = TypeRestfulInteractionBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementInteractionBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteractionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    TypeRestfulInteractionBuilder? code,
    FhirMarkdownBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementInteractionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
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
    if (o is! CapabilityStatementInteractionBuilder) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementSearchParamBuilder]
/// Search parameters for implementations to support and/or make use of -
/// either references to ones defined in the specification, or additional
/// ones defined for/by the implementation.
class CapabilityStatementSearchParamBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementSearchParamBuilder]

  CapabilityStatementSearchParamBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.definition,
    this.type,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.searchParam',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementSearchParamBuilder.empty() =>
      CapabilityStatementSearchParamBuilder(
        name: FhirStringBuilder.empty(),
        type: SearchParamTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSearchParamBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.searchParam';
    return CapabilityStatementSearchParamBuilder(
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
      definition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'definition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definition',
      ),
      type: JsonParser.parsePrimitive<SearchParamTypeBuilder>(
        json,
        'type',
        SearchParamTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSearchParamBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSearchParamBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSearchParamBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSearchParamBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSearchParamBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSearchParamBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSearchParamBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSearchParamBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSearchParam';

  /// [name]
  /// The name of the search parameter used in the interface.
  FhirStringBuilder? name;

  /// [definition]
  /// An absolute URI that is a formal reference to where this parameter was
  /// first defined, so that a client can be confident of the meaning of the
  /// search parameter (a reference to
  /// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
  /// This element SHALL be populated if the search parameter refers to a
  /// SearchParameter defined by the FHIR core specification or externally
  /// defined IGs.
  FhirCanonicalBuilder? definition;

  /// [type]
  /// The type of value a search parameter refers to, and how the content is
  /// interpreted.
  SearchParamTypeBuilder? type;

  /// [documentation]
  /// This allows documentation of any distinct behaviors about how the
  /// search parameter is used. For example, text matching algorithms.
  FhirMarkdownBuilder? documentation;

  /// Converts a [CapabilityStatementSearchParamBuilder]
  /// to [CapabilityStatementSearchParam]
  @override
  CapabilityStatementSearchParam build() =>
      CapabilityStatementSearchParam.fromJson(toJson());

  /// Converts a [CapabilityStatementSearchParamBuilder]
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
    addField('definition', definition);
    addField('type', type);
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
      'definition',
      'type',
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
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
      case 'definition':
        {
          if (child is FhirCanonicalBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
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
          if (child is SearchParamTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SearchParamTypeBuilder(stringValue);
                type = converted;
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
        return ['FhirStringBuilder'];
      case 'definition':
        return ['FhirCanonicalBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementSearchParamBuilder]
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
      case 'definition':
        {
          definition = FhirCanonicalBuilder.empty();
          return;
        }
      case 'type':
        {
          type = SearchParamTypeBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementSearchParamBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementSearchParamBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirCanonicalBuilder? definition,
    SearchParamTypeBuilder? type,
    FhirMarkdownBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementSearchParamBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      definition: definition ?? this.definition,
      type: type ?? this.type,
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
    if (o is! CapabilityStatementSearchParamBuilder) {
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
      definition,
      o.definition,
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementOperationBuilder]
/// Definition of an operation or a named query together with its
/// parameters and their meaning and type. Consult the definition of the
/// operation for details about how to invoke the operation, and the
/// parameters.
class CapabilityStatementOperationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementOperationBuilder]

  CapabilityStatementOperationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.definition,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.operation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementOperationBuilder.empty() =>
      CapabilityStatementOperationBuilder(
        name: FhirStringBuilder.empty(),
        definition: FhirCanonicalBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementOperationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.operation';
    return CapabilityStatementOperationBuilder(
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
      definition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'definition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definition',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementOperationBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementOperationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementOperationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementOperationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementOperationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementOperationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementOperationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementOperationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementOperation';

  /// [name]
  /// The name of the operation or query. For an operation, this is the name
  /// prefixed with $ and used in the URL. For a query, this is the name used
  /// in the _query parameter when the query is called.
  FhirStringBuilder? name;

  /// [definition]
  /// Where the formal definition can be found. If a server references the
  /// base definition of an Operation (i.e. from the specification itself
  /// such as ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```),
  /// that means it supports the full capabilities of the operation - e.g.
  /// both GET and POST invocation. If it only supports a subset, it must
  /// define its own custom [OperationDefinition](operationdefinition.html#)
  /// with a 'base' of the original OperationDefinition. The custom
  /// definition would describe the specific subset of functionality
  /// supported.
  FhirCanonicalBuilder? definition;

  /// [documentation]
  /// Documentation that describes anything special about the operation
  /// behavior, possibly detailing different behavior for system, type and
  /// instance-level invocation of the operation.
  FhirMarkdownBuilder? documentation;

  /// Converts a [CapabilityStatementOperationBuilder]
  /// to [CapabilityStatementOperation]
  @override
  CapabilityStatementOperation build() =>
      CapabilityStatementOperation.fromJson(toJson());

  /// Converts a [CapabilityStatementOperationBuilder]
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
    addField('definition', definition);
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
      'definition',
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
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
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
      case 'definition':
        {
          if (child is FhirCanonicalBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
        return ['FhirStringBuilder'];
      case 'definition':
        return ['FhirCanonicalBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementOperationBuilder]
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
      case 'definition':
        {
          definition = FhirCanonicalBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementOperationBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementOperationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirCanonicalBuilder? definition,
    FhirMarkdownBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementOperationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      definition: definition ?? this.definition,
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
    if (o is! CapabilityStatementOperationBuilder) {
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
      definition,
      o.definition,
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

/// [CapabilityStatementInteraction1Builder]
/// A specification of restful operations supported by the system.
class CapabilityStatementInteraction1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementInteraction1Builder]

  CapabilityStatementInteraction1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.interaction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementInteraction1Builder.empty() =>
      CapabilityStatementInteraction1Builder(
        code: SystemRestfulInteractionBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.interaction';
    return CapabilityStatementInteraction1Builder(
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
      code: JsonParser.parsePrimitive<SystemRestfulInteractionBuilder>(
        json,
        'code',
        SystemRestfulInteractionBuilder.fromJson,
        '$objectPath.code',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementInteraction1Builder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteraction1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteraction1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteraction1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteraction1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteraction1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteraction1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementInteraction1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction1';

  /// [code]
  /// A coded identifier of the operation, supported by the system.
  SystemRestfulInteractionBuilder? code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// limitations on the kind of transactions allowed, or information about
  /// system wide search is implemented.
  FhirMarkdownBuilder? documentation;

  /// Converts a [CapabilityStatementInteraction1Builder]
  /// to [CapabilityStatementInteraction1]
  @override
  CapabilityStatementInteraction1 build() =>
      CapabilityStatementInteraction1.fromJson(toJson());

  /// Converts a [CapabilityStatementInteraction1Builder]
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
    addField('code', code);
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
      'code',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'code':
        {
          if (child is SystemRestfulInteractionBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SystemRestfulInteractionBuilder(stringValue);
                code = converted;
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'code':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementInteraction1Builder]
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
          code = SystemRestfulInteractionBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementInteraction1Builder clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    SystemRestfulInteractionBuilder? code,
    FhirMarkdownBuilder? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementInteraction1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
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
    if (o is! CapabilityStatementInteraction1Builder) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementMessagingBuilder]
/// A description of the messaging capabilities of the solution.
class CapabilityStatementMessagingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementMessagingBuilder]

  CapabilityStatementMessagingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.documentation,
    this.supportedMessage,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.messaging',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementMessagingBuilder.empty() =>
      CapabilityStatementMessagingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementMessagingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging';
    return CapabilityStatementMessagingBuilder(
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
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<CapabilityStatementEndpointBuilder>(
            (v) => CapabilityStatementEndpointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      reliableCache: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'reliableCache',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.reliableCache',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map<CapabilityStatementSupportedMessageBuilder>(
            (v) => CapabilityStatementSupportedMessageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportedMessage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatementMessagingBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementMessagingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementMessagingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementMessagingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementMessagingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementMessagingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementMessagingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementMessagingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementMessaging';

  /// [endpoint]
  /// An endpoint (network accessible address) to which messages and/or
  /// replies are to be sent.
  List<CapabilityStatementEndpointBuilder>? endpoint;

  /// [reliableCache]
  /// Length if the receiver's reliable messaging cache in minutes (if a
  /// receiver) or how long the cache length on the receiver should be (if a
  /// sender).
  FhirUnsignedIntBuilder? reliableCache;

  /// [documentation]
  /// Documentation about the system's messaging capabilities for this
  /// endpoint not otherwise documented by the capability statement. For
  /// example, the process for becoming an authorized messaging exchange
  /// partner.
  FhirMarkdownBuilder? documentation;

  /// [supportedMessage]
  /// References to message definitions for messages this system can send or
  /// receive.
  List<CapabilityStatementSupportedMessageBuilder>? supportedMessage;

  /// Converts a [CapabilityStatementMessagingBuilder]
  /// to [CapabilityStatementMessaging]
  @override
  CapabilityStatementMessaging build() =>
      CapabilityStatementMessaging.fromJson(toJson());

  /// Converts a [CapabilityStatementMessagingBuilder]
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
    addField('endpoint', endpoint);
    addField('reliableCache', reliableCache);
    addField('documentation', documentation);
    addField('supportedMessage', supportedMessage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'endpoint',
      'reliableCache',
      'documentation',
      'supportedMessage',
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
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'reliableCache':
        if (reliableCache != null) {
          fields.add(reliableCache!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'supportedMessage':
        if (supportedMessage != null) {
          fields.addAll(supportedMessage!);
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
      case 'endpoint':
        {
          if (child is List<CapabilityStatementEndpointBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is CapabilityStatementEndpointBuilder) {
            // Add single element to existing list or create new list
            endpoint = [
              ...(endpoint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reliableCache':
        {
          if (child is FhirUnsignedIntBuilder) {
            reliableCache = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  reliableCache = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'supportedMessage':
        {
          if (child is List<CapabilityStatementSupportedMessageBuilder>) {
            // Replace or create new list
            supportedMessage = child;
            return;
          } else if (child is CapabilityStatementSupportedMessageBuilder) {
            // Add single element to existing list or create new list
            supportedMessage = [
              ...(supportedMessage ?? []),
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
      case 'endpoint':
        return ['CapabilityStatementEndpointBuilder'];
      case 'reliableCache':
        return ['FhirUnsignedIntBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      case 'supportedMessage':
        return ['CapabilityStatementSupportedMessageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementMessagingBuilder]
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
      case 'endpoint':
        {
          endpoint = <CapabilityStatementEndpointBuilder>[];
          return;
        }
      case 'reliableCache':
        {
          reliableCache = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'supportedMessage':
        {
          supportedMessage = <CapabilityStatementSupportedMessageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementMessagingBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementMessagingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CapabilityStatementEndpointBuilder>? endpoint,
    FhirUnsignedIntBuilder? reliableCache,
    FhirMarkdownBuilder? documentation,
    List<CapabilityStatementSupportedMessageBuilder>? supportedMessage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementMessagingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      endpoint: endpoint ?? this.endpoint,
      reliableCache: reliableCache ?? this.reliableCache,
      documentation: documentation ?? this.documentation,
      supportedMessage: supportedMessage ?? this.supportedMessage,
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
    if (o is! CapabilityStatementMessagingBuilder) {
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
    if (!listEquals<CapabilityStatementEndpointBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reliableCache,
      o.reliableCache,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementSupportedMessageBuilder>(
      supportedMessage,
      o.supportedMessage,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementEndpointBuilder]
/// An endpoint (network accessible address) to which messages and/or
/// replies are to be sent.
class CapabilityStatementEndpointBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementEndpointBuilder]

  CapabilityStatementEndpointBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.protocol,
    this.address,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.messaging.endpoint',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementEndpointBuilder.empty() =>
      CapabilityStatementEndpointBuilder(
        protocol: CodingBuilder.empty(),
        address: FhirUrlBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementEndpointBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging.endpoint';
    return CapabilityStatementEndpointBuilder(
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
      protocol: JsonParser.parseObject<CodingBuilder>(
        json,
        'protocol',
        CodingBuilder.fromJson,
        '$objectPath.protocol',
      ),
      address: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'address',
        FhirUrlBuilder.fromJson,
        '$objectPath.address',
      ),
    );
  }

  /// Deserialize [CapabilityStatementEndpointBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementEndpointBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementEndpointBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementEndpointBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementEndpointBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementEndpointBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementEndpointBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementEndpointBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementEndpoint';

  /// [protocol]
  /// A list of the messaging transport protocol(s) identifiers, supported by
  /// this endpoint.
  CodingBuilder? protocol;

  /// [address]
  /// The network address of the endpoint. For solutions that do not use
  /// network addresses for routing, it can be just an identifier.
  FhirUrlBuilder? address;

  /// Converts a [CapabilityStatementEndpointBuilder]
  /// to [CapabilityStatementEndpoint]
  @override
  CapabilityStatementEndpoint build() =>
      CapabilityStatementEndpoint.fromJson(toJson());

  /// Converts a [CapabilityStatementEndpointBuilder]
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
    addField('protocol', protocol);
    addField('address', address);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'protocol',
      'address',
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
      case 'protocol':
        if (protocol != null) {
          fields.add(protocol!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
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
      case 'protocol':
        {
          if (child is CodingBuilder) {
            protocol = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'address':
        {
          if (child is FhirUrlBuilder) {
            address = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                address = converted;
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
      case 'protocol':
        return ['CodingBuilder'];
      case 'address':
        return ['FhirUrlBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementEndpointBuilder]
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
      case 'protocol':
        {
          protocol = CodingBuilder.empty();
          return;
        }
      case 'address':
        {
          address = FhirUrlBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementEndpointBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementEndpointBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? protocol,
    FhirUrlBuilder? address,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementEndpointBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      protocol: protocol ?? this.protocol,
      address: address ?? this.address,
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
    if (o is! CapabilityStatementEndpointBuilder) {
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
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementSupportedMessageBuilder]
/// References to message definitions for messages this system can send or
/// receive.
class CapabilityStatementSupportedMessageBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementSupportedMessageBuilder]

  CapabilityStatementSupportedMessageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.definition,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.messaging.supportedMessage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementSupportedMessageBuilder.empty() =>
      CapabilityStatementSupportedMessageBuilder(
        mode: EventCapabilityModeBuilder.values.first,
        definition: FhirCanonicalBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSupportedMessageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging.supportedMessage';
    return CapabilityStatementSupportedMessageBuilder(
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
      mode: JsonParser.parsePrimitive<EventCapabilityModeBuilder>(
        json,
        'mode',
        EventCapabilityModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      definition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'definition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definition',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSupportedMessageBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSupportedMessageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSupportedMessageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSupportedMessageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSupportedMessageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSupportedMessageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSupportedMessageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSupportedMessageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSupportedMessage';

  /// [mode]
  /// The mode of this event declaration - whether application is sender or
  /// receiver.
  EventCapabilityModeBuilder? mode;

  /// [definition]
  /// Points to a message definition that identifies the messaging event,
  /// message structure, allowed responses, etc.
  FhirCanonicalBuilder? definition;

  /// Converts a [CapabilityStatementSupportedMessageBuilder]
  /// to [CapabilityStatementSupportedMessage]
  @override
  CapabilityStatementSupportedMessage build() =>
      CapabilityStatementSupportedMessage.fromJson(toJson());

  /// Converts a [CapabilityStatementSupportedMessageBuilder]
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
    addField('mode', mode);
    addField('definition', definition);
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
      case 'mode':
        {
          if (child is EventCapabilityModeBuilder) {
            mode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EventCapabilityModeBuilder(stringValue);
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
      case 'definition':
        {
          if (child is FhirCanonicalBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
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
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'definition':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementSupportedMessageBuilder]
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
          mode = EventCapabilityModeBuilder.empty();
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

  @override
  CapabilityStatementSupportedMessageBuilder clone() =>
      throw UnimplementedError();
  @override
  CapabilityStatementSupportedMessageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EventCapabilityModeBuilder? mode,
    FhirCanonicalBuilder? definition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementSupportedMessageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      definition: definition ?? this.definition,
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
    if (o is! CapabilityStatementSupportedMessageBuilder) {
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
      definition,
      o.definition,
    )) {
      return false;
    }
    return true;
  }
}

/// [CapabilityStatementDocumentBuilder]
/// A document definition.
class CapabilityStatementDocumentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CapabilityStatementDocumentBuilder]

  CapabilityStatementDocumentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.documentation,
    this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.document',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CapabilityStatementDocumentBuilder.empty() =>
      CapabilityStatementDocumentBuilder(
        mode: DocumentModeBuilder.values.first,
        profile: FhirCanonicalBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementDocumentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.document';
    return CapabilityStatementDocumentBuilder(
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
      mode: JsonParser.parsePrimitive<DocumentModeBuilder>(
        json,
        'mode',
        DocumentModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'documentation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.documentation',
      ),
      profile: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'profile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.profile',
      ),
    );
  }

  /// Deserialize [CapabilityStatementDocumentBuilder]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementDocumentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementDocumentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementDocumentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementDocumentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementDocumentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementDocumentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CapabilityStatementDocumentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementDocument';

  /// [mode]
  /// Mode of this document declaration - whether an application is a
  /// producer or consumer.
  DocumentModeBuilder? mode;

  /// [documentation]
  /// A description of how the application supports or uses the specified
  /// document profile. For example, when documents are created, what action
  /// is taken with consumed documents, etc.
  FhirMarkdownBuilder? documentation;

  /// [profile]
  /// A profile on the document Bundle that constrains which resources are
  /// present, and their contents.
  FhirCanonicalBuilder? profile;

  /// Converts a [CapabilityStatementDocumentBuilder]
  /// to [CapabilityStatementDocument]
  @override
  CapabilityStatementDocument build() =>
      CapabilityStatementDocument.fromJson(toJson());

  /// Converts a [CapabilityStatementDocumentBuilder]
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
    addField('mode', mode);
    addField('documentation', documentation);
    addField('profile', profile);
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
      'documentation',
      'profile',
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
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
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
      case 'mode':
        {
          if (child is DocumentModeBuilder) {
            mode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DocumentModeBuilder(stringValue);
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
          if (child is FhirMarkdownBuilder) {
            documentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'profile':
        {
          if (child is FhirCanonicalBuilder) {
            profile = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                profile = converted;
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
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'documentation':
        return ['FhirMarkdownBuilder'];
      case 'profile':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CapabilityStatementDocumentBuilder]
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
          mode = DocumentModeBuilder.empty();
          return;
        }
      case 'documentation':
        {
          documentation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CapabilityStatementDocumentBuilder clone() => throw UnimplementedError();
  @override
  CapabilityStatementDocumentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    DocumentModeBuilder? mode,
    FhirMarkdownBuilder? documentation,
    FhirCanonicalBuilder? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CapabilityStatementDocumentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      profile: profile ?? this.profile,
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
    if (o is! CapabilityStatementDocumentBuilder) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}
