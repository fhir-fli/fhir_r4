import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Timing] /// Specifies an event that may occur multiple times. Timing schedules are used
/// to record when things are planned, expected or requested to occur. The most
/// common usage is in dosage instructions for medications. They are also used
/// when planning care of various kinds, and may be used for reporting the
/// schedule to which past regular activities were carried out.
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
  });

  @override
  String get fhirType => 'Timing';

  @Id()
  int dbId = 0;

  /// [event] /// Identifies specific times when the event occurs.
  final List<FhirDateTime>? event;
  final List<Element>? eventElement;

  /// [repeat] /// A set of rules that describe when the event is scheduled.
  final TimingRepeat? repeat;

  /// [code] /// A code for the timing schedule (or just text in code.text). Some codes such
  /// as BID are ubiquitous, but many institutions define their own additional
  /// codes. If a code is provided, the code is understood to be a complete
  /// statement of whatever is specified in the structured timing data, and
  /// either the code or the data may be used to interpret the Timing, with the
  /// exception that .repeat.bounds still applies over the code (and is not
  /// contained in the code).
  final CodeableConcept? code;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (event != null && event!.isNotEmpty) {
      json['event'] = event!.map((FhirDateTime v) => v.value).toList();
    }
    if (eventElement != null && eventElement!.isNotEmpty) {
      json['_event'] = eventElement!.map((Element v) => v.toJson()).toList();
    }
    if (repeat != null) {
      json['repeat'] = repeat!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    return json;
  }

  factory Timing.fromJson(Map<String, dynamic> json) {
    return Timing(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      event: json['event'] != null
          ? (json['event'] as List<dynamic>)
              .map<FhirDateTime>(
                  (dynamic v) => FhirDateTime.fromJson(v as dynamic))
              .toList()
          : null,
      eventElement: json['_event'] != null
          ? (json['_event'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      repeat: json['repeat'] != null
          ? TimingRepeat.fromJson(json['repeat'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Timing clone() => throw UnimplementedError();
  @override
  Timing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirDateTime>? event,
    List<Element>? eventElement,
    TimingRepeat? repeat,
    CodeableConcept? code,
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
  });

  @override
  String get fhirType => 'TimingRepeat';

  @Id()
  int dbId = 0;

  /// [boundsDuration] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final FhirDuration? boundsDuration;

  /// [boundsRange] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final Range? boundsRange;

  /// [boundsPeriod] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final Period? boundsPeriod;

  /// [count] /// A total count of the desired number of repetitions across the duration of
  /// the entire timing specification. If countMax is present, this element
  /// indicates the lower bound of the allowed range of count values.
  final FhirPositiveInt? count;
  final Element? countElement;

  /// [countMax] /// If present, indicates that the count is a range - so to perform the action
  /// between [count] and [countMax] times.
  final FhirPositiveInt? countMax;
  final Element? countMaxElement;

  /// [duration] /// How long this thing happens for when it happens. If durationMax is present,
  /// this element indicates the lower bound of the allowed range of the
  /// duration.
  final FhirDecimal? duration;
  final Element? durationElement;

  /// [durationMax] /// If present, indicates that the duration is a range - so to perform the
  /// action between [duration] and [durationMax] time length.
  final FhirDecimal? durationMax;
  final Element? durationMaxElement;

  /// [durationUnit] /// The units of time for the duration, in UCUM units.
  final UnitsOfTime? durationUnit;
  final Element? durationUnitElement;

  /// [frequency] /// The number of times to repeat the action within the specified period. If
  /// frequencyMax is present, this element indicates the lower bound of the
  /// allowed range of the frequency.
  final FhirPositiveInt? frequency;
  final Element? frequencyElement;

  /// [frequencyMax] /// If present, indicates that the frequency is a range - so to repeat between
  /// [frequency] and [frequencyMax] times within the period or period range.
  final FhirPositiveInt? frequencyMax;
  final Element? frequencyMaxElement;

  /// [period] /// Indicates the duration of time over which repetitions are to occur; e.g. to
  /// express "3 times per day", 3 would be the frequency and "1 day" would be
  /// the period. If periodMax is present, this element indicates the lower bound
  /// of the allowed range of the period length.
  final FhirDecimal? period;
  final Element? periodElement;

  /// [periodMax] /// If present, indicates that the period is a range from [period] to
  /// [periodMax], allowing expressing concepts such as "do this once every 3-5
  /// days.
  final FhirDecimal? periodMax;
  final Element? periodMaxElement;

  /// [periodUnit] /// The units of time for the period in UCUM units.
  final UnitsOfTime? periodUnit;
  final Element? periodUnitElement;

  /// [dayOfWeek] /// If one or more days of week is provided, then the action happens only on
  /// the specified day(s).
  final List<DaysOfWeek>? dayOfWeek;
  final List<Element>? dayOfWeekElement;

  /// [timeOfDay] /// Specified time of day for action to take place.
  final List<FhirTime>? timeOfDay;
  final List<Element>? timeOfDayElement;

  /// [when] /// An approximate time period during the day, potentially linked to an event
  /// of daily living that indicates when the action should occur.
  final List<EventTiming>? when;
  final List<Element>? whenElement;

  /// [offset] /// The number of minutes from the event. If the event code does not indicate
  /// whether the minutes is before or after the event, then the offset is
  /// assumed to be after the event.
  final FhirUnsignedInt? offset;
  final Element? offsetElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (boundsDuration != null) {
      json['boundsDuration'] = boundsDuration!.toJson();
    }
    if (boundsRange != null) {
      json['boundsRange'] = boundsRange!.toJson();
    }
    if (boundsPeriod != null) {
      json['boundsPeriod'] = boundsPeriod!.toJson();
    }
    if (count?.value != null) {
      json['count'] = count!.value;
    }
    if (countElement != null) {
      json['_count'] = countElement!.toJson();
    }
    if (countMax?.value != null) {
      json['countMax'] = countMax!.value;
    }
    if (countMaxElement != null) {
      json['_countMax'] = countMaxElement!.toJson();
    }
    if (duration?.value != null) {
      json['duration'] = duration!.value;
    }
    if (durationElement != null) {
      json['_duration'] = durationElement!.toJson();
    }
    if (durationMax?.value != null) {
      json['durationMax'] = durationMax!.value;
    }
    if (durationMaxElement != null) {
      json['_durationMax'] = durationMaxElement!.toJson();
    }
    if (durationUnit != null) {
      json['durationUnit'] = durationUnit!.toJson();
    }
    if (frequency?.value != null) {
      json['frequency'] = frequency!.value;
    }
    if (frequencyElement != null) {
      json['_frequency'] = frequencyElement!.toJson();
    }
    if (frequencyMax?.value != null) {
      json['frequencyMax'] = frequencyMax!.value;
    }
    if (frequencyMaxElement != null) {
      json['_frequencyMax'] = frequencyMaxElement!.toJson();
    }
    if (period?.value != null) {
      json['period'] = period!.value;
    }
    if (periodElement != null) {
      json['_period'] = periodElement!.toJson();
    }
    if (periodMax?.value != null) {
      json['periodMax'] = periodMax!.value;
    }
    if (periodMaxElement != null) {
      json['_periodMax'] = periodMaxElement!.toJson();
    }
    if (periodUnit != null) {
      json['periodUnit'] = periodUnit!.toJson();
    }
    if (dayOfWeek != null && dayOfWeek!.isNotEmpty) {
      json['dayOfWeek'] =
          dayOfWeek!.map<dynamic>((DaysOfWeek v) => v.toJson()).toList();
    }
    if (timeOfDay != null && timeOfDay!.isNotEmpty) {
      json['timeOfDay'] = timeOfDay!.map((FhirTime v) => v.value).toList();
    }
    if (timeOfDayElement != null && timeOfDayElement!.isNotEmpty) {
      json['_timeOfDay'] =
          timeOfDayElement!.map((Element v) => v.toJson()).toList();
    }
    if (when != null && when!.isNotEmpty) {
      json['when'] = when!.map<dynamic>((EventTiming v) => v.toJson()).toList();
    }
    if (offset?.value != null) {
      json['offset'] = offset!.value;
    }
    if (offsetElement != null) {
      json['_offset'] = offsetElement!.toJson();
    }
    return json;
  }

  factory TimingRepeat.fromJson(Map<String, dynamic> json) {
    return TimingRepeat(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      boundsDuration: json['boundsDuration'] != null
          ? FhirDuration.fromJson(
              json['boundsDuration'] as Map<String, dynamic>)
          : null,
      boundsRange: json['boundsRange'] != null
          ? Range.fromJson(json['boundsRange'] as Map<String, dynamic>)
          : null,
      boundsPeriod: json['boundsPeriod'] != null
          ? Period.fromJson(json['boundsPeriod'] as Map<String, dynamic>)
          : null,
      count: json['count'] != null ? FhirPositiveInt(json['count']) : null,
      countElement: json['_count'] != null
          ? Element.fromJson(json['_count'] as Map<String, dynamic>)
          : null,
      countMax:
          json['countMax'] != null ? FhirPositiveInt(json['countMax']) : null,
      countMaxElement: json['_countMax'] != null
          ? Element.fromJson(json['_countMax'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null ? FhirDecimal(json['duration']) : null,
      durationElement: json['_duration'] != null
          ? Element.fromJson(json['_duration'] as Map<String, dynamic>)
          : null,
      durationMax:
          json['durationMax'] != null ? FhirDecimal(json['durationMax']) : null,
      durationMaxElement: json['_durationMax'] != null
          ? Element.fromJson(json['_durationMax'] as Map<String, dynamic>)
          : null,
      durationUnit: json['durationUnit'] != null
          ? UnitsOfTime.fromJson(json['durationUnit'] as Map<String, dynamic>)
          : null,
      frequency:
          json['frequency'] != null ? FhirPositiveInt(json['frequency']) : null,
      frequencyElement: json['_frequency'] != null
          ? Element.fromJson(json['_frequency'] as Map<String, dynamic>)
          : null,
      frequencyMax: json['frequencyMax'] != null
          ? FhirPositiveInt(json['frequencyMax'])
          : null,
      frequencyMaxElement: json['_frequencyMax'] != null
          ? Element.fromJson(json['_frequencyMax'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null ? FhirDecimal(json['period']) : null,
      periodElement: json['_period'] != null
          ? Element.fromJson(json['_period'] as Map<String, dynamic>)
          : null,
      periodMax:
          json['periodMax'] != null ? FhirDecimal(json['periodMax']) : null,
      periodMaxElement: json['_periodMax'] != null
          ? Element.fromJson(json['_periodMax'] as Map<String, dynamic>)
          : null,
      periodUnit: json['periodUnit'] != null
          ? UnitsOfTime.fromJson(json['periodUnit'] as Map<String, dynamic>)
          : null,
      dayOfWeek: json['dayOfWeek'] != null
          ? (json['dayOfWeek'] as List<dynamic>)
              .map<DaysOfWeek>(
                  (dynamic v) => DaysOfWeek.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      timeOfDay: json['timeOfDay'] != null
          ? (json['timeOfDay'] as List<dynamic>)
              .map<FhirTime>((dynamic v) => FhirTime.fromJson(v as dynamic))
              .toList()
          : null,
      timeOfDayElement: json['_timeOfDay'] != null
          ? (json['_timeOfDay'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      when: json['when'] != null
          ? (json['when'] as List<dynamic>)
              .map<EventTiming>((dynamic v) =>
                  EventTiming.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      offset: json['offset'] != null ? FhirUnsignedInt(json['offset']) : null,
      offsetElement: json['_offset'] != null
          ? Element.fromJson(json['_offset'] as Map<String, dynamic>)
          : null,
    );
  }
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
