import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TerminologyCapabilities]
/// A TerminologyCapabilities resource documents a set of capabilities
/// (behaviors) of a FHIR Terminology Server that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class TerminologyCapabilities extends CanonicalResource {
  /// Primary constructor for
  /// [TerminologyCapabilities]

  const TerminologyCapabilities({
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
    this.software,
    this.implementation,
    this.lockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.validateCode,
    this.translation,
    this.closure,
  }) : super(
          resourceType: R4ResourceType.TerminologyCapabilities,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilities.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilities(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      )!,
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
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
      software: JsonParser.parseObject<TerminologyCapabilitiesSoftware>(
        json,
        'software',
        TerminologyCapabilitiesSoftware.fromJson,
      ),
      implementation:
          JsonParser.parseObject<TerminologyCapabilitiesImplementation>(
        json,
        'implementation',
        TerminologyCapabilitiesImplementation.fromJson,
      ),
      lockedDate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'lockedDate',
        FhirBoolean.fromJson,
      ),
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesCodeSystem>(
            (v) => TerminologyCapabilitiesCodeSystem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      expansion: JsonParser.parseObject<TerminologyCapabilitiesExpansion>(
        json,
        'expansion',
        TerminologyCapabilitiesExpansion.fromJson,
      ),
      codeSearch: JsonParser.parsePrimitive<CodeSearchSupport>(
        json,
        'codeSearch',
        CodeSearchSupport.fromJson,
      ),
      validateCode: JsonParser.parseObject<TerminologyCapabilitiesValidateCode>(
        json,
        'validateCode',
        TerminologyCapabilitiesValidateCode.fromJson,
      ),
      translation: JsonParser.parseObject<TerminologyCapabilitiesTranslation>(
        json,
        'translation',
        TerminologyCapabilitiesTranslation.fromJson,
      ),
      closure: JsonParser.parseObject<TerminologyCapabilitiesClosure>(
        json,
        'closure',
        TerminologyCapabilitiesClosure.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilities]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilities.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilities.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilities.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilities '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilities]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilities.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilities.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilities';

  /// [name]
  /// A natural language name identifying the terminology capabilities. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the terminology
  /// capabilities.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this terminology capabilities is needed and why it
  /// has been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the terminology capabilities and/or
  /// its contents. Copyright statements are generally legal restrictions on
  /// the use and publishing of the terminology capabilities.
  final FhirMarkdown? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

  /// [software]
  /// Software that is covered by this terminology capability statement. It
  /// is used when the statement describes the capabilities of a particular
  /// software version, independent of an installation.
  final TerminologyCapabilitiesSoftware? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// terminology capability statement - i.e. a particular installation,
  /// rather than the capabilities of a software program.
  final TerminologyCapabilitiesImplementation? implementation;

  /// [lockedDate]
  /// Whether the server supports lockedDate.
  final FhirBoolean? lockedDate;

  /// [codeSystem]
  /// Identifies a code system that is supported by the server. If there is a
  /// no code system URL, then this declares the general assumptions a client
  /// can make about support for any CodeSystem resource.
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;

  /// [expansion]
  /// Information about the
  /// [ValueSet/$expand](valueset-operation-expand.html) operation.
  final TerminologyCapabilitiesExpansion? expansion;

  /// [codeSearch]
  /// The degree to which the server supports the code search parameter on
  /// ValueSet, if it is supported.
  final CodeSearchSupport? codeSearch;

  /// [validateCode]
  /// Information about the
  /// [ValueSet/$validate-code](valueset-operation-validate-code.html)
  /// operation.
  final TerminologyCapabilitiesValidateCode? validateCode;

  /// [translation]
  /// Information about the
  /// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  final TerminologyCapabilitiesTranslation? translation;

  /// [closure]
  /// Whether the $closure operation is supported.
  final TerminologyCapabilitiesClosure? closure;
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
    addField('software', software);
    addField('implementation', implementation);
    addField('lockedDate', lockedDate);
    addField('codeSystem', codeSystem);
    addField('expansion', expansion);
    addField('codeSearch', codeSearch);
    addField('validateCode', validateCode);
    addField('translation', translation);
    addField('closure', closure);
    return json;
  }

  @override
  TerminologyCapabilities clone() => throw UnimplementedError();
  @override
  TerminologyCapabilities copyWith({
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
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    CodeSearchSupport? codeSearch,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilities(
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
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      lockedDate: lockedDate ?? this.lockedDate,
      codeSystem: codeSystem ?? this.codeSystem,
      expansion: expansion ?? this.expansion,
      codeSearch: codeSearch ?? this.codeSearch,
      validateCode: validateCode ?? this.validateCode,
      translation: translation ?? this.translation,
      closure: closure ?? this.closure,
    );
  }
}

/// [TerminologyCapabilitiesSoftware]
/// Software that is covered by this terminology capability statement. It
/// is used when the statement describes the capabilities of a particular
/// software version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesSoftware]

  const TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.version,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesSoftware(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    );
  }

  /// Deserialize [TerminologyCapabilitiesSoftware]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesSoftware.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesSoftware '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesSoftware]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesSoftware.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesSoftware';

  /// [name]
  /// Name the software is known by.
  final FhirString name;

  /// [version]
  /// The version identifier for the software covered by this statement.
  final FhirString? version;
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
    return json;
  }

  @override
  TerminologyCapabilitiesSoftware clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      version: version ?? this.version,
    );
  }
}

/// [TerminologyCapabilitiesImplementation]
/// Identifies a specific implementation instance that is described by the
/// terminology capability statement - i.e. a particular installation,
/// rather than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesImplementation]

  const TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.url,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesImplementation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    );
  }

  /// Deserialize [TerminologyCapabilitiesImplementation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesImplementation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesImplementation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesImplementation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesImplementation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesImplementation';

  /// [description]
  /// Information about the specific installation that this terminology
  /// capability statement relates to.
  final FhirString description;

  /// [url]
  /// An absolute base URL for the implementation.
  final FhirUrl? url;
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
    return json;
  }

  @override
  TerminologyCapabilitiesImplementation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesImplementation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      url: url ?? this.url,
    );
  }
}

/// [TerminologyCapabilitiesCodeSystem]
/// Identifies a code system that is supported by the server. If there is a
/// no code system URL, then this declares the general assumptions a client
/// can make about support for any CodeSystem resource.
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesCodeSystem]

  const TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesCodeSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesCodeSystem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      uri: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'uri',
        FhirCanonical.fromJson,
      ),
      version: (json['version'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesVersion>(
            (v) => TerminologyCapabilitiesVersion.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subsumption: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'subsumption',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesCodeSystem]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesCodeSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesCodeSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesCodeSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesCodeSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesCodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesCodeSystem';

  /// [uri]
  /// URI for the Code System.
  final FhirCanonical? uri;

  /// [version]
  /// For the code system, a list of versions that are supported by the
  /// server.
  final List<TerminologyCapabilitiesVersion>? version;

  /// [subsumption]
  /// True if subsumption is supported for this version of the code system.
  final FhirBoolean? subsumption;
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
    addField('uri', uri);
    addField('version', version);
    addField('subsumption', subsumption);
    return json;
  }

  @override
  TerminologyCapabilitiesCodeSystem clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesCodeSystem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesCodeSystem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
      version: version ?? this.version,
      subsumption: subsumption ?? this.subsumption,
    );
  }
}

/// [TerminologyCapabilitiesVersion]
/// For the code system, a list of versions that are supported by the
/// server.
class TerminologyCapabilitiesVersion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesVersion]

  const TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.isDefault,
    this.compositional,
    this.language,
    this.filter,
    this.property,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesVersion(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirString>(
        json,
        'code',
        FhirString.fromJson,
      ),
      isDefault: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDefault',
        FhirBoolean.fromJson,
      ),
      compositional: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'compositional',
        FhirBoolean.fromJson,
      ),
      language: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'language',
        FhirCode.fromJson,
      ),
      filter: (json['filter'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesFilter>(
            (v) => TerminologyCapabilitiesFilter.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      property: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'property',
        FhirCode.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesVersion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesVersion';

  /// [code]
  /// For version-less code systems, there should be a single version with no
  /// identifier.
  final FhirString? code;

  /// [isDefault]
  /// If this is the default version for this code system.
  final FhirBoolean? isDefault;

  /// [compositional]
  /// If the compositional grammar defined by the code system is supported.
  final FhirBoolean? compositional;

  /// [language]
  /// Language Displays supported.
  final List<FhirCode>? language;

  /// [filter]
  /// Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? filter;

  /// [property]
  /// Properties supported for $lookup.
  final List<FhirCode>? property;
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
    addField('isDefault', isDefault);
    addField('compositional', compositional);
    addField('language', language);
    addField('filter', filter);
    addField('property', property);
    return json;
  }

  @override
  TerminologyCapabilitiesVersion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? code,
    FhirBoolean? isDefault,
    FhirBoolean? compositional,
    List<FhirCode>? language,
    List<TerminologyCapabilitiesFilter>? filter,
    List<FhirCode>? property,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      isDefault: isDefault ?? this.isDefault,
      compositional: compositional ?? this.compositional,
      language: language ?? this.language,
      filter: filter ?? this.filter,
      property: property ?? this.property,
    );
  }
}

/// [TerminologyCapabilitiesFilter]
/// Filter Properties supported.
class TerminologyCapabilitiesFilter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesFilter]

  const TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.op,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesFilter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      )!,
      op: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'op',
        FhirCode.fromJson,
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesFilter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesFilter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesFilter';

  /// [code]
  /// Code of the property supported.
  final FhirCode code;

  /// [op]
  /// Operations supported for the property.
  final List<FhirCode> op;
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
    addField('op', op);
    return json;
  }

  @override
  TerminologyCapabilitiesFilter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    List<FhirCode>? op,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      op: op ?? this.op,
    );
  }
}

/// [TerminologyCapabilitiesExpansion]
/// Information about the
/// [ValueSet/$expand](valueset-operation-expand.html) operation.
class TerminologyCapabilitiesExpansion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesExpansion]

  const TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,
    this.paging,
    this.incomplete,
    this.parameter,
    this.textFilter,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesExpansion.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesExpansion(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      hierarchical: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'hierarchical',
        FhirBoolean.fromJson,
      ),
      paging: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'paging',
        FhirBoolean.fromJson,
      ),
      incomplete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'incomplete',
        FhirBoolean.fromJson,
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesParameter>(
            (v) => TerminologyCapabilitiesParameter.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      textFilter: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'textFilter',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesExpansion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesExpansion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesExpansion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesExpansion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesExpansion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesExpansion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesExpansion';

  /// [hierarchical]
  /// Whether the server can return nested value sets.
  final FhirBoolean? hierarchical;

  /// [paging]
  /// Whether the server supports paging on expansion.
  final FhirBoolean? paging;

  /// [incomplete]
  /// Allow request for incomplete expansions?
  final FhirBoolean? incomplete;

  /// [parameter]
  /// Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? parameter;

  /// [textFilter]
  /// Documentation about text searching works.
  final FhirMarkdown? textFilter;
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
    addField('hierarchical', hierarchical);
    addField('paging', paging);
    addField('incomplete', incomplete);
    addField('parameter', parameter);
    addField('textFilter', textFilter);
    return json;
  }

  @override
  TerminologyCapabilitiesExpansion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesExpansion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? hierarchical,
    FhirBoolean? paging,
    FhirBoolean? incomplete,
    List<TerminologyCapabilitiesParameter>? parameter,
    FhirMarkdown? textFilter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      hierarchical: hierarchical ?? this.hierarchical,
      paging: paging ?? this.paging,
      incomplete: incomplete ?? this.incomplete,
      parameter: parameter ?? this.parameter,
      textFilter: textFilter ?? this.textFilter,
    );
  }
}

/// [TerminologyCapabilitiesParameter]
/// Supported expansion parameter.
class TerminologyCapabilitiesParameter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesParameter]

  const TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.documentation,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesParameter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirCode>(
        json,
        'name',
        FhirCode.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesParameter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesParameter';

  /// [name]
  /// Expansion Parameter name.
  final FhirCode name;

  /// [documentation]
  /// Description of support for parameter.
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('documentation', documentation);
    return json;
  }

  @override
  TerminologyCapabilitiesParameter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      documentation: documentation ?? this.documentation,
    );
  }
}

/// [TerminologyCapabilitiesValidateCode]
/// Information about the
/// [ValueSet/$validate-code](valueset-operation-validate-code.html)
/// operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesValidateCode]

  const TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesValidateCode.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesValidateCode(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      translations: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'translations',
        FhirBoolean.fromJson,
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesValidateCode]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesValidateCode.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesValidateCode '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesValidateCode]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesValidateCode.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesValidateCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesValidateCode';

  /// [translations]
  /// Whether translations are validated.
  final FhirBoolean translations;
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
    addField('translations', translations);
    return json;
  }

  @override
  TerminologyCapabilitiesValidateCode clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesValidateCode copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translations,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesValidateCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translations: translations ?? this.translations,
    );
  }
}

/// [TerminologyCapabilitiesTranslation]
/// Information about the
/// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesTranslation]

  const TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesTranslation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesTranslation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      needsMap: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'needsMap',
        FhirBoolean.fromJson,
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesTranslation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesTranslation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesTranslation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesTranslation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesTranslation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesTranslation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesTranslation';

  /// [needsMap]
  /// Whether the client must identify the map.
  final FhirBoolean needsMap;
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
    addField('needsMap', needsMap);
    return json;
  }

  @override
  TerminologyCapabilitiesTranslation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesTranslation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? needsMap,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesTranslation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      needsMap: needsMap ?? this.needsMap,
    );
  }
}

/// [TerminologyCapabilitiesClosure]
/// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesClosure]

  const TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesClosure.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesClosure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      translation: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'translation',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesClosure]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesClosure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesClosure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesClosure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesClosure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesClosure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesClosure';

  /// [translation]
  /// If cross-system closure is supported.
  final FhirBoolean? translation;
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
    addField('translation', translation);
    return json;
  }

  @override
  TerminologyCapabilitiesClosure clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesClosure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesClosure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translation: translation ?? this.translation,
    );
  }
}
