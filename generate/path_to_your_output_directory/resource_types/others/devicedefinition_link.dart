/// /// [DeviceDefinition_Link] The characteristics, operational status and
/// capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Link with _$DeviceDefinition_Link {
  const DeviceDefinition_Link._();

  const factory DeviceDefinition_Link({
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
/// /// [relation] The type indicates the relationship of the related device to
/// the device instance.

    @JsonKey(name: 'relation') Coding? relation,
/// /// [relatedDevice] A reference to the linked device.

    @JsonKey(name: 'relatedDevice') CodeableReference? relatedDevice,
  }) = _$DeviceDefinition_Link;

  @override
  String get fhirType => 'DeviceDefinition_Link';

  factory DeviceDefinition_Link.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_LinkFromJson(json);

  factory DeviceDefinition_Link.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Link.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Link.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Link cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Link.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_LinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
