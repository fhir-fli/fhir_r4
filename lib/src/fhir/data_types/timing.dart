import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'timing.g.dart';

/// [Timing] /// Specifies an event that may occur multiple times. Timing schedules are used
/// to record when things are planned, expected or requested to occur. The most
/// common usage is in dosage instructions for medications. They are also used
/// when planning care of various kinds, and may be used for reporting the
/// schedule to which past regular activities were carried out.
@JsonSerializable()
class Timing extends BackboneType {
  Timing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.eventElement,
    this.repeat,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'Timing');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [event] /// Identifies specific times when the event occurs.
  @JsonKey(name: 'event')
  final List<FhirDateTime>? event;
  @JsonKey(name: '_event')
  final List<Element>? eventElement;

  /// [repeat] /// A set of rules that describe when the event is scheduled.
  @JsonKey(name: 'repeat')
  final Element? repeat;

  /// [code] /// A code for the timing schedule (or just text in code.text). Some codes such
  /// as BID are ubiquitous, but many institutions define their own additional
  /// codes. If a code is provided, the code is understood to be a complete
  /// statement of whatever is specified in the structured timing data, and
  /// either the code or the data may be used to interpret the Timing, with the
  /// exception that .repeat.bounds still applies over the code (and is not
  /// contained in the code).
  @JsonKey(name: 'code')
  final TimingAbbreviation? code;
  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimingToJson(this);

  @override
  Timing clone() => throw UnimplementedError();
  @override
  Timing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirDateTime>? event,
    List<Element>? eventElement,
    Element? repeat,
    TimingAbbreviation? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Timing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      event: event ?? this.event,
      eventElement: eventElement ?? this.eventElement,
      repeat: repeat ?? this.repeat,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Timing.fromYaml(dynamic yaml) => yaml is String
      ? Timing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Timing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Timing cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Timing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Timing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TimingRepeat] /// A set of rules that describe when the event is scheduled.
@JsonSerializable()
class TimingRepeat extends Element {
  TimingRepeat({
    super.id,
    super.extension_,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.countElement,
    this.countMax,
    this.countMaxElement,
    this.duration,
    this.durationElement,
    this.durationMax,
    this.durationMaxElement,
    this.durationUnit,
    this.durationUnitElement,
    this.frequency,
    this.frequencyElement,
    this.frequencyMax,
    this.frequencyMaxElement,
    this.period,
    this.periodElement,
    this.periodMax,
    this.periodMaxElement,
    this.periodUnit,
    this.periodUnitElement,
    this.dayOfWeek,
    this.dayOfWeekElement,
    this.timeOfDay,
    this.timeOfDayElement,
    this.when,
    this.whenElement,
    this.offset,
    this.offsetElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TimingRepeat');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [boundsDuration] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  @JsonKey(name: 'boundsDuration')
  final FhirDuration? boundsDuration;

  /// [boundsRange] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  @JsonKey(name: 'boundsRange')
  final Range? boundsRange;

  /// [boundsPeriod] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  @JsonKey(name: 'boundsPeriod')
  final Period? boundsPeriod;

  /// [count] /// A total count of the desired number of repetitions across the duration of
  /// the entire timing specification. If countMax is present, this element
  /// indicates the lower bound of the allowed range of count values.
  @JsonKey(name: 'count')
  final FhirPositiveInt? count;
  @JsonKey(name: '_count')
  final Element? countElement;

  /// [countMax] /// If present, indicates that the count is a range - so to perform the action
  /// between [count] and [countMax] times.
  @JsonKey(name: 'countMax')
  final FhirPositiveInt? countMax;
  @JsonKey(name: '_countMax')
  final Element? countMaxElement;

  /// [duration] /// How long this thing happens for when it happens. If durationMax is present,
  /// this element indicates the lower bound of the allowed range of the
  /// duration.
  @JsonKey(name: 'duration')
  final FhirDecimal? duration;
  @JsonKey(name: '_duration')
  final Element? durationElement;

  /// [durationMax] /// If present, indicates that the duration is a range - so to perform the
  /// action between [duration] and [durationMax] time length.
  @JsonKey(name: 'durationMax')
  final FhirDecimal? durationMax;
  @JsonKey(name: '_durationMax')
  final Element? durationMaxElement;

  /// [durationUnit] /// The units of time for the duration, in UCUM units.
  @JsonKey(name: 'durationUnit')
  final UnitsOfTime? durationUnit;
  @JsonKey(name: '_durationUnit')
  final Element? durationUnitElement;

  /// [frequency] /// The number of times to repeat the action within the specified period. If
  /// frequencyMax is present, this element indicates the lower bound of the
  /// allowed range of the frequency.
  @JsonKey(name: 'frequency')
  final FhirPositiveInt? frequency;
  @JsonKey(name: '_frequency')
  final Element? frequencyElement;

  /// [frequencyMax] /// If present, indicates that the frequency is a range - so to repeat between
  /// [frequency] and [frequencyMax] times within the period or period range.
  @JsonKey(name: 'frequencyMax')
  final FhirPositiveInt? frequencyMax;
  @JsonKey(name: '_frequencyMax')
  final Element? frequencyMaxElement;

  /// [period] /// Indicates the duration of time over which repetitions are to occur; e.g. to
  /// express "3 times per day", 3 would be the frequency and "1 day" would be
  /// the period. If periodMax is present, this element indicates the lower bound
  /// of the allowed range of the period length.
  @JsonKey(name: 'period')
  final FhirDecimal? period;
  @JsonKey(name: '_period')
  final Element? periodElement;

  /// [periodMax] /// If present, indicates that the period is a range from [period] to
  /// [periodMax], allowing expressing concepts such as "do this once every 3-5
  /// days.
  @JsonKey(name: 'periodMax')
  final FhirDecimal? periodMax;
  @JsonKey(name: '_periodMax')
  final Element? periodMaxElement;

  /// [periodUnit] /// The units of time for the period in UCUM units.
  @JsonKey(name: 'periodUnit')
  final UnitsOfTime? periodUnit;
  @JsonKey(name: '_periodUnit')
  final Element? periodUnitElement;

  /// [dayOfWeek] /// If one or more days of week is provided, then the action happens only on
  /// the specified day(s).
  @JsonKey(name: 'dayOfWeek')
  final List<DaysOfWeek>? dayOfWeek;
  @JsonKey(name: '_dayOfWeek')
  final List<Element>? dayOfWeekElement;

  /// [timeOfDay] /// Specified time of day for action to take place.
  @JsonKey(name: 'timeOfDay')
  final List<FhirTime>? timeOfDay;
  @JsonKey(name: '_timeOfDay')
  final List<Element>? timeOfDayElement;

  /// [when] /// An approximate time period during the day, potentially linked to an event
  /// of daily living that indicates when the action should occur.
  @JsonKey(name: 'when')
  final List<EventTiming>? when;
  @JsonKey(name: '_when')
  final List<Element>? whenElement;

  /// [offset] /// The number of minutes from the event. If the event code does not indicate
  /// whether the minutes is before or after the event, then the offset is
  /// assumed to be after the event.
  @JsonKey(name: 'offset')
  final FhirUnsignedInt? offset;
  @JsonKey(name: '_offset')
  final Element? offsetElement;
  factory TimingRepeat.fromJson(Map<String, dynamic> json) =>
      _$TimingRepeatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimingRepeatToJson(this);

  @override
  TimingRepeat clone() => throw UnimplementedError();
  @override
  TimingRepeat copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDuration? boundsDuration,
    Range? boundsRange,
    Period? boundsPeriod,
    FhirPositiveInt? count,
    Element? countElement,
    FhirPositiveInt? countMax,
    Element? countMaxElement,
    FhirDecimal? duration,
    Element? durationElement,
    FhirDecimal? durationMax,
    Element? durationMaxElement,
    UnitsOfTime? durationUnit,
    Element? durationUnitElement,
    FhirPositiveInt? frequency,
    Element? frequencyElement,
    FhirPositiveInt? frequencyMax,
    Element? frequencyMaxElement,
    FhirDecimal? period,
    Element? periodElement,
    FhirDecimal? periodMax,
    Element? periodMaxElement,
    UnitsOfTime? periodUnit,
    Element? periodUnitElement,
    List<DaysOfWeek>? dayOfWeek,
    List<Element>? dayOfWeekElement,
    List<FhirTime>? timeOfDay,
    List<Element>? timeOfDayElement,
    List<EventTiming>? when,
    List<Element>? whenElement,
    FhirUnsignedInt? offset,
    Element? offsetElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TimingRepeat(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      boundsDuration: boundsDuration ?? this.boundsDuration,
      boundsRange: boundsRange ?? this.boundsRange,
      boundsPeriod: boundsPeriod ?? this.boundsPeriod,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      countMax: countMax ?? this.countMax,
      countMaxElement: countMaxElement ?? this.countMaxElement,
      duration: duration ?? this.duration,
      durationElement: durationElement ?? this.durationElement,
      durationMax: durationMax ?? this.durationMax,
      durationMaxElement: durationMaxElement ?? this.durationMaxElement,
      durationUnit: durationUnit ?? this.durationUnit,
      durationUnitElement: durationUnitElement ?? this.durationUnitElement,
      frequency: frequency ?? this.frequency,
      frequencyElement: frequencyElement ?? this.frequencyElement,
      frequencyMax: frequencyMax ?? this.frequencyMax,
      frequencyMaxElement: frequencyMaxElement ?? this.frequencyMaxElement,
      period: period ?? this.period,
      periodElement: periodElement ?? this.periodElement,
      periodMax: periodMax ?? this.periodMax,
      periodMaxElement: periodMaxElement ?? this.periodMaxElement,
      periodUnit: periodUnit ?? this.periodUnit,
      periodUnitElement: periodUnitElement ?? this.periodUnitElement,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      dayOfWeekElement: dayOfWeekElement ?? this.dayOfWeekElement,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      timeOfDayElement: timeOfDayElement ?? this.timeOfDayElement,
      when: when ?? this.when,
      whenElement: whenElement ?? this.whenElement,
      offset: offset ?? this.offset,
      offsetElement: offsetElement ?? this.offsetElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TimingRepeat.fromYaml(dynamic yaml) => yaml is String
      ? TimingRepeat.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TimingRepeat.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TimingRepeat cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TimingRepeat.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TimingRepeat.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
