/// /// [Timing] Specifies an event that may occur multiple times. Timing
/// schedules are used to record when things are planned, expected or requested
/// to occur. The most common usage is in dosage instructions for medications.
/// They are also used when planning care of various kinds, and may be used for
/// reporting the schedule to which past regular activities were carried out.

@freezed
class Timing with _$Timing {
  const Timing._();

  const factory Timing({
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
/// /// [event] Identifies specific times when the event occurs.

    @JsonKey(name: 'event') List<List<FhirDateTime>>? event,
/// /// [_event] Extensions for event

    @JsonKey(name: '_event') List<FhirElement>? eventElement,
/// /// [repeat] A set of rules that describe when the event is scheduled.

    @JsonKey(name: 'repeat') Timing_Repeat? repeat,
/// /// [code] A code for the timing schedule (or just text in code.text). Some
/// codes such as BID are ubiquitous, but many institutions define their own
/// additional codes. If a code is provided, the code is understood to be a
/// complete statement of whatever is specified in the structured timing data,
/// and either the code or the data may be used to interpret the Timing, with
/// the exception that .repeat.bounds still applies over the code (and is not
/// contained in the code).

    @JsonKey(name: 'code') CodeableConcept? code,
  }) = _$Timing;

  @override
  String get fhirType => 'Timing';

  factory Timing.fromJson(Map<String, dynamic> json) =>
      _$TimingFromJson(json);

  factory Timing.fromYaml(dynamic yaml) => yaml is String
      ? Timing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Timing.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Timing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Timing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TimingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
