import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BiologicallyDerivedProductStorage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final FhirDecimal temperature;
  final PrimitiveElement Temperature;
  final FhirCode scale;
  final PrimitiveElement Scale;
  final Period duration;
  const BiologicallyDerivedProductStorage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.temperature,
    this.Temperature,
    this.scale,
    this.Scale,
    this.duration,
  });
}
