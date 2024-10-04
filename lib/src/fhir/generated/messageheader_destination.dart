import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageHeaderDestination {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final Reference target;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
  final Reference receiver;
  const MessageHeaderDestination({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.target,
    this.endpoint,
    this.Endpoint,
    this.receiver,
  });
}
