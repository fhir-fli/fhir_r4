/// /// [InsurancePlan_Benefit] Details about an insurance plan.

@freezed
class InsurancePlan_Benefit with _$InsurancePlan_Benefit {
  const InsurancePlan_Benefit._();

  const factory InsurancePlan_Benefit({
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
/// /// [type] Type of specific benefit (preventative; primary care office
/// visit; speciality office visit; hospitalization; emergency room; urgent
/// care).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [cost] List of the costs associated with a specific benefit.

    @JsonKey(name: 'cost') List<List<InsurancePlan_Cost>>? cost,
  }) = _$InsurancePlan_Benefit;

  @override
  String get fhirType => 'InsurancePlan_Benefit';

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_BenefitFromJson(json);

  factory InsurancePlan_Benefit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan_Benefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlan_Benefit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlan_Benefit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsurancePlan_Benefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlan_BenefitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
