import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionSlicing {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ElementDefinitionDiscriminator> discriminator;
  final String description;
  final PrimitiveElement Description;
  final FhirBoolean ordered;
  final PrimitiveElement Ordered;
  final dynamic rules;
  final PrimitiveElement Rules;
  const ElementDefinitionSlicing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this.Description,
    this.ordered,
    this.Ordered,
    this.rules,
    this.Rules,
  });
}
