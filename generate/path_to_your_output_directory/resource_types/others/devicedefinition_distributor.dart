/// /// [DeviceDefinition_Distributor] The characteristics, operational status
/// and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Distributor with _$DeviceDefinition_Distributor {
  const DeviceDefinition_Distributor._();

  const factory DeviceDefinition_Distributor({
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
/// /// [name] Distributor's human-readable name.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [organizationReference] Distributor as an Organization resource.

    @JsonKey(name: 'organizationReference') List<List<Reference>>? organizationReference,
  }) = _$DeviceDefinition_Distributor;

  @override
  String get fhirType => 'DeviceDefinition_Distributor';

  factory DeviceDefinition_Distributor.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_DistributorFromJson(json);

  factory DeviceDefinition_Distributor.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Distributor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Distributor.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Distributor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Distributor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_DistributorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
