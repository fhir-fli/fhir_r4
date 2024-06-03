/// /// [Invoice_Participant] Invoice containing collected ChargeItems from an
/// Account with calculated individual and total price for Billing purpose.

@freezed
class Invoice_Participant with _$Invoice_Participant {
  const Invoice_Participant._();

  const factory Invoice_Participant({
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
/// /// [role] Describes the type of involvement (e.g. transcriptionist,
/// creator etc.). If the invoice has been created automatically, the
/// Participant may be a billing engine or another kind of device.

    @JsonKey(name: 'role') CodeableConcept? role,
/// /// [actor] The device, practitioner, etc. who performed or participated in
/// the service.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$Invoice_Participant;

  @override
  String get fhirType => 'Invoice_Participant';

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) =>
      _$Invoice_ParticipantFromJson(json);

  factory Invoice_Participant.fromYaml(dynamic yaml) => yaml is String
      ? Invoice_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Invoice_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Invoice_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Invoice_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Invoice_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
