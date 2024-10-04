import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceSpecialization {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept systemType;
  final String version;
  final PrimitiveElement Version;
  const DeviceSpecialization({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.systemType,
    this.version,
    this.Version,
  });
}
