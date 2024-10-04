import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ChargeItemDefinitionPriceComponent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept code;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money amount;
  const ChargeItemDefinitionPriceComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.code,
    this.factor,
    this.Factor,
    this.amount,
  });
}
