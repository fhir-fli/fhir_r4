import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEventNetwork {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String address;
  final PrimitiveElement Address;
  final FhirCode type;
  final PrimitiveElement Type;
  const AuditEventNetwork({
    this.id,
    this.extension,
    this.modifierExtension,
    this.address,
    this.Address,
    this.type,
    this.Type,
  });
}
