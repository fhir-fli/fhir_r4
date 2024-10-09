import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Signature] /// A signature along with supporting context. The signature may be a digital
/// signature that is cryptographic in nature, or some other signature
/// acceptable to the domain. This other signature may be as simple as a
/// graphical image representing a hand-written signature, or a signature
/// ceremony Different signature approaches have different utilities.
class Signature extends DataType {
  Signature({
    super.id,
    super.extension_,
    required this.type,
    required this.when,
    this.whenElement,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.targetFormatElement,
    this.sigFormat,
    this.sigFormatElement,
    this.data,
    this.dataElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'Signature';

  @Id()
  int dbId = 0;

  /// [type] /// An indication of the reason that the entity signed this document. This may
  /// be explicitly included as part of the signature information and can be used
  /// when determining accountability for various actions concerning the
  /// document.
  final List<Coding> type;

  /// [when] /// When the digital signature was signed.
  final FhirInstant when;
  final Element? whenElement;

  /// [who] /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  final Reference who;

  /// [onBehalfOf] /// A reference to an application-usable description of the identity that is
  /// represented by the signature.
  final Reference? onBehalfOf;

  /// [targetFormat] /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  final FhirCode? targetFormat;
  final Element? targetFormatElement;

  /// [sigFormat] /// A mime type that indicates the technical format of the signature. Important
  /// mime types are application/signature+xml for X ML DigSig, application/jose
  /// for JWS, and image/* for a graphical image of a signature, etc.
  final FhirCode? sigFormat;
  final Element? sigFormatElement;

  /// [data] /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  final FhirBase64Binary? data;
  final Element? dataElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.map<dynamic>((Coding v) => v.toJson()).toList();
    json['when'] = when.value;
    if (whenElement != null) {
      json['_when'] = whenElement!.toJson();
    }
    json['who'] = who.toJson();
    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }
    if (targetFormat?.value != null) {
      json['targetFormat'] = targetFormat!.value;
    }
    if (targetFormatElement != null) {
      json['_targetFormat'] = targetFormatElement!.toJson();
    }
    if (sigFormat?.value != null) {
      json['sigFormat'] = sigFormat!.value;
    }
    if (sigFormatElement != null) {
      json['_sigFormat'] = sigFormatElement!.toJson();
    }
    if (data?.value != null) {
      json['data'] = data!.value;
    }
    if (dataElement != null) {
      json['_data'] = dataElement!.toJson();
    }
    return json;
  }

  factory Signature.fromJson(Map<String, dynamic> json) {
    return Signature(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: (json['type'] as List<dynamic>)
          .map<Coding>(
              (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
          .toList(),
      when: FhirInstant(json['when']),
      whenElement: Element.fromJson(json['_when'] as Map<String, dynamic>),
      who: Reference.fromJson(json['who'] as Map<String, dynamic>),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      targetFormat:
          json['targetFormat'] != null ? FhirCode(json['targetFormat']) : null,
      targetFormatElement: json['_targetFormat'] != null
          ? Element.fromJson(json['_targetFormat'] as Map<String, dynamic>)
          : null,
      sigFormat: json['sigFormat'] != null ? FhirCode(json['sigFormat']) : null,
      sigFormatElement: json['_sigFormat'] != null
          ? Element.fromJson(json['_sigFormat'] as Map<String, dynamic>)
          : null,
      data: json['data'] != null ? FhirBase64Binary(json['data']) : null,
      dataElement: json['_data'] != null
          ? Element.fromJson(json['_data'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Signature clone() => throw UnimplementedError();
  @override
  Signature copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? type,
    FhirInstant? when,
    Element? whenElement,
    Reference? who,
    Reference? onBehalfOf,
    FhirCode? targetFormat,
    Element? targetFormatElement,
    FhirCode? sigFormat,
    Element? sigFormatElement,
    FhirBase64Binary? data,
    Element? dataElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Signature(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      when: when ?? this.when,
      whenElement: whenElement ?? this.whenElement,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      targetFormat: targetFormat ?? this.targetFormat,
      targetFormatElement: targetFormatElement ?? this.targetFormatElement,
      sigFormat: sigFormat ?? this.sigFormat,
      sigFormatElement: sigFormatElement ?? this.sigFormatElement,
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

  factory Signature.fromYaml(dynamic yaml) => yaml is String
      ? Signature.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Signature.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Signature cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Signature.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Signature.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
