import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureDefinitionDifferential {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ElementDefinition> element;
  const StructureDefinitionDifferential({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.element,
  });
}
