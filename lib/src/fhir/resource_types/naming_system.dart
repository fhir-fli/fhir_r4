import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [NamingSystem]
/// A curated namespace that issues unique symbols within that namespace
/// for the identification of concepts, people, devices, etc. Represents a
/// "System" used within the Identifier and Coding data types.
class NamingSystem extends DomainResource {
  /// Primary constructor for [NamingSystem]

  NamingSystem({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.name,

    /// Extensions for [name]
    this.nameElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.kind,

    /// Extensions for [kind]
    this.kindElement,
    required this.date,

    /// Extensions for [date]
    this.dateElement,
    this.publisher,

    /// Extensions for [publisher]
    this.publisherElement,
    this.contact,
    this.responsible,

    /// Extensions for [responsible]
    this.responsibleElement,
    this.type,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.usage,

    /// Extensions for [usage]
    this.usageElement,
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
  factory NamingSystem.fromJson(Map<String, dynamic> json) {
    return NamingSystem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      kind: NamingSystemType.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      date: FhirDateTime.fromJson(json['date']),
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(
              json['_publisher'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      responsible: json['responsible'] != null
          ? FhirString.fromJson(json['responsible'])
          : null,
      responsibleElement: json['_responsible'] != null
          ? Element.fromJson(
              json['_responsible'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (dynamic v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      usage: json['usage'] != null ? FhirString.fromJson(json['usage']) : null,
      usageElement: json['_usage'] != null
          ? Element.fromJson(
              json['_usage'] as Map<String, dynamic>,
            )
          : null,
      uniqueId: (json['uniqueId'] as List<dynamic>)
          .map<NamingSystemUniqueId>((dynamic v) =>
              NamingSystemUniqueId.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [NamingSystem] from a [String] or [YamlMap] object
  factory NamingSystem.fromYaml(dynamic yaml) => yaml is String
      ? NamingSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NamingSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('NamingSystem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NamingSystem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystem.fromJsonString(String source) {
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

  /// Extensions for [name]
  final Element? nameElement;

  /// [status]
  /// The status of this naming system. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [kind]
  /// Indicates the purpose for the naming system - what kinds of things does
  /// it make unique?
  final NamingSystemType kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [date]
  /// The date (and optionally time) when the naming system was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the naming system changes.
  final FhirDateTime date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the naming
  /// system.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [responsible]
  /// The name of the organization that is responsible for issuing
  /// identifiers or codes for this namespace and ensuring their
  /// non-collision.
  final FhirString? responsible;

  /// Extensions for [responsible]
  final Element? responsibleElement;

  /// [type]
  /// Categorizes a naming system for easier search by grouping related
  /// naming systems.
  final CodeableConcept? type;

  /// [description]
  /// A free text natural language description of the naming system from a
  /// consumer's perspective. Details about what the namespace identifies
  /// including scope, granularity, version labeling, etc.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

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

  /// Extensions for [usage]
  final Element? usageElement;

  /// [uniqueId]
  /// Indicates how the system may be identified when referenced in
  /// electronic exchange.
  final List<NamingSystemUniqueId> uniqueId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['status'] = status.toJson();
    json['kind'] = kind.toJson();
    json['date'] = date.toJson();
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (responsible?.value != null) {
      json['responsible'] = responsible!.toJson();
    }
    if (responsibleElement != null) {
      json['_responsible'] = responsibleElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (usage?.value != null) {
      json['usage'] = usage!.toJson();
    }
    if (usageElement != null) {
      json['_usage'] = usageElement!.toJson();
    }
    json['uniqueId'] =
        uniqueId.map<dynamic>((NamingSystemUniqueId v) => v.toJson()).toList();
    return json;
  }

  @override
  NamingSystem clone() => throw UnimplementedError();
  @override
  NamingSystem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    PublicationStatus? status,
    Element? statusElement,
    NamingSystemType? kind,
    Element? kindElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirString? responsible,
    Element? responsibleElement,
    CodeableConcept? type,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirString? usage,
    Element? usageElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      responsible: responsible ?? this.responsible,
      responsibleElement: responsibleElement ?? this.responsibleElement,
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      usage: usage ?? this.usage,
      usageElement: usageElement ?? this.usageElement,
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
  /// Primary constructor for [NamingSystemUniqueId]

  NamingSystemUniqueId({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    required this.value,

    /// Extensions for [value]
    this.valueElement,
    this.preferred,

    /// Extensions for [preferred]
    this.preferredElement,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NamingSystemUniqueId.fromJson(Map<String, dynamic> json) {
    return NamingSystemUniqueId(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: NamingSystemIdentifierType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(
              json['_value'] as Map<String, dynamic>,
            )
          : null,
      preferred: json['preferred'] != null
          ? FhirBoolean.fromJson(json['preferred'])
          : null,
      preferredElement: json['_preferred'] != null
          ? Element.fromJson(
              json['_preferred'] as Map<String, dynamic>,
            )
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [NamingSystemUniqueId] from a [String] or [YamlMap] object
  factory NamingSystemUniqueId.fromYaml(dynamic yaml) => yaml is String
      ? NamingSystemUniqueId.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? NamingSystemUniqueId.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'NamingSystemUniqueId cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [NamingSystemUniqueId] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystemUniqueId.fromJsonString(String source) {
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

  /// Extensions for [type]
  final Element? typeElement;

  /// [value]
  /// The string that should be sent over the wire to identify the code
  /// system or identifier system.
  final FhirString value;

  /// Extensions for [value]
  final Element? valueElement;

  /// [preferred]
  /// Indicates whether this identifier is the "preferred" identifier of this
  /// type.
  final FhirBoolean? preferred;

  /// Extensions for [preferred]
  final Element? preferredElement;

  /// [comment]
  /// Notes about the past or intended usage of this identifier.
  final FhirString? comment;

  /// Extensions for [comment]
  final Element? commentElement;

  /// [period]
  /// Identifies the period of time over which this identifier is considered
  /// appropriate to refer to the naming system. Outside of this window, the
  /// identifier might be non-deterministic.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (preferred?.value != null) {
      json['preferred'] = preferred!.toJson();
    }
    if (preferredElement != null) {
      json['_preferred'] = preferredElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
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
    Element? typeElement,
    FhirString? value,
    Element? valueElement,
    FhirBoolean? preferred,
    Element? preferredElement,
    FhirString? comment,
    Element? commentElement,
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
      typeElement: typeElement ?? this.typeElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
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
