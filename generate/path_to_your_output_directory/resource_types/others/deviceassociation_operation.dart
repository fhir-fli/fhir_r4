/// /// [DeviceAssociation_Operation] A record of association or dissociation
/// of a device with a patient.

@freezed
class DeviceAssociation_Operation with _$DeviceAssociation_Operation {
  const DeviceAssociation_Operation._();

  const factory DeviceAssociation_Operation({
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
/// /// [status] Device operational condition corresponding to the association.

    @JsonKey(name: 'status') CodeableConcept? status,
/// /// [operator] The individual performing the action enabled by the device.

    @JsonKey(name: 'operator') List<List<Reference>>? operator,
/// /// [period] Begin and end dates and times for the device's operation.

    @JsonKey(name: 'period') Period? period,
  }) = _$DeviceAssociation_Operation;

  @override
  String get fhirType => 'DeviceAssociation_Operation';

  factory DeviceAssociation_Operation.fromJson(Map<String, dynamic> json) =>
      _$DeviceAssociation_OperationFromJson(json);

  factory DeviceAssociation_Operation.fromYaml(dynamic yaml) => yaml is String
      ? DeviceAssociation_Operation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceAssociation_Operation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceAssociation_Operation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceAssociation_Operation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceAssociation_OperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
