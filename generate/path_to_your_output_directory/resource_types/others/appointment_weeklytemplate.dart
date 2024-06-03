/// /// [Appointment_WeeklyTemplate] A booking of a healthcare event among
/// patient(s), practitioner(s), related person(s) and/or device(s) for a
/// specific date/time. This may result in one or more Encounter(s).

@freezed
class Appointment_WeeklyTemplate with _$Appointment_WeeklyTemplate {
  const Appointment_WeeklyTemplate._();

  const factory Appointment_WeeklyTemplate({
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
/// /// [monday] Indicates that recurring appointments should occur on Mondays.

    @JsonKey(name: 'monday') FhirBoolean? monday,
/// /// [_monday] Extensions for monday

    @JsonKey(name: '_monday') FhirElement? mondayElement,
/// /// [tuesday] Indicates that recurring appointments should occur on
/// Tuesdays.

    @JsonKey(name: 'tuesday') FhirBoolean? tuesday,
/// /// [_tuesday] Extensions for tuesday

    @JsonKey(name: '_tuesday') FhirElement? tuesdayElement,
/// /// [wednesday] Indicates that recurring appointments should occur on
/// Wednesdays.

    @JsonKey(name: 'wednesday') FhirBoolean? wednesday,
/// /// [_wednesday] Extensions for wednesday

    @JsonKey(name: '_wednesday') FhirElement? wednesdayElement,
/// /// [thursday] Indicates that recurring appointments should occur on
/// Thursdays.

    @JsonKey(name: 'thursday') FhirBoolean? thursday,
/// /// [_thursday] Extensions for thursday

    @JsonKey(name: '_thursday') FhirElement? thursdayElement,
/// /// [friday] Indicates that recurring appointments should occur on Fridays.

    @JsonKey(name: 'friday') FhirBoolean? friday,
/// /// [_friday] Extensions for friday

    @JsonKey(name: '_friday') FhirElement? fridayElement,
/// /// [saturday] Indicates that recurring appointments should occur on
/// Saturdays.

    @JsonKey(name: 'saturday') FhirBoolean? saturday,
/// /// [_saturday] Extensions for saturday

    @JsonKey(name: '_saturday') FhirElement? saturdayElement,
/// /// [sunday] Indicates that recurring appointments should occur on Sundays.

    @JsonKey(name: 'sunday') FhirBoolean? sunday,
/// /// [_sunday] Extensions for sunday

    @JsonKey(name: '_sunday') FhirElement? sundayElement,
/// /// [weekInterval] The interval defines if the recurrence is every nth
/// week. The default is every week, so it is expected that this value will be
/// 2 or more.e.g. For recurring every second week this interval would be 2,
/// or every third week the interval would be 3.

    @JsonKey(name: 'weekInterval') FhirPositiveInt? weekInterval,
/// /// [_weekInterval] Extensions for weekInterval

    @JsonKey(name: '_weekInterval') FhirElement? weekIntervalElement,
  }) = _$Appointment_WeeklyTemplate;

  @override
  String get fhirType => 'Appointment_WeeklyTemplate';

  factory Appointment_WeeklyTemplate.fromJson(Map<String, dynamic> json) =>
      _$Appointment_WeeklyTemplateFromJson(json);

  factory Appointment_WeeklyTemplate.fromYaml(dynamic yaml) => yaml is String
      ? Appointment_WeeklyTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment_WeeklyTemplate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment_WeeklyTemplate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment_WeeklyTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Appointment_WeeklyTemplateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
