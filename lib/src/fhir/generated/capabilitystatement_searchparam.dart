import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementSearchParam {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical definition;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  const CapabilityStatementSearchParam({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.definition,
    this.type,
    this.Type,
    this.documentation,
    this.Documentation,
  });
}
