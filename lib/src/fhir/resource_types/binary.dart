import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Binary] /// A resource that represents the data of a single raw artifact as digital
/// content accessible in its native format. A Binary resource can contain any
/// content, whether text, image, pdf, zip archive, etc.
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
  }) : super(resourceType: R4ResourceType.Binary);

  @override
  String get fhirType => 'Binary';

  @Id()
  int dbId = 0;

  /// [contentType] /// MimeType of the binary content represented as a standard MimeType (BCP 13).
  final FhirCode contentType;
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
  final Reference? securityContext;

  /// [data] /// The actual content, base64 encoded.
  final FhirBase64Binary? data;
  final Element? dataElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    json['contentType'] = contentType.value;
    if (contentTypeElement != null) {
      json['_contentType'] = contentTypeElement!.toJson();
    }
    if (securityContext != null) {
      json['securityContext'] = securityContext!.toJson();
    }
    if (data?.value != null) {
      json['data'] = data!.value;
    }
    if (dataElement != null) {
      json['_data'] = dataElement!.toJson();
    }
    return json;
  }

  factory Binary.fromJson(Map<String, dynamic> json) {
    return Binary(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      contentType: FhirCode(json['contentType']),
      contentTypeElement:
          Element.fromJson(json['_contentType'] as Map<String, dynamic>),
      securityContext: json['securityContext'] != null
          ? Reference.fromJson(json['securityContext'] as Map<String, dynamic>)
          : null,
      data: json['data'] != null ? FhirBase64Binary(json['data']) : null,
      dataElement: json['_data'] != null
          ? Element.fromJson(json['_data'] as Map<String, dynamic>)
          : null,
    );
  }
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
