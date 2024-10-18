import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Signature]
/// A signature along with supporting context. The signature may be a
/// digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as
/// simple as a graphical image representing a hand-written signature, or a
/// signature ceremony Different signature approaches have different
/// utilities.
class Signature extends DataType {
  /// Primary constructor for [Signature]

  Signature({
    super.id,
    this.extension_,
    required this.type,
    required this.when,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(
    Map<String, dynamic> json,
  ) {
    return Signature(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      type: ensureNonNullList((json['type'] as List<dynamic>)
          .map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      when: FhirInstant.fromJson({
        'value': json['when'],
        '_value': json['_when'],
      }),
      who: Reference.fromJson(
        json['who'] as Map<String, dynamic>,
      ),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
      targetFormat: json['targetFormat'] != null
          ? FhirCode.fromJson({
              'value': json['targetFormat'],
              '_value': json['_targetFormat'],
            })
          : null,
      sigFormat: json['sigFormat'] != null
          ? FhirCode.fromJson({
              'value': json['sigFormat'],
              '_value': json['_sigFormat'],
            })
          : null,
      data: json['data'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['data'],
              '_value': json['_data'],
            })
          : null,
    );
  }

  /// Deserialize [Signature] from a [String]
  /// or [YamlMap] object
  factory Signature.fromYaml(dynamic yaml) => yaml is String
      ? Signature.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Signature.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Signature cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Signature]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Signature.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Signature.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Signature';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// An indication of the reason that the entity signed this document. This
  /// may be explicitly included as part of the signature information and can
  /// be used when determining accountability for various actions concerning
  /// the document.
  final List<Coding> type;

  /// [when]
  /// When the digital signature was signed.
  final FhirInstant when;

  /// [who]
  /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  final Reference who;

  /// [onBehalfOf]
  /// A reference to an application-usable description of the identity that
  /// is represented by the signature.
  final Reference? onBehalfOf;

  /// [targetFormat]
  /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  final FhirCode? targetFormat;

  /// [sigFormat]
  /// A mime type that indicates the technical format of the signature.
  /// Important mime types are application/signature+xml for X ML DigSig,
  /// application/jose for JWS, and image/* for a graphical image of a
  /// signature, etc.
  final FhirCode? sigFormat;

  /// [data]
  /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  final FhirBase64Binary? data;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.map((e) => e.toJson()).toList();

    final fieldJson2 = when.toJson();
    json['when'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_when'] = fieldJson2['_value'];
    }

    json['who'] = who.toJson();

    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }

    if (targetFormat != null) {
      final fieldJson5 = targetFormat!.toJson();
      json['targetFormat'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_targetFormat'] = fieldJson5['_value'];
      }
    }

    if (sigFormat != null) {
      final fieldJson6 = sigFormat!.toJson();
      json['sigFormat'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_sigFormat'] = fieldJson6['_value'];
      }
    }

    if (data != null) {
      final fieldJson7 = data!.toJson();
      json['data'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_data'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  Signature clone() => throw UnimplementedError();
  @override
  Signature copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? type,
    FhirInstant? when,
    Reference? who,
    Reference? onBehalfOf,
    FhirCode? targetFormat,
    FhirCode? sigFormat,
    FhirBase64Binary? data,
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
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      targetFormat: targetFormat ?? this.targetFormat,
      sigFormat: sigFormat ?? this.sigFormat,
      data: data ?? this.data,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
