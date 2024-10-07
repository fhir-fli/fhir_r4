import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class FhirExpression extends DataType {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  FhirExpression clone() => throw UnimplementedError();
}
