import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementEndpoint {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Coding protocol;
  final FhirUrl address;
  final PrimitiveElement Address;
  const CapabilityStatementEndpoint({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.protocol,
    this.address,
    this.Address,
  });
}
