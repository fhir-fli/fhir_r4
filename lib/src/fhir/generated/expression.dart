import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Expression {
  final String id;
  final List<Extension> extension;
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
  const Expression({
    this.id,
    this.extension,
    this.description,
    this.Description,
    this.name,
    this.Name,
    this.language,
    this.Language,
    this.expression,
    this.Expression,
    this.reference,
    this.Reference,
  });
}
