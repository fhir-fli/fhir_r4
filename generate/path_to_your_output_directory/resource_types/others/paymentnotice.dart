/// /// [PaymentNotice] This resource provides the status of the payment for
/// goods and services rendered, and the request and response resource
/// references.

@freezed
class PaymentNotice with _$PaymentNotice {
  const PaymentNotice._();

  const factory PaymentNotice({
/// /// [resourceType] This is a PaymentNotice resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] A unique identifier assigned to this payment notice.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [request] Reference of resource for which payment is being made.

    @JsonKey(name: 'request') Reference? request,
/// /// [response] Reference of response to resource for which payment is being
/// made.

    @JsonKey(name: 'response') Reference? response,
/// /// [created] The date when this resource was created.

    @JsonKey(name: 'created') FhirDateTime? created,
/// /// [_created] Extensions for created

    @JsonKey(name: '_created') FhirElement? createdElement,
/// /// [reporter] The party who reports the payment notice.

    @JsonKey(name: 'reporter') Reference? reporter,
/// /// [payment] A reference to the payment which is the subject of this
/// notice.

    @JsonKey(name: 'payment') Reference? payment,
/// /// [paymentDate] The date when the above payment action occurred.

    @JsonKey(name: 'paymentDate') FhirDate? paymentDate,
/// /// [_paymentDate] Extensions for paymentDate

    @JsonKey(name: '_paymentDate') FhirElement? paymentDateElement,
/// /// [payee] The party who will receive or has received payment that is the
/// subject of this notification.

    @JsonKey(name: 'payee') Reference? payee,
/// /// [recipient] The party who is notified of the payment status.

    @JsonKey(name: 'recipient') Reference? recipient,
/// /// [amount] The amount sent to the payee.

    @JsonKey(name: 'amount') Money? amount,
/// /// [paymentStatus] A code indicating whether payment has been sent or
/// cleared.

    @JsonKey(name: 'paymentStatus') CodeableConcept? paymentStatus,
  }) = _$PaymentNotice;

  @override
  String get fhirType => 'PaymentNotice';

  factory PaymentNotice.fromJson(Map<String, dynamic> json) =>
      _$PaymentNoticeFromJson(json);

  factory PaymentNotice.fromYaml(dynamic yaml) => yaml is String
      ? PaymentNotice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PaymentNotice.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PaymentNotice cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PaymentNotice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PaymentNoticeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
