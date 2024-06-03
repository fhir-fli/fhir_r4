/// /// [ExplanationOfBenefit_Insurance] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_Insurance with _$ExplanationOfBenefit_Insurance {
  const ExplanationOfBenefit_Insurance._();

  const factory ExplanationOfBenefit_Insurance({
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
/// /// [focal] A flag to indicate that this Coverage is to be used for
/// adjudication of this claim when set to true.

    @JsonKey(name: 'focal') FhirBoolean? focal,
/// /// [_focal] Extensions for focal

    @JsonKey(name: '_focal') FhirElement? focalElement,
/// /// [coverage] Reference to the insurance card level information contained
/// in the Coverage resource. The coverage issuing insurer will use these
/// details to locate the patient's actual coverage within the insurer's
/// information system.

    @JsonKey(name: 'coverage') Reference? coverage,
/// /// [preAuthRef] Reference numbers previously provided by the insurer to
/// the provider to be quoted on subsequent claims containing services or
/// products related to the prior authorization.

    @JsonKey(name: 'preAuthRef') List<List<String>>? preAuthRef,
/// /// [_preAuthRef] Extensions for preAuthRef

    @JsonKey(name: '_preAuthRef') List<FhirElement>? preAuthRefElement,
  }) = _$ExplanationOfBenefit_Insurance;

  @override
  String get fhirType => 'ExplanationOfBenefit_Insurance';

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_InsuranceFromJson(json);

  factory ExplanationOfBenefit_Insurance.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_Insurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_Insurance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_Insurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_Insurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_InsuranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
