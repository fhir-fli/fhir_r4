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
class Timing extends BackboneType
    implements
        TimingXActivityDefinition,
        ScheduledXCarePlanDetail,
        OccurrenceXChargeItem,
        OccurrenceXContractAction,
        OccurrenceXDeviceRequest,
        TimingXDeviceUseStatement,
        EffectiveXObservation,
        ValueXParametersParameter,
        TimingXPlanDefinitionAction,
        TimingXRequestGroupAction,
        StudyEffectiveXResearchElementDefinitionCharacteristic,
        ParticipantEffectiveXResearchElementDefinitionCharacteristic,
        OccurrenceXServiceRequest,
        DefaultValueXStructureMapSource,
        OccurrenceXSupplyDelivery,
        OccurrenceXSupplyRequest,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        TimingXTriggerDefinition {
  /// Primary constructor for
  /// [Timing]

  const Timing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.repeat,
    this.code,
    super.disallowExtensions,
    super.objectPath = 'Timing',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Timing.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Timing';
    return Timing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      event: JsonParser.parsePrimitiveList<FhirDateTime>(
        json,
        'event',
        FhirDateTime.fromJson,
        '$objectPath.event',
      ),
      repeat: JsonParser.parseObject<TimingRepeat>(
        json,
        'repeat',
        TimingRepeat.fromJson,
        '$objectPath.repeat',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [Timing]
  /// from a [String] or [YamlMap] object
  factory Timing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Timing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Timing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Timing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Timing]
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('event', event);
    addField('repeat', repeat);
    addField('code', code);
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
  }) {
    return Timing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      event: event ?? this.event,
      repeat: repeat ?? this.repeat,
      code: code ?? this.code,
    );
  }
}

/// [TimingRepeat]
/// A set of rules that describe when the event is scheduled.
class TimingRepeat extends Element {
  /// Primary constructor for
  /// [TimingRepeat]

  const TimingRepeat({
    super.id,
    super.extension_,
    this.boundsX,
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
    super.disallowExtensions,
    super.objectPath = 'TimingRepeat',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'TimingRepeat';
    return TimingRepeat(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      boundsX: JsonParser.parsePolymorphic<BoundsXTimingRepeat>(
        json,
        {
          'boundsDuration': FhirDuration.fromJson,
          'boundsRange': Range.fromJson,
          'boundsPeriod': Period.fromJson,
        },
        objectPath,
      ),
      count: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'count',
        FhirPositiveInt.fromJson,
        '$objectPath.count',
      ),
      countMax: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'countMax',
        FhirPositiveInt.fromJson,
        '$objectPath.countMax',
      ),
      duration: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'duration',
        FhirDecimal.fromJson,
        '$objectPath.duration',
      ),
      durationMax: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'durationMax',
        FhirDecimal.fromJson,
        '$objectPath.durationMax',
      ),
      durationUnit: JsonParser.parsePrimitive<UnitsOfTime>(
        json,
        'durationUnit',
        UnitsOfTime.fromJson,
        '$objectPath.durationUnit',
      ),
      frequency: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frequency',
        FhirPositiveInt.fromJson,
        '$objectPath.frequency',
      ),
      frequencyMax: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frequencyMax',
        FhirPositiveInt.fromJson,
        '$objectPath.frequencyMax',
      ),
      period: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'period',
        FhirDecimal.fromJson,
        '$objectPath.period',
      ),
      periodMax: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'periodMax',
        FhirDecimal.fromJson,
        '$objectPath.periodMax',
      ),
      periodUnit: JsonParser.parsePrimitive<UnitsOfTime>(
        json,
        'periodUnit',
        UnitsOfTime.fromJson,
        '$objectPath.periodUnit',
      ),
      dayOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'dayOfWeek',
        DaysOfWeek.fromJson,
        '$objectPath.dayOfWeek',
      ),
      timeOfDay: JsonParser.parsePrimitiveList<FhirTime>(
        json,
        'timeOfDay',
        FhirTime.fromJson,
        '$objectPath.timeOfDay',
      ),
      when: JsonParser.parsePrimitiveList<EventTiming>(
        json,
        'when',
        EventTiming.fromJson,
        '$objectPath.when',
      ),
      offset: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'offset',
        FhirUnsignedInt.fromJson,
        '$objectPath.offset',
      ),
    );
  }

  /// Deserialize [TimingRepeat]
  /// from a [String] or [YamlMap] object
  factory TimingRepeat.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TimingRepeat.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TimingRepeat.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TimingRepeat '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TimingRepeat]
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

  /// [boundsX]
  /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the
  /// timing schedule.
  final BoundsXTimingRepeat? boundsX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    if (boundsX != null) {
      final fhirType = boundsX!.fhirType;
      addField('bounds${fhirType.capitalize()}', boundsX);
    }

    addField('count', count);
    addField('countMax', countMax);
    addField('duration', duration);
    addField('durationMax', durationMax);
    addField('durationUnit', durationUnit);
    addField('frequency', frequency);
    addField('frequencyMax', frequencyMax);
    addField('period', period);
    addField('periodMax', periodMax);
    addField('periodUnit', periodUnit);
    addField('dayOfWeek', dayOfWeek);
    addField('timeOfDay', timeOfDay);
    addField('when', when);
    addField('offset', offset);
    return json;
  }

  @override
  TimingRepeat clone() => throw UnimplementedError();
  @override
  TimingRepeat copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    BoundsXTimingRepeat? boundsX,
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
  }) {
    return TimingRepeat(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      boundsX: boundsX ?? this.boundsX,
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
    );
  }
}
