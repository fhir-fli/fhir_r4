/// /// [InsuranceProduct_Benefit] Details of a Health Insurance product
/// provided by an organization.

@freezed
class InsuranceProduct_Benefit with _$InsuranceProduct_Benefit {
  const InsuranceProduct_Benefit._();

  const factory InsuranceProduct_Benefit({
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
/// /// [type] Type of benefit (primary care; specialty care; inpatient;
/// outpatient).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [requirement] The referral requirements to have access/coverage for
/// this benefit.

    @JsonKey(name: 'requirement') String? requirement,
/// /// [_requirement] Extensions for requirement

    @JsonKey(name: '_requirement') FhirElement? requirementElement,
/// /// [limit] The specific limits on the benefit.

    @JsonKey(name: 'limit') List<List<InsuranceProduct_Limit>>? limit,
  }) = _$InsuranceProduct_Benefit;

  @override
  String get fhirType => 'InsuranceProduct_Benefit';

  factory InsuranceProduct_Benefit.fromJson(Map<String, dynamic> json) =>
      _$InsuranceProduct_BenefitFromJson(json);

  factory InsuranceProduct_Benefit.fromYaml(dynamic yaml) => yaml is String
      ? InsuranceProduct_Benefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsuranceProduct_Benefit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsuranceProduct_Benefit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsuranceProduct_Benefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsuranceProduct_BenefitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
