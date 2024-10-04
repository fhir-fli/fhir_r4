import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageHeaderSource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String software;
  final PrimitiveElement Software;
  final String version;
  final PrimitiveElement Version;
  final ContactPoint contact;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
  const MessageHeaderSource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.software,
    this.Software,
    this.version,
    this.Version,
    this.contact,
    this.endpoint,
    this.Endpoint,
  });
}
