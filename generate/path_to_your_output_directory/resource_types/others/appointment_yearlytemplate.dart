/// /// [Appointment_YearlyTemplate] A booking of a healthcare event among
/// patient(s), practitioner(s), related person(s) and/or device(s) for a
/// specific date/time. This may result in one or more Encounter(s).

@freezed
class Appointment_YearlyTemplate with _$Appointment_YearlyTemplate {
  const Appointment_YearlyTemplate._();

  const factory Appointment_YearlyTemplate({
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
/// /// [yearInterval] Appointment recurs every nth year.

    @JsonKey(name: 'yearInterval') FhirPositiveInt? yearInterval,
/// /// [_yearInterval] Extensions for yearInterval

    @JsonKey(name: '_yearInterval') FhirElement? yearIntervalElement,
  }) = _$Appointment_YearlyTemplate;

  @override
  String get fhirType => 'Appointment_YearlyTemplate';

  factory Appointment_YearlyTemplate.fromJson(Map<String, dynamic> json) =>
      _$Appointment_YearlyTemplateFromJson(json);

  factory Appointment_YearlyTemplate.fromYaml(dynamic yaml) => yaml is String
      ? Appointment_YearlyTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment_YearlyTemplate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment_YearlyTemplate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment_YearlyTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Appointment_YearlyTemplateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
