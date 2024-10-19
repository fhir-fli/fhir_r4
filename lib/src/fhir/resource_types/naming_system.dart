// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [NamingSystem]
/// A curated namespace that issues unique symbols within that namespace
/// for the identification of concepts, people, devices, etc. Represents a
/// "System" used within the Identifier and Coding data types.
@Entity()
class NamingSystem extends DomainResource {
  /// Primary constructor for
  /// [NamingSystem]

  NamingSystem({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  ) =>
      yaml is String
          ? NamingSystem.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? NamingSystem.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'NamingSystem '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'NamingSystem';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [name]
  /// A natural language name identifying the naming system. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirString name;

  /// [status]
  /// The status of this naming system. Enables tracking the life-cycle of
  /// the content.
  PublicationStatus status;

  /// [kind]
  /// Indicates the purpose for the naming system - what kinds of things does
  /// it make unique?
  NamingSystemType kind;

  /// [date]
  /// The date (and optionally time) when the naming system was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the naming system changes.
  FhirDateTime date;

  /// [publisher]
  /// The name of the organization or individual that published the naming
  /// system.
  FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetail>? contact;

  /// [responsible]
  /// The name of the organization that is responsible for issuing
  /// identifiers or codes for this namespace and ensuring their
  /// non-collision.
  FhirString? responsible;

  /// [type]
  /// Categorizes a naming system for easier search by grouping related
  /// naming systems.
  CodeableConcept? type;

  /// [description]
  /// A free text natural language description of the naming system from a
  /// consumer's perspective. Details about what the namespace identifies
  /// including scope, granularity, version labeling, etc.
  FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate naming system instances.
  List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the naming system is intended to
  /// be used.
  List<CodeableConcept>? jurisdiction;

  /// [usage]
  /// Provides guidance on the use of the namespace, including the handling
  /// of formatting characters, use of upper vs. lower case, etc.
  FhirString? usage;

  /// [uniqueId]
  /// Indicates how the system may be identified when referenced in
  /// electronic exchange.
  List<NamingSystemUniqueId> uniqueId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

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

    final fieldJson7 = name.toJson();
    json['name'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_name'] = fieldJson7['_value'];
    }

    final fieldJson8 = status.toJson();
    json['status'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_status'] = fieldJson8['_value'];
    }

    final fieldJson9 = kind.toJson();
    json['kind'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_kind'] = fieldJson9['_value'];
    }

    final fieldJson10 = date.toJson();
    json['date'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_date'] = fieldJson10['_value'];
    }

    if (publisher != null) {
      final fieldJson11 = publisher!.toJson();
      json['publisher'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_publisher'] = fieldJson11['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (responsible != null) {
      final fieldJson13 = responsible!.toJson();
      json['responsible'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_responsible'] = fieldJson13['_value'];
      }
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (description != null) {
      final fieldJson15 = description!.toJson();
      json['description'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_description'] = fieldJson15['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (usage != null) {
      final fieldJson18 = usage!.toJson();
      json['usage'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_usage'] = fieldJson18['_value'];
      }
    }

    json['uniqueId'] = uniqueId.map((e) => e.toJson()).toList();

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
@Entity()
class NamingSystemUniqueId extends BackboneElement {
  /// Primary constructor for
  /// [NamingSystemUniqueId]

  NamingSystemUniqueId({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
  ) =>
      yaml is String
          ? NamingSystemUniqueId.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? NamingSystemUniqueId.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'NamingSystemUniqueId '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'NamingSystemUniqueId';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [type]
  /// Identifies the unique identifier scheme used for this particular
  /// identifier.
  NamingSystemIdentifierType type;

  /// [value]
  /// The string that should be sent over the wire to identify the code
  /// system or identifier system.
  FhirString value;

  /// [preferred]
  /// Indicates whether this identifier is the "preferred" identifier of this
  /// type.
  FhirBoolean? preferred;

  /// [comment]
  /// Notes about the past or intended usage of this identifier.
  FhirString? comment;

  /// [period]
  /// Identifies the period of time over which this identifier is considered
  /// appropriate to refer to the naming system. Outside of this window, the
  /// identifier might be non-deterministic.
  Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = type.toJson();
    json['type'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_type'] = fieldJson2['_value'];
    }

    final fieldJson3 = value.toJson();
    json['value'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_value'] = fieldJson3['_value'];
    }

    if (preferred != null) {
      final fieldJson4 = preferred!.toJson();
      json['preferred'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_preferred'] = fieldJson4['_value'];
      }
    }

    if (comment != null) {
      final fieldJson5 = comment!.toJson();
      json['comment'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_comment'] = fieldJson5['_value'];
      }
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
