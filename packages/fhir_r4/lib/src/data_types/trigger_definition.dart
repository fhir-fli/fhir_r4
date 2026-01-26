import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'trigger_definition.g.dart';

/// [TriggerDefinition]
/// A description of a triggering event. Triggering events can be named
/// events, data events, or periodic, as determined by the type element.
class TriggerDefinition extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [TriggerDefinition]

  const TriggerDefinition({
    super.id,
    super.extension_,
    required this.type,
    this.name,
    TimingXTriggerDefinition? timingX,
    Timing? timingTiming,
    Reference? timingReference,
    FhirDate? timingDate,
    FhirDateTime? timingDateTime,
    this.data,
    this.condition,
    super.disallowExtensions,
  }) : timingX = timingX ??
            timingTiming ??
            timingReference ??
            timingDate ??
            timingDateTime;

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return TriggerDefinition(
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
      type: JsonParser.parsePrimitive<TriggerType>(
        json,
        'type',
        TriggerType.fromJson,
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      timingX: JsonParser.parsePolymorphic<TimingXTriggerDefinition>(
        json,
        {
          'timingTiming': Timing.fromJson,
          'timingReference': Reference.fromJson,
          'timingDate': FhirDate.fromJson,
          'timingDateTime': FhirDateTime.fromJson,
        },
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      condition: JsonParser.parseObject<FhirExpression>(
        json,
        'condition',
        FhirExpression.fromJson,
      ),
    );
  }

  /// Deserialize [TriggerDefinition]
  /// from a [String] or [YamlMap] object
  factory TriggerDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TriggerDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TriggerDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TriggerDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TriggerDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TriggerDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TriggerDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TriggerDefinition';

  /// [type]
  /// The type of triggering event.
  final TriggerType type;

  /// [name]
  /// A formal name for the event. This may be an absolute URI that
  /// identifies the event formally (e.g. from a trigger registry), or a
  /// simple relative URI that identifies the event in a local context.
  final FhirString? name;

  /// [timingX]
  /// The timing of the event (if this is a periodic trigger).
  final TimingXTriggerDefinition? timingX;

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// Getter for [timingReference] as a Reference
  Reference? get timingReference => timingX?.isAs<Reference>();

  /// Getter for [timingDate] as a FhirDate
  FhirDate? get timingDate => timingX?.isAs<FhirDate>();

  /// Getter for [timingDateTime] as a FhirDateTime
  FhirDateTime? get timingDateTime => timingX?.isAs<FhirDateTime>();

  /// [data]
  /// The triggering data of the event (if this is a data trigger). If more
  /// than one data is requirement is specified, then all the data
  /// requirements must be true.
  final List<DataRequirement>? data;

  /// [condition]
  /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the
  /// trigger fires.
  final FhirExpression? condition;
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
      'type',
      type,
    );
    addField(
      'name',
      name,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    addField(
      'data',
      data,
    );
    addField(
      'condition',
      condition,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'name',
      'timingX',
      'data',
      'condition',
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
      case 'type':
        fields.add(type);
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'timing':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'timingReference':
        if (timingX is Reference) {
          fields.add(timingX!);
        }
      case 'timingDate':
        if (timingX is FhirDate) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTime) {
          fields.add(timingX!);
        }
      case 'data':
        if (data != null) {
          fields.addAll(data!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
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
  TriggerDefinition clone() => copyWith();

  /// Copy function for [TriggerDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TriggerDefinitionCopyWith<TriggerDefinition> get copyWith =>
      _$TriggerDefinitionCopyWithImpl<TriggerDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TriggerDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirement>(
      data,
      o.data,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    return true;
  }
}
