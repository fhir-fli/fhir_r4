import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [PaymentReconciliation] /// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this payment reconciliation.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [period] /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  final Period? period;

  /// [created] /// The date when the resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [paymentIssuer] /// The party who generated the payment.
  final Reference? paymentIssuer;

  /// [request] /// Original request resource reference.
  final Reference? request;

  /// [requestor] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? requestor;

  /// [outcome] /// The outcome of a request for a reconciliation.
  final FhirCode? outcome;
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the request for the
  /// reconciliation.
  final FhirString? disposition;
  final Element? dispositionElement;

  /// [paymentDate] /// The date of payment as indicated on the financial instrument.
  final FhirDate paymentDate;
  final Element? paymentDateElement;

  /// [paymentAmount] /// Total payment amount as indicated on the financial instrument.
  final Money paymentAmount;

  /// [paymentIdentifier] /// Issuer's unique identifier for the payment instrument.
  final Identifier? paymentIdentifier;

  /// [detail] /// Distribution of the payment amount for a previously acknowledged payable.
  final List<PaymentReconciliationDetail>? detail;

  /// [formCode] /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [processNote] /// A note that describes or explains the processing in a human readable form.
  final List<PaymentReconciliationProcessNote>? processNote;
  @override
  PaymentReconciliation clone() => throw UnimplementedError();
  PaymentReconciliation copy({
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
    Period? period,
    FhirDateTime? created,
    Element? createdElement,
    Reference? paymentIssuer,
    Reference? request,
    Reference? requestor,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirDate? paymentDate,
    Element? paymentDateElement,
    Money? paymentAmount,
    Identifier? paymentIdentifier,
    List<PaymentReconciliationDetail>? detail,
    CodeableConcept? formCode,
    List<PaymentReconciliationProcessNote>? processNote,
  }) {
    return PaymentReconciliation(
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
      period: period ?? this.period,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentDateElement: paymentDateElement ?? this.paymentDateElement,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      paymentIdentifier: paymentIdentifier ?? this.paymentIdentifier,
      detail: detail ?? this.detail,
      formCode: formCode ?? this.formCode,
      processNote: processNote ?? this.processNote,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PaymentReconciliationDetail] /// Distribution of the payment amount for a previously acknowledged payable.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for the current payment item for the referenced payable.
  final Identifier? identifier;

  /// [predecessor] /// Unique identifier for the prior payment item for the referenced payable.
  final Identifier? predecessor;

  /// [type] /// Code to indicate the nature of the payment.
  final CodeableConcept type;

  /// [request] /// A resource, such as a Claim, the evaluation of which could lead to payment.
  final Reference? request;

  /// [submitter] /// The party which submitted the claim or financial transaction.
  final Reference? submitter;

  /// [response] /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  final Reference? response;

  /// [date] /// The date from the response resource containing a commitment to pay.
  final FhirDate? date;
  final Element? dateElement;

  /// [responsible] /// A reference to the individual who is responsible for inquiries regarding
  /// the response and its payment.
  final Reference? responsible;

  /// [payee] /// The party which is receiving the payment.
  final Reference? payee;

  /// [amount] /// The monetary amount allocated from the total payment to the payable.
  final Money? amount;
  @override
  PaymentReconciliationDetail clone() => throw UnimplementedError();
  PaymentReconciliationDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Identifier? predecessor,
    CodeableConcept? type,
    Reference? request,
    Reference? submitter,
    Reference? response,
    FhirDate? date,
    Element? dateElement,
    Reference? responsible,
    Reference? payee,
    Money? amount,
  }) {
    return PaymentReconciliationDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      predecessor: predecessor ?? this.predecessor,
      type: type ?? this.type,
      request: request ?? this.request,
      submitter: submitter ?? this.submitter,
      response: response ?? this.response,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      responsible: responsible ?? this.responsible,
      payee: payee ?? this.payee,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PaymentReconciliationProcessNote] /// A note that describes or explains the processing in a human readable form.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The business purpose of the note text.
  final FhirCode? type;
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  final FhirString? text;
  final Element? textElement;
  @override
  PaymentReconciliationProcessNote clone() => throw UnimplementedError();
  PaymentReconciliationProcessNote copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
  }) {
    return PaymentReconciliationProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}
