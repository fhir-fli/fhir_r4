import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class PaymentReconciliation extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final Period? period;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? paymentIssuer;
  final Reference? request;
  final Reference? requestor;
  final FhirCode? outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final FhirDate? paymentDate;
  final Element? paymentDateElement;
  final Money paymentAmount;
  final Identifier? paymentIdentifier;
  final List<PaymentReconciliationDetail>? detail;
  final CodeableConcept? formCode;
  final List<PaymentReconciliationProcessNote>? processNote;

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
    this.status,
    this.statusElement,
    this.period,
    this.created,
    this.createdElement,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.paymentDate,
    this.paymentDateElement,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  }): super(resourceType: R4ResourceType.PaymentReconciliation);

@override
PaymentReconciliation clone() => this;

}


@Data()
@JsonCodable()
class PaymentReconciliationDetail {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

  PaymentReconciliationDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class PaymentReconciliationProcessNote {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? text;
  final Element? textElement;

  PaymentReconciliationProcessNote({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
  });

}


