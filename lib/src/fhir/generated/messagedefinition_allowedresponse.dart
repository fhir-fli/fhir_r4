import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageDefinitionAllowedResponse {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCanonical message;
  final FhirMarkdown situation;
  final PrimitiveElement Situation;
  const MessageDefinitionAllowedResponse({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.message,
    this.situation,
    this.Situation,
  });
}
