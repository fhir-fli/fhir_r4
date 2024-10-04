import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionOrderTexture {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept modifier;
  final CodeableConcept foodType;
  const NutritionOrderTexture({
    this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.foodType,
  });
}
