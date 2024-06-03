import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PaymentReconciliation] This resource provides the details including
/// amount of a payment and allocates the payment items being paid.

@freezed
class PaymentReconciliation with _$PaymentReconciliation {
  const PaymentReconciliation._();

  const factory PaymentReconciliation({
/// [resourceType] This is a PaymentReconciliation resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] A unique identifier assigned to this payment
/// reconciliation.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [type] Code to indicate the nature of the payment such as payment,
/// adjustment.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [kind] The workflow or activity which gave rise to or during which the
/// payment ocurred such as a kiosk, deposit on account, periodic payment etc.

    @JsonKey(name: 'kind') CodeableConcept? kind,
/// [period] The period of time for which payments have been gathered into
/// this bulk payment for settlement.

    @JsonKey(name: 'period') Period? period,
/// [created] The date when the resource was created.

    @JsonKey(name: 'created') FhirDateTime? created,
/// [_created] Extensions for created

    @JsonKey(name: '_created') PrimitiveElement? createdElement,
/// [enterer] Payment enterer if not the actual payment issuer.

    @JsonKey(name: 'enterer') Reference? enterer,
/// [issuerType] The type of the source such as patient or insurance.

    @JsonKey(name: 'issuerType') CodeableConcept? issuerType,
/// [paymentIssuer] The party who generated the payment.

    @JsonKey(name: 'paymentIssuer') Reference? paymentIssuer,
/// [request] Original request resource reference.

    @JsonKey(name: 'request') Reference? request,
/// [requestor] The practitioner who is responsible for the services
/// rendered to the patient.

    @JsonKey(name: 'requestor') Reference? requestor,
/// [outcome] The outcome of a request for a reconciliation.

    @JsonKey(name: 'outcome') FhirCode? outcome,
/// [_outcome] Extensions for outcome

    @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,
/// [disposition] A human readable description of the status of the request
/// for the reconciliation.

    @JsonKey(name: 'disposition') String? disposition,
/// [_disposition] Extensions for disposition

    @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,
/// [date] The date of payment as indicated on the financial instrument.

    @JsonKey(name: 'date') FhirDate? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [location] The location of the site or device for electronic transfers
/// or physical location for cash payments.

    @JsonKey(name: 'location') Reference? location,
/// [method] The means of payment such as check, card cash, or electronic
/// funds transfer.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [cardBrand] The card brand such as debit, Visa, Amex etc. used if a
/// card is the method of payment.

    @JsonKey(name: 'cardBrand') String? cardBrand,
/// [_cardBrand] Extensions for cardBrand

    @JsonKey(name: '_cardBrand') PrimitiveElement? cardBrandElement,
/// [accountNumber] A portion of the account number, often the last 4
/// digits, used for verification not charging purposes.

    @JsonKey(name: 'accountNumber') String? accountNumber,
/// [_accountNumber] Extensions for accountNumber

    @JsonKey(name: '_accountNumber') PrimitiveElement? accountNumberElement,
/// [expirationDate] The year and month (YYYY-MM) when the instrument,
/// typically card, expires.

    @JsonKey(name: 'expirationDate') FhirDate? expirationDate,
/// [_expirationDate] Extensions for expirationDate

    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
/// [processor] The name of the card processor, etf processor, bank for
/// checks.

    @JsonKey(name: 'processor') String? processor,
/// [_processor] Extensions for processor

    @JsonKey(name: '_processor') PrimitiveElement? processorElement,
/// [referenceNumber] The check number, eft reference, car processor
/// reference.

    @JsonKey(name: 'referenceNumber') String? referenceNumber,
/// [_referenceNumber] Extensions for referenceNumber

    @JsonKey(name: '_referenceNumber') PrimitiveElement? referenceNumberElement,
/// [authorization] An alphanumeric issued by the processor to confirm the
/// successful issuance of payment.

    @JsonKey(name: 'authorization') String? authorization,
/// [_authorization] Extensions for authorization

    @JsonKey(name: '_authorization') PrimitiveElement? authorizationElement,
/// [tenderedAmount] The amount offered by the issuer, typically applies to
/// cash when the issuer provides an amount in bank note denominations equal to
/// or excess of the amount actually being paid.

    @JsonKey(name: 'tenderedAmount') Money? tenderedAmount,
/// [returnedAmount] The amount returned by the receiver which is excess to
/// the amount payable, often referred to as 'change'.

    @JsonKey(name: 'returnedAmount') Money? returnedAmount,
/// [amount] Total payment amount as indicated on the financial instrument.

    @JsonKey(name: 'amount') Money? amount,
/// [paymentIdentifier] Issuer's unique identifier for the payment
/// instrument.

    @JsonKey(name: 'paymentIdentifier') Identifier? paymentIdentifier,
/// [allocation] Distribution of the payment amount for a previously
/// acknowledged payable.

    @JsonKey(name: 'allocation') List<List<PaymentReconciliation_Allocation>>? allocation,
/// [formCode] A code for the form to be used for printing the content.

    @JsonKey(name: 'formCode') CodeableConcept? formCode,
/// [processNote] A note that describes or explains the processing in a
/// human readable form.

    @JsonKey(name: 'processNote') List<List<PaymentReconciliation_ProcessNote>>? processNote,
  }) = _$PaymentReconciliation;

  @override
  String get fhirType => 'PaymentReconciliation';

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) =>
      _$PaymentReconciliationFromJson(json);

  factory PaymentReconciliation.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PaymentReconciliation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PaymentReconciliation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PaymentReconciliation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PaymentReconciliationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
