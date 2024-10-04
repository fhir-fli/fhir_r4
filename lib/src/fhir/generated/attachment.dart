import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Attachment {
  final String id;
  final List<Extension> extension;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final FhirCode language;
  final PrimitiveElement Language;
  final FhirBase64Binary data;
  final PrimitiveElement Data;
  final FhirUrl url;
  final PrimitiveElement Url;
  final FhirUnsignedInt size;
  final PrimitiveElement Size;
  final FhirBase64Binary hash;
  final PrimitiveElement Hash;
  final String title;
  final PrimitiveElement Title;
  final FhirDateTime creation;
  final PrimitiveElement Creation;
  const Attachment({
    this.id,
    this.extension,
    this.contentType,
    this.ContentType,
    this.language,
    this.Language,
    this.data,
    this.Data,
    this.url,
    this.Url,
    this.size,
    this.Size,
    this.hash,
    this.Hash,
    this.title,
    this.Title,
    this.creation,
    this.Creation,
  });
}
