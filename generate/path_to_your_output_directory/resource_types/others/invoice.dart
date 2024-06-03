import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Invoice] Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.

@freezed
class Invoice with _$Invoice {
  const Invoice._();

  const factory Invoice({
/// [resourceType] This is a Invoice resource

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
/// [identifier] Identifier of this Invoice, often used for reference in
/// correspondence about this invoice or for tracking of payments.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The current state of the Invoice.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [cancelledReason] In case of Invoice cancellation a reason must be
/// given (entered in error, superseded by corrected invoice etc.).

    @JsonKey(name: 'cancelledReason') String? cancelledReason,
/// [_cancelledReason] Extensions for cancelledReason

    @JsonKey(name: '_cancelledReason') PrimitiveElement? cancelledReasonElement,
/// [type] Type of Invoice depending on domain, realm an usage (e.g.
/// internal/external, dental, preliminary).

    @JsonKey(name: 'type') CodeableConcept? type,
/// [subject] The individual or set of individuals receiving the goods and
/// services billed in this invoice.

    @JsonKey(name: 'subject') Reference? subject,
/// [recipient] The individual or Organization responsible for balancing of
/// this invoice.

    @JsonKey(name: 'recipient') Reference? recipient,
/// [date] Depricared by the element below.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [creation] Date/time(s) of when this Invoice was posted.

    @JsonKey(name: 'creation') FhirDateTime? creation,
/// [_creation] Extensions for creation

    @JsonKey(name: '_creation') PrimitiveElement? creationElement,
/// [periodDate] Date/time(s) range of services included in this invoice.

    @JsonKey(name: 'periodDate') FhirDate? periodDate,
/// [_periodDate] Extensions for periodDate

    @JsonKey(name: '_periodDate') PrimitiveElement? periodDateElement,
/// [periodPeriod] Date/time(s) range of services included in this invoice.

    @JsonKey(name: 'periodPeriod') Period? periodPeriod,
/// [participant] Indicates who or what performed or participated in the
/// charged service.

    @JsonKey(name: 'participant') List<List<Invoice_Participant>>? participant,
/// [issuer] The organizationissuing the Invoice.

    @JsonKey(name: 'issuer') Reference? issuer,
/// [account] Account which is supposed to be balanced with this Invoice.

    @JsonKey(name: 'account') Reference? account,
/// [lineItem] Each line item represents one charge for goods and services
/// rendered. Details such.ofType(date), code and amount are found in the
/// referenced ChargeItem resource.

    @JsonKey(name: 'lineItem') List<List<Invoice_LineItem>>? lineItem,
/// [totalPriceComponent] The total amount for the Invoice may be
/// calculated as the sum of the line items with surcharges/deductions that
/// apply in certain conditions.  The priceComponent element can be used to
/// offer transparency to the recipient of the Invoice of how the total price
/// was calculated.

    @JsonKey(name: 'totalPriceComponent') List<List<MonetaryComponent>>? totalPriceComponent,
/// [totalNet] Invoice total , taxes excluded.

    @JsonKey(name: 'totalNet') Money? totalNet,
/// [totalGross] Invoice total, tax included.

    @JsonKey(name: 'totalGross') Money? totalGross,
/// [paymentTerms] Payment details such as banking details, period of
/// payment, deductibles, methods of payment.

    @JsonKey(name: 'paymentTerms') FhirMarkdown? paymentTerms,
/// [_paymentTerms] Extensions for paymentTerms

    @JsonKey(name: '_paymentTerms') PrimitiveElement? paymentTermsElement,
/// [note] Comments made about the invoice by the issuer, subject, or other
/// participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$Invoice;

  @override
  String get fhirType => 'Invoice';

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  factory Invoice.fromYaml(dynamic yaml) => yaml is String
      ? Invoice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Invoice.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Invoice cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Invoice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InvoiceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
