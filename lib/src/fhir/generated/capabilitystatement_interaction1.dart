import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementInteraction1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  const CapabilityStatementInteraction1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.documentation,
    this.Documentation,
  });
}
