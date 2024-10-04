import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GraphDefinitionCompartment {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode use;
  final PrimitiveElement Use;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirCode rule;
  final PrimitiveElement Rule;
  final String expression;
  final PrimitiveElement Expression;
  final String description;
  final PrimitiveElement Description;
  const GraphDefinitionCompartment({
    this.id,
    this.extension,
    this.modifierExtension,
    this.use,
    this.Use,
    this.code,
    this.Code,
    this.rule,
    this.Rule,
    this.expression,
    this.Expression,
    this.description,
    this.Description,
  });
}
