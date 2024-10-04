import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceDefinitionSpecialization {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String systemType;
  final PrimitiveElement SystemType;
  final String version;
  final PrimitiveElement Version;
  const DeviceDefinitionSpecialization({
    this.id,
    this.extension,
    this.modifierExtension,
    this.systemType,
    this.SystemType,
    this.version,
    this.Version,
  });
}
