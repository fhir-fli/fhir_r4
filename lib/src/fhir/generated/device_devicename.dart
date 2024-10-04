import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceDeviceName {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCode type;
  final PrimitiveElement Type;
  const DeviceDeviceName({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.type,
    this.Type,
  });
}
