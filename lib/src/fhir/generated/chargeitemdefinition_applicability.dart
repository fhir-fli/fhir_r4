import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ChargeItemDefinitionApplicability {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final String language;
  final PrimitiveElement Language;
  final String expression;
  final PrimitiveElement Expression;
  const ChargeItemDefinitionApplicability({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.language,
    this.Language,
    this.expression,
    this.Expression,
  });
}
