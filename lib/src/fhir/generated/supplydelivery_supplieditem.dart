import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SupplyDeliverySuppliedItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity quantity;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  const SupplyDeliverySuppliedItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference,
  });
}
