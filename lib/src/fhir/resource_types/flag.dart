import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'flag.g.dart';

/// [Flag] /// Prospective warnings of potential issues when providing care to the
/// patient.
@JsonSerializable()
class Flag extends DomainResource {
  Flag({
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
    this.identifier,
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    required this.subject,
    this.period,
    this.encounter,
    this.author,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Flag);
  @override
  String get fhirType => 'Flag';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this flag by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Supports basic workflow.
  @JsonKey(name: 'status')
  final FlagStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [category] /// Allows a flag to be divided into different categories like clinical,
  /// administrative etc. Intended to be used as a means of filtering which flags
  /// are displayed to particular user or in a given context.
  @JsonKey(name: 'category')
  final List<FlagCategory>? category;

  /// [code] /// The coded value or textual component of the flag to display to the user.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [subject] /// The patient, location, group, organization, or practitioner etc. this is
  /// about record this flag is associated with.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [period] /// The period of time from the activation of the flag to inactivation of the
  /// flag. If the flag is active, the end of the period should be unspecified.
  @JsonKey(name: 'period')
  final Period? period;

  /// [encounter] /// This alert is only relevant during the encounter.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [author] /// The person, organization or device that created the flag.
  @JsonKey(name: 'author')
  final Reference? author;
  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FlagToJson(this);

  @override
  Flag clone() => throw UnimplementedError();
  @override
  Flag copyWith({
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
    List<Identifier>? identifier,
    FlagStatus? status,
    Element? statusElement,
    List<FlagCategory>? category,
    CodeableConcept? code,
    Reference? subject,
    Period? period,
    Reference? encounter,
    Reference? author,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Flag(
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
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      period: period ?? this.period,
      encounter: encounter ?? this.encounter,
      author: author ?? this.author,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Flag.fromYaml(dynamic yaml) => yaml is String
      ? Flag.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Flag.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Flag cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Flag.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Flag.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
