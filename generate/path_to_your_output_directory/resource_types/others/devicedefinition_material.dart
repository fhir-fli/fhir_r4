/// /// [DeviceDefinition_Material] The characteristics, operational status and
/// capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Material with _$DeviceDefinition_Material {
  const DeviceDefinition_Material._();

  const factory DeviceDefinition_Material({
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
/// /// [substance] A substance that the device contains, may contain, or is
/// made of - for example latex - to be used to determine patient
/// compatibility. This is not intended to represent the composition of the
/// device, only the clinically relevant materials.

    @JsonKey(name: 'substance') CodeableConcept? substance,
/// /// [alternate] Indicates an alternative material of the device.

    @JsonKey(name: 'alternate') FhirBoolean? alternate,
/// /// [_alternate] Extensions for alternate

    @JsonKey(name: '_alternate') FhirElement? alternateElement,
/// /// [allergenicIndicator] Whether the substance is a known or suspected
/// allergen.

    @JsonKey(name: 'allergenicIndicator') FhirBoolean? allergenicIndicator,
/// /// [_allergenicIndicator] Extensions for allergenicIndicator

    @JsonKey(name: '_allergenicIndicator') FhirElement? allergenicIndicatorElement,
  }) = _$DeviceDefinition_Material;

  @override
  String get fhirType => 'DeviceDefinition_Material';

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_MaterialFromJson(json);

  factory DeviceDefinition_Material.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Material.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Material.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Material cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Material.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_MaterialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
