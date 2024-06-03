import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExplanationOfBenefit_BenefitBalance] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_BenefitBalance with _$ExplanationOfBenefit_BenefitBalance {
  const ExplanationOfBenefit_BenefitBalance._();

  const factory ExplanationOfBenefit_BenefitBalance({
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
/// [category] Code to identify the general type of benefits under which
/// products and services are provided.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [excluded] True if the indicated class of service is excluded from the
/// plan, missing or False indicates the product or service is included in the
/// coverage.

    @JsonKey(name: 'excluded') FhirBoolean? excluded,
/// [_excluded] Extensions for excluded

    @JsonKey(name: '_excluded') PrimitiveElement? excludedElement,
/// [name] A short name or tag for the benefit.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [description] A richer description of the benefit or services covered.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [network] Is a flag to indicate whether the benefits refer to
/// in-network providers or out-of-network providers.

    @JsonKey(name: 'network') CodeableConcept? network,
/// [unit] Indicates if the benefits apply to an individual or to the
/// family.

    @JsonKey(name: 'unit') CodeableConcept? unit,
/// [term] The term or period of the values such as 'maximum lifetime
/// benefit' or 'maximum annual visits'.

    @JsonKey(name: 'term') CodeableConcept? term,
/// [financial] Benefits Used to date.

    @JsonKey(name: 'financial') List<List<ExplanationOfBenefit_Financial>>? financial,
  }) = _$ExplanationOfBenefit_BenefitBalance;

  @override
  String get fhirType => 'ExplanationOfBenefit_BenefitBalance';

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_BenefitBalanceFromJson(json);

  factory ExplanationOfBenefit_BenefitBalance.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_BenefitBalance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_BenefitBalance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_BenefitBalance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_BenefitBalance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
