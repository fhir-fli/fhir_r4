import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Invoice extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final FhirString? cancelledReason;
  final Element? cancelledReasonElement;
  final CodeableConcept? type;
  final Reference? subject;
  final Reference? recipient;
  final FhirDateTime? date;
  final Element? dateElement;
  final List<InvoiceParticipant>? participant;
  final Reference? issuer;
  final Reference? account;
  final List<InvoiceLineItem>? lineItem;
  final List<InvoicePriceComponent>? totalPriceComponent;
  final Money? totalNet;
  final Money? totalGross;
  final FhirMarkdown? paymentTerms;
  final Element? paymentTermsElement;
  final List<Annotation>? note;

  Invoice({
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
    this.cancelledReason,
    this.cancelledReasonElement,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.dateElement,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.paymentTermsElement,
    this.note,
  }) : super(resourceType: R4ResourceType.Invoice);

  @override
  Invoice clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InvoiceParticipant extends BackboneElement {
  final CodeableConcept? role;
  final Reference actor;

  InvoiceParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
  });

  @override
  InvoiceParticipant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InvoiceLineItem extends BackboneElement {
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final Reference chargeItemReference;
  final CodeableConcept chargeItemCodeableConcept;
  final List<InvoicePriceComponent>? priceComponent;

  InvoiceLineItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.sequenceElement,
    required this.chargeItemReference,
    required this.chargeItemCodeableConcept,
    this.priceComponent,
  });

  @override
  InvoiceLineItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InvoicePriceComponent extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final CodeableConcept? code;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? amount;

  InvoicePriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.code,
    this.factor,
    this.factorElement,
    this.amount,
  });

  @override
  InvoicePriceComponent clone() => throw UnimplementedError();
}
