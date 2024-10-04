import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapGroup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final FhirId extends;
  final PrimitiveElement Extends;
  final FhirCode typeMode;
  final PrimitiveElement TypeMode;
  final String documentation;
  final PrimitiveElement Documentation;
  final List<StructureMapInput> input;
  final List<StructureMapRule> rule;
  const StructureMapGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.extends,
    this.Extends,
    this.typeMode,
    this.TypeMode,
    this.documentation,
    this.Documentation,
    required this.input,
    required this.rule,
  });
}
