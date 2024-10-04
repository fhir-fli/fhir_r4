import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageHeaderResponse {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId identifier;
  final PrimitiveElement Identifier;
  final FhirCode code;
  final PrimitiveElement Code;
  final Reference details;
  const MessageHeaderResponse({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.Identifier,
    this.code,
    this.Code,
    this.details,
  });
}
