// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'signature.freezed.dart';
part 'signature.g.dart';

/// [Signature] A signature along with supporting context. The signature may
@freezed
class Signature extends DataType with _$Signature {
  /// [Signature] A signature along with supporting context. The signature may
  Signature._();

  /// [Signature] A signature along with supporting context. The signature may
  /// be a digital signature that is cryptographic in nature, or some other
  /// signature acceptable to the domain. This other signature may be as simple
  /// as a graphical image representing a hand-written signature, or a signature
  ///  ceremony Different signature approaches have different utilities.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  ///
  /// [when] When the digital signature was signed.
  ///
  /// [whenElement] Extensions for when
  ///
  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  ///
  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  ///
  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  ///
  /// [targetFormatElement] Extensions for targetFormat
  ///
  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  ///
  /// [sigFormatElement] Extensions for sigFormat
  ///
  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  ///
  /// [dataElement] Extensions for data
  factory Signature({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [type] An indication of the reason that the entity signed this document.
    /// This may be explicitly included as part of the signature information and
    /// can be used when determining accountability for various actions concerning
    ///  the document.
    required List<Coding> type,

    /// [when] When the digital signature was signed.
    FhirInstant? when,

    /// [whenElement] Extensions for when
    @JsonKey(name: '_when') PrimitiveElement? whenElement,

    /// [who] A reference to an application-usable description of the identity
    ///  that signed  (e.g. the signature used their private key).
    required Reference who,

    /// [onBehalfOf] A reference to an application-usable description of the
    ///  identity that is represented by the signature.
    Reference? onBehalfOf,

    /// [targetFormat] A mime type that indicates the technical format of the
    ///  target resources signed by the signature.
    FhirCode? targetFormat,

    /// [targetFormatElement] Extensions for targetFormat
    @JsonKey(name: '_targetFormat') PrimitiveElement? targetFormatElement,

    /// [sigFormat] A mime type that indicates the technical format of the
    /// signature. Important mime types are application/signature+xml for X ML
    /// DigSig, application/jose for JWS, and image/* for a graphical image of a
    ///  signature, etc.
    FhirCode? sigFormat,

    /// [sigFormatElement] Extensions for sigFormat
    @JsonKey(name: '_sigFormat') PrimitiveElement? sigFormatElement,

    /// [data] The base64 encoding of the Signature content. When signature is
    ///  not recorded electronically this element would be empty.
    FhirBase64Binary? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') PrimitiveElement? dataElement,
  }) = _Signature;

  @override
  String get fhirType => 'Signature';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Signature.fromYaml(dynamic yaml) => yaml is String
      ? Signature.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Signature.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Signature cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);

  /// Acts like a constructor, returns a [Signature], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Signature.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SignatureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
