import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class PaymentReconciliation extends DomainResource {
  PaymentReconciliation({
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
    this.period,
    required this.created,
    this.createdElement,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    required this.paymentDate,
    this.paymentDateElement,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  }) : super(resourceType: R4ResourceType.PaymentReconciliation);

  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final Period? period;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference? paymentIssuer;
  final Reference? request;
  final Reference? requestor;
  final FhirCode? outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final FhirDate paymentDate;
  final Element? paymentDateElement;
  final Money paymentAmount;
  final Identifier? paymentIdentifier;
  final List<PaymentReconciliationDetail>? detail;
  final CodeableConcept? formCode;
  final List<PaymentReconciliationProcessNote>? processNote;
  @override
  PaymentReconciliation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class PaymentReconciliationDetail extends BackboneElement {
  PaymentReconciliationDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.dateElement,
    this.responsible,
    this.payee,
    this.amount,
  });

  final Identifier? identifier;
  final Identifier? predecessor;
  final CodeableConcept type;
  final Reference? request;
  final Reference? submitter;
  final Reference? response;
  final FhirDate? date;
  final Element? dateElement;
  final Reference? responsible;
  final Reference? payee;
  final Money? amount;
  @override
  PaymentReconciliationDetail clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class PaymentReconciliationProcessNote extends BackboneElement {
  PaymentReconciliationProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
  });

  final FhirCode? type;
  final Element? typeElement;
  final FhirString? text;
  final Element? textElement;
  @override
  PaymentReconciliationProcessNote clone() => throw UnimplementedError();
}
