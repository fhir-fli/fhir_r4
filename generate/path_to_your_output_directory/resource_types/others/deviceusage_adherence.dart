/// /// [DeviceUsage_Adherence] A record of a device being used by a patient
/// where the record is the result of a report from the patient or a clinician.

@freezed
class DeviceUsage_Adherence with _$DeviceUsage_Adherence {
  const DeviceUsage_Adherence._();

  const factory DeviceUsage_Adherence({
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
/// /// [code] Type of adherence.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [reason] Reason for adherence type.

    @JsonKey(name: 'reason') List<List<CodeableConcept>>? reason,
  }) = _$DeviceUsage_Adherence;

  @override
  String get fhirType => 'DeviceUsage_Adherence';

  factory DeviceUsage_Adherence.fromJson(Map<String, dynamic> json) =>
      _$DeviceUsage_AdherenceFromJson(json);

  factory DeviceUsage_Adherence.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUsage_Adherence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceUsage_Adherence.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceUsage_Adherence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceUsage_Adherence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceUsage_AdherenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
