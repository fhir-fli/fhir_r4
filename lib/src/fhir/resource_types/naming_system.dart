import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [NamingSystem]
/// A curated namespace that issues unique symbols within that namespace
/// for the identification of concepts, people, devices, etc. Represents a
/// "System" used within the Identifier and Coding data types.
class NamingSystem extends DomainResource {
  /// Primary constructor for
  /// [NamingSystem]

  NamingSystem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.status,
    required this.kind,
    required this.date,
    this.publisher,
    this.contact,
    this.responsible,
    this.type,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.usage,
    required this.uniqueId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.NamingSystem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NamingSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return NamingSystem(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      kind: NamingSystemType.fromJson({
        'value': json['kind'],
        '_value': json['_kind'],
      }),
      date: FhirDateTime.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
      publisher: (json['publisher'] != null || json['_publisher'] != null)
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      responsible: (json['responsible'] != null || json['_responsible'] != null)
          ? FhirString.fromJson({
              'value': json['responsible'],
              '_value': json['_responsible'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      usage: (json['usage'] != null || json['_usage'] != null)
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
            })
          : null,
      uniqueId: ensureNonNullList(
        (json['uniqueId'] as List<dynamic>)
            .map<NamingSystemUniqueId>(
              (v) => NamingSystemUniqueId.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [NamingSystem]
  /// from a [String] or [YamlMap] object
  factory NamingSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NamingSystem.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return NamingSystem.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'NamingSystem cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [NamingSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NamingSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NamingSystem';

  /// [name]
  /// A natural language name identifying the naming system. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [status]
  /// The status of this naming system. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [kind]
  /// Indicates the purpose for the naming system - what kinds of things does
  /// it make unique?
  final NamingSystemType kind;

  /// [date]
  /// The date (and optionally time) when the naming system was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the naming system changes.
  final FhirDateTime date;

  /// [publisher]
  /// The name of the organization or individual that published the naming
  /// system.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [responsible]
  /// The name of the organization that is responsible for issuing
  /// identifiers or codes for this namespace and ensuring their
  /// non-collision.
  final FhirString? responsible;

  /// [type]
  /// Categorizes a naming system for easier search by grouping related
  /// naming systems.
  final CodeableConcept? type;

  /// [description]
  /// A free text natural language description of the naming system from a
  /// consumer's perspective. Details about what the namespace identifies
  /// including scope, granularity, version labeling, etc.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate naming system instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the naming system is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [usage]
  /// Provides guidance on the use of the namespace, including the handling
  /// of formatting characters, use of upper vs. lower case, etc.
  final FhirString? usage;

  /// [uniqueId]
  /// Indicates how the system may be identified when referenced in
  /// electronic exchange.
  final List<NamingSystemUniqueId> uniqueId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('status', status);
    addField('kind', kind);
    addField('date', date);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('responsible', responsible);
    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('description', description);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    addField('usage', usage);
    if (uniqueId.isNotEmpty) {
      json['uniqueId'] = uniqueId.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  NamingSystem clone() => throw UnimplementedError();
  @override
  NamingSystem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    PublicationStatus? status,
    NamingSystemType? kind,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirString? responsible,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirString? usage,
    List<NamingSystemUniqueId>? uniqueId,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NamingSystem(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      status: status ?? this.status,
      kind: kind ?? this.kind,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      responsible: responsible ?? this.responsible,
      type: type ?? this.type,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      usage: usage ?? this.usage,
      uniqueId: uniqueId ?? this.uniqueId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [NamingSystemUniqueId]
/// Indicates how the system may be identified when referenced in
/// electronic exchange.
class NamingSystemUniqueId extends BackboneElement {
  /// Primary constructor for
  /// [NamingSystemUniqueId]

  NamingSystemUniqueId({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.preferred,
    this.comment,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NamingSystemUniqueId.fromJson(
    Map<String, dynamic> json,
  ) {
    return NamingSystemUniqueId(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: NamingSystemIdentifierType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
      preferred: (json['preferred'] != null || json['_preferred'] != null)
          ? FhirBoolean.fromJson({
              'value': json['preferred'],
              '_value': json['_preferred'],
            })
          : null,
      comment: (json['comment'] != null || json['_comment'] != null)
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [NamingSystemUniqueId]
  /// from a [String] or [YamlMap] object
  factory NamingSystemUniqueId.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NamingSystemUniqueId.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return NamingSystemUniqueId.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'NamingSystemUniqueId cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [NamingSystemUniqueId]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystemUniqueId.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NamingSystemUniqueId.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NamingSystemUniqueId';

  /// [type]
  /// Identifies the unique identifier scheme used for this particular
  /// identifier.
  final NamingSystemIdentifierType type;

  /// [value]
  /// The string that should be sent over the wire to identify the code
  /// system or identifier system.
  final FhirString value;

  /// [preferred]
  /// Indicates whether this identifier is the "preferred" identifier of this
  /// type.
  final FhirBoolean? preferred;

  /// [comment]
  /// Notes about the past or intended usage of this identifier.
  final FhirString? comment;

  /// [period]
  /// Identifies the period of time over which this identifier is considered
  /// appropriate to refer to the naming system. Outside of this window, the
  /// identifier might be non-deterministic.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('value', value);
    addField('preferred', preferred);
    addField('comment', comment);
    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  NamingSystemUniqueId clone() => throw UnimplementedError();
  @override
  NamingSystemUniqueId copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NamingSystemIdentifierType? type,
    FhirString? value,
    FhirBoolean? preferred,
    FhirString? comment,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NamingSystemUniqueId(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      preferred: preferred ?? this.preferred,
      comment: comment ?? this.comment,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
