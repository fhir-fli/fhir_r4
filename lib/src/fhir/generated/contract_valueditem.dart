import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractValuedItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept entityCodeableConcept;
  final Reference entityReference;
  final Identifier identifier;
  final FhirDateTime effectiveTime;
  final PrimitiveElement EffectiveTime;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final FhirDecimal points;
  final PrimitiveElement Points;
  final Money net;
  final String payment;
  final PrimitiveElement Payment;
  final FhirDateTime paymentDate;
  final PrimitiveElement PaymentDate;
  final Reference responsible;
  final Reference recipient;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
  const ContractValuedItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
    this.identifier,
    this.effectiveTime,
    this.EffectiveTime,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.Factor,
    this.points,
    this.Points,
    this.net,
    this.payment,
    this.Payment,
    this.paymentDate,
    this.PaymentDate,
    this.responsible,
    this.recipient,
    this.linkId,
    this.LinkId,
    this.securityLabelNumber,
    this.SecurityLabelNumber,
  });
}
