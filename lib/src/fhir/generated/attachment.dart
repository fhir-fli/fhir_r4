import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Attachment {
  final String id;
  final List<FhirExtension> extension;
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
}


