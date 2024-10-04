import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Binary {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final Reference securityContext;
  final FhirBase64Binary data;
  final PrimitiveElement Data;
  const Binary({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.contentType,
    this.ContentType,
    this.securityContext,
    this.data,
    this.Data,
  });
}
