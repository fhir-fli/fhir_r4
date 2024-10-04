import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceDefinitionUdiDeviceIdentifier {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement DeviceIdentifier;
  final FhirUri issuer;
  final PrimitiveElement Issuer;
  final FhirUri jurisdiction;
  final PrimitiveElement Jurisdiction;
  const DeviceDefinitionUdiDeviceIdentifier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.DeviceIdentifier,
    this.issuer,
    this.Issuer,
    this.jurisdiction,
    this.Jurisdiction,
  });
}
