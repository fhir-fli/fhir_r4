/// /// [DeviceMetric_Calibration] Describes a measurement, calculation or
/// setting capability of a device.

@freezed
class DeviceMetric_Calibration with _$DeviceMetric_Calibration {
  const DeviceMetric_Calibration._();

  const factory DeviceMetric_Calibration({
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
/// /// [type] Describes the type of the calibration method.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [state] Describes the state of the calibration.

    @JsonKey(name: 'state') FhirCode? state,
/// /// [_state] Extensions for state

    @JsonKey(name: '_state') FhirElement? stateElement,
/// /// [time] Describes the time last calibration has been performed.

    @JsonKey(name: 'time') FhirInstant? time,
/// /// [_time] Extensions for time

    @JsonKey(name: '_time') FhirElement? timeElement,
  }) = _$DeviceMetric_Calibration;

  @override
  String get fhirType => 'DeviceMetric_Calibration';

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetric_CalibrationFromJson(json);

  factory DeviceMetric_Calibration.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetric_Calibration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceMetric_Calibration.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceMetric_Calibration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceMetric_Calibration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceMetric_CalibrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
