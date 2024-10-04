import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementDocument {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final FhirCanonical profile;
  const CapabilityStatementDocument({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    this.documentation,
    this.Documentation,
    required this.profile,
  });
}
