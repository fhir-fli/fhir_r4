import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Attachment] /// For referring to data content defined in other formats.
class Attachment extends DataType {
  Attachment({
    super.id,
    super.extension_,
    this.contentType,
    this.contentTypeElement,
    this.language,
    this.languageElement,
    this.data,
    this.dataElement,
    this.url,
    this.urlElement,
    this.size,
    this.sizeElement,
    this.hash,
    this.hashElement,
    this.title,
    this.titleElement,
    this.creation,
    this.creationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentType] /// Identifies the type of the data in the attachment and allows a method to be
  /// chosen to interpret or render the data. Includes mime type parameters such
  /// as charset where appropriate.
  final FhirCode? contentType;
  final Element? contentTypeElement;

  /// [language] /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  final FhirCode? language;
  final Element? languageElement;

  /// [data] /// The actual data of the attachment - a sequence of bytes, base64 encoded.
  final FhirBase64Binary? data;
  final Element? dataElement;

  /// [url] /// A location where the data can be accessed.
  final FhirUrl? url;
  final Element? urlElement;

  /// [size] /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  final FhirUnsignedInt? size;
  final Element? sizeElement;

  /// [hash] /// The calculated hash of the data using SHA-1. Represented using base64.
  final FhirBase64Binary? hash;
  final Element? hashElement;

  /// [title] /// A label or set of text to display in place of the data.
  final FhirString? title;
  final Element? titleElement;

  /// [creation] /// The date that the attachment was first created.
  final FhirDateTime? creation;
  final Element? creationElement;
  @override
  Attachment clone() => throw UnimplementedError();
  Attachment copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? contentType,
    Element? contentTypeElement,
    FhirCode? language,
    Element? languageElement,
    FhirBase64Binary? data,
    Element? dataElement,
    FhirUrl? url,
    Element? urlElement,
    FhirUnsignedInt? size,
    Element? sizeElement,
    FhirBase64Binary? hash,
    Element? hashElement,
    FhirString? title,
    Element? titleElement,
    FhirDateTime? creation,
    Element? creationElement,
  }) {
    return Attachment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      data: data ?? this.data,
      dataElement: dataElement ?? this.dataElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      size: size ?? this.size,
      sizeElement: sizeElement ?? this.sizeElement,
      hash: hash ?? this.hash,
      hashElement: hashElement ?? this.hashElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      creation: creation ?? this.creation,
      creationElement: creationElement ?? this.creationElement,
    );
  }
}
