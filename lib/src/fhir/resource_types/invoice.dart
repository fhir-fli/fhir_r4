import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Invoice] /// Invoice containing collected ChargeItems from an Account with calculated
/// individual and total price for Billing purpose.
class Invoice extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier of this Invoice, often used for reference in correspondence
  /// about this invoice or for tracking of payments.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the Invoice.
  final FhirCode status;
  final Element? statusElement;

  /// [cancelledReason] /// In case of Invoice cancellation a reason must be given (entered in error,
  /// superseded by corrected invoice etc.).
  final FhirString? cancelledReason;
  final Element? cancelledReasonElement;

  /// [type] /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  final CodeableConcept? type;

  /// [subject] /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  final Reference? subject;

  /// [recipient] /// The individual or Organization responsible for balancing of this invoice.
  final Reference? recipient;

  /// [date] /// Date/time(s) of when this Invoice was posted.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [participant] /// Indicates who or what performed or participated in the charged service.
  final List<InvoiceParticipant>? participant;

  /// [issuer] /// The organizationissuing the Invoice.
  final Reference? issuer;

  /// [account] /// Account which is supposed to be balanced with this Invoice.
  final Reference? account;

  /// [lineItem] /// Each line item represents one charge for goods and services rendered.
  /// Details such as date, code and amount are found in the referenced
  /// ChargeItem resource.
  final List<InvoiceLineItem>? lineItem;

  /// [totalPriceComponent] /// The total amount for the Invoice may be calculated as the sum of the line
  /// items with surcharges/deductions that apply in certain conditions. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice of how the total price was calculated.
  final List<InvoicePriceComponent>? totalPriceComponent;

  /// [totalNet] /// Invoice total , taxes excluded.
  final Money? totalNet;

  /// [totalGross] /// Invoice total, tax included.
  final Money? totalGross;

  /// [paymentTerms] /// Payment details such as banking details, period of payment, deductibles,
  /// methods of payment.
  final FhirMarkdown? paymentTerms;
  final Element? paymentTermsElement;

  /// [note] /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  final List<Annotation>? note;
  @override
  Invoice clone() => throw UnimplementedError();
  Invoice copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    FhirString? cancelledReason,
    Element? cancelledReasonElement,
    CodeableConcept? type,
    Reference? subject,
    Reference? recipient,
    FhirDateTime? date,
    Element? dateElement,
    List<InvoiceParticipant>? participant,
    Reference? issuer,
    Reference? account,
    List<InvoiceLineItem>? lineItem,
    List<InvoicePriceComponent>? totalPriceComponent,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    Element? paymentTermsElement,
    List<Annotation>? note,
  }) {
    return Invoice(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      cancelledReason: cancelledReason ?? this.cancelledReason,
      cancelledReasonElement:
          cancelledReasonElement ?? this.cancelledReasonElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      recipient: recipient ?? this.recipient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      participant: participant ?? this.participant,
      issuer: issuer ?? this.issuer,
      account: account ?? this.account,
      lineItem: lineItem ?? this.lineItem,
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      totalNet: totalNet ?? this.totalNet,
      totalGross: totalGross ?? this.totalGross,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      paymentTermsElement: paymentTermsElement ?? this.paymentTermsElement,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InvoiceParticipant] /// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement {
  InvoiceParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Describes the type of involvement (e.g. transcriptionist, creator etc.). If
  /// the invoice has been created automatically, the Participant may be a
  /// billing engine or another kind of device.
  final CodeableConcept? role;

  /// [actor] /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
  @override
  InvoiceParticipant clone() => throw UnimplementedError();
  InvoiceParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? actor,
  }) {
    return InvoiceParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      actor: actor ?? this.actor,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InvoiceLineItem] /// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItem extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// Sequence in which the items appear on the invoice.
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;

  /// [chargeItemReference] /// The ChargeItem contains information such as the billing code, date, amount
  /// etc. If no further details are required for the lineItem, inline billing
  /// codes can be added using the CodeableConcept data type instead of the
  /// Reference.
  final Reference chargeItemReference;

  /// [chargeItemCodeableConcept] /// The ChargeItem contains information such as the billing code, date, amount
  /// etc. If no further details are required for the lineItem, inline billing
  /// codes can be added using the CodeableConcept data type instead of the
  /// Reference.
  final CodeableConcept chargeItemCodeableConcept;

  /// [priceComponent] /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice as to how the prices have been calculated.
  final List<InvoicePriceComponent>? priceComponent;
  @override
  InvoiceLineItem clone() => throw UnimplementedError();
  InvoiceLineItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    Reference? chargeItemReference,
    CodeableConcept? chargeItemCodeableConcept,
    List<InvoicePriceComponent>? priceComponent,
  }) {
    return InvoiceLineItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      chargeItemReference: chargeItemReference ?? this.chargeItemReference,
      chargeItemCodeableConcept:
          chargeItemCodeableConcept ?? this.chargeItemCodeableConcept,
      priceComponent: priceComponent ?? this.priceComponent,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InvoicePriceComponent] /// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development. The
/// priceComponent element can be used to offer transparency to the recipient
/// of the Invoice as to how the prices have been calculated.
class InvoicePriceComponent extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// This code identifies the type of the component.
  final FhirCode type;
  final Element? typeElement;

  /// [code] /// A code that identifies the component. Codes may be used to differentiate
  /// between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor] /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [amount] /// The amount calculated for this component.
  final Money? amount;
  @override
  InvoicePriceComponent clone() => throw UnimplementedError();
  InvoicePriceComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    CodeableConcept? code,
    FhirDecimal? factor,
    Element? factorElement,
    Money? amount,
  }) {
    return InvoicePriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      amount: amount ?? this.amount,
    );
  }
}
