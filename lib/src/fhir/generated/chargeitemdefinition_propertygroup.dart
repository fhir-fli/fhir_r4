import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ChargeItemDefinitionPropertyGroup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPriceComponent> priceComponent;
  const ChargeItemDefinitionPropertyGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.applicability,
    this.priceComponent,
  });
}
