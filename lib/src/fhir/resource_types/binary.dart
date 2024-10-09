import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'binary.g.dart';

/// [Binary] /// A resource that represents the data of a single raw artifact as digital
/// content accessible in its native format. A Binary resource can contain any
/// content, whether text, image, pdf, zip archive, etc.
@JsonSerializable()
class Binary extends Resource {
  Binary({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    required this.contentType,
    this.contentTypeElement,
    this.securityContext,
    this.data,
    this.dataElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Binary);
  @override
  String get fhirType => 'Binary';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentType] /// MimeType of the binary content represented as a standard MimeType (BCP 13).
  @JsonKey(name: 'contentType')
  final FhirCode contentType;
  @JsonKey(name: '_contentType')
  final Element? contentTypeElement;

  /// [securityContext] /// This element identifies another resource that can be used as a proxy of the
  /// security sensitivity to use when deciding and enforcing access control
  /// rules for the Binary resource. Given that the Binary resource contains very
  /// few elements that can be used to determine the sensitivity of the data and
  /// relationships to individuals, the referenced resource stands in as a proxy
  /// equivalent for this purpose. This referenced resource may be related to the
  /// Binary (e.g. Media, DocumentReference), or may be some non-related Resource
  /// purely as a security proxy. E.g. to identify that the binary resource
  /// relates to a patient, and access should only be granted to applications
  /// that have access to the patient.
  @JsonKey(name: 'securityContext')
  final Reference? securityContext;

  /// [data] /// The actual content, base64 encoded.
  @JsonKey(name: 'data')
  final FhirBase64Binary? data;
  @JsonKey(name: '_data')
  final Element? dataElement;
  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BinaryToJson(this);

  @override
  Binary clone() => throw UnimplementedError();
  @override
  Binary copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    FhirCode? contentType,
    Element? contentTypeElement,
    Reference? securityContext,
    FhirBase64Binary? data,
    Element? dataElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Binary(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      securityContext: securityContext ?? this.securityContext,
      data: data ?? this.data,
      dataElement: dataElement ?? this.dataElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Binary.fromYaml(dynamic yaml) => yaml is String
      ? Binary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Binary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Binary cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Binary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Binary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
