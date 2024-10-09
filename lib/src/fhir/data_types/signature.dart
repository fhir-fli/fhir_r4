import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'signature.g.dart';

/// [Signature] /// A signature along with supporting context. The signature may be a digital
/// signature that is cryptographic in nature, or some other signature
/// acceptable to the domain. This other signature may be as simple as a
/// graphical image representing a hand-written signature, or a signature
/// ceremony Different signature approaches have different utilities.
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// An indication of the reason that the entity signed this document. This may
  /// be explicitly included as part of the signature information and can be used
  /// when determining accountability for various actions concerning the
  /// document.
  @JsonKey(name: 'type')
  final List<SignatureTypeCodes> type;

  /// [when] /// When the digital signature was signed.
  @JsonKey(name: 'when')
  final FhirInstant when;
  @JsonKey(name: '_when')
  final Element? whenElement;

  /// [who] /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  @JsonKey(name: 'who')
  final Reference who;

  /// [onBehalfOf] /// A reference to an application-usable description of the identity that is
  /// represented by the signature.
  @JsonKey(name: 'onBehalfOf')
  final Reference? onBehalfOf;

  /// [targetFormat] /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  @JsonKey(name: 'targetFormat')
  final FhirCode? targetFormat;
  @JsonKey(name: '_targetFormat')
  final Element? targetFormatElement;

  /// [sigFormat] /// A mime type that indicates the technical format of the signature. Important
  /// mime types are application/signature+xml for X ML DigSig, application/jose
  /// for JWS, and image/* for a graphical image of a signature, etc.
  @JsonKey(name: 'sigFormat')
  final FhirCode? sigFormat;
  @JsonKey(name: '_sigFormat')
  final Element? sigFormatElement;

  /// [data] /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  @JsonKey(name: 'data')
  final FhirBase64Binary? data;
  @JsonKey(name: '_data')
  final Element? dataElement;
  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SignatureToJson(this);

  @override
  Signature clone() => throw UnimplementedError();
  @override
  Signature copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<SignatureTypeCodes>? type,
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
