import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'naming_system.g.dart';

/// [NamingSystem] /// A curated namespace that issues unique symbols within that namespace for
/// the identification of concepts, people, devices, etc. Represents a "System"
/// used within the Identifier and Coding data types.
@JsonSerializable()
class NamingSystem extends DomainResource {
  NamingSystem({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.status,
    this.statusElement,
    required this.kind,
    this.kindElement,
    required this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.responsible,
    this.responsibleElement,
    this.type,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.usage,
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
            fhirType: 'NamingSystem');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A natural language name identifying the naming system. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [status] /// The status of this naming system. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [kind] /// Indicates the purpose for the naming system - what kinds of things does it
  /// make unique?
  @JsonKey(name: 'kind')
  final FhirCode kind;
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [date] /// The date (and optionally time) when the naming system was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the naming system changes.
  @JsonKey(name: 'date')
  final FhirDateTime date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the naming
  /// system.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [responsible] /// The name of the organization that is responsible for issuing identifiers or
  /// codes for this namespace and ensuring their non-collision.
  @JsonKey(name: 'responsible')
  final FhirString? responsible;
  @JsonKey(name: '_responsible')
  final Element? responsibleElement;

  /// [type] /// Categorizes a naming system for easier search by grouping related naming
  /// systems.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [description] /// A free text natural language description of the naming system from a
  /// consumer's perspective. Details about what the namespace identifies
  /// including scope, granularity, version labeling, etc.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate naming system instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the naming system is intended to be
  /// used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [usage] /// Provides guidance on the use of the namespace, including the handling of
  /// formatting characters, use of upper vs. lower case, etc.
  @JsonKey(name: 'usage')
  final FhirString? usage;
  @JsonKey(name: '_usage')
  final Element? usageElement;

  /// [uniqueId] /// Indicates how the system may be identified when referenced in electronic
  /// exchange.
  @JsonKey(name: 'uniqueId')
  final List<NamingSystemUniqueId> uniqueId;
  factory NamingSystem.fromJson(Map<String, dynamic> json) =>
      _$NamingSystemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NamingSystemToJson(this);

  @override
  NamingSystem clone() => throw UnimplementedError();
  @override
  NamingSystem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCode? status,
    Element? statusElement,
    FhirCode? kind,
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

  factory NamingSystem.fromYaml(dynamic yaml) => yaml is String
      ? NamingSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NamingSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NamingSystem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NamingSystem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NamingSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NamingSystemUniqueId] /// Indicates how the system may be identified when referenced in electronic
/// exchange.
@JsonSerializable()
class NamingSystemUniqueId extends BackboneElement {
  NamingSystemUniqueId({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.value,
    this.valueElement,
    this.preferred,
    this.preferredElement,
    this.comment,
    this.commentElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'NamingSystemUniqueId');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Identifies the unique identifier scheme used for this particular
  /// identifier.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [value] /// The string that should be sent over the wire to identify the code system or
  /// identifier system.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [preferred] /// Indicates whether this identifier is the "preferred" identifier of this
  /// type.
  @JsonKey(name: 'preferred')
  final FhirBoolean? preferred;
  @JsonKey(name: '_preferred')
  final Element? preferredElement;

  /// [comment] /// Notes about the past or intended usage of this identifier.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [period] /// Identifies the period of time over which this identifier is considered
  /// appropriate to refer to the naming system. Outside of this window, the
  /// identifier might be non-deterministic.
  @JsonKey(name: 'period')
  final Period? period;
  factory NamingSystemUniqueId.fromJson(Map<String, dynamic> json) =>
      _$NamingSystemUniqueIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NamingSystemUniqueIdToJson(this);

  @override
  NamingSystemUniqueId clone() => throw UnimplementedError();
  @override
  NamingSystemUniqueId copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
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

  factory NamingSystemUniqueId.fromYaml(dynamic yaml) => yaml is String
      ? NamingSystemUniqueId.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NamingSystemUniqueId.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NamingSystemUniqueId cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NamingSystemUniqueId.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NamingSystemUniqueId.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
