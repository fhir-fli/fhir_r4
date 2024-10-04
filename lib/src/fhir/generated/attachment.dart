import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Attachment {
  final String id;
  final List<FhirExtension> extension_;
  final FhirCode contentType;
  final PrimitiveElement contentTypeElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final FhirBase64Binary data;
  final PrimitiveElement dataElement;
  final FhirUrl url;
  final PrimitiveElement urlElement;
  final FhirUnsignedInt size;
  final PrimitiveElement sizeElement;
  final FhirBase64Binary hash;
  final PrimitiveElement hashElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirDateTime creation;
  final PrimitiveElement creationElement;
}


