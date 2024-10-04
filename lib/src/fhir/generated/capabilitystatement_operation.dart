import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementOperation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical definition;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  const CapabilityStatementOperation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    required this.definition,
    this.documentation,
    this.Documentation,
  });
}
