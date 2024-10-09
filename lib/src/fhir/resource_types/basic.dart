import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'basic.g.dart';

/// [Basic] /// Basic is used for handling concepts not yet defined in FHIR, narrative-only
/// resources that don't map to an existing resource, and custom resources not
/// appropriate for inclusion in the FHIR specification.
@JsonSerializable()
class Basic extends DomainResource {
  Basic({
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
    required this.code,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Basic);
  @override
  String get fhirType => 'Basic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier assigned to the resource for business purposes, outside the
  /// context of FHIR.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [code] /// Identifies the 'type' of resource - equivalent to the resource name for
  /// other resources.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [subject] /// Identifies the patient, practitioner, device or any other resource that is
  /// the "focus" of this resource.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [created] /// Identifies when the resource was first created.
  @JsonKey(name: 'created')
  final FhirDate? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [author] /// Indicates who was responsible for creating the resource instance.
  @JsonKey(name: 'author')
  final Reference? author;
  factory Basic.fromJson(Map<String, dynamic> json) => _$BasicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BasicToJson(this);

  @override
  Basic clone() => throw UnimplementedError();
  @override
  Basic copyWith({
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
    CodeableConcept? code,
    Reference? subject,
    FhirDate? created,
    Element? createdElement,
    Reference? author,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Basic(
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
      code: code ?? this.code,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      author: author ?? this.author,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Basic.fromYaml(dynamic yaml) => yaml is String
      ? Basic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Basic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Basic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Basic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Basic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
