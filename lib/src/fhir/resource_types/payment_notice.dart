import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [PaymentNotice] /// This resource provides the status of the payment for goods and services
/// rendered, and the request and response resource references.
class PaymentNotice extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this payment notice.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [request] /// Reference of resource for which payment is being made.
  final Reference? request;

  /// [response] /// Reference of response to resource for which payment is being made.
  final Reference? response;

  /// [created] /// The date when this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [payment] /// A reference to the payment which is the subject of this notice.
  final Reference payment;

  /// [paymentDate] /// The date when the above payment action occurred.
  final FhirDate? paymentDate;
  final Element? paymentDateElement;

  /// [payee] /// The party who will receive or has received payment that is the subject of
  /// this notification.
  final Reference? payee;

  /// [recipient] /// The party who is notified of the payment status.
  final Reference recipient;

  /// [amount] /// The amount sent to the payee.
  final Money amount;

  /// [paymentStatus] /// A code indicating whether payment has been sent or cleared.
  final CodeableConcept? paymentStatus;
  @override
  PaymentNotice clone() => throw UnimplementedError();
  PaymentNotice copy({
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
    Reference? request,
    Reference? response,
    FhirDateTime? created,
    Element? createdElement,
    Reference? provider,
    Reference? payment,
    FhirDate? paymentDate,
    Element? paymentDateElement,
    Reference? payee,
    Reference? recipient,
    Money? amount,
    CodeableConcept? paymentStatus,
  }) {
    return PaymentNotice(
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
      request: request ?? this.request,
      response: response ?? this.response,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      provider: provider ?? this.provider,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentDateElement: paymentDateElement ?? this.paymentDateElement,
      payee: payee ?? this.payee,
      recipient: recipient ?? this.recipient,
      amount: amount ?? this.amount,
      paymentStatus: paymentStatus ?? this.paymentStatus,
    );
  }
}
