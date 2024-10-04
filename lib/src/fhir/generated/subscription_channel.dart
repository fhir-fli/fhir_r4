import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionChannel {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
  final FhirCode payload;
  final PrimitiveElement Payload;
  final List<String> header;
  final List<PrimitiveElement> Header;
  const SubscriptionChannel({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.endpoint,
    this.Endpoint,
    this.payload,
    this.Payload,
    this.header,
    this.Header,
  });
}
