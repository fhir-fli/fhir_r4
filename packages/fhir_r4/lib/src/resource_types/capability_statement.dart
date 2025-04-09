import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'capability_statement.g.dart';

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
          resourceType: R4ResourceType.CapabilityStatement,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatement(
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
      kind: JsonParser.parsePrimitive<CapabilityStatementKind>(
        json,
        'kind',
        CapabilityStatementKind.fromJson,
      )!,
      instantiates: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiates',
        FhirCanonical.fromJson,
      ),
      imports: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'imports',
        FhirCanonical.fromJson,
      ),
      software: JsonParser.parseObject<CapabilityStatementSoftware>(
        json,
        'software',
        CapabilityStatementSoftware.fromJson,
      ),
      implementation: JsonParser.parseObject<CapabilityStatementImplementation>(
        json,
        'implementation',
        CapabilityStatementImplementation.fromJson,
      ),
      fhirVersion: JsonParser.parsePrimitive<FHIRVersion>(
        json,
        'fhirVersion',
        FHIRVersion.fromJson,
      )!,
      format: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'format',
        FhirCode.fromJson,
      )!,
      patchFormat: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'patchFormat',
        FhirCode.fromJson,
      ),
      implementationGuide: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'implementationGuide',
        FhirCanonical.fromJson,
      ),
      rest: (json['rest'] as List<dynamic>?)
          ?.map<CapabilityStatementRest>(
            (v) => CapabilityStatementRest.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map<CapabilityStatementMessaging>(
            (v) => CapabilityStatementMessaging.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map<CapabilityStatementDocument>(
            (v) => CapabilityStatementDocument.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatement.fromJson(json);
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
      'kind',
      kind,
    );
    addField(
      'instantiates',
      instantiates,
    );
    addField(
      'imports',
      imports,
    );
    addField(
      'software',
      software,
    );
    addField(
      'implementation',
      implementation,
    );
    addField(
      'fhirVersion',
      fhirVersion,
    );
    addField(
      'format',
      format,
    );
    addField(
      'patchFormat',
      patchFormat,
    );
    addField(
      'implementationGuide',
      implementationGuide,
    );
    addField(
      'rest',
      rest,
    );
    addField(
      'messaging',
      messaging,
    );
    addField(
      'document',
      document,
    );
    return json;
  }

  @override
  CapabilityStatement clone() => copyWith();

  /// Copy function for [CapabilityStatement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementCopyWith<CapabilityStatement> get copyWith =>
      _$CapabilityStatementCopyWithImpl<CapabilityStatement>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatement) {
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
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      instantiates,
      o.instantiates,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
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
    if (!listEquals<FhirCode>(
      format,
      o.format,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      patchFormat,
      o.patchFormat,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      implementationGuide,
      o.implementationGuide,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementRest>(
      rest,
      o.rest,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementMessaging>(
      messaging,
      o.messaging,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementDocument>(
      document,
      o.document,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSoftware(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      releaseDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'releaseDate',
        FhirDateTime.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'name',
      name,
    );
    addField(
      'version',
      version,
    );
    addField(
      'releaseDate',
      releaseDate,
    );
    return json;
  }

  @override
  CapabilityStatementSoftware clone() => copyWith();

  /// Copy function for [CapabilityStatementSoftware]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementSoftwareCopyWith<CapabilityStatementSoftware>
      get copyWith => _$CapabilityStatementSoftwareCopyWithImpl<
              CapabilityStatementSoftware>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementSoftware) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementImplementation(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      )!,
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
      ),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementImplementation.fromJson(json);
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
      'description',
      description,
    );
    addField(
      'url',
      url,
    );
    addField(
      'custodian',
      custodian,
    );
    return json;
  }

  @override
  CapabilityStatementImplementation clone() => copyWith();

  /// Copy function for [CapabilityStatementImplementation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementImplementationCopyWith<CapabilityStatementImplementation>
      get copyWith => _$CapabilityStatementImplementationCopyWithImpl<
              CapabilityStatementImplementation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementImplementation) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementRest.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementRest(
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
      mode: JsonParser.parsePrimitive<RestfulCapabilityMode>(
        json,
        'mode',
        RestfulCapabilityMode.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
      ),
      security: JsonParser.parseObject<CapabilityStatementSecurity>(
        json,
        'security',
        CapabilityStatementSecurity.fromJson,
      ),
      resource: (json['resource'] as List<dynamic>?)
          ?.map<CapabilityStatementResource>(
            (v) => CapabilityStatementResource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteraction>(
            (v) => CapabilityStatementInteraction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParam>(
            (v) => CapabilityStatementSearchParam.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperation>(
            (v) => CapabilityStatementOperation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      compartment: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'compartment',
        FhirCanonical.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementRest.fromJson(json);
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
      'mode',
      mode,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'security',
      security,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'interaction',
      interaction,
    );
    addField(
      'searchParam',
      searchParam,
    );
    addField(
      'operation',
      operation,
    );
    addField(
      'compartment',
      compartment,
    );
    return json;
  }

  @override
  CapabilityStatementRest clone() => copyWith();

  /// Copy function for [CapabilityStatementRest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementRestCopyWith<CapabilityStatementRest> get copyWith =>
      _$CapabilityStatementRestCopyWithImpl<CapabilityStatementRest>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementRest) {
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
    if (!listEquals<CapabilityStatementResource>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementInteraction>(
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementSearchParam>(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementOperation>(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      compartment,
      o.compartment,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSecurity.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSecurity(
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
      cors: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'cors',
        FhirBoolean.fromJson,
      ),
      service: (json['service'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSecurity.fromJson(json);
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
      'cors',
      cors,
    );
    addField(
      'service',
      service,
    );
    addField(
      'description',
      description,
    );
    return json;
  }

  @override
  CapabilityStatementSecurity clone() => copyWith();

  /// Copy function for [CapabilityStatementSecurity]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementSecurityCopyWith<CapabilityStatementSecurity>
      get copyWith => _$CapabilityStatementSecurityCopyWithImpl<
              CapabilityStatementSecurity>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementSecurity) {
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
      cors,
      o.cors,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementResource.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementResource(
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
      type: JsonParser.parsePrimitive<FhirCode>(
        json,
        'type',
        FhirCode.fromJson,
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      supportedProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'supportedProfile',
        FhirCanonical.fromJson,
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
      ),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map<CapabilityStatementInteraction>(
            (v) => CapabilityStatementInteraction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      versioning: JsonParser.parsePrimitive<ResourceVersionPolicy>(
        json,
        'versioning',
        ResourceVersionPolicy.fromJson,
      ),
      readHistory: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'readHistory',
        FhirBoolean.fromJson,
      ),
      updateCreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'updateCreate',
        FhirBoolean.fromJson,
      ),
      conditionalCreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'conditionalCreate',
        FhirBoolean.fromJson,
      ),
      conditionalRead: JsonParser.parsePrimitive<ConditionalReadStatus>(
        json,
        'conditionalRead',
        ConditionalReadStatus.fromJson,
      ),
      conditionalUpdate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'conditionalUpdate',
        FhirBoolean.fromJson,
      ),
      conditionalDelete: JsonParser.parsePrimitive<ConditionalDeleteStatus>(
        json,
        'conditionalDelete',
        ConditionalDeleteStatus.fromJson,
      ),
      referencePolicy: JsonParser.parsePrimitiveList<ReferenceHandlingPolicy>(
        json,
        'referencePolicy',
        ReferenceHandlingPolicy.fromJson,
      ),
      searchInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'searchInclude',
        FhirString.fromJson,
      ),
      searchRevInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'searchRevInclude',
        FhirString.fromJson,
      ),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map<CapabilityStatementSearchParam>(
            (v) => CapabilityStatementSearchParam.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<CapabilityStatementOperation>(
            (v) => CapabilityStatementOperation.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'type',
      type,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'supportedProfile',
      supportedProfile,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'interaction',
      interaction,
    );
    addField(
      'versioning',
      versioning,
    );
    addField(
      'readHistory',
      readHistory,
    );
    addField(
      'updateCreate',
      updateCreate,
    );
    addField(
      'conditionalCreate',
      conditionalCreate,
    );
    addField(
      'conditionalRead',
      conditionalRead,
    );
    addField(
      'conditionalUpdate',
      conditionalUpdate,
    );
    addField(
      'conditionalDelete',
      conditionalDelete,
    );
    addField(
      'referencePolicy',
      referencePolicy,
    );
    addField(
      'searchInclude',
      searchInclude,
    );
    addField(
      'searchRevInclude',
      searchRevInclude,
    );
    addField(
      'searchParam',
      searchParam,
    );
    addField(
      'operation',
      operation,
    );
    return json;
  }

  @override
  CapabilityStatementResource clone() => copyWith();

  /// Copy function for [CapabilityStatementResource]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementResourceCopyWith<CapabilityStatementResource>
      get copyWith => _$CapabilityStatementResourceCopyWithImpl<
              CapabilityStatementResource>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementResource) {
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
    if (!listEquals<FhirCanonical>(
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
    if (!listEquals<CapabilityStatementInteraction>(
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
    if (!listEquals<ReferenceHandlingPolicy>(
      referencePolicy,
      o.referencePolicy,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      searchInclude,
      o.searchInclude,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      searchRevInclude,
      o.searchRevInclude,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementSearchParam>(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!listEquals<CapabilityStatementOperation>(
      operation,
      o.operation,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementInteraction(
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
      code: JsonParser.parsePrimitive<TypeRestfulInteraction>(
        json,
        'code',
        TypeRestfulInteraction.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'documentation',
      documentation,
    );
    return json;
  }

  @override
  CapabilityStatementInteraction clone() => copyWith();

  /// Copy function for [CapabilityStatementInteraction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementInteractionCopyWith<CapabilityStatementInteraction>
      get copyWith => _$CapabilityStatementInteractionCopyWithImpl<
              CapabilityStatementInteraction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementInteraction) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSearchParam.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSearchParam(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
      ),
      type: JsonParser.parsePrimitive<SearchParamType>(
        json,
        'type',
        SearchParamType.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSearchParam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'name',
      name,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'type',
      type,
    );
    addField(
      'documentation',
      documentation,
    );
    return json;
  }

  @override
  CapabilityStatementSearchParam clone() => copyWith();

  /// Copy function for [CapabilityStatementSearchParam]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementSearchParamCopyWith<CapabilityStatementSearchParam>
      get copyWith => _$CapabilityStatementSearchParamCopyWithImpl<
              CapabilityStatementSearchParam>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementSearchParam) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementOperation(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementOperation.fromJson(json);
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
      'name',
      name,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'documentation',
      documentation,
    );
    return json;
  }

  @override
  CapabilityStatementOperation clone() => copyWith();

  /// Copy function for [CapabilityStatementOperation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementOperationCopyWith<CapabilityStatementOperation>
      get copyWith => _$CapabilityStatementOperationCopyWithImpl<
              CapabilityStatementOperation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementOperation) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementInteraction1(
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
      code: JsonParser.parsePrimitive<SystemRestfulInteraction>(
        json,
        'code',
        SystemRestfulInteraction.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementInteraction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'documentation',
      documentation,
    );
    return json;
  }

  @override
  CapabilityStatementInteraction1 clone() => copyWith();

  /// Copy function for [CapabilityStatementInteraction1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementInteraction1CopyWith<CapabilityStatementInteraction1>
      get copyWith => _$CapabilityStatementInteraction1CopyWithImpl<
              CapabilityStatementInteraction1>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementInteraction1) {
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
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementMessaging.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementMessaging(
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
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<CapabilityStatementEndpoint>(
            (v) => CapabilityStatementEndpoint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reliableCache: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'reliableCache',
        FhirUnsignedInt.fromJson,
      ),
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
      ),
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map<CapabilityStatementSupportedMessage>(
            (v) => CapabilityStatementSupportedMessage.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementMessaging.fromJson(json);
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
      'endpoint',
      endpoint,
    );
    addField(
      'reliableCache',
      reliableCache,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'supportedMessage',
      supportedMessage,
    );
    return json;
  }

  @override
  CapabilityStatementMessaging clone() => copyWith();

  /// Copy function for [CapabilityStatementMessaging]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementMessagingCopyWith<CapabilityStatementMessaging>
      get copyWith => _$CapabilityStatementMessagingCopyWithImpl<
              CapabilityStatementMessaging>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementMessaging) {
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
    if (!listEquals<CapabilityStatementEndpoint>(
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
    if (!listEquals<CapabilityStatementSupportedMessage>(
      supportedMessage,
      o.supportedMessage,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementEndpoint(
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
      protocol: JsonParser.parseObject<Coding>(
        json,
        'protocol',
        Coding.fromJson,
      )!,
      address: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'address',
        FhirUrl.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementEndpoint.fromJson(json);
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
  final Coding protocol;

  /// [address]
  /// The network address of the endpoint. For solutions that do not use
  /// network addresses for routing, it can be just an identifier.
  final FhirUrl address;
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
      'protocol',
      protocol,
    );
    addField(
      'address',
      address,
    );
    return json;
  }

  @override
  CapabilityStatementEndpoint clone() => copyWith();

  /// Copy function for [CapabilityStatementEndpoint]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementEndpointCopyWith<CapabilityStatementEndpoint>
      get copyWith => _$CapabilityStatementEndpointCopyWithImpl<
              CapabilityStatementEndpoint>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementEndpoint) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSupportedMessage.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSupportedMessage(
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
      mode: JsonParser.parsePrimitive<EventCapabilityMode>(
        json,
        'mode',
        EventCapabilityMode.fromJson,
      )!,
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementSupportedMessage.fromJson(json);
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
  final EventCapabilityMode mode;

  /// [definition]
  /// Points to a message definition that identifies the messaging event,
  /// message structure, allowed responses, etc.
  final FhirCanonical definition;
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
      'mode',
      mode,
    );
    addField(
      'definition',
      definition,
    );
    return json;
  }

  @override
  CapabilityStatementSupportedMessage clone() => copyWith();

  /// Copy function for [CapabilityStatementSupportedMessage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementSupportedMessageCopyWith<
          CapabilityStatementSupportedMessage>
      get copyWith => _$CapabilityStatementSupportedMessageCopyWithImpl<
              CapabilityStatementSupportedMessage>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementSupportedMessage) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementDocument(
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
      mode: JsonParser.parsePrimitive<DocumentMode>(
        json,
        'mode',
        DocumentMode.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
      ),
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
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
    if (json is Map<String, dynamic>) {
      return CapabilityStatementDocument.fromJson(json);
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
      'mode',
      mode,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'profile',
      profile,
    );
    return json;
  }

  @override
  CapabilityStatementDocument clone() => copyWith();

  /// Copy function for [CapabilityStatementDocument]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CapabilityStatementDocumentCopyWith<CapabilityStatementDocument>
      get copyWith => _$CapabilityStatementDocumentCopyWithImpl<
              CapabilityStatementDocument>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CapabilityStatementDocument) {
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
