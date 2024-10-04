import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Binary {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final FhirCode contentType;
  final PrimitiveElement contentTypeElement;
  final Reference securityContext;
  final FhirBase64Binary data;
  final PrimitiveElement dataElement;
  const Binary({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.contentType,
    required this.contentTypeElement,
    required this.securityContext,
    required this.data,
    required this.dataElement,
  });
}


