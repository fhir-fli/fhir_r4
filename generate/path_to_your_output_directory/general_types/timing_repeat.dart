import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Timing_Repeat] Specifies an event that may occur multiple times.
/// Timing schedules are used to record when things are planned, expected or
/// requested to occur. The most common usage is in dosage instructions for
/// medications. They are also used when planning care of various kinds, and
/// may be used for reporting the schedule to which past regular activities
/// were carried out.

@freezed
class Timing_Repeat with _$Timing_Repeat {
  const Timing_Repeat._();

  const factory Timing_Repeat({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [boundsDuration] Either a duration for the length of the timing
/// schedule, a range of possible length, or outer bounds for start and/or end
/// limits of the timing schedule.

    @JsonKey(name: 'boundsDuration') FhirDuration? boundsDuration,
/// [boundsRange] Either a duration for the length of the timing schedule,
/// a range of possible length, or outer bounds for start and/or end limits of
/// the timing schedule.

    @JsonKey(name: 'boundsRange') Range? boundsRange,
/// [boundsPeriod] Either a duration for the length of the timing schedule,
/// a range of possible length, or outer bounds for start and/or end limits of
/// the timing schedule.

    @JsonKey(name: 'boundsPeriod') Period? boundsPeriod,
/// [count] A total count of the desired number of repetitions across the
/// duration of the entire timing specification. If countMax is present, this
/// element indicates the lower bound of the allowed range of count values.

    @JsonKey(name: 'count') FhirPositiveInt? count,
/// [_count] Extensions for count

    @JsonKey(name: '_count') PrimitiveElement? countElement,
/// [countMax] If present, indicates that the count is a range - so to
/// perform the action between [count] and [countMax] times.

    @JsonKey(name: 'countMax') FhirPositiveInt? countMax,
/// [_countMax] Extensions for countMax

    @JsonKey(name: '_countMax') PrimitiveElement? countMaxElement,
/// [duration] How long this thing happens for when it happens. If
/// durationMax is present, this element indicates the lower bound of the
/// allowed range of the duration.

    @JsonKey(name: 'duration') FhirDecimal? duration,
/// [_duration] Extensions for duration

    @JsonKey(name: '_duration') PrimitiveElement? durationElement,
/// [durationMax] If present, indicates that the duration is a range - so
/// to perform the action between [duration] and [durationMax] time length.

    @JsonKey(name: 'durationMax') FhirDecimal? durationMax,
/// [_durationMax] Extensions for durationMax

    @JsonKey(name: '_durationMax') PrimitiveElement? durationMaxElement,
/// [durationUnit] The units of time for the duration, in UCUM units
/// Normal practice is to use the 'mo' code as a calendar month when
/// calculating the next occurrence.

    @JsonKey(name: 'durationUnit') dynamic? durationUnit,
/// [_durationUnit] Extensions for durationUnit

    @JsonKey(name: '_durationUnit') PrimitiveElement? durationUnitElement,
/// [frequency] The number of times to repeat the action within the
/// specified period. If frequencyMax is present, this element indicates the
/// lower bound of the allowed range of the frequency.

    @JsonKey(name: 'frequency') FhirPositiveInt? frequency,
/// [_frequency] Extensions for frequency

    @JsonKey(name: '_frequency') PrimitiveElement? frequencyElement,
/// [frequencyMax] If present, indicates that the frequency is a range - so
/// to repeat between [frequency] and [frequencyMax] times within the period or
/// period range.

    @JsonKey(name: 'frequencyMax') FhirPositiveInt? frequencyMax,
/// [_frequencyMax] Extensions for frequencyMax

    @JsonKey(name: '_frequencyMax') PrimitiveElement? frequencyMaxElement,
/// [period] Indicates the duration of time over which repetitions are to
/// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
/// day" would be the period. If periodMax is present, this element indicates
/// the lower bound of the allowed range of the period length.

    @JsonKey(name: 'period') FhirDecimal? period,
/// [_period] Extensions for period

    @JsonKey(name: '_period') PrimitiveElement? periodElement,
/// [periodMax] If present, indicates that the period is a range from
/// [period] to [periodMax], allowing expressing concepts such as "do this once
/// every 3-5 days.

    @JsonKey(name: 'periodMax') FhirDecimal? periodMax,
/// [_periodMax] Extensions for periodMax

    @JsonKey(name: '_periodMax') PrimitiveElement? periodMaxElement,
/// [periodUnit] The units of time for the period in UCUM units
/// Normal practice is to use the 'mo' code as a calendar month when
/// calculating the next occurrence.

    @JsonKey(name: 'periodUnit') dynamic? periodUnit,
/// [_periodUnit] Extensions for periodUnit

    @JsonKey(name: '_periodUnit') PrimitiveElement? periodUnitElement,
/// [dayOfWeek] If one or more days of week is provided, then the action
/// happens only on the specified day(s).

    @JsonKey(name: 'dayOfWeek') List<List<FhirCode>>? dayOfWeek,
/// [_dayOfWeek] Extensions for dayOfWeek

    @JsonKey(name: '_dayOfWeek') List<PrimitiveElement>? dayOfWeekElement,
/// [timeOfDay] Specified time of day for action to take place.

    @JsonKey(name: 'timeOfDay') List<List<FhirTime>>? timeOfDay,
/// [_timeOfDay] Extensions for timeOfDay

    @JsonKey(name: '_timeOfDay') List<PrimitiveElement>? timeOfDayElement,
/// [when] An approximate time period during the day, potentially linked to
/// an event of daily living that indicates when the action should occur.

    @JsonKey(name: 'when') List<List<dynamic>>? when,
/// [_when] Extensions for when

    @JsonKey(name: '_when') List<PrimitiveElement>? whenElement,
/// [offset] The number of minutes from the event. If the event code does
/// not indicate whether the minutes is before or after the event, then the
/// offset is assumed to be after the event.

    @JsonKey(name: 'offset') FhirUnsignedInt? offset,
/// [_offset] Extensions for offset

    @JsonKey(name: '_offset') PrimitiveElement? offsetElement,
  }) = _$Timing_Repeat;

  @override
  String get fhirType => 'Timing_Repeat';

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) =>
      _$Timing_RepeatFromJson(json);

  factory Timing_Repeat.fromYaml(dynamic yaml) => yaml is String
      ? Timing_Repeat.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Timing_Repeat.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Timing_Repeat cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Timing_Repeat.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Timing_RepeatFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
