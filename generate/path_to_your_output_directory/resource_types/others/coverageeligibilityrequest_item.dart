/// /// [CoverageEligibilityRequest_Item] The CoverageEligibilityRequest
/// provides patient and insurance coverage information to an insurer for them
/// to respond, in the form of an CoverageEligibilityResponse, with information
/// regarding whether the stated coverage is valid and in-force and optionally
/// to provide the insurance details of the policy.

@freezed
class CoverageEligibilityRequest_Item with _$CoverageEligibilityRequest_Item {
  const CoverageEligibilityRequest_Item._();

  const factory CoverageEligibilityRequest_Item({
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
/// /// [supportingInfoSequence] Exceptions, special conditions and supporting
/// information applicable for this service or product line.

    @JsonKey(name: 'supportingInfoSequence') List<List<FhirPositiveInt>>? supportingInfoSequence,
/// /// [_supportingInfoSequence] Extensions for supportingInfoSequence

    @JsonKey(name: '_supportingInfoSequence') List<FhirElement>? supportingInfoSequenceElement,
/// /// [category] Code to identify the general type of benefits under which
/// products and services are provided.

    @JsonKey(name: 'category') CodeableConcept? category,
/// /// [productOrService] This contains the product, service, drug or other
/// billing code for the item.

    @JsonKey(name: 'productOrService') CodeableConcept? productOrService,
/// /// [modifier] Item typification or modifiers codes to convey additional
/// context for the product or service.

    @JsonKey(name: 'modifier') List<List<CodeableConcept>>? modifier,
/// /// [provider] The practitioner who is responsible for the product or
/// service to be rendered to the patient.

    @JsonKey(name: 'provider') Reference? provider,
/// /// [quantity] The number of repetitions of a service or product.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [unitPrice] The amount charged to the patient by the provider for a
/// single unit.

    @JsonKey(name: 'unitPrice') Money? unitPrice,
/// /// [facility] Facility where the services will be provided.

    @JsonKey(name: 'facility') Reference? facility,
/// /// [diagnosis] Patient diagnosis for which care is sought.

    @JsonKey(name: 'diagnosis') List<List<CoverageEligibilityRequest_Diagnosis>>? diagnosis,
/// /// [detail] The plan/proposal/order describing the proposed service in
/// detail.

    @JsonKey(name: 'detail') List<List<Reference>>? detail,
  }) = _$CoverageEligibilityRequest_Item;

  @override
  String get fhirType => 'CoverageEligibilityRequest_Item';

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_ItemFromJson(json);

  factory CoverageEligibilityRequest_Item.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityRequest_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityRequest_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityRequest_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequest_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityRequest_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
