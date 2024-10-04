import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionBinding {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final dynamic strength;
  final PrimitiveElement Strength;
  final String description;
  final PrimitiveElement Description;
  final FhirCanonical valueSet;
  const ElementDefinitionBinding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.Strength,
    this.description,
    this.Description,
    this.valueSet,
  });
}
