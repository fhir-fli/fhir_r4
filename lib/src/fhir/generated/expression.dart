import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FhirExpression {
  final String id;
  final List<FhirExtension> extension_;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirId name;
  final PrimitiveElement nameElement;
  final dynamic language;
  final PrimitiveElement languageElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final FhirUri reference;
  final PrimitiveElement referenceElement;
  const FhirExpression({
    required this.id,
    required this.extension_,
    required this.description,
    required this.descriptionElement,
    required this.name,
    required this.nameElement,
    required this.language,
    required this.languageElement,
    required this.expression,
    required this.expressionElement,
    required this.reference,
    required this.referenceElement,
  });
}


