import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Timing]
/// Specifies an event that may occur multiple times. Timing schedules are
/// used to record when things are planned, expected or requested to occur.
/// The most common usage is in dosage instructions for medications. They
/// are also used when planning care of various kinds, and may be used for
/// reporting the schedule to which past regular activities were carried
/// out.
class Timing extends BackboneType {
  /// Primary constructor for
  /// [Timing]

  Timing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.repeat,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Timing.fromJson(
    Map<String, dynamic> json,
  ) {
    return Timing(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      event: parsePrimitiveList<FhirDateTime>(
        json['event'] as List<dynamic>?,
        json['_event'] as List<dynamic>?,
        fromJson: FhirDateTime.fromJson,
      ),
      repeat: json['repeat'] != null
          ? TimingRepeat.fromJson(
              json['repeat'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Timing]
  /// from a [String] or [YamlMap] object
  factory Timing.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Timing.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Timing.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Timing '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Timing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Timing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Timing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Timing';

  /// [event]
  /// Identifies specific times when the event occurs.
  final List<FhirDateTime>? event;

  /// [repeat]
  /// A set of rules that describe when the event is scheduled.
  final TimingRepeat? repeat;

  /// [code]
  /// A code for the timing schedule (or just text in code.text). Some codes
  /// such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing
  /// data, and either the code or the data may be used to interpret the
  /// Timing, with the exception that .repeat.bounds still applies over the
  /// code (and is not contained in the code).
  final CodeableConcept? code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (event != null && event!.isNotEmpty) {
      final fieldJson2 = event!.map((e) => e.toJson()).toList();
      json['event'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_event'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (repeat != null) {
      json['repeat'] = repeat!.toJson();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    return json;
  }

  @override
  Timing clone() => throw UnimplementedError();
  @override
  Timing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirDateTime>? event,
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
}

/// [TimingRepeat]
/// A set of rules that describe when the event is scheduled.
class TimingRepeat extends Element {
  /// Primary constructor for
  /// [TimingRepeat]

  TimingRepeat({
    super.id,
    super.extension_,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.countMax,
    this.duration,
    this.durationMax,
    this.durationUnit,
    this.frequency,
    this.frequencyMax,
    this.period,
    this.periodMax,
    this.periodUnit,
    this.dayOfWeek,
    this.timeOfDay,
    this.when,
    this.offset,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimingRepeat(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      boundsDuration: json['boundsDuration'] != null
          ? FhirDuration.fromJson(
              json['boundsDuration'] as Map<String, dynamic>,
            )
          : null,
      boundsRange: json['boundsRange'] != null
          ? Range.fromJson(
              json['boundsRange'] as Map<String, dynamic>,
            )
          : null,
      boundsPeriod: json['boundsPeriod'] != null
          ? Period.fromJson(
              json['boundsPeriod'] as Map<String, dynamic>,
            )
          : null,
      count: (json['count'] != null || json['_count'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['count'],
              '_value': json['_count'],
            })
          : null,
      countMax: (json['countMax'] != null || json['_countMax'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['countMax'],
              '_value': json['_countMax'],
            })
          : null,
      duration: (json['duration'] != null || json['_duration'] != null)
          ? FhirDecimal.fromJson({
              'value': json['duration'],
              '_value': json['_duration'],
            })
          : null,
      durationMax: (json['durationMax'] != null || json['_durationMax'] != null)
          ? FhirDecimal.fromJson({
              'value': json['durationMax'],
              '_value': json['_durationMax'],
            })
          : null,
      durationUnit:
          (json['durationUnit'] != null || json['_durationUnit'] != null)
              ? UnitsOfTime.fromJson({
                  'value': json['durationUnit'],
                  '_value': json['_durationUnit'],
                })
              : null,
      frequency: (json['frequency'] != null || json['_frequency'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['frequency'],
              '_value': json['_frequency'],
            })
          : null,
      frequencyMax:
          (json['frequencyMax'] != null || json['_frequencyMax'] != null)
              ? FhirPositiveInt.fromJson({
                  'value': json['frequencyMax'],
                  '_value': json['_frequencyMax'],
                })
              : null,
      period: (json['period'] != null || json['_period'] != null)
          ? FhirDecimal.fromJson({
              'value': json['period'],
              '_value': json['_period'],
            })
          : null,
      periodMax: (json['periodMax'] != null || json['_periodMax'] != null)
          ? FhirDecimal.fromJson({
              'value': json['periodMax'],
              '_value': json['_periodMax'],
            })
          : null,
      periodUnit: (json['periodUnit'] != null || json['_periodUnit'] != null)
          ? UnitsOfTime.fromJson({
              'value': json['periodUnit'],
              '_value': json['_periodUnit'],
            })
          : null,
      dayOfWeek: parsePrimitiveList<DaysOfWeek>(
        json['dayOfWeek'] as List<dynamic>?,
        json['_dayOfWeek'] as List<dynamic>?,
        fromJson: DaysOfWeek.fromJson,
      ),
      timeOfDay: parsePrimitiveList<FhirTime>(
        json['timeOfDay'] as List<dynamic>?,
        json['_timeOfDay'] as List<dynamic>?,
        fromJson: FhirTime.fromJson,
      ),
      when: parsePrimitiveList<EventTiming>(
        json['when'] as List<dynamic>?,
        json['_when'] as List<dynamic>?,
        fromJson: EventTiming.fromJson,
      ),
      offset: (json['offset'] != null || json['_offset'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['offset'],
              '_value': json['_offset'],
            })
          : null,
    );
  }

  /// Deserialize [TimingRepeat]
  /// from a [String] or [YamlMap] object
  factory TimingRepeat.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TimingRepeat.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TimingRepeat.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TimingRepeat '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TimingRepeat]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TimingRepeat.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TimingRepeat.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TimingRepeat';

  /// [boundsDuration]
  /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the
  /// timing schedule.
  final FhirDuration? boundsDuration;

  /// [boundsRange]
  /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the
  /// timing schedule.
  final Range? boundsRange;

  /// [boundsPeriod]
  /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the
  /// timing schedule.
  final Period? boundsPeriod;

  /// [count]
  /// A total count of the desired number of repetitions across the duration
  /// of the entire timing specification. If countMax is present, this
  /// element indicates the lower bound of the allowed range of count values.
  final FhirPositiveInt? count;

  /// [countMax]
  /// If present, indicates that the count is a range - so to perform the
  /// action between [count] and [countMax] times.
  final FhirPositiveInt? countMax;

  /// [duration]
  /// How long this thing happens for when it happens. If durationMax is
  /// present, this element indicates the lower bound of the allowed range of
  /// the duration.
  final FhirDecimal? duration;

  /// [durationMax]
  /// If present, indicates that the duration is a range - so to perform the
  /// action between [duration] and [durationMax] time length.
  final FhirDecimal? durationMax;

  /// [durationUnit]
  /// The units of time for the duration, in UCUM units.
  final UnitsOfTime? durationUnit;

  /// [frequency]
  /// The number of times to repeat the action within the specified period.
  /// If frequencyMax is present, this element indicates the lower bound of
  /// the allowed range of the frequency.
  final FhirPositiveInt? frequency;

  /// [frequencyMax]
  /// If present, indicates that the frequency is a range - so to repeat
  /// between [frequency] and [frequencyMax] times within the period or
  /// period range.
  final FhirPositiveInt? frequencyMax;

  /// [period]
  /// Indicates the duration of time over which repetitions are to occur;
  /// e.g. to express "3 times per day", 3 would be the frequency and "1 day"
  /// would be the period. If periodMax is present, this element indicates
  /// the lower bound of the allowed range of the period length.
  final FhirDecimal? period;

  /// [periodMax]
  /// If present, indicates that the period is a range from [period] to
  /// [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  final FhirDecimal? periodMax;

  /// [periodUnit]
  /// The units of time for the period in UCUM units.
  final UnitsOfTime? periodUnit;

  /// [dayOfWeek]
  /// If one or more days of week is provided, then the action happens only
  /// on the specified day(s).
  final List<DaysOfWeek>? dayOfWeek;

  /// [timeOfDay]
  /// Specified time of day for action to take place.
  final List<FhirTime>? timeOfDay;

  /// [when]
  /// An approximate time period during the day, potentially linked to an
  /// event of daily living that indicates when the action should occur.
  final List<EventTiming>? when;

  /// [offset]
  /// The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the
  /// offset is assumed to be after the event.
  final FhirUnsignedInt? offset;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
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

    if (count != null) {
      final fieldJson4 = count!.toJson();
      json['count'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_count'] = fieldJson4['_value'];
      }
    }

    if (countMax != null) {
      final fieldJson5 = countMax!.toJson();
      json['countMax'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_countMax'] = fieldJson5['_value'];
      }
    }

    if (duration != null) {
      final fieldJson6 = duration!.toJson();
      json['duration'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_duration'] = fieldJson6['_value'];
      }
    }

    if (durationMax != null) {
      final fieldJson7 = durationMax!.toJson();
      json['durationMax'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_durationMax'] = fieldJson7['_value'];
      }
    }

    if (durationUnit != null) {
      final fieldJson8 = durationUnit!.toJson();
      json['durationUnit'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_durationUnit'] = fieldJson8['_value'];
      }
    }

    if (frequency != null) {
      final fieldJson9 = frequency!.toJson();
      json['frequency'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_frequency'] = fieldJson9['_value'];
      }
    }

    if (frequencyMax != null) {
      final fieldJson10 = frequencyMax!.toJson();
      json['frequencyMax'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_frequencyMax'] = fieldJson10['_value'];
      }
    }

    if (period != null) {
      final fieldJson11 = period!.toJson();
      json['period'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_period'] = fieldJson11['_value'];
      }
    }

    if (periodMax != null) {
      final fieldJson12 = periodMax!.toJson();
      json['periodMax'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_periodMax'] = fieldJson12['_value'];
      }
    }

    if (periodUnit != null) {
      final fieldJson13 = periodUnit!.toJson();
      json['periodUnit'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_periodUnit'] = fieldJson13['_value'];
      }
    }

    if (dayOfWeek != null && dayOfWeek!.isNotEmpty) {
      final fieldJson14 = dayOfWeek!.map((e) => e.toJson()).toList();
      json['dayOfWeek'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_dayOfWeek'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (timeOfDay != null && timeOfDay!.isNotEmpty) {
      final fieldJson15 = timeOfDay!.map((e) => e.toJson()).toList();
      json['timeOfDay'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_timeOfDay'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (when != null && when!.isNotEmpty) {
      final fieldJson16 = when!.map((e) => e.toJson()).toList();
      json['when'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_when'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (offset != null) {
      final fieldJson17 = offset!.toJson();
      json['offset'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_offset'] = fieldJson17['_value'];
      }
    }

    return json;
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
    FhirPositiveInt? countMax,
    FhirDecimal? duration,
    FhirDecimal? durationMax,
    UnitsOfTime? durationUnit,
    FhirPositiveInt? frequency,
    FhirPositiveInt? frequencyMax,
    FhirDecimal? period,
    FhirDecimal? periodMax,
    UnitsOfTime? periodUnit,
    List<DaysOfWeek>? dayOfWeek,
    List<FhirTime>? timeOfDay,
    List<EventTiming>? when,
    FhirUnsignedInt? offset,
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
      countMax: countMax ?? this.countMax,
      duration: duration ?? this.duration,
      durationMax: durationMax ?? this.durationMax,
      durationUnit: durationUnit ?? this.durationUnit,
      frequency: frequency ?? this.frequency,
      frequencyMax: frequencyMax ?? this.frequencyMax,
      period: period ?? this.period,
      periodMax: periodMax ?? this.periodMax,
      periodUnit: periodUnit ?? this.periodUnit,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      when: when ?? this.when,
      offset: offset ?? this.offset,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
