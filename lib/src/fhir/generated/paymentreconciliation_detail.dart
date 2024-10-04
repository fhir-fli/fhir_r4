import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PaymentReconciliationDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final Identifier predecessor;
  final CodeableConcept type;
  final Reference request;
  final Reference submitter;
  final Reference response;
  final FhirDate date;
  final PrimitiveElement Date;
  final Reference responsible;
  final Reference payee;
  final Money amount;
  const PaymentReconciliationDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.predecessor,
    required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.Date,
    this.responsible,
    this.payee,
    this.amount,
  });
}
