/// /// [InsurancePlan_GeneralCost] Details about an insurance plan.

@freezed
class InsurancePlan_GeneralCost with _$InsurancePlan_GeneralCost {
  const InsurancePlan_GeneralCost._();

  const factory InsurancePlan_GeneralCost({
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
/// /// [type] Type of cost.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [groupSize] Number of participants enrolled in the plan.

    @JsonKey(name: 'groupSize') FhirPositiveInt? groupSize,
/// /// [_groupSize] Extensions for groupSize

    @JsonKey(name: '_groupSize') FhirElement? groupSizeElement,
/// /// [cost] Value of the cost.

    @JsonKey(name: 'cost') Money? cost,
/// /// [comment] Additional information about the general costs associated
/// with this plan.

    @JsonKey(name: 'comment') String? comment,
/// /// [_comment] Extensions for comment

    @JsonKey(name: '_comment') FhirElement? commentElement,
  }) = _$InsurancePlan_GeneralCost;

  @override
  String get fhirType => 'InsurancePlan_GeneralCost';

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_GeneralCostFromJson(json);

  factory InsurancePlan_GeneralCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan_GeneralCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlan_GeneralCost.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlan_GeneralCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsurancePlan_GeneralCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlan_GeneralCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
