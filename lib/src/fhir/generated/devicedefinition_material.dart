import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceDefinitionMaterial {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept substance;
  final FhirBoolean alternate;
  final PrimitiveElement Alternate;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement AllergenicIndicator;
  const DeviceDefinitionMaterial({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.substance,
    this.alternate,
    this.Alternate,
    this.allergenicIndicator,
    this.AllergenicIndicator,
  });
}
