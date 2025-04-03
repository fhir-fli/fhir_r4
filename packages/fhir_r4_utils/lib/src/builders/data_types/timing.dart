import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        StringExtensionForFHIR,
        Timing,
        TimingRepeat,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [TimingBuilder]
/// Specifies an event that may occur multiple times. Timing schedules are
/// used to record when things are planned, expected or requested to occur.
/// The most common usage is in dosage instructions for medications. They
/// are also used when planning care of various kinds, and may be used for
/// reporting the schedule to which past regular activities were carried
/// out.
class TimingBuilder extends BackboneTypeBuilder
    implements
        TimingXActivityDefinitionBuilder,
        ScheduledXCarePlanDetailBuilder,
        OccurrenceXChargeItemBuilder,
        OccurrenceXContractActionBuilder,
        OccurrenceXDeviceRequestBuilder,
        TimingXDeviceUseStatementBuilder,
        EffectiveXObservationBuilder,
        ValueXParametersParameterBuilder,
        TimingXPlanDefinitionActionBuilder,
        TimingXRequestGroupActionBuilder,
        StudyEffectiveXResearchElementDefinitionCharacteristicBuilder,
        ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder,
        OccurrenceXServiceRequestBuilder,
        DefaultValueXStructureMapSourceBuilder,
        OccurrenceXSupplyDeliveryBuilder,
        OccurrenceXSupplyRequestBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        TimingXTriggerDefinitionBuilder {
  /// Primary constructor for
  /// [TimingBuilder]

  TimingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.repeat,
    this.code,
    super.disallowExtensions,
    super.objectPath = 'TimingBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TimingBuilder.empty() => TimingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TimingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Timing';
    return TimingBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      event: JsonParser.parsePrimitiveList<FhirDateTimeBuilder>(
        json,
        'event',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.event',
      ),
      repeat: JsonParser.parseObject<TimingRepeatBuilder>(
        json,
        'repeat',
        TimingRepeatBuilder.fromJson,
        '$objectPath.repeat',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [TimingBuilder]
  /// from a [String] or [YamlMap] object
  factory TimingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TimingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TimingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TimingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TimingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TimingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TimingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Timing';

  /// [event]
  /// Identifies specific times when the event occurs.
  List<FhirDateTimeBuilder>? event;

  /// [repeat]
  /// A set of rules that describe when the event is scheduled.
  TimingRepeatBuilder? repeat;

  /// [code]
  /// A code for the timing schedule (or just text in code.text). Some codes
  /// such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing
  /// data, and either the code or the data may be used to interpret the
  /// Timing, with the exception that .repeat.bounds still applies over the
  /// code (and is not contained in the code).
  CodeableConceptBuilder? code;

  /// Converts a [TimingBuilder]
  /// to [Timing]
  @override
  Timing build() => Timing.fromJson(toJson());

  /// Converts a [TimingBuilder]
  /// to a [Map<String, dynamic>]
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
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
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
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is List<FhirDateTimeBuilder>) {
            // Replace or create new list
            event = child;
            return;
          } else if (child is FhirDateTimeBuilder) {
            // Add single element to existing list or create new list
            event = [
              ...(event ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDateTimeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirDateTimeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              event = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                event = [
                  ...(event ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeat':
        {
          if (child is TimingRepeatBuilder) {
            repeat = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'event':
        return ['FhirDateTimeBuilder'];
      case 'repeat':
        return ['TimingRepeatBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TimingBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'event':
        {
          event = <FhirDateTimeBuilder>[];
          return;
        }
      case 'repeat':
        {
          repeat = TimingRepeatBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool event = false,
    bool repeat = false,
    bool code = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (event) this.event = null;
    if (repeat) this.repeat = null;
    if (code) this.code = null;
  }

  @override
  TimingBuilder clone() => throw UnimplementedError();
  @override
  TimingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirDateTimeBuilder>? event,
    TimingRepeatBuilder? repeat,
    CodeableConceptBuilder? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = TimingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      event: event ?? this.event,
      repeat: repeat ?? this.repeat,
      code: code ?? this.code,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TimingBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirDateTimeBuilder>(
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

/// [TimingRepeatBuilder]
/// A set of rules that describe when the event is scheduled.
class TimingRepeatBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [TimingRepeatBuilder]

  TimingRepeatBuilder({
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
    super.objectPath = 'TimingRepeatBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TimingRepeatBuilder.empty() => TimingRepeatBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TimingRepeatBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'TimingRepeat';
    return TimingRepeatBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      boundsX: JsonParser.parsePolymorphic<BoundsXTimingRepeatBuilder>(
        json,
        {
          'boundsDuration': FhirDurationBuilder.fromJson,
          'boundsRange': RangeBuilder.fromJson,
          'boundsPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      count: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'count',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.count',
      ),
      countMax: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'countMax',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.countMax',
      ),
      duration: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'duration',
        FhirDecimalBuilder.fromJson,
        '$objectPath.duration',
      ),
      durationMax: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'durationMax',
        FhirDecimalBuilder.fromJson,
        '$objectPath.durationMax',
      ),
      durationUnit: JsonParser.parsePrimitive<UnitsOfTimeBuilder>(
        json,
        'durationUnit',
        UnitsOfTimeBuilder.fromJson,
        '$objectPath.durationUnit',
      ),
      frequency: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'frequency',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.frequency',
      ),
      frequencyMax: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'frequencyMax',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.frequencyMax',
      ),
      period: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'period',
        FhirDecimalBuilder.fromJson,
        '$objectPath.period',
      ),
      periodMax: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'periodMax',
        FhirDecimalBuilder.fromJson,
        '$objectPath.periodMax',
      ),
      periodUnit: JsonParser.parsePrimitive<UnitsOfTimeBuilder>(
        json,
        'periodUnit',
        UnitsOfTimeBuilder.fromJson,
        '$objectPath.periodUnit',
      ),
      dayOfWeek: JsonParser.parsePrimitiveList<DaysOfWeekBuilder>(
        json,
        'dayOfWeek',
        DaysOfWeekBuilder.fromJson,
        '$objectPath.dayOfWeek',
      ),
      timeOfDay: JsonParser.parsePrimitiveList<FhirTimeBuilder>(
        json,
        'timeOfDay',
        FhirTimeBuilder.fromJson,
        '$objectPath.timeOfDay',
      ),
      when: JsonParser.parsePrimitiveList<EventTimingBuilder>(
        json,
        'when',
        EventTimingBuilder.fromJson,
        '$objectPath.when',
      ),
      offset: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'offset',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.offset',
      ),
    );
  }

  /// Deserialize [TimingRepeatBuilder]
  /// from a [String] or [YamlMap] object
  factory TimingRepeatBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TimingRepeatBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TimingRepeatBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TimingRepeatBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TimingRepeatBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TimingRepeatBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TimingRepeatBuilder.fromJson(json);
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
  BoundsXTimingRepeatBuilder? boundsX;

  /// Getter for [boundsDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get boundsDuration =>
      boundsX?.isAs<FhirDurationBuilder>();

  /// Getter for [boundsRange] as a RangeBuilder
  RangeBuilder? get boundsRange => boundsX?.isAs<RangeBuilder>();

  /// Getter for [boundsPeriod] as a PeriodBuilder
  PeriodBuilder? get boundsPeriod => boundsX?.isAs<PeriodBuilder>();

  /// [count]
  /// A total count of the desired number of repetitions across the duration
  /// of the entire timing specification. If countMax is present, this
  /// element indicates the lower bound of the allowed range of count values.
  FhirPositiveIntBuilder? count;

  /// [countMax]
  /// If present, indicates that the count is a range - so to perform the
  /// action between [count] and [countMax] times.
  FhirPositiveIntBuilder? countMax;

  /// [duration]
  /// How long this thing happens for when it happens. If durationMax is
  /// present, this element indicates the lower bound of the allowed range of
  /// the duration.
  FhirDecimalBuilder? duration;

  /// [durationMax]
  /// If present, indicates that the duration is a range - so to perform the
  /// action between [duration] and [durationMax] time length.
  FhirDecimalBuilder? durationMax;

  /// [durationUnit]
  /// The units of time for the duration, in UCUM units.
  UnitsOfTimeBuilder? durationUnit;

  /// [frequency]
  /// The number of times to repeat the action within the specified period.
  /// If frequencyMax is present, this element indicates the lower bound of
  /// the allowed range of the frequency.
  FhirPositiveIntBuilder? frequency;

  /// [frequencyMax]
  /// If present, indicates that the frequency is a range - so to repeat
  /// between [frequency] and [frequencyMax] times within the period or
  /// period range.
  FhirPositiveIntBuilder? frequencyMax;

  /// [period]
  /// Indicates the duration of time over which repetitions are to occur;
  /// e.g. to express "3 times per day", 3 would be the frequency and "1 day"
  /// would be the period. If periodMax is present, this element indicates
  /// the lower bound of the allowed range of the period length.
  FhirDecimalBuilder? period;

  /// [periodMax]
  /// If present, indicates that the period is a range from [period] to
  /// [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  FhirDecimalBuilder? periodMax;

  /// [periodUnit]
  /// The units of time for the period in UCUM units.
  UnitsOfTimeBuilder? periodUnit;

  /// [dayOfWeek]
  /// If one or more days of week is provided, then the action happens only
  /// on the specified day(s).
  List<DaysOfWeekBuilder>? dayOfWeek;

  /// [timeOfDay]
  /// Specified time of day for action to take place.
  List<FhirTimeBuilder>? timeOfDay;

  /// [when]
  /// An approximate time period during the day, potentially linked to an
  /// event of daily living that indicates when the action should occur.
  List<EventTimingBuilder>? when;

  /// [offset]
  /// The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the
  /// offset is assumed to be after the event.
  FhirUnsignedIntBuilder? offset;

  /// Converts a [TimingRepeatBuilder]
  /// to [TimingRepeat]
  @override
  TimingRepeat build() => TimingRepeat.fromJson(toJson());

  /// Converts a [TimingRepeatBuilder]
  /// to a [Map<String, dynamic>]
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
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
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
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (boundsX is FhirDurationBuilder) {
          fields.add(boundsX!);
        }
      case 'boundsRange':
        if (boundsX is RangeBuilder) {
          fields.add(boundsX!);
        }
      case 'boundsPeriod':
        if (boundsX is PeriodBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bounds':
      case 'boundsX':
        {
          if (child is BoundsXTimingRepeatBuilder) {
            boundsX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              boundsX = child;
              return;
            }
            if (child is RangeBuilder) {
              boundsX = child;
              return;
            }
            if (child is PeriodBuilder) {
              boundsX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'boundsDuration':
        {
          if (child is FhirDurationBuilder) {
            boundsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'boundsRange':
        {
          if (child is RangeBuilder) {
            boundsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'boundsPeriod':
        {
          if (child is PeriodBuilder) {
            boundsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'count':
        {
          if (child is FhirPositiveIntBuilder) {
            count = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  count = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'countMax':
        {
          if (child is FhirPositiveIntBuilder) {
            countMax = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  countMax = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'duration':
        {
          if (child is FhirDecimalBuilder) {
            duration = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  duration = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'durationMax':
        {
          if (child is FhirDecimalBuilder) {
            durationMax = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  durationMax = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'durationUnit':
        {
          if (child is UnitsOfTimeBuilder) {
            durationUnit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = UnitsOfTimeBuilder(stringValue);
                durationUnit = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frequency':
        {
          if (child is FhirPositiveIntBuilder) {
            frequency = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  frequency = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frequencyMax':
        {
          if (child is FhirPositiveIntBuilder) {
            frequencyMax = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  frequencyMax = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is FhirDecimalBuilder) {
            period = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  period = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'periodMax':
        {
          if (child is FhirDecimalBuilder) {
            periodMax = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  periodMax = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'periodUnit':
        {
          if (child is UnitsOfTimeBuilder) {
            periodUnit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = UnitsOfTimeBuilder(stringValue);
                periodUnit = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dayOfWeek':
        {
          if (child is List<DaysOfWeekBuilder>) {
            // Replace or create new list
            dayOfWeek = child;
            return;
          } else if (child is DaysOfWeekBuilder) {
            // Add single element to existing list or create new list
            dayOfWeek = [
              ...(dayOfWeek ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <DaysOfWeekBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = DaysOfWeekBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              dayOfWeek = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DaysOfWeekBuilder(stringValue);
                dayOfWeek = [
                  ...(dayOfWeek ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeOfDay':
        {
          if (child is List<FhirTimeBuilder>) {
            // Replace or create new list
            timeOfDay = child;
            return;
          } else if (child is FhirTimeBuilder) {
            // Add single element to existing list or create new list
            timeOfDay = [
              ...(timeOfDay ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirTimeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirTimeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              timeOfDay = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                timeOfDay = [
                  ...(timeOfDay ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'when':
        {
          if (child is List<EventTimingBuilder>) {
            // Replace or create new list
            when = child;
            return;
          } else if (child is EventTimingBuilder) {
            // Add single element to existing list or create new list
            when = [
              ...(when ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <EventTimingBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = EventTimingBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              when = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EventTimingBuilder(stringValue);
                when = [
                  ...(when ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offset':
        {
          if (child is FhirUnsignedIntBuilder) {
            offset = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  offset = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'bounds':
      case 'boundsX':
        return [
          'FhirDurationBuilder',
          'RangeBuilder',
          'PeriodBuilder',
        ];
      case 'boundsDuration':
        return ['FhirDurationBuilder'];
      case 'boundsRange':
        return ['RangeBuilder'];
      case 'boundsPeriod':
        return ['PeriodBuilder'];
      case 'count':
        return ['FhirPositiveIntBuilder'];
      case 'countMax':
        return ['FhirPositiveIntBuilder'];
      case 'duration':
        return ['FhirDecimalBuilder'];
      case 'durationMax':
        return ['FhirDecimalBuilder'];
      case 'durationUnit':
        return ['FhirCodeEnumBuilder'];
      case 'frequency':
        return ['FhirPositiveIntBuilder'];
      case 'frequencyMax':
        return ['FhirPositiveIntBuilder'];
      case 'period':
        return ['FhirDecimalBuilder'];
      case 'periodMax':
        return ['FhirDecimalBuilder'];
      case 'periodUnit':
        return ['FhirCodeEnumBuilder'];
      case 'dayOfWeek':
        return ['FhirCodeEnumBuilder'];
      case 'timeOfDay':
        return ['FhirTimeBuilder'];
      case 'when':
        return ['FhirCodeEnumBuilder'];
      case 'offset':
        return ['FhirUnsignedIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TimingRepeatBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'bounds':
      case 'boundsX':
      case 'boundsDuration':
        {
          boundsX = FhirDurationBuilder.empty();
          return;
        }
      case 'boundsRange':
        {
          boundsX = RangeBuilder.empty();
          return;
        }
      case 'boundsPeriod':
        {
          boundsX = PeriodBuilder.empty();
          return;
        }
      case 'count':
        {
          count = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'countMax':
        {
          countMax = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDecimalBuilder.empty();
          return;
        }
      case 'durationMax':
        {
          durationMax = FhirDecimalBuilder.empty();
          return;
        }
      case 'durationUnit':
        {
          durationUnit = UnitsOfTimeBuilder.empty();
          return;
        }
      case 'frequency':
        {
          frequency = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'frequencyMax':
        {
          frequencyMax = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'period':
        {
          period = FhirDecimalBuilder.empty();
          return;
        }
      case 'periodMax':
        {
          periodMax = FhirDecimalBuilder.empty();
          return;
        }
      case 'periodUnit':
        {
          periodUnit = UnitsOfTimeBuilder.empty();
          return;
        }
      case 'dayOfWeek':
        {
          dayOfWeek = <DaysOfWeekBuilder>[];
          return;
        }
      case 'timeOfDay':
        {
          timeOfDay = <FhirTimeBuilder>[];
          return;
        }
      case 'when':
        {
          when = <EventTimingBuilder>[];
          return;
        }
      case 'offset':
        {
          offset = FhirUnsignedIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (bounds) boundsX = null;
    if (count) this.count = null;
    if (countMax) this.countMax = null;
    if (duration) this.duration = null;
    if (durationMax) this.durationMax = null;
    if (durationUnit) this.durationUnit = null;
    if (frequency) this.frequency = null;
    if (frequencyMax) this.frequencyMax = null;
    if (period) this.period = null;
    if (periodMax) this.periodMax = null;
    if (periodUnit) this.periodUnit = null;
    if (dayOfWeek) this.dayOfWeek = null;
    if (timeOfDay) this.timeOfDay = null;
    if (when) this.when = null;
    if (offset) this.offset = null;
  }

  @override
  TimingRepeatBuilder clone() => throw UnimplementedError();
  @override
  TimingRepeatBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    BoundsXTimingRepeatBuilder? boundsX,
    FhirPositiveIntBuilder? count,
    FhirPositiveIntBuilder? countMax,
    FhirDecimalBuilder? duration,
    FhirDecimalBuilder? durationMax,
    UnitsOfTimeBuilder? durationUnit,
    FhirPositiveIntBuilder? frequency,
    FhirPositiveIntBuilder? frequencyMax,
    FhirDecimalBuilder? period,
    FhirDecimalBuilder? periodMax,
    UnitsOfTimeBuilder? periodUnit,
    List<DaysOfWeekBuilder>? dayOfWeek,
    List<FhirTimeBuilder>? timeOfDay,
    List<EventTimingBuilder>? when,
    FhirUnsignedIntBuilder? offset,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = TimingRepeatBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TimingRepeatBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<DaysOfWeekBuilder>(
      dayOfWeek,
      o.dayOfWeek,
    )) {
      return false;
    }
    if (!listEquals<FhirTimeBuilder>(
      timeOfDay,
      o.timeOfDay,
    )) {
      return false;
    }
    if (!listEquals<EventTimingBuilder>(
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
