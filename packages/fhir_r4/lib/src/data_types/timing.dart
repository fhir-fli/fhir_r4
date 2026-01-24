import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'timing.g.dart';

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Timing.fromJson(
    Map<String, dynamic> json,
  ) {
    return Timing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      event: JsonParser.parsePrimitiveList<FhirDateTime>(
        json,
        'event',
        FhirDateTime.fromJson,
      ),
      repeat: JsonParser.parseObject<TimingRepeat>(
        json,
        'repeat',
        TimingRepeat.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
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
    if (json is Map<String, dynamic>) {
      return Timing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'event',
      event,
    );
    addField(
      'repeat',
      repeat,
    );
    addField(
      'code',
      code,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'event',
      'repeat',
      'code',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'repeat':
        if (repeat != null) {
          fields.add(repeat!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Timing clone() => copyWith();

  /// Copy function for [Timing]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TimingCopyWith<Timing> get copyWith => _$TimingCopyWithImpl<Timing>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Timing) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirDateTime>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeat,
      o.repeat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
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
    BoundsXTimingRepeat? boundsX,
    FhirDuration? boundsDuration,
    Range? boundsRange,
    Period? boundsPeriod,
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
  }) : boundsX = boundsX ?? boundsDuration ?? boundsRange ?? boundsPeriod;

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimingRepeat(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
      ),
      count: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'count',
        FhirPositiveInt.fromJson,
      ),
      countMax: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'countMax',
        FhirPositiveInt.fromJson,
      ),
      duration: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'duration',
        FhirDecimal.fromJson,
      ),
      durationMax: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'durationMax',
        FhirDecimal.fromJson,
      ),
      durationUnit: JsonParser.parsePrimitive<UnitsOfTime>(
        json,
        'durationUnit',
        UnitsOfTime.fromJson,
      ),
      frequency: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frequency',
        FhirPositiveInt.fromJson,
      ),
      frequencyMax: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frequencyMax',
        FhirPositiveInt.fromJson,
      ),
      period: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'period',
        FhirDecimal.fromJson,
      ),
      periodMax: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'periodMax',
        FhirDecimal.fromJson,
      ),
      periodUnit: JsonParser.parsePrimitive<UnitsOfTime>(
        json,
        'periodUnit',
        UnitsOfTime.fromJson,
      ),
      dayOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'dayOfWeek',
        DaysOfWeek.fromJson,
      ),
      timeOfDay: JsonParser.parsePrimitiveList<FhirTime>(
        json,
        'timeOfDay',
        FhirTime.fromJson,
      ),
      when: JsonParser.parsePrimitiveList<EventTiming>(
        json,
        'when',
        EventTiming.fromJson,
      ),
      offset: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'offset',
        FhirUnsignedInt.fromJson,
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
    if (json is Map<String, dynamic>) {
      return TimingRepeat.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TimingRepeat';

  /// [boundsX]
  /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the
  /// timing schedule.
  final BoundsXTimingRepeat? boundsX;

  /// Getter for [boundsDuration] as a FhirDuration
  FhirDuration? get boundsDuration => boundsX?.isAs<FhirDuration>();

  /// Getter for [boundsRange] as a Range
  Range? get boundsRange => boundsX?.isAs<Range>();

  /// Getter for [boundsPeriod] as a Period
  Period? get boundsPeriod => boundsX?.isAs<Period>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    if (boundsX != null) {
      final fhirType = boundsX!.fhirType;
      addField(
        'bounds${fhirType.capitalize()}',
        boundsX,
      );
    }

    addField(
      'count',
      count,
    );
    addField(
      'countMax',
      countMax,
    );
    addField(
      'duration',
      duration,
    );
    addField(
      'durationMax',
      durationMax,
    );
    addField(
      'durationUnit',
      durationUnit,
    );
    addField(
      'frequency',
      frequency,
    );
    addField(
      'frequencyMax',
      frequencyMax,
    );
    addField(
      'period',
      period,
    );
    addField(
      'periodMax',
      periodMax,
    );
    addField(
      'periodUnit',
      periodUnit,
    );
    addField(
      'dayOfWeek',
      dayOfWeek,
    );
    addField(
      'timeOfDay',
      timeOfDay,
    );
    addField(
      'when',
      when,
    );
    addField(
      'offset',
      offset,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'boundsX',
      'count',
      'countMax',
      'duration',
      'durationMax',
      'durationUnit',
      'frequency',
      'frequencyMax',
      'period',
      'periodMax',
      'periodUnit',
      'dayOfWeek',
      'timeOfDay',
      'when',
      'offset',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'bounds':
        if (boundsX != null) {
          fields.add(boundsX!);
        }
      case 'boundsX':
        if (boundsX != null) {
          fields.add(boundsX!);
        }
      case 'boundsDuration':
        if (boundsX is FhirDuration) {
          fields.add(boundsX!);
        }
      case 'boundsRange':
        if (boundsX is Range) {
          fields.add(boundsX!);
        }
      case 'boundsPeriod':
        if (boundsX is Period) {
          fields.add(boundsX!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'countMax':
        if (countMax != null) {
          fields.add(countMax!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'durationMax':
        if (durationMax != null) {
          fields.add(durationMax!);
        }
      case 'durationUnit':
        if (durationUnit != null) {
          fields.add(durationUnit!);
        }
      case 'frequency':
        if (frequency != null) {
          fields.add(frequency!);
        }
      case 'frequencyMax':
        if (frequencyMax != null) {
          fields.add(frequencyMax!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'periodMax':
        if (periodMax != null) {
          fields.add(periodMax!);
        }
      case 'periodUnit':
        if (periodUnit != null) {
          fields.add(periodUnit!);
        }
      case 'dayOfWeek':
        if (dayOfWeek != null) {
          fields.addAll(dayOfWeek!);
        }
      case 'timeOfDay':
        if (timeOfDay != null) {
          fields.addAll(timeOfDay!);
        }
      case 'when':
        if (when != null) {
          fields.addAll(when!);
        }
      case 'offset':
        if (offset != null) {
          fields.add(offset!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  TimingRepeat clone() => copyWith();

  /// Copy function for [TimingRepeat]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TimingRepeatCopyWith<TimingRepeat> get copyWith =>
      _$TimingRepeatCopyWithImpl<TimingRepeat>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TimingRepeat) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      boundsX,
      o.boundsX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      count,
      o.count,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      countMax,
      o.countMax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      durationMax,
      o.durationMax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      durationUnit,
      o.durationUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frequency,
      o.frequency,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frequencyMax,
      o.frequencyMax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      periodMax,
      o.periodMax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      periodUnit,
      o.periodUnit,
    )) {
      return false;
    }
    if (!listEquals<DaysOfWeek>(
      dayOfWeek,
      o.dayOfWeek,
    )) {
      return false;
    }
    if (!listEquals<FhirTime>(
      timeOfDay,
      o.timeOfDay,
    )) {
      return false;
    }
    if (!listEquals<EventTiming>(
      when,
      o.when,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offset,
      o.offset,
    )) {
      return false;
    }
    return true;
  }
}
