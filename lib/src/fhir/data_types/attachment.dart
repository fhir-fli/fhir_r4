import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Attachment extends DataType {
  final FhirCode? contentType;
  final Element? contentTypeElement;
  final FhirCode? language;
  final Element? languageElement;
  final FhirBase64Binary? data;
  final Element? dataElement;
  final FhirUrl? url;
  final Element? urlElement;
  final FhirUnsignedInt? size;
  final Element? sizeElement;
  final FhirBase64Binary? hash;
  final Element? hashElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirDateTime? creation;
  final Element? creationElement;

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

@override
Attachment clone() => throw UnimplementedError();
}

