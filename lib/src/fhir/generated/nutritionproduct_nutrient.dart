import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionProductNutrient {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference item;
  final List<Ratio> amount;
  const NutritionProductNutrient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.item,
    this.amount,
  });
}
