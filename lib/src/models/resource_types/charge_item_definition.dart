import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItemDefinition]
/// The ChargeItemDefinition resource provides the properties that apply to
/// the (billing) codes necessary to calculate costs and prices. The
/// properties may differ largely depending on type and realm, therefore
/// this resource gives only a rough structure and requires profiling for
/// each type of billing code system.
class ChargeItemDefinition extends DomainResource {
  /// Primary constructor for
  /// [ChargeItemDefinition]

  const ChargeItemDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    this.title,
    this.derivedFromUri,
    this.partOf,
    this.replaces,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  }) : super(
          resourceType: R4ResourceType.ChargeItemDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemDefinition(
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
      )!,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      derivedFromUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'derivedFromUri',
        FhirUri.fromJson,
      ),
      partOf: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'partOf',
        FhirCanonical.fromJson,
      ),
      replaces: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'replaces',
        FhirCanonical.fromJson,
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
      ),
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
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionApplicability>(
            (v) => ChargeItemDefinitionApplicability.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      propertyGroup: (json['propertyGroup'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionPropertyGroup>(
            (v) => ChargeItemDefinitionPropertyGroup.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItemDefinition]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinition';

  /// [url]
  /// An absolute URI that is used to identify this charge item definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique
  /// and SHOULD be a literal address at which at which an authoritative
  /// instance of this charge item definition is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the
  /// same when the charge item definition is stored on different servers.
  final FhirUri url;

  /// [identifier]
  /// A formal identifier that is used to identify this charge item
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the charge item
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the charge item
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence. To provide a version consistent
  /// with the Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  /// Note that a version is required for non-experimental active assets.
  final FhirString? version;

  /// [title]
  /// A short, descriptive, user-friendly title for the charge item
  /// definition.
  final FhirString? title;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined charge item definition that
  /// is adhered to in whole or in part by this definition.
  final List<FhirUri>? derivedFromUri;

  /// [partOf]
  /// A larger definition of which this particular definition is a component
  /// or step.
  final List<FhirCanonical>? partOf;

  /// [replaces]
  /// As new versions of a protocol or guideline are defined, allows
  /// identification of what versions are replaced by a new instance.
  final List<FhirCanonical>? replaces;

  /// [status]
  /// The current state of the ChargeItemDefinition.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this charge item definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the charge item definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the charge item definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the charge
  /// item definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the charge item definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate charge item definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the charge item definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright]
  /// A copyright statement relating to the charge item definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the charge item definition.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the charge item definition content was or is
  /// planned to be in active use.
  final Period? effectivePeriod;

  /// [code]
  /// The defined billing details in this resource pertain to the given
  /// billing code.
  final CodeableConcept? code;

  /// [instance]
  /// The defined billing details in this resource pertain to the given
  /// product instance(s).
  final List<Reference>? instance;

  /// [applicability]
  /// Expressions that describe applicability criteria for the billing code.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [propertyGroup]
  /// Group of properties which are applicable under the same conditions. If
  /// no applicability rules are established for the group, then all
  /// properties always apply.
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;
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
    addField('title', title);
    addField('derivedFromUri', derivedFromUri);
    addField('partOf', partOf);
    addField('replaces', replaces);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('code', code);
    addField('instance', instance);
    addField('applicability', applicability);
    addField('propertyGroup', propertyGroup);
    return json;
  }

  @override
  ChargeItemDefinition clone() => throw UnimplementedError();
  @override
  ChargeItemDefinition copyWith({
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
    FhirString? title,
    List<FhirUri>? derivedFromUri,
    List<FhirCanonical>? partOf,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    CodeableConcept? code,
    List<Reference>? instance,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPropertyGroup>? propertyGroup,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ChargeItemDefinition(
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
      title: title ?? this.title,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      partOf: partOf ?? this.partOf,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      instance: instance ?? this.instance,
      applicability: applicability ?? this.applicability,
      propertyGroup: propertyGroup ?? this.propertyGroup,
    );
  }
}

/// [ChargeItemDefinitionApplicability]
/// Expressions that describe applicability criteria for the billing code.
class ChargeItemDefinitionApplicability extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemDefinitionApplicability]

  const ChargeItemDefinitionApplicability({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.language,
    this.expression,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionApplicability.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemDefinitionApplicability(
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
      ),
      language: JsonParser.parsePrimitive<FhirString>(
        json,
        'language',
        FhirString.fromJson,
      ),
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ChargeItemDefinitionApplicability]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionApplicability.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionApplicability.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionApplicability.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionApplicability '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionApplicability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionApplicability.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionApplicability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionApplicability';

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;

  /// [language]
  /// The media type of the language for the expression, e.g. "text/cql" for
  /// Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  /// expressions.
  final FhirString? language;

  /// [expression]
  /// An expression that returns true or false, indicating whether the
  /// condition is satisfied. When using FHIRPath expressions, the %context
  /// environment variable must be replaced at runtime with the ChargeItem
  /// resource to which this definition is applied.
  final FhirString? expression;
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
    addField('language', language);
    addField('expression', expression);
    return json;
  }

  @override
  ChargeItemDefinitionApplicability clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionApplicability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirString? language,
    FhirString? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ChargeItemDefinitionApplicability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      language: language ?? this.language,
      expression: expression ?? this.expression,
    );
  }
}

/// [ChargeItemDefinitionPropertyGroup]
/// Group of properties which are applicable under the same conditions. If
/// no applicability rules are established for the group, then all
/// properties always apply.
class ChargeItemDefinitionPropertyGroup extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemDefinitionPropertyGroup]

  const ChargeItemDefinitionPropertyGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.applicability,
    this.priceComponent,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPropertyGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemDefinitionPropertyGroup(
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
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionApplicability>(
            (v) => ChargeItemDefinitionApplicability.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionPriceComponent>(
            (v) => ChargeItemDefinitionPriceComponent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItemDefinitionPropertyGroup]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionPropertyGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionPropertyGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionPropertyGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionPropertyGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionPropertyGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPropertyGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPropertyGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPropertyGroup';

  /// [applicability]
  /// Expressions that describe applicability criteria for the
  /// priceComponent.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the prices have been calculated.
  final List<ChargeItemDefinitionPriceComponent>? priceComponent;
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
    addField('applicability', applicability);
    addField('priceComponent', priceComponent);
    return json;
  }

  @override
  ChargeItemDefinitionPropertyGroup clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPropertyGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPriceComponent>? priceComponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ChargeItemDefinitionPropertyGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      applicability: applicability ?? this.applicability,
      priceComponent: priceComponent ?? this.priceComponent,
    );
  }
}

/// [ChargeItemDefinitionPriceComponent]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice of how the prices have been calculated.
class ChargeItemDefinitionPriceComponent extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemDefinitionPriceComponent]

  const ChargeItemDefinitionPriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPriceComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemDefinitionPriceComponent(
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
      type: JsonParser.parsePrimitive<InvoicePriceComponentType>(
        json,
        'type',
        InvoicePriceComponentType.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
    );
  }

  /// Deserialize [ChargeItemDefinitionPriceComponent]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionPriceComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionPriceComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionPriceComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionPriceComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionPriceComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPriceComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPriceComponent';

  /// [type]
  /// This code identifies the type of the component.
  final InvoicePriceComponentType type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;

  /// [amount]
  /// The amount calculated for this component.
  final Money? amount;
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
    addField('code', code);
    addField('factor', factor);
    addField('amount', amount);
    return json;
  }

  @override
  ChargeItemDefinitionPriceComponent clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    InvoicePriceComponentType? type,
    CodeableConcept? code,
    FhirDecimal? factor,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ChargeItemDefinitionPriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      amount: amount ?? this.amount,
    );
  }
}
