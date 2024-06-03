import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InsurancePlan_SpecificCost] Details about an insurance plan.

@freezed
class InsurancePlan_SpecificCost with _$InsurancePlan_SpecificCost {
  const InsurancePlan_SpecificCost._();

  const factory InsurancePlan_SpecificCost({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [category] General category of benefit (Medical; Dental; Vision; Drug;
/// Mental Health; Substance Abuse; Hospice, Home Health).

    @JsonKey(name: 'category') CodeableConcept? category,
/// [benefit] List of the specific benefits under this category of benefit.

    @JsonKey(name: 'benefit') List<List<InsurancePlan_Benefit>>? benefit,
  }) = _$InsurancePlan_SpecificCost;

  @override
  String get fhirType => 'InsurancePlan_SpecificCost';

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_SpecificCostFromJson(json);

  factory InsurancePlan_SpecificCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan_SpecificCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlan_SpecificCost.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlan_SpecificCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsurancePlan_SpecificCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlan_SpecificCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
