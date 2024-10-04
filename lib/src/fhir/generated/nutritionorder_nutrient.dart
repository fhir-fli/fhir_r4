import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionOrderNutrient {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept modifier;
  final Quantity amount;
  const NutritionOrderNutrient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.amount,
  });
}
