import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
    this.timingX,
    this.data,
    this.condition,
    super.disallowExtensions,
    super.objectPath = 'TriggerDefinition',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TriggerDefinition.empty() => TriggerDefinition(
        type: TriggerType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'TriggerDefinition';
    return TriggerDefinition(
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
      type: JsonParser.parsePrimitive<TriggerType>(
        json,
        'type',
        TriggerType.fromJson,
        '$objectPath.type',
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      timingX: JsonParser.parsePolymorphic<TimingXTriggerDefinition>(
        json,
        {
          'timingTiming': Timing.fromJson,
          'timingReference': Reference.fromJson,
          'timingDate': FhirDate.fromJson,
          'timingDateTime': FhirDateTime.fromJson,
        },
        objectPath,
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.data',
              },
            ),
          )
          .toList(),
      condition: JsonParser.parseObject<FhirExpression>(
        json,
        'condition',
        FhirExpression.fromJson,
        '$objectPath.condition',
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
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is TriggerType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingX':
        {
          if (child is TimingXTriggerDefinition) {
            return copyWith(timingX: child);
          } else {
            if (child is Timing) {
              return copyWith(timingX: child);
            }
            if (child is Reference) {
              return copyWith(timingX: child);
            }
            if (child is FhirDate) {
              return copyWith(timingX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(timingX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingTiming':
        {
          if (child is Timing) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingReference':
        {
          if (child is Reference) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'data':
        {
          if (child is List<DataRequirement>) {
            // Add all elements from passed list
            final newList = [...?data, ...child];
            return copyWith(data: newList);
          } else if (child is DataRequirement) {
            // Add single element to existing list or create new list
            final newList = [
              ...?data,
              child,
            ];
            return copyWith(data: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is FhirExpression) {
            return copyWith(condition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'name':
        return ['FhirString'];
      case 'timing':
      case 'timingX':
        return [
          'Timing',
          'Reference',
          'FhirDate',
          'FhirDateTime',
        ];
      case 'timingTiming':
        return ['Timing'];
      case 'timingReference':
        return ['Reference'];
      case 'timingDate':
        return ['FhirDate'];
      case 'timingDateTime':
        return ['FhirDateTime'];
      case 'data':
        return ['DataRequirement'];
      case 'condition':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TriggerDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TriggerDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: TriggerType.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'timing':
      case 'timingX':
      case 'timingTiming':
        {
          return copyWith(
            timingX: Timing.empty(),
          );
        }
      case 'timingReference':
        {
          return copyWith(
            timingX: Reference.empty(),
          );
        }
      case 'timingDate':
        {
          return copyWith(
            timingX: FhirDate.empty(),
          );
        }
      case 'timingDateTime':
        {
          return copyWith(
            timingX: FhirDateTime.empty(),
          );
        }
      case 'data':
        {
          return copyWith(
            data: <DataRequirement>[],
          );
        }
      case 'condition':
        {
          return copyWith(
            condition: FhirExpression.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TriggerDefinition clear({
    bool id = false,
    bool extension_ = false,
    bool name = false,
    bool timing = false,
    bool data = false,
    bool condition = false,
  }) {
    return TriggerDefinition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      type: type,
      name: name ? null : this.name,
      timingX: timing ? null : timingX,
      data: data ? null : this.data,
      condition: condition ? null : this.condition,
    );
  }

  @override
  TriggerDefinition clone() => throw UnimplementedError();
  @override
  TriggerDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    TriggerType? type,
    FhirString? name,
    TimingXTriggerDefinition? timingX,
    List<DataRequirement>? data,
    FhirExpression? condition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TriggerDefinition(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      timingX: timingX?.copyWith(
            objectPath: '$newObjectPath.timingX',
          ) as TimingXTriggerDefinition? ??
          this.timingX,
      data: data
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.data',
                ),
              )
              .toList() ??
          this.data,
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TriggerDefinition) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!listEquals<DataRequirement>(
      data,
      o.data,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    return true;
  }
}
