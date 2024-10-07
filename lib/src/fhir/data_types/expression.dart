import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [FhirExpression] /// A expression that is evaluated in a specified context and returns a value.
/// The context of use of the expression must specify the context in which the
/// expression is evaluated, and how the result of the expression is used.
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

  /// [description] /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;
  final Element? descriptionElement;

  /// [name] /// A short name assigned to the expression to allow for multiple reuse of the
  /// expression in the context where it is defined.
  final FhirId? name;
  final Element? nameElement;

  /// [language] /// The media type of the language for the expression.
  final FhirCode language;
  final Element? languageElement;

  /// [expression] /// An expression in the specified language that returns a value.
  final FhirString? expression;
  final Element? expressionElement;

  /// [reference] /// A URI that defines where the expression is found.
  final FhirUri? reference;
  final Element? referenceElement;
  @override
  FhirExpression clone() => throw UnimplementedError();
  FhirExpression copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? description,
    Element? descriptionElement,
    FhirId? name,
    Element? nameElement,
    FhirCode? language,
    Element? languageElement,
    FhirString? expression,
    Element? expressionElement,
    FhirUri? reference,
    Element? referenceElement,
  }) {
    return FhirExpression(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
    );
  }
}
