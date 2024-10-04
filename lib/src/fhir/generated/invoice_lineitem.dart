import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InvoiceLineItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference chargeItemReference;
  final CodeableConcept chargeItemCodeableConcept;
  final List<InvoicePriceComponent> priceComponent;
  const InvoiceLineItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.chargeItemReference,
    this.chargeItemCodeableConcept,
    this.priceComponent,
  });
}
