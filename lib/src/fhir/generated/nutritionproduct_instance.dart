import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionProductInstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity quantity;
  final List<Identifier> identifier;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final FhirDateTime expiry;
  final PrimitiveElement Expiry;
  final FhirDateTime useBy;
  final PrimitiveElement UseBy;
  const NutritionProductInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.LotNumber,
    this.expiry,
    this.Expiry,
    this.useBy,
    this.UseBy,
  });
}
