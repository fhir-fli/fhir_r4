import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirExpression extends DataType {
  final FhirString? description;
  final Element? descriptionElement;
  final FhirId? name;
  final Element? nameElement;
  final FhirCode language;
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
    required this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
    this.reference,
    this.referenceElement,
  });

  @override
  FhirExpression clone() => throw UnimplementedError();
}
