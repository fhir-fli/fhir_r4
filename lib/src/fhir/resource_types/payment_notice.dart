import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class PaymentNotice extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final Reference? request;
  final Reference? response;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference? provider;
  final Reference payment;
  final FhirDate? paymentDate;
  final Element? paymentDateElement;
  final Reference? payee;
  final Reference recipient;
  final Money amount;
  final CodeableConcept? paymentStatus;

  PaymentNotice({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.request,
    this.response,
    required this.created,
    this.createdElement,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.paymentDateElement,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
  }) : super(resourceType: R4ResourceType.PaymentNotice);

  @override
  PaymentNotice clone() => throw UnimplementedError();
}
