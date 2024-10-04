import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapStructure {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCanonical url;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String alias;
  final PrimitiveElement Alias;
  final String documentation;
  final PrimitiveElement Documentation;
  const StructureMapStructure({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.url,
    this.mode,
    this.Mode,
    this.alias,
    this.Alias,
    this.documentation,
    this.Documentation,
  });
}
