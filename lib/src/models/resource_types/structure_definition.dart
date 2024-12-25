import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [StructureDefinition]
/// A definition of a FHIR structure. This resource is used to describe the
/// underlying resources, data types defined in FHIR, and also for
/// describing extensions and constraints on resources and data types.
class StructureDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [StructureDefinition]

  const StructureDefinition({
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
    this.keyword,
    this.fhirVersion,
    this.mapping,
    required this.kind,
    required this.abstract_,
    this.context,
    this.contextInvariant,
    required this.type,
    this.baseDefinition,
    this.derivation,
    this.snapshot,
    this.differential,
  }) : super(
          objectPath: 'StructureDefinition',
          resourceType: R4ResourceType.StructureDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureDefinition';
    return StructureDefinition(
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
                ..addAll({'objectPath': '$objectPath.contained'}),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      )!,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.identifier'}),
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
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.contact'}),
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
                ..addAll({'objectPath': '$objectPath.useContext'}),
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.jurisdiction'}),
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
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.keyword'}),
            ),
          )
          .toList(),
      fhirVersion: JsonParser.parsePrimitive<FHIRVersion>(
        json,
        'fhirVersion',
        FHIRVersion.fromJson,
        '$objectPath.fhirVersion',
      ),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map<StructureDefinitionMapping>(
            (v) => StructureDefinitionMapping.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.mapping'}),
            ),
          )
          .toList(),
      kind: JsonParser.parsePrimitive<StructureDefinitionKind>(
        json,
        'kind',
        StructureDefinitionKind.fromJson,
        '$objectPath.kind',
      )!,
      abstract_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'abstract',
        FhirBoolean.fromJson,
        '$objectPath.abstract',
      )!,
      context: (json['context'] as List<dynamic>?)
          ?.map<StructureDefinitionContext>(
            (v) => StructureDefinitionContext.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.context'}),
            ),
          )
          .toList(),
      contextInvariant: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'contextInvariant',
        FhirString.fromJson,
        '$objectPath.contextInvariant',
      ),
      type: JsonParser.parsePrimitive<FhirUri>(
        json,
        'type',
        FhirUri.fromJson,
        '$objectPath.type',
      )!,
      baseDefinition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'baseDefinition',
        FhirCanonical.fromJson,
        '$objectPath.baseDefinition',
      ),
      derivation: JsonParser.parsePrimitive<TypeDerivationRule>(
        json,
        'derivation',
        TypeDerivationRule.fromJson,
        '$objectPath.derivation',
      ),
      snapshot: JsonParser.parseObject<StructureDefinitionSnapshot>(
        json,
        'snapshot',
        StructureDefinitionSnapshot.fromJson,
        '$objectPath.snapshot',
      ),
      differential: JsonParser.parseObject<StructureDefinitionDifferential>(
        json,
        'differential',
        StructureDefinitionDifferential.fromJson,
        '$objectPath.differential',
      ),
    );
  }

  /// Deserialize [StructureDefinition]
  /// from a [String] or [YamlMap] object
  factory StructureDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this structure definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the structure definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure definition.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this structure definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the structure definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure definition.
  final FhirMarkdown? copyright;

  /// [keyword]
  /// A set of key words or terms from external terminologies that may be
  /// used to assist with indexing and searching of templates nby describing
  /// the use of this structure definition, or the content it describes.
  final List<Coding>? keyword;

  /// [fhirVersion]
  /// The version of the FHIR specification on which this StructureDefinition
  /// is based - this is the formal version of the specification, without the
  /// revision number, e.g. [publication].[major].[minor], which is 4.3.0 for
  /// this version.
  final FHIRVersion? fhirVersion;

  /// [mapping]
  /// An external specification that the content is mapped to.
  final List<StructureDefinitionMapping>? mapping;

  /// [kind]
  /// Defines the kind of structure that this definition is describing.
  final StructureDefinitionKind kind;

  /// [abstract_]
  /// Whether structure this definition describes is abstract or not - that
  /// is, whether the structure is not intended to be instantiated. For
  /// Resources and Data types, abstract types will never be exchanged
  /// between systems.
  final FhirBoolean abstract_;

  /// [context]
  /// Identifies the types of resource or data type elements to which the
  /// extension can be applied.
  final List<StructureDefinitionContext>? context;

  /// [contextInvariant]
  /// A set of rules as FHIRPath Invariants about when the extension can be
  /// used (e.g. co-occurrence variants for the extension). All the rules
  /// must be true.
  final List<FhirString>? contextInvariant;

  /// [type]
  /// The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and
  /// there is always one of these (a data type, an extension, a resource,
  /// including abstract ones). Otherwise the structure definition is a
  /// constraint on the stated type (and in this case, the type cannot be an
  /// abstract type). References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri type;

  /// [baseDefinition]
  /// An absolute URI that is the base structure from which this type is
  /// derived, either by specialization or constraint.
  final FhirCanonical? baseDefinition;

  /// [derivation]
  /// How the type relates to the baseDefinition.
  final TypeDerivationRule? derivation;

  /// [snapshot]
  /// A snapshot view is expressed in a standalone form that can be used and
  /// interpreted without considering the base StructureDefinition.
  final StructureDefinitionSnapshot? snapshot;

  /// [differential]
  /// A differential view is expressed relative to the base
  /// StructureDefinition - a statement of differences that it applies.
  final StructureDefinitionDifferential? differential;
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
    addField('keyword', keyword);
    addField('fhirVersion', fhirVersion);
    addField('mapping', mapping);
    addField('kind', kind);
    addField('abstract', abstract_);
    addField('context', context);
    addField('contextInvariant', contextInvariant);
    addField('type', type);
    addField('baseDefinition', baseDefinition);
    addField('derivation', derivation);
    addField('snapshot', snapshot);
    addField('differential', differential);
    return json;
  }

  @override
  StructureDefinition clone() => throw UnimplementedError();
  @override
  StructureDefinition copyWith({
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
    List<Coding>? keyword,
    FHIRVersion? fhirVersion,
    List<StructureDefinitionMapping>? mapping,
    StructureDefinitionKind? kind,
    FhirBoolean? abstract_,
    List<StructureDefinitionContext>? context,
    List<FhirString>? contextInvariant,
    FhirUri? type,
    FhirCanonical? baseDefinition,
    TypeDerivationRule? derivation,
    StructureDefinitionSnapshot? snapshot,
    StructureDefinitionDifferential? differential,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return StructureDefinition(
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
      keyword: keyword
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.keyword',
                ),
              )
              .toList() ??
          this.keyword,
      fhirVersion: fhirVersion?.copyWith(
            objectPath: '$newObjectPath.fhirVersion',
          ) ??
          this.fhirVersion,
      mapping: mapping
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.mapping',
                ),
              )
              .toList() ??
          this.mapping,
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      abstract_: abstract_?.copyWith(
            objectPath: '$newObjectPath.abstract',
          ) ??
          this.abstract_,
      context: context
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.context',
                ),
              )
              .toList() ??
          this.context,
      contextInvariant: contextInvariant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contextInvariant',
                ),
              )
              .toList() ??
          this.contextInvariant,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      baseDefinition: baseDefinition?.copyWith(
            objectPath: '$newObjectPath.baseDefinition',
          ) ??
          this.baseDefinition,
      derivation: derivation?.copyWith(
            objectPath: '$newObjectPath.derivation',
          ) ??
          this.derivation,
      snapshot: snapshot?.copyWith(
            objectPath: '$newObjectPath.snapshot',
          ) ??
          this.snapshot,
      differential: differential?.copyWith(
            objectPath: '$newObjectPath.differential',
          ) ??
          this.differential,
    );
  }
}

/// [StructureDefinitionMapping]
/// An external specification that the content is mapped to.
class StructureDefinitionMapping extends BackboneElement {
  /// Primary constructor for
  /// [StructureDefinitionMapping]

  const StructureDefinitionMapping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identity,
    this.uri,
    this.name,
    this.comment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureDefinition.mapping',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureDefinition.mapping';
    return StructureDefinitionMapping(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      identity: JsonParser.parsePrimitive<FhirId>(
        json,
        'identity',
        FhirId.fromJson,
        '$objectPath.identity',
      )!,
      uri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'uri',
        FhirUri.fromJson,
        '$objectPath.uri',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [StructureDefinitionMapping]
  /// from a [String] or [YamlMap] object
  factory StructureDefinitionMapping.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureDefinitionMapping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureDefinitionMapping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureDefinitionMapping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureDefinitionMapping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionMapping.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionMapping';

  /// [identity]
  /// An Internal id that is used to identify this mapping set when specific
  /// mappings are made.
  final FhirId identity;

  /// [uri]
  /// An absolute URI that identifies the specification that this mapping is
  /// expressed to.
  final FhirUri? uri;

  /// [name]
  /// A name for the specification that is being mapped to.
  final FhirString? name;

  /// [comment]
  /// Comments about this mapping, including version notes, issues, scope
  /// limitations, and other important notes for usage.
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
    addField('identity', identity);
    addField('uri', uri);
    addField('name', name);
    addField('comment', comment);
    return json;
  }

  @override
  StructureDefinitionMapping clone() => throw UnimplementedError();
  @override
  StructureDefinitionMapping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identity,
    FhirUri? uri,
    FhirString? name,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureDefinitionMapping(
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
      identity: identity?.copyWith(
            objectPath: '$newObjectPath.identity',
          ) ??
          this.identity,
      uri: uri?.copyWith(
            objectPath: '$newObjectPath.uri',
          ) ??
          this.uri,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }
}

/// [StructureDefinitionContext]
/// Identifies the types of resource or data type elements to which the
/// extension can be applied.
class StructureDefinitionContext extends BackboneElement {
  /// Primary constructor for
  /// [StructureDefinitionContext]

  const StructureDefinitionContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureDefinition.context',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionContext.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureDefinition.context';
    return StructureDefinitionContext(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<ExtensionContextType>(
        json,
        'type',
        ExtensionContextType.fromJson,
        '$objectPath.type',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      )!,
    );
  }

  /// Deserialize [StructureDefinitionContext]
  /// from a [String] or [YamlMap] object
  factory StructureDefinitionContext.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureDefinitionContext.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureDefinitionContext.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureDefinitionContext '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureDefinitionContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionContext.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionContext';

  /// [type]
  /// Defines how to interpret the expression that defines what the context
  /// of the extension is.
  final ExtensionContextType type;

  /// [expression]
  /// An expression that defines where an extension can be used in resources.
  final FhirString expression;
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
    addField('expression', expression);
    return json;
  }

  @override
  StructureDefinitionContext clone() => throw UnimplementedError();
  @override
  StructureDefinitionContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ExtensionContextType? type,
    FhirString? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureDefinitionContext(
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
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
    );
  }
}

/// [StructureDefinitionSnapshot]
/// A snapshot view is expressed in a standalone form that can be used and
/// interpreted without considering the base StructureDefinition.
class StructureDefinitionSnapshot extends BackboneElement {
  /// Primary constructor for
  /// [StructureDefinitionSnapshot]

  const StructureDefinitionSnapshot({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureDefinition.snapshot',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionSnapshot.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureDefinition.snapshot';
    return StructureDefinitionSnapshot(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      element: (json['element'] as List<dynamic>)
          .map<ElementDefinition>(
            (v) => ElementDefinition.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.element'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureDefinitionSnapshot]
  /// from a [String] or [YamlMap] object
  factory StructureDefinitionSnapshot.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureDefinitionSnapshot.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureDefinitionSnapshot.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureDefinitionSnapshot '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureDefinitionSnapshot]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionSnapshot.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionSnapshot.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionSnapshot';

  /// [element]
  /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
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
    addField('element', element);
    return json;
  }

  @override
  StructureDefinitionSnapshot clone() => throw UnimplementedError();
  @override
  StructureDefinitionSnapshot copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureDefinitionSnapshot(
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
      element: element
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.element',
                ),
              )
              .toList() ??
          this.element,
    );
  }
}

/// [StructureDefinitionDifferential]
/// A differential view is expressed relative to the base
/// StructureDefinition - a statement of differences that it applies.
class StructureDefinitionDifferential extends BackboneElement {
  /// Primary constructor for
  /// [StructureDefinitionDifferential]

  const StructureDefinitionDifferential({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
    super.disallowExtensions,
  }) : super(
          objectPath: 'StructureDefinition.differential',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionDifferential.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'StructureDefinition.differential';
    return StructureDefinitionDifferential(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      element: (json['element'] as List<dynamic>)
          .map<ElementDefinition>(
            (v) => ElementDefinition.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.element'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [StructureDefinitionDifferential]
  /// from a [String] or [YamlMap] object
  factory StructureDefinitionDifferential.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureDefinitionDifferential.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureDefinitionDifferential.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureDefinitionDifferential '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureDefinitionDifferential]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionDifferential.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionDifferential.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionDifferential';

  /// [element]
  /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
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
    addField('element', element);
    return json;
  }

  @override
  StructureDefinitionDifferential clone() => throw UnimplementedError();
  @override
  StructureDefinitionDifferential copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return StructureDefinitionDifferential(
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
      element: element
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.element',
                ),
              )
              .toList() ??
          this.element,
    );
  }
}
