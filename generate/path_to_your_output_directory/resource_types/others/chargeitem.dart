/// /// [ChargeItem] The resource ChargeItem describes the provision of
/// healthcare provider products for a certain patient, therefore referring not
/// only to the product, but containing in addition details of the provision,
/// like date, time, amounts and participating organizations and persons. Main
/// Usage of the ChargeItem is to enable the billing process and internal cost
/// allocation.

@freezed
class ChargeItem with _$ChargeItem {
  const ChargeItem._();

  const factory ChargeItem({
/// /// [resourceType] This is a ChargeItem resource

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
/// /// [identifier] Identifiers assigned to this event performer or other
/// systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [definitionUri] References the (external) source of pricing
/// information, rules of application for the code this ChargeItem uses.

    @JsonKey(name: 'definitionUri') List<List<FhirUri>>? definitionUri,
/// /// [_definitionUri] Extensions for definitionUri

    @JsonKey(name: '_definitionUri') List<FhirElement>? definitionUriElement,
/// /// [definitionCanonical] References the source of pricing information,
/// rules of application for the code this ChargeItem uses.

    @JsonKey(name: 'definitionCanonical') List<List<FhirCanonical>>? definitionCanonical,
/// /// [status] The current state of the ChargeItem.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [partOf] ChargeItems can be grouped to larger ChargeItems covering the
/// whole set.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// /// [code] A code that identifies the charge, like a billing code.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] The individual or set of individuals the action is being or
/// was performed on.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] This ChargeItem has the details of how the associated
/// Encounter should be billed or otherwise be handled by finance systems.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [occurrenceDateTime] Date/time(s) or duration when the charged service
/// was applied.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// /// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') FhirElement? occurrenceDateTimeElement,
/// /// [occurrencePeriod] Date/time(s) or duration when the charged service
/// was applied.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// /// [occurrenceTiming] Date/time(s) or duration when the charged service
/// was applied.

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// /// [performer] Indicates who or what performed or participated in the
/// charged service.

    @JsonKey(name: 'performer') List<List<ChargeItem_Performer>>? performer,
/// /// [performingOrganization] The organization performing the service.

    @JsonKey(name: 'performingOrganization') Reference? performingOrganization,
/// /// [requestingOrganization] The organization requesting the service.

    @JsonKey(name: 'requestingOrganization') Reference? requestingOrganization,
/// /// [costCenter] The financial cost center permits the tracking of charge
/// attribution.

    @JsonKey(name: 'costCenter') Reference? costCenter,
/// /// [quantity] Quantity of which the charge item has been serviced.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [bodysite] The anatomical location where the related service has been
/// applied.

    @JsonKey(name: 'bodysite') List<List<CodeableConcept>>? bodysite,
/// /// [unitPriceComponent] The unit price of the chargable item.

    @JsonKey(name: 'unitPriceComponent') MonetaryComponent? unitPriceComponent,
/// /// [totalPriceComponent] The total price for the chargable item,
/// accounting for the quantity.

    @JsonKey(name: 'totalPriceComponent') MonetaryComponent? totalPriceComponent,
/// /// [overrideReason] If the list price or the rule-based factor associated
/// with the code is overridden, this attribute can capture a text to indicate
/// the  reason for this action.

    @JsonKey(name: 'overrideReason') CodeableConcept? overrideReason,
/// /// [enterer] The device, practitioner, etc. who entered the charge item.

    @JsonKey(name: 'enterer') Reference? enterer,
/// /// [enteredDate] Date the charge item was entered.

    @JsonKey(name: 'enteredDate') FhirDateTime? enteredDate,
/// /// [_enteredDate] Extensions for enteredDate

    @JsonKey(name: '_enteredDate') FhirElement? enteredDateElement,
/// /// [reason] Describes why the event occurred in coded or textual form.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// /// [service] Indicated the rendered service that caused this charge.

    @JsonKey(name: 'service') List<List<CodeableReference>>? service,
/// /// [product] Identifies the device, food, drug or other product being
/// charged either by type code or reference to an instance.

    @JsonKey(name: 'product') List<List<CodeableReference>>? product,
/// /// [account] Account into which this ChargeItems belongs.

    @JsonKey(name: 'account') List<List<Reference>>? account,
/// /// [note] Comments made about the event by the performer, subject or other
/// participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [supportingInformation] Further information supporting this charge.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
  }) = _$ChargeItem;

  @override
  String get fhirType => 'ChargeItem';

  factory ChargeItem.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemFromJson(json);

  factory ChargeItem.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ChargeItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ChargeItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ChargeItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ChargeItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
