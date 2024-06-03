/// /// [Contract_ValuedItem] Legally enforceable, formally recorded unilateral
/// or bilateral directive i.e., a policy or agreement.

@freezed
class Contract_ValuedItem with _$Contract_ValuedItem {
  const Contract_ValuedItem._();

  const factory Contract_ValuedItem({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [entityCodeableConcept] Specific type of Contract Valued Item that may
/// be priced.

    @JsonKey(name: 'entityCodeableConcept') CodeableConcept? entityCodeableConcept,
/// /// [entityReference] Specific type of Contract Valued Item that may be
/// priced.

    @JsonKey(name: 'entityReference') Reference? entityReference,
/// /// [identifier] Identifies a Contract Valued Item instance.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// /// [effectiveTime] Indicates the time during which this Contract
/// ValuedItem information is effective.

    @JsonKey(name: 'effectiveTime') FhirDateTime? effectiveTime,
/// /// [_effectiveTime] Extensions for effectiveTime

    @JsonKey(name: '_effectiveTime') FhirElement? effectiveTimeElement,
/// /// [quantity] Specifies the units by which the Contract Valued Item is
/// measured or counted, and quantifies the countable or measurable Contract
/// Valued Item instances.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [unitPrice] A Contract Valued Item unit valuation measure.

    @JsonKey(name: 'unitPrice') Money? unitPrice,
/// /// [factor] A real number that represents a multiplier used in determining
/// the overall value of the Contract Valued Item delivered. The concept of a
/// Factor allows for a discount or surcharge multiplier to be applied to a
/// monetary amount.

    @JsonKey(name: 'factor') FhirDecimal? factor,
/// /// [_factor] Extensions for factor

    @JsonKey(name: '_factor') FhirElement? factorElement,
/// /// [points] An amount that expresses the weighting (based on difficulty,
/// cost and/or resource intensiveness) associated with the Contract Valued
/// Item delivered. The concept of Points allows for assignment of point values
/// for a Contract Valued Item, such that a monetary amount can be assigned to
/// each point.

    @JsonKey(name: 'points') FhirDecimal? points,
/// /// [_points] Extensions for points

    @JsonKey(name: '_points') FhirElement? pointsElement,
/// /// [net] Expresses the product of the Contract Valued Item unitQuantity
/// and the unitPriceAmt. For example, the formula: unit Quantity * unit Price
/// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
/// and points are assumed to be 1 if not supplied.

    @JsonKey(name: 'net') Money? net,
/// /// [payment] Terms of valuation.

    @JsonKey(name: 'payment') String? payment,
/// /// [_payment] Extensions for payment

    @JsonKey(name: '_payment') FhirElement? paymentElement,
/// /// [paymentDate] When payment is due.

    @JsonKey(name: 'paymentDate') FhirDateTime? paymentDate,
/// /// [_paymentDate] Extensions for paymentDate

    @JsonKey(name: '_paymentDate') FhirElement? paymentDateElement,
/// /// [responsible] Who will make payment.

    @JsonKey(name: 'responsible') Reference? responsible,
/// /// [recipient] Who will receive payment.

    @JsonKey(name: 'recipient') Reference? recipient,
/// /// [linkId] Id  of the clause or question text related to the context of
/// this valuedItem in the referenced form or QuestionnaireResponse.

    @JsonKey(name: 'linkId') List<List<String>>? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') List<FhirElement>? linkIdElement,
/// /// [securityLabelNumber] A set of security labels that define which terms
/// are controlled by this condition.

    @JsonKey(name: 'securityLabelNumber') List<List<FhirUnsignedInt>>? securityLabelNumber,
/// /// [_securityLabelNumber] Extensions for securityLabelNumber

    @JsonKey(name: '_securityLabelNumber') List<FhirElement>? securityLabelNumberElement,
  }) = _$Contract_ValuedItem;

  @override
  String get fhirType => 'Contract_ValuedItem';

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) =>
      _$Contract_ValuedItemFromJson(json);

  factory Contract_ValuedItem.fromYaml(dynamic yaml) => yaml is String
      ? Contract_ValuedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_ValuedItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_ValuedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_ValuedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_ValuedItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
