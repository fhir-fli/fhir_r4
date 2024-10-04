import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementMessaging {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CapabilityStatementEndpoint> endpoint;
  final FhirUnsignedInt reliableCache;
  final PrimitiveElement ReliableCache;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final List<CapabilityStatementSupportedMessage> supportedMessage;
  const CapabilityStatementMessaging({
    this.id,
    this.extension,
    this.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.ReliableCache,
    this.documentation,
    this.Documentation,
    this.supportedMessage,
  });
}
