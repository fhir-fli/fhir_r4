import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PaymentNotice {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference request;
  final Reference response;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference provider;
  final Reference payment;
  final FhirDate paymentDate;
  final PrimitiveElement PaymentDate;
  final Reference payee;
  final Reference recipient;
  final Money amount;
  final CodeableConcept paymentStatus;
  const PaymentNotice({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    this.request,
    this.response,
    this.created,
    this.Created,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.PaymentDate,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
  });
}
