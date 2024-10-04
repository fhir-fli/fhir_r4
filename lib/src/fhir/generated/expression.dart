import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FhirExpression {
  final String id;
  final List<FhirExtension> extension;
  final String description;
  final PrimitiveElement Description;
  final FhirId name;
  final PrimitiveElement Name;
  final dynamic language;
  final PrimitiveElement Language;
  final String expression;
  final PrimitiveElement Expression;
  final FhirUri reference;
  final PrimitiveElement Reference;
}


