import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CapabilityStatement]
/// A Capability Statement documents a set of capabilities (behaviors) of a
/// FHIR Server for a particular version of FHIR that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class CapabilityStatement extends CanonicalResource {
  /// Primary constructor for
  /// [CapabilityStatement]

  const CapabilityStatement({
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
    required this.kind,
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    required this.fhirVersion,
    required this.format,
    this.patchFormat,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document,
  }) : super(
          objectPath: 'CapabilityStatement',
          resourceType: R4ResourceType.CapabilityStatement,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement';
    return CapabilityStatement(
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contained',
                  },
                ),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
      )!,
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contact',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.useContext',
                  },
                ),
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.jurisdiction',
                  },
                ),
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
      kind: JsonParser.parsePrimitive<CapabilityStatementKind>(
        json,
        'kind',
        CapabilityStatementKind.fromJson,
        '$objectPath.kind',
      )!,
      instantiates: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiates',
        FhirCanonical.fromJson,
        '$objectPath.instantiates',
      ),
      imports: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'imports',
        FhirCanonical.fromJson,
        '$objectPath.imports',
      ),
      software: JsonParser.parseObject<CapabilityStatementSoftware>(
        json,
        'software',
        CapabilityStatementSoftware.fromJson,
        '$objectPath.software',
      ),
      implementation: JsonParser.parseObject<CapabilityStatementImplementation>(
        json,
        'implementation',
        CapabilityStatementImplementation.fromJson,
        '$objectPath.implementation',
      ),
      fhirVersion: JsonParser.parsePrimitive<FHIRVersion>(
        json,
        'fhirVersion',
        FHIRVersion.fromJson,
        '$objectPath.fhirVersion',
      )!,
      format: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'format',
        FhirCode.fromJson,
        '$objectPath.format',
      )!,
      patchFormat: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'patchFormat',
        FhirCode.fromJson,
        '$objectPath.patchFormat',
      ),
      implementationGuide: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'implementationGuide',
        FhirCanonical.fromJson,
        '$objectPath.implementationGuide',
      ),
      rest: (json['rest'] as List<dynamic>?)
          ?.map<CapabilityStatementRest>(
            (v) => CapabilityStatementRest.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.rest',
                  },
                ),
            ),
          )
          .toList(),
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map<CapabilityStatementMessaging>(
            (v) => CapabilityStatementMessaging.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.messaging',
                  },
                ),
            ),
          )
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map<CapabilityStatementDocument>(
            (v) => CapabilityStatementDocument.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.document',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatement]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatement';

  /// [name]
  /// A natural language name identifying the capability statement. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the capability statement.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this capability statement is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the capability statement and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the capability statement.
  final FhirMarkdown? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

  /// [instantiates]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software implements. This capability statement is a published API
  /// description that corresponds to a business service. The server may
  /// actually implement a subset of the capability statement it claims to
  /// implement, so the capability statement must specify the full capability
  /// details.
  final List<FhirCanonical>? instantiates;

  /// [imports]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software adds to. The capability statement automatically includes
  /// everything in the other statement, and it is not duplicated, though the
  /// server may repeat the same resources, interactions and operations to
  /// add additional details to them.
  final List<FhirCanonical>? imports;

  /// [software]
  /// Software that is covered by this capability statement. It is used when
  /// the capability statement describes the capabilities of a particular
  /// software version, independent of an installation.
  final CapabilityStatementSoftware? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// capability statement - i.e. a particular installation, rather than the
  /// capabilities of a software program.
  final CapabilityStatementImplementation? implementation;

  /// [fhirVersion]
  /// The version of the FHIR specification that this CapabilityStatement
  /// describes (which SHALL be the same as the FHIR version of the
  /// CapabilityStatement itself). There is no default value.
  final FHIRVersion fhirVersion;

  /// [format]
  /// A list of the formats supported by this implementation using their
  /// content types.
  final List<FhirCode> format;

  /// [patchFormat]
  /// A list of the patch formats supported by this implementation using
  /// their content types.
  final List<FhirCode>? patchFormat;

  /// [implementationGuide]
  /// A list of implementation guides that the server does (or should)
  /// support in their entirety.
  final List<FhirCanonical>? implementationGuide;

  /// [rest]
  /// A definition of the restful capabilities of the solution, if any.
  final List<CapabilityStatementRest>? rest;

  /// [messaging]
  /// A description of the messaging capabilities of the solution.
  final List<CapabilityStatementMessaging>? messaging;

  /// [document]
  /// A document definition.
  final List<CapabilityStatementDocument>? document;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
        fields.add(kind);
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
        fields.add(fhirVersion);
      case 'format':
        fields.addAll(format);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatement clone() => throw UnimplementedError();
  @override
  CapabilityStatement copyWith({
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
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    CapabilityStatementKind? kind,
    List<FhirCanonical>? instantiates,
    List<FhirCanonical>? imports,
    CapabilityStatementSoftware? software,
    CapabilityStatementImplementation? implementation,
    FHIRVersion? fhirVersion,
    List<FhirCode>? format,
    List<FhirCode>? patchFormat,
    List<FhirCanonical>? implementationGuide,
    List<CapabilityStatementRest>? rest,
    List<CapabilityStatementMessaging>? messaging,
    List<CapabilityStatementDocument>? document,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CapabilityStatement(
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
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      instantiates: instantiates
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiates',
                ),
              )
              .toList() ??
          this.instantiates,
      imports: imports
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.imports',
                ),
              )
              .toList() ??
          this.imports,
      software: software?.copyWith(
            objectPath: '$newObjectPath.software',
          ) ??
          this.software,
      implementation: implementation?.copyWith(
            objectPath: '$newObjectPath.implementation',
          ) ??
          this.implementation,
      fhirVersion: fhirVersion?.copyWith(
            objectPath: '$newObjectPath.fhirVersion',
          ) ??
          this.fhirVersion,
      format: format
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.format',
                ),
              )
              .toList() ??
          this.format,
      patchFormat: patchFormat
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.patchFormat',
                ),
              )
              .toList() ??
          this.patchFormat,
      implementationGuide: implementationGuide
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.implementationGuide',
                ),
              )
              .toList() ??
          this.implementationGuide,
      rest: rest
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.rest',
                ),
              )
              .toList() ??
          this.rest,
      messaging: messaging
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.messaging',
                ),
              )
              .toList() ??
          this.messaging,
      document: document
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.document',
                ),
              )
              .toList() ??
          this.document,
    );
  }
}

/// [CapabilityStatementSoftware]
/// Software that is covered by this capability statement. It is used when
/// the capability statement describes the capabilities of a particular
/// software version, independent of an installation.
class CapabilityStatementSoftware extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSoftware]

  const CapabilityStatementSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.version,
    this.releaseDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.software',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.software';
    return CapabilityStatementSoftware(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      releaseDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'releaseDate',
        FhirDateTime.fromJson,
        '$objectPath.releaseDate',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSoftware]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSoftware.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSoftware.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSoftware.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSoftware '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSoftware]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSoftware.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSoftware';

  /// [name]
  /// Name the software is known by.
  final FhirString name;

  /// [version]
  /// The version identifier for the software covered by this statement.
  final FhirString? version;

  /// [releaseDate]
  /// Date this version of the software was released.
  final FhirDateTime? releaseDate;
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
    addField('version', version);
    addField('releaseDate', releaseDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
  @override
  CapabilityStatementSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    FhirDateTime? releaseDate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementSoftware(
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
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      releaseDate: releaseDate?.copyWith(
            objectPath: '$newObjectPath.releaseDate',
          ) ??
          this.releaseDate,
    );
  }
}

/// [CapabilityStatementImplementation]
/// Identifies a specific implementation instance that is described by the
/// capability statement - i.e. a particular installation, rather than the
/// capabilities of a software program.
class CapabilityStatementImplementation extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementImplementation]

  const CapabilityStatementImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.url,
    this.custodian,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.implementation',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.implementation';
    return CapabilityStatementImplementation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      )!,
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
        '$objectPath.url',
      ),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
        '$objectPath.custodian',
      ),
    );
  }

  /// Deserialize [CapabilityStatementImplementation]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementImplementation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementImplementation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementImplementation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementImplementation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementImplementation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementImplementation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementImplementation';

  /// [description]
  /// Information about the specific installation that this capability
  /// statement relates to.
  final FhirString description;

  /// [url]
  /// An absolute base URL for the implementation. This forms the base for
  /// REST interfaces as well as the mailbox and document interfaces.
  final FhirUrl? url;

  /// [custodian]
  /// The organization responsible for the management of the instance and
  /// oversight of the data on the server at the specified URL.
  final Reference? custodian;
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
    addField('description', description);
    addField('url', url);
    addField('custodian', custodian);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'description':
        fields.add(description);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
  @override
  CapabilityStatementImplementation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    Reference? custodian,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementImplementation(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      custodian: custodian?.copyWith(
            objectPath: '$newObjectPath.custodian',
          ) ??
          this.custodian,
    );
  }
}

/// [CapabilityStatementRest]
/// A definition of the restful capabilities of the solution, if any.
class CapabilityStatementRest extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementRest]

  const CapabilityStatementRest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementRest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest';
    return CapabilityStatementRest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<RestfulCapabilityMode>(
        json,
        'mode',
        RestfulCapabilityMode.fromJson,
        '$objectPath.mode',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
      security: JsonParser.parseObject<CapabilityStatementSecurity>(
        json,
        'security',
        CapabilityStatementSecurity.fromJson,
        '$objectPath.security',
      ),
      resource: (json['resource'] as List<dynamic>?)
          ?.map<CapabilityStatementResource>(
            (v) => CapabilityStatementResource.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.resource',
                  },
                ),
            ),
          )
          .toList(),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteraction>(
            (v) => CapabilityStatementInteraction.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.interaction',
                  },
                ),
            ),
          )
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParam>(
            (v) => CapabilityStatementSearchParam.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.searchParam',
                  },
                ),
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperation>(
            (v) => CapabilityStatementOperation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.operation',
                  },
                ),
            ),
          )
          .toList(),
      compartment: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'compartment',
        FhirCanonical.fromJson,
        '$objectPath.compartment',
      ),
    );
  }

  /// Deserialize [CapabilityStatementRest]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementRest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementRest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementRest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementRest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementRest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementRest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementRest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementRest';

  /// [mode]
  /// Identifies whether this portion of the statement is describing the
  /// ability to initiate or receive restful operations.
  final RestfulCapabilityMode mode;

  /// [documentation]
  /// Information about the system's restful capabilities that apply across
  /// all applications, such as security.
  final FhirMarkdown? documentation;

  /// [security]
  /// Information about security implementation from an interface perspective
  /// - what a client needs to know.
  final CapabilityStatementSecurity? security;

  /// [resource]
  /// A specification of the restful capabilities of the solution for a
  /// specific resource type.
  final List<CapabilityStatementResource>? resource;

  /// [interaction]
  /// A specification of restful operations supported by the system.
  final List<CapabilityStatementInteraction>? interaction;

  /// [searchParam]
  /// Search parameters that are supported for searching all resources for
  /// implementations to support and/or make use of - either references to
  /// ones defined in the specification, or additional ones defined for/by
  /// the implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type.
  final List<CapabilityStatementOperation>? operation;

  /// [compartment]
  /// An absolute URI which is a reference to the definition of a compartment
  /// that the system supports. The reference is to a CompartmentDefinition
  /// resource by its canonical URL .
  final List<FhirCanonical>? compartment;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'mode':
        fields.add(mode);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
  @override
  CapabilityStatementRest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RestfulCapabilityMode? mode,
    FhirMarkdown? documentation,
    CapabilityStatementSecurity? security,
    List<CapabilityStatementResource>? resource,
    List<CapabilityStatementInteraction>? interaction,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    List<FhirCanonical>? compartment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementRest(
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
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      security: security?.copyWith(
            objectPath: '$newObjectPath.security',
          ) ??
          this.security,
      resource: resource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resource',
                ),
              )
              .toList() ??
          this.resource,
      interaction: interaction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.interaction',
                ),
              )
              .toList() ??
          this.interaction,
      searchParam: searchParam
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.searchParam',
                ),
              )
              .toList() ??
          this.searchParam,
      operation: operation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.operation',
                ),
              )
              .toList() ??
          this.operation,
      compartment: compartment
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.compartment',
                ),
              )
              .toList() ??
          this.compartment,
    );
  }
}

/// [CapabilityStatementSecurity]
/// Information about security implementation from an interface perspective
/// - what a client needs to know.
class CapabilityStatementSecurity extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSecurity]

  const CapabilityStatementSecurity({
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSecurity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.security';
    return CapabilityStatementSecurity(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      cors: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'cors',
        FhirBoolean.fromJson,
        '$objectPath.cors',
      ),
      service: (json['service'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.service',
                  },
                ),
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSecurity]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSecurity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSecurity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSecurity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSecurity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSecurity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSecurity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSecurity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSecurity';

  /// [cors]
  /// Server adds CORS headers when responding to requests - this enables
  /// Javascript applications to use the server.
  final FhirBoolean? cors;

  /// [service]
  /// Types of security services that are supported/required by the system.
  final List<CodeableConcept>? service;

  /// [description]
  /// General description of how security works.
  final FhirMarkdown? description;
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
    addField('cors', cors);
    addField('service', service);
    addField('description', description);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
  @override
  CapabilityStatementSecurity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? cors,
    List<CodeableConcept>? service,
    FhirMarkdown? description,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementSecurity(
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
      cors: cors?.copyWith(
            objectPath: '$newObjectPath.cors',
          ) ??
          this.cors,
      service: service
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.service',
                ),
              )
              .toList() ??
          this.service,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
    );
  }
}

/// [CapabilityStatementResource]
/// A specification of the restful capabilities of the solution for a
/// specific resource type.
class CapabilityStatementResource extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementResource]

  const CapabilityStatementResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementResource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource';
    return CapabilityStatementResource(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<FhirCode>(
        json,
        'type',
        FhirCode.fromJson,
        '$objectPath.type',
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      supportedProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'supportedProfile',
        FhirCanonical.fromJson,
        '$objectPath.supportedProfile',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteraction>(
            (v) => CapabilityStatementInteraction.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.interaction',
                  },
                ),
            ),
          )
          .toList(),
      versioning: JsonParser.parsePrimitive<ResourceVersionPolicy>(
        json,
        'versioning',
        ResourceVersionPolicy.fromJson,
        '$objectPath.versioning',
      ),
      readHistory: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'readHistory',
        FhirBoolean.fromJson,
        '$objectPath.readHistory',
      ),
      updateCreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'updateCreate',
        FhirBoolean.fromJson,
        '$objectPath.updateCreate',
      ),
      conditionalCreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'conditionalCreate',
        FhirBoolean.fromJson,
        '$objectPath.conditionalCreate',
      ),
      conditionalRead: JsonParser.parsePrimitive<ConditionalReadStatus>(
        json,
        'conditionalRead',
        ConditionalReadStatus.fromJson,
        '$objectPath.conditionalRead',
      ),
      conditionalUpdate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'conditionalUpdate',
        FhirBoolean.fromJson,
        '$objectPath.conditionalUpdate',
      ),
      conditionalDelete: JsonParser.parsePrimitive<ConditionalDeleteStatus>(
        json,
        'conditionalDelete',
        ConditionalDeleteStatus.fromJson,
        '$objectPath.conditionalDelete',
      ),
      referencePolicy: JsonParser.parsePrimitiveList<ReferenceHandlingPolicy>(
        json,
        'referencePolicy',
        ReferenceHandlingPolicy.fromJson,
        '$objectPath.referencePolicy',
      ),
      searchInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'searchInclude',
        FhirString.fromJson,
        '$objectPath.searchInclude',
      ),
      searchRevInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'searchRevInclude',
        FhirString.fromJson,
        '$objectPath.searchRevInclude',
      ),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParam>(
            (v) => CapabilityStatementSearchParam.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.searchParam',
                  },
                ),
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperation>(
            (v) => CapabilityStatementOperation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.operation',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatementResource]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementResource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementResource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementResource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementResource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementResource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementResource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementResource';

  /// [type]
  /// A type of resource exposed via the restful interface.
  final FhirCode type;

  /// [profile]
  /// A specification of the profile that describes the solution's overall
  /// support for the resource, including any constraints on cardinality,
  /// bindings, lengths or other limitations. See further discussion in
  /// [Using Profiles](profiling.html#profile-uses).
  final FhirCanonical? profile;

  /// [supportedProfile]
  /// A list of profiles that represent different use cases supported by the
  /// system. For a server, "supported by the system" means the system
  /// hosts/produces a set of resources that are conformant to a particular
  /// profile, and allows clients that use its services to search using this
  /// profile and to find appropriate data. For a client, it means the system
  /// will search by this profile and process data according to the guidance
  /// implicit in the profile. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  final List<FhirCanonical>? supportedProfile;

  /// [documentation]
  /// Additional information about the resource type used by the system.
  final FhirMarkdown? documentation;

  /// [interaction]
  /// Identifies a restful operation supported by the solution.
  final List<CapabilityStatementInteraction>? interaction;

  /// [versioning]
  /// This field is set to no-version to specify that the system does not
  /// support (server) or use (client) versioning for this resource type. If
  /// this has some other value, the server must at least correctly track and
  /// populate the versionId meta-property on resources. If the value is
  /// 'versioned-update', then the server supports all the versioning
  /// features, including using e-tags for version integrity in the API.
  final ResourceVersionPolicy? versioning;

  /// [readHistory]
  /// A flag for whether the server is able to return past versions as part
  /// of the vRead operation.
  final FhirBoolean? readHistory;

  /// [updateCreate]
  /// A flag to indicate that the server allows or needs to allow the client
  /// to create new identities on the server (that is, the client PUTs to a
  /// location where there is no existing resource). Allowing this operation
  /// means that the server allows the client to create new identities on the
  /// server.
  final FhirBoolean? updateCreate;

  /// [conditionalCreate]
  /// A flag that indicates that the server supports conditional create.
  final FhirBoolean? conditionalCreate;

  /// [conditionalRead]
  /// A code that indicates how the server supports conditional read.
  final ConditionalReadStatus? conditionalRead;

  /// [conditionalUpdate]
  /// A flag that indicates that the server supports conditional update.
  final FhirBoolean? conditionalUpdate;

  /// [conditionalDelete]
  /// A code that indicates how the server supports conditional delete.
  final ConditionalDeleteStatus? conditionalDelete;

  /// [referencePolicy]
  /// A set of flags that defines how references are supported.
  final List<ReferenceHandlingPolicy>? referencePolicy;

  /// [searchInclude]
  /// A list of _include values supported by the server.
  final List<FhirString>? searchInclude;

  /// [searchRevInclude]
  /// A list of _revinclude (reverse include) values supported by the server.
  final List<FhirString>? searchRevInclude;

  /// [searchParam]
  /// Search parameters for implementations to support and/or make use of -
  /// either references to ones defined in the specification, or additional
  /// ones defined for/by the implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  /// parameters.
  final List<CapabilityStatementOperation>? operation;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
  @override
  CapabilityStatementResource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
    List<FhirCanonical>? supportedProfile,
    FhirMarkdown? documentation,
    List<CapabilityStatementInteraction>? interaction,
    ResourceVersionPolicy? versioning,
    FhirBoolean? readHistory,
    FhirBoolean? updateCreate,
    FhirBoolean? conditionalCreate,
    ConditionalReadStatus? conditionalRead,
    FhirBoolean? conditionalUpdate,
    ConditionalDeleteStatus? conditionalDelete,
    List<ReferenceHandlingPolicy>? referencePolicy,
    List<FhirString>? searchInclude,
    List<FhirString>? searchRevInclude,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementResource(
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
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
      supportedProfile: supportedProfile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportedProfile',
                ),
              )
              .toList() ??
          this.supportedProfile,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      interaction: interaction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.interaction',
                ),
              )
              .toList() ??
          this.interaction,
      versioning: versioning?.copyWith(
            objectPath: '$newObjectPath.versioning',
          ) ??
          this.versioning,
      readHistory: readHistory?.copyWith(
            objectPath: '$newObjectPath.readHistory',
          ) ??
          this.readHistory,
      updateCreate: updateCreate?.copyWith(
            objectPath: '$newObjectPath.updateCreate',
          ) ??
          this.updateCreate,
      conditionalCreate: conditionalCreate?.copyWith(
            objectPath: '$newObjectPath.conditionalCreate',
          ) ??
          this.conditionalCreate,
      conditionalRead: conditionalRead?.copyWith(
            objectPath: '$newObjectPath.conditionalRead',
          ) ??
          this.conditionalRead,
      conditionalUpdate: conditionalUpdate?.copyWith(
            objectPath: '$newObjectPath.conditionalUpdate',
          ) ??
          this.conditionalUpdate,
      conditionalDelete: conditionalDelete?.copyWith(
            objectPath: '$newObjectPath.conditionalDelete',
          ) ??
          this.conditionalDelete,
      referencePolicy: referencePolicy
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referencePolicy',
                ),
              )
              .toList() ??
          this.referencePolicy,
      searchInclude: searchInclude
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.searchInclude',
                ),
              )
              .toList() ??
          this.searchInclude,
      searchRevInclude: searchRevInclude
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.searchRevInclude',
                ),
              )
              .toList() ??
          this.searchRevInclude,
      searchParam: searchParam
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.searchParam',
                ),
              )
              .toList() ??
          this.searchParam,
      operation: operation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.operation',
                ),
              )
              .toList() ??
          this.operation,
    );
  }
}

/// [CapabilityStatementInteraction]
/// Identifies a restful operation supported by the solution.
class CapabilityStatementInteraction extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementInteraction]

  const CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.interaction',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.interaction';
    return CapabilityStatementInteraction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<TypeRestfulInteraction>(
        json,
        'code',
        TypeRestfulInteraction.fromJson,
        '$objectPath.code',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementInteraction]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteraction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteraction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteraction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteraction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteraction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteraction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction';

  /// [code]
  /// Coded identifier of the operation, supported by the system resource.
  final TypeRestfulInteraction code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// 'delete is a logical delete' or 'updates are only allowed with version
  /// id' or 'creates permitted from pre-authorized certificates only'.
  final FhirMarkdown? documentation;
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
    addField('code', code);
    addField('documentation', documentation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TypeRestfulInteraction? code,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementInteraction(
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
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }
}

/// [CapabilityStatementSearchParam]
/// Search parameters for implementations to support and/or make use of -
/// either references to ones defined in the specification, or additional
/// ones defined for/by the implementation.
class CapabilityStatementSearchParam extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSearchParam]

  const CapabilityStatementSearchParam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.definition,
    required this.type,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.searchParam',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSearchParam.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.searchParam';
    return CapabilityStatementSearchParam(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
        '$objectPath.definition',
      ),
      type: JsonParser.parsePrimitive<SearchParamType>(
        json,
        'type',
        SearchParamType.fromJson,
        '$objectPath.type',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementSearchParam]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSearchParam.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSearchParam.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSearchParam.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSearchParam '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSearchParam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSearchParam.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSearchParam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSearchParam';

  /// [name]
  /// The name of the search parameter used in the interface.
  final FhirString name;

  /// [definition]
  /// An absolute URI that is a formal reference to where this parameter was
  /// first defined, so that a client can be confident of the meaning of the
  /// search parameter (a reference to
  /// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
  /// This element SHALL be populated if the search parameter refers to a
  /// SearchParameter defined by the FHIR core specification or externally
  /// defined IGs.
  final FhirCanonical? definition;

  /// [type]
  /// The type of value a search parameter refers to, and how the content is
  /// interpreted.
  final SearchParamType type;

  /// [documentation]
  /// This allows documentation of any distinct behaviors about how the
  /// search parameter is used. For example, text matching algorithms.
  final FhirMarkdown? documentation;
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
    addField('definition', definition);
    addField('type', type);
    addField('documentation', documentation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'type':
        fields.add(type);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
  @override
  CapabilityStatementSearchParam copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    SearchParamType? type,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementSearchParam(
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
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }
}

/// [CapabilityStatementOperation]
/// Definition of an operation or a named query together with its
/// parameters and their meaning and type. Consult the definition of the
/// operation for details about how to invoke the operation, and the
/// parameters.
class CapabilityStatementOperation extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementOperation]

  const CapabilityStatementOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.definition,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.resource.operation',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.resource.operation';
    return CapabilityStatementOperation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
        '$objectPath.definition',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementOperation]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementOperation';

  /// [name]
  /// The name of the operation or query. For an operation, this is the name
  /// prefixed with $ and used in the URL. For a query, this is the name used
  /// in the _query parameter when the query is called.
  final FhirString name;

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
  final FhirCanonical definition;

  /// [documentation]
  /// Documentation that describes anything special about the operation
  /// behavior, possibly detailing different behavior for system, type and
  /// instance-level invocation of the operation.
  final FhirMarkdown? documentation;
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
    addField('definition', definition);
    addField('documentation', documentation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'definition':
        fields.add(definition);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
  @override
  CapabilityStatementOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementOperation(
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
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }
}

/// [CapabilityStatementInteraction1]
/// A specification of restful operations supported by the system.
class CapabilityStatementInteraction1 extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementInteraction1]

  const CapabilityStatementInteraction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.rest.interaction',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.rest.interaction';
    return CapabilityStatementInteraction1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<SystemRestfulInteraction>(
        json,
        'code',
        SystemRestfulInteraction.fromJson,
        '$objectPath.code',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [CapabilityStatementInteraction1]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteraction1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteraction1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteraction1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteraction1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteraction1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteraction1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction1';

  /// [code]
  /// A coded identifier of the operation, supported by the system.
  final SystemRestfulInteraction code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// limitations on the kind of transactions allowed, or information about
  /// system wide search is implemented.
  final FhirMarkdown? documentation;
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
    addField('code', code);
    addField('documentation', documentation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementInteraction1 clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SystemRestfulInteraction? code,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementInteraction1(
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
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }
}

/// [CapabilityStatementMessaging]
/// A description of the messaging capabilities of the solution.
class CapabilityStatementMessaging extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementMessaging]

  const CapabilityStatementMessaging({
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementMessaging.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging';
    return CapabilityStatementMessaging(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<CapabilityStatementEndpoint>(
            (v) => CapabilityStatementEndpoint.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.endpoint',
                  },
                ),
            ),
          )
          .toList(),
      reliableCache: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'reliableCache',
        FhirUnsignedInt.fromJson,
        '$objectPath.reliableCache',
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map<CapabilityStatementSupportedMessage>(
            (v) => CapabilityStatementSupportedMessage.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.supportedMessage',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CapabilityStatementMessaging]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementMessaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementMessaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementMessaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementMessaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementMessaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementMessaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementMessaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementMessaging';

  /// [endpoint]
  /// An endpoint (network accessible address) to which messages and/or
  /// replies are to be sent.
  final List<CapabilityStatementEndpoint>? endpoint;

  /// [reliableCache]
  /// Length if the receiver's reliable messaging cache in minutes (if a
  /// receiver) or how long the cache length on the receiver should be (if a
  /// sender).
  final FhirUnsignedInt? reliableCache;

  /// [documentation]
  /// Documentation about the system's messaging capabilities for this
  /// endpoint not otherwise documented by the capability statement. For
  /// example, the process for becoming an authorized messaging exchange
  /// partner.
  final FhirMarkdown? documentation;

  /// [supportedMessage]
  /// References to message definitions for messages this system can send or
  /// receive.
  final List<CapabilityStatementSupportedMessage>? supportedMessage;
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
    addField('endpoint', endpoint);
    addField('reliableCache', reliableCache);
    addField('documentation', documentation);
    addField('supportedMessage', supportedMessage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
  @override
  CapabilityStatementMessaging copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CapabilityStatementEndpoint>? endpoint,
    FhirUnsignedInt? reliableCache,
    FhirMarkdown? documentation,
    List<CapabilityStatementSupportedMessage>? supportedMessage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementMessaging(
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
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
      reliableCache: reliableCache?.copyWith(
            objectPath: '$newObjectPath.reliableCache',
          ) ??
          this.reliableCache,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      supportedMessage: supportedMessage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportedMessage',
                ),
              )
              .toList() ??
          this.supportedMessage,
    );
  }
}

/// [CapabilityStatementEndpoint]
/// An endpoint (network accessible address) to which messages and/or
/// replies are to be sent.
class CapabilityStatementEndpoint extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementEndpoint]

  const CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.messaging.endpoint',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging.endpoint';
    return CapabilityStatementEndpoint(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      protocol: JsonParser.parseObject<Coding>(
        json,
        'protocol',
        Coding.fromJson,
        '$objectPath.protocol',
      )!,
      address: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'address',
        FhirUrl.fromJson,
        '$objectPath.address',
      )!,
    );
  }

  /// Deserialize [CapabilityStatementEndpoint]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementEndpoint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementEndpoint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementEndpoint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementEndpoint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementEndpoint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementEndpoint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementEndpoint';

  /// [protocol]
  /// A list of the messaging transport protocol(s) identifiers, supported by
  /// this endpoint.
  final Coding protocol;

  /// [address]
  /// The network address of the endpoint. For solutions that do not use
  /// network addresses for routing, it can be just an identifier.
  final FhirUrl address;
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
    addField('protocol', protocol);
    addField('address', address);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'protocol':
        fields.add(protocol);
      case 'address':
        fields.add(address);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
  @override
  CapabilityStatementEndpoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? protocol,
    FhirUrl? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementEndpoint(
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
      protocol: protocol?.copyWith(
            objectPath: '$newObjectPath.protocol',
          ) ??
          this.protocol,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
    );
  }
}

/// [CapabilityStatementSupportedMessage]
/// References to message definitions for messages this system can send or
/// receive.
class CapabilityStatementSupportedMessage extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSupportedMessage]

  const CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    required this.definition,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.messaging.supportedMessage',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSupportedMessage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.messaging.supportedMessage';
    return CapabilityStatementSupportedMessage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<EventCapabilityMode>(
        json,
        'mode',
        EventCapabilityMode.fromJson,
        '$objectPath.mode',
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
        '$objectPath.definition',
      )!,
    );
  }

  /// Deserialize [CapabilityStatementSupportedMessage]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSupportedMessage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSupportedMessage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSupportedMessage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSupportedMessage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSupportedMessage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSupportedMessage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSupportedMessage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSupportedMessage';

  /// [mode]
  /// The mode of this event declaration - whether application is sender or
  /// receiver.
  final EventCapabilityMode mode;

  /// [definition]
  /// Points to a message definition that identifies the messaging event,
  /// message structure, allowed responses, etc.
  final FhirCanonical definition;
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
    addField('mode', mode);
    addField('definition', definition);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'mode':
        fields.add(mode);
      case 'definition':
        fields.add(definition);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
  @override
  CapabilityStatementSupportedMessage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventCapabilityMode? mode,
    FhirCanonical? definition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementSupportedMessage(
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
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
    );
  }
}

/// [CapabilityStatementDocument]
/// A document definition.
class CapabilityStatementDocument extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementDocument]

  const CapabilityStatementDocument({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.documentation,
    required this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CapabilityStatement.document',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CapabilityStatement.document';
    return CapabilityStatementDocument(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<DocumentMode>(
        json,
        'mode',
        DocumentMode.fromJson,
        '$objectPath.mode',
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
        '$objectPath.documentation',
      ),
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      )!,
    );
  }

  /// Deserialize [CapabilityStatementDocument]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementDocument.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementDocument.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementDocument.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementDocument '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementDocument]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementDocument.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementDocument.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementDocument';

  /// [mode]
  /// Mode of this document declaration - whether an application is a
  /// producer or consumer.
  final DocumentMode mode;

  /// [documentation]
  /// A description of how the application supports or uses the specified
  /// document profile. For example, when documents are created, what action
  /// is taken with consumed documents, etc.
  final FhirMarkdown? documentation;

  /// [profile]
  /// A profile on the document Bundle that constrains which resources are
  /// present, and their contents.
  final FhirCanonical profile;
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
    addField('mode', mode);
    addField('documentation', documentation);
    addField('profile', profile);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'mode':
        fields.add(mode);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'profile':
        fields.add(profile);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
  @override
  CapabilityStatementDocument copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentMode? mode,
    FhirMarkdown? documentation,
    FhirCanonical? profile,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CapabilityStatementDocument(
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
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
    );
  }
}
