import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceProperty {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<Quantity> valueQuantity;
  final List<CodeableConcept> valueCode;
  const DeviceProperty({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });
}
