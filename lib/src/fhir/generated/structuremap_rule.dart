import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapRule {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final List<StructureMapSource> source;
  final List<StructureMapTarget> target;
  final List<StructureMapRule> rule;
  final List<StructureMapDependent> dependent;
  final String documentation;
  final PrimitiveElement Documentation;
  const StructureMapRule({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.Documentation,
  });
}
