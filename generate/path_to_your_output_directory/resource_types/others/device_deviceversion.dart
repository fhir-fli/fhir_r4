/// /// [Device_DeviceVersion] A type of a manufactured item that is used in
/// the provision of healthcare without being substantially changed through
/// that activity. The device may be a medical or non-medical device.

@freezed
class Device_DeviceVersion with _$Device_DeviceVersion {
  const Device_DeviceVersion._();

  const factory Device_DeviceVersion({
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
/// /// [type] The type of the device version, e.g. manufacturer, approved,
/// internal.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [component] The hardware or software module of the device to which the
/// version applies.

    @JsonKey(name: 'component') Identifier? component,
/// /// [installDate] The date the version was installed on the device.

    @JsonKey(name: 'installDate') FhirDateTime? installDate,
/// /// [_installDate] Extensions for installDate

    @JsonKey(name: '_installDate') FhirElement? installDateElement,
/// /// [value] The version text.

    @JsonKey(name: 'value') String? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
  }) = _$Device_DeviceVersion;

  @override
  String get fhirType => 'Device_DeviceVersion';

  factory Device_DeviceVersion.fromJson(Map<String, dynamic> json) =>
      _$Device_DeviceVersionFromJson(json);

  factory Device_DeviceVersion.fromYaml(dynamic yaml) => yaml is String
      ? Device_DeviceVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Device_DeviceVersion.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Device_DeviceVersion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Device_DeviceVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Device_DeviceVersionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
