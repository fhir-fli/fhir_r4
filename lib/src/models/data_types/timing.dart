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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Timing.empty() => const Timing();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'event':
        {
          if (child is List<FhirDateTime>) {
            return copyWith(event: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'repeat':
        {
          if (child is TimingRepeat) {
            return copyWith(repeat: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'event':
        return ['FhirDateTime'];
      case 'repeat':
        return ['TimingRepeat'];
      case 'code':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Timing]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Timing createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'event':
        {
          return copyWith(event: <FhirDateTime>[]);
        }
      case 'repeat':
        {
          return copyWith(repeat: TimingRepeat.empty());
        }
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Timing clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool event = false,
    bool repeat = false,
    bool code = false,
  }) {
    return Timing(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      event: event ? null : this.event,
      repeat: repeat ? null : this.repeat,
      code: code ? null : this.code,
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
    TimingRepeat? repeat,
    CodeableConcept? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Timing(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      event: event
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.event',
                ),
              )
              .toList() ??
          this.event,
      repeat: repeat?.copyWith(
            objectPath: '$newObjectPath.repeat',
          ) ??
          this.repeat,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Timing) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(repeat, o.repeat)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TimingRepeat.empty() => const TimingRepeat();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
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
        fields.add(boundsX!);
      case 'boundsX':
        fields.add(boundsX!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'boundsX':
        {
          if (child is BoundsXTimingRepeat) {
            // child is e.g. SubjectX union
            return copyWith(boundsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'boundsFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(boundsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'boundsRange':
        {
          if (child is Range) {
            return copyWith(boundsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'boundsPeriod':
        {
          if (child is Period) {
            return copyWith(boundsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'count':
        {
          if (child is FhirPositiveInt) {
            return copyWith(count: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'countMax':
        {
          if (child is FhirPositiveInt) {
            return copyWith(countMax: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'duration':
        {
          if (child is FhirDecimal) {
            return copyWith(duration: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'durationMax':
        {
          if (child is FhirDecimal) {
            return copyWith(durationMax: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'durationUnit':
        {
          if (child is UnitsOfTime) {
            return copyWith(durationUnit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'frequency':
        {
          if (child is FhirPositiveInt) {
            return copyWith(frequency: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'frequencyMax':
        {
          if (child is FhirPositiveInt) {
            return copyWith(frequencyMax: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is FhirDecimal) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'periodMax':
        {
          if (child is FhirDecimal) {
            return copyWith(periodMax: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'periodUnit':
        {
          if (child is UnitsOfTime) {
            return copyWith(periodUnit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dayOfWeek':
        {
          if (child is List<DaysOfWeek>) {
            return copyWith(dayOfWeek: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeOfDay':
        {
          if (child is List<FhirTime>) {
            return copyWith(timeOfDay: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'when':
        {
          if (child is List<EventTiming>) {
            return copyWith(when: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'offset':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(offset: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'bounds':
      case 'boundsX':
        return ['FhirDuration', 'Range', 'Period'];
      case 'boundsDuration':
        return ['FhirDuration'];
      case 'boundsRange':
        return ['Range'];
      case 'boundsPeriod':
        return ['Period'];
      case 'count':
        return ['FhirPositiveInt'];
      case 'countMax':
        return ['FhirPositiveInt'];
      case 'duration':
        return ['FhirDecimal'];
      case 'durationMax':
        return ['FhirDecimal'];
      case 'durationUnit':
        return ['FhirCode'];
      case 'frequency':
        return ['FhirPositiveInt'];
      case 'frequencyMax':
        return ['FhirPositiveInt'];
      case 'period':
        return ['FhirDecimal'];
      case 'periodMax':
        return ['FhirDecimal'];
      case 'periodUnit':
        return ['FhirCode'];
      case 'dayOfWeek':
        return ['FhirCode'];
      case 'timeOfDay':
        return ['FhirTime'];
      case 'when':
        return ['FhirCode'];
      case 'offset':
        return ['FhirUnsignedInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TimingRepeat]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TimingRepeat createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'bounds':
      case 'boundsX':
      case 'boundsDuration':
        {
          return copyWith(boundsX: FhirDuration.empty());
        }
      case 'boundsRange':
        {
          return copyWith(boundsX: Range.empty());
        }
      case 'boundsPeriod':
        {
          return copyWith(boundsX: Period.empty());
        }
      case 'count':
        {
          return copyWith(count: FhirPositiveInt.empty());
        }
      case 'countMax':
        {
          return copyWith(countMax: FhirPositiveInt.empty());
        }
      case 'duration':
        {
          return copyWith(duration: FhirDecimal.empty());
        }
      case 'durationMax':
        {
          return copyWith(durationMax: FhirDecimal.empty());
        }
      case 'durationUnit':
        {
          return copyWith(durationUnit: UnitsOfTime.empty());
        }
      case 'frequency':
        {
          return copyWith(frequency: FhirPositiveInt.empty());
        }
      case 'frequencyMax':
        {
          return copyWith(frequencyMax: FhirPositiveInt.empty());
        }
      case 'period':
        {
          return copyWith(period: FhirDecimal.empty());
        }
      case 'periodMax':
        {
          return copyWith(periodMax: FhirDecimal.empty());
        }
      case 'periodUnit':
        {
          return copyWith(periodUnit: UnitsOfTime.empty());
        }
      case 'dayOfWeek':
        {
          return copyWith(dayOfWeek: <DaysOfWeek>[]);
        }
      case 'timeOfDay':
        {
          return copyWith(timeOfDay: <FhirTime>[]);
        }
      case 'when':
        {
          return copyWith(when: <EventTiming>[]);
        }
      case 'offset':
        {
          return copyWith(offset: FhirUnsignedInt.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TimingRepeat clear({
    bool id = false,
    bool extension_ = false,
    bool bounds = false,
    bool count = false,
    bool countMax = false,
    bool duration = false,
    bool durationMax = false,
    bool durationUnit = false,
    bool frequency = false,
    bool frequencyMax = false,
    bool period = false,
    bool periodMax = false,
    bool periodUnit = false,
    bool dayOfWeek = false,
    bool timeOfDay = false,
    bool when = false,
    bool offset = false,
  }) {
    return TimingRepeat(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      boundsX: bounds ? null : boundsX,
      count: count ? null : this.count,
      countMax: countMax ? null : this.countMax,
      duration: duration ? null : this.duration,
      durationMax: durationMax ? null : this.durationMax,
      durationUnit: durationUnit ? null : this.durationUnit,
      frequency: frequency ? null : this.frequency,
      frequencyMax: frequencyMax ? null : this.frequencyMax,
      period: period ? null : this.period,
      periodMax: periodMax ? null : this.periodMax,
      periodUnit: periodUnit ? null : this.periodUnit,
      dayOfWeek: dayOfWeek ? null : this.dayOfWeek,
      timeOfDay: timeOfDay ? null : this.timeOfDay,
      when: when ? null : this.when,
      offset: offset ? null : this.offset,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TimingRepeat(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      boundsX: boundsX?.copyWith(
            objectPath: '$newObjectPath.boundsX',
          ) as BoundsXTimingRepeat? ??
          this.boundsX,
      count: count?.copyWith(
            objectPath: '$newObjectPath.count',
          ) ??
          this.count,
      countMax: countMax?.copyWith(
            objectPath: '$newObjectPath.countMax',
          ) ??
          this.countMax,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
      durationMax: durationMax?.copyWith(
            objectPath: '$newObjectPath.durationMax',
          ) ??
          this.durationMax,
      durationUnit: durationUnit?.copyWith(
            objectPath: '$newObjectPath.durationUnit',
          ) ??
          this.durationUnit,
      frequency: frequency?.copyWith(
            objectPath: '$newObjectPath.frequency',
          ) ??
          this.frequency,
      frequencyMax: frequencyMax?.copyWith(
            objectPath: '$newObjectPath.frequencyMax',
          ) ??
          this.frequencyMax,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      periodMax: periodMax?.copyWith(
            objectPath: '$newObjectPath.periodMax',
          ) ??
          this.periodMax,
      periodUnit: periodUnit?.copyWith(
            objectPath: '$newObjectPath.periodUnit',
          ) ??
          this.periodUnit,
      dayOfWeek: dayOfWeek
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dayOfWeek',
                ),
              )
              .toList() ??
          this.dayOfWeek,
      timeOfDay: timeOfDay
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.timeOfDay',
                ),
              )
              .toList() ??
          this.timeOfDay,
      when: when
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.when',
                ),
              )
              .toList() ??
          this.when,
      offset: offset?.copyWith(
            objectPath: '$newObjectPath.offset',
          ) ??
          this.offset,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TimingRepeat) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(boundsX, o.boundsX)) {
      return false;
    }
    if (!equalsDeepWithNull(count, o.count)) {
      return false;
    }
    if (!equalsDeepWithNull(countMax, o.countMax)) {
      return false;
    }
    if (!equalsDeepWithNull(duration, o.duration)) {
      return false;
    }
    if (!equalsDeepWithNull(durationMax, o.durationMax)) {
      return false;
    }
    if (!equalsDeepWithNull(durationUnit, o.durationUnit)) {
      return false;
    }
    if (!equalsDeepWithNull(frequency, o.frequency)) {
      return false;
    }
    if (!equalsDeepWithNull(frequencyMax, o.frequencyMax)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(periodMax, o.periodMax)) {
      return false;
    }
    if (!equalsDeepWithNull(periodUnit, o.periodUnit)) {
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
    if (!equalsDeepWithNull(offset, o.offset)) {
      return false;
    }
    return true;
  }
}
