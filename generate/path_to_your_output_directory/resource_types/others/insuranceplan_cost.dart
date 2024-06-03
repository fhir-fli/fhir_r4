import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InsurancePlan_Cost] Details about an insurance plan.

@freezed
class InsurancePlan_Cost with _$InsurancePlan_Cost {
  const InsurancePlan_Cost._();

  const factory InsurancePlan_Cost({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] Type of cost (copay; individual cap; family cap; coinsurance;
/// deductible).

    @JsonKey(name: 'type') CodeableConcept? type,
/// [applicability] Whether the cost applies to in-network or
/// out-of-network providers (in-network; out-of-network; other).

    @JsonKey(name: 'applicability') CodeableConcept? applicability,
/// [qualifier] Additional information about the cost, such as information
/// about funding sources (e.g. HSA, HRA, FSA, RRA).

    @JsonKey(name: 'qualifier') List<List<CodeableConcept>>? qualifier,
/// [value] The actual cost value. (some of the costs may be represented as
/// percentages rather than currency, e.g. 10% coinsurance).

    @JsonKey(name: 'value') Quantity? value,
  }) = _$InsurancePlan_Cost;

  @override
  String get fhirType => 'InsurancePlan_Cost';

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlan_CostFromJson(json);

  factory InsurancePlan_Cost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan_Cost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlan_Cost.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlan_Cost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsurancePlan_Cost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlan_CostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
