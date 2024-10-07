import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  Signature clone() => throw UnimplementedError();
  Signature copy({
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
    );
  }
}
