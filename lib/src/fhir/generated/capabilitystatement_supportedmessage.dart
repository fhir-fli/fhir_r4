import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementSupportedMessage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirCanonical definition;
  const CapabilityStatementSupportedMessage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    required this.definition,
  });
}
