import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapDependent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final List<String> variable;
  final List<PrimitiveElement> Variable;
  const StructureMapDependent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.variable,
    this.Variable,
  });
}
