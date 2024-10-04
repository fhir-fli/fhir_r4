import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapInput {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final String type;
  final PrimitiveElement Type;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String documentation;
  final PrimitiveElement Documentation;
  const StructureMapInput({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.type,
    this.Type,
    this.mode,
    this.Mode,
    this.documentation,
    this.Documentation,
  });
}
