import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirExpression {
  final FhirString? description;
  final Element? descriptionElement;
  final FhirId? name;
  final Element? nameElement;
  final dynamic? language;
  final Element? languageElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirUri? reference;
  final Element? referenceElement;

  FhirExpression({
    super.id,
    super.extension_,
    this.description,
    this.descriptionElement,
    this.name,
    this.nameElement,
    this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
    this.reference,
    this.referenceElement,
  });

}



