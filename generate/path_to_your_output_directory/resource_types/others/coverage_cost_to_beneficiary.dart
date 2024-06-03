import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Coverage_CostToBeneficiary] Financial instrument which may be used to
/// reimburse or pay for health care products and services. Includes both
/// insurance and self-payment.

@freezed
class Coverage_CostToBeneficiary with _$Coverage_CostToBeneficiary {
  const Coverage_CostToBeneficiary._();

  const factory Coverage_CostToBeneficiary({
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
/// [type] The category of patient centric costs associated with treatment.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [category] Code to identify the general type of benefits under which
/// products and services are provided.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [network] Is a flag to indicate whether the benefits refer to
/// in-network providers or out-of-network providers.

    @JsonKey(name: 'network') CodeableConcept? network,
/// [unit] Indicates if the benefits apply to an individual or to the
/// family.

    @JsonKey(name: 'unit') CodeableConcept? unit,
/// [term] The term or period of the values such as 'maximum lifetime
/// benefit' or 'maximum annual visits'.

    @JsonKey(name: 'term') CodeableConcept? term,
/// [valueQuantity] The amount due from the patient for the cost category.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueMoney] The amount due from the patient for the cost category.

    @JsonKey(name: 'valueMoney') Money? valueMoney,
/// [exception] A suite of codes indicating exceptions or reductions to
/// patient costs and their effective periods.

    @JsonKey(name: 'exception') List<List<Coverage_Exception>>? exception,
  }) = _$Coverage_CostToBeneficiary;

  @override
  String get fhirType => 'Coverage_CostToBeneficiary';

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$Coverage_CostToBeneficiaryFromJson(json);

  factory Coverage_CostToBeneficiary.fromYaml(dynamic yaml) => yaml is String
      ? Coverage_CostToBeneficiary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coverage_CostToBeneficiary.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coverage_CostToBeneficiary cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Coverage_CostToBeneficiary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Coverage_CostToBeneficiaryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
