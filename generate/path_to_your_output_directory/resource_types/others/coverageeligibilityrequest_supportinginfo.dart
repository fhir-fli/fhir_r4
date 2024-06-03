/// /// [CoverageEligibilityRequest_SupportingInfo] The
/// CoverageEligibilityRequest provides patient and insurance coverage
/// information to an insurer for them to respond, in the form of an
/// CoverageEligibilityResponse, with information regarding whether the stated
/// coverage is valid and in-force and optionally to provide the insurance
/// details of the policy.

@freezed
class CoverageEligibilityRequest_SupportingInfo with _$CoverageEligibilityRequest_SupportingInfo {
  const CoverageEligibilityRequest_SupportingInfo._();

  const factory CoverageEligibilityRequest_SupportingInfo({
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
/// /// [sequence] A number to uniquely identify supporting information
/// entries.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// /// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') FhirElement? sequenceElement,
/// /// [information] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'information') Reference? information,
/// /// [appliesToAll] The supporting materials are applicable for all detail
/// items, product/servce categories and specific billing codes.

    @JsonKey(name: 'appliesToAll') FhirBoolean? appliesToAll,
/// /// [_appliesToAll] Extensions for appliesToAll

    @JsonKey(name: '_appliesToAll') FhirElement? appliesToAllElement,
  }) = _$CoverageEligibilityRequest_SupportingInfo;

  @override
  String get fhirType => 'CoverageEligibilityRequest_SupportingInfo';

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_SupportingInfoFromJson(json);

  factory CoverageEligibilityRequest_SupportingInfo.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityRequest_SupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityRequest_SupportingInfo.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityRequest_SupportingInfo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequest_SupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
