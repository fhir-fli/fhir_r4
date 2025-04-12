import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show TriggerDefinition, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [TriggerDefinitionBuilder]
/// A description of a triggering event. Triggering events can be named
/// events, data events, or periodic, as determined by the type element.
class TriggerDefinitionBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [TriggerDefinitionBuilder]

  TriggerDefinitionBuilder({
    super.id,
    super.extension_,
    this.type,
    this.name,
    this.timingX,
    this.data,
    this.condition,
    super.disallowExtensions,
    super.objectPath = 'TriggerDefinitionBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TriggerDefinitionBuilder.empty() => TriggerDefinitionBuilder(
        type: TriggerTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TriggerDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'TriggerDefinition';
    return TriggerDefinitionBuilder(
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
      type: JsonParser.parsePrimitive<TriggerTypeBuilder>(
        json,
        'type',
        TriggerTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      timingX: JsonParser.parsePolymorphic<TimingXTriggerDefinitionBuilder>(
        json,
        {
          'timingTiming': TimingBuilder.fromJson,
          'timingReference': ReferenceBuilder.fromJson,
          'timingDate': FhirDateBuilder.fromJson,
          'timingDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<DataRequirementBuilder>(
            (v) => DataRequirementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.data',
              },
            ),
          )
          .toList(),
      condition: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'condition',
        FhirExpressionBuilder.fromJson,
        '$objectPath.condition',
      ),
    );
  }

  /// Deserialize [TriggerDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory TriggerDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TriggerDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TriggerDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TriggerDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TriggerDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TriggerDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TriggerDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TriggerDefinition';

  /// [type]
  /// The type of triggering event.
  TriggerTypeBuilder? type;

  /// [name]
  /// A formal name for the event. This may be an absolute URI that
  /// identifies the event formally (e.g. from a trigger registry), or a
  /// simple relative URI that identifies the event in a local context.
  FhirStringBuilder? name;

  /// [timingX]
  /// The timing of the event (if this is a periodic trigger).
  TimingXTriggerDefinitionBuilder? timingX;

  /// Getter for [timingTiming] as a TimingBuilder
  TimingBuilder? get timingTiming => timingX?.isAs<TimingBuilder>();

  /// Getter for [timingReference] as a ReferenceBuilder
  ReferenceBuilder? get timingReference => timingX?.isAs<ReferenceBuilder>();

  /// Getter for [timingDate] as a FhirDateBuilder
  FhirDateBuilder? get timingDate => timingX?.isAs<FhirDateBuilder>();

  /// Getter for [timingDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timingDateTime =>
      timingX?.isAs<FhirDateTimeBuilder>();

  /// [data]
  /// The triggering data of the event (if this is a data trigger). If more
  /// than one data is requirement is specified, then all the data
  /// requirements must be true.
  List<DataRequirementBuilder>? data;

  /// [condition]
  /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the
  /// trigger fires.
  FhirExpressionBuilder? condition;

  /// Converts a [TriggerDefinitionBuilder]
  /// to [TriggerDefinition]
  @override
  TriggerDefinition build() => TriggerDefinition.fromJson(toJson());

  /// Converts a [TriggerDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('type', type);
    addField('name', name);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalizeFirstLetter()}', timingX);
    }

    addField('data', data);
    addField('condition', condition);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
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
        if (timingX is TimingBuilder) {
          fields.add(timingX!);
        }
      case 'timingReference':
        if (timingX is ReferenceBuilder) {
          fields.add(timingX!);
        }
      case 'timingDate':
        if (timingX is FhirDateBuilder) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTimeBuilder) {
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
      case 'type':
        {
          if (child is TriggerTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = TriggerTypeBuilder(stringValue);
                type = converted;
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
      case 'timingX':
        {
          if (child is TimingXTriggerDefinitionBuilder) {
            timingX = child;
            return;
          } else {
            if (child is TimingBuilder) {
              timingX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              timingX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              timingX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingTiming':
        {
          if (child is TimingBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingReference':
        {
          if (child is ReferenceBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingDate':
        {
          if (child is FhirDateBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'data':
        {
          if (child is List<DataRequirementBuilder>) {
            // Replace or create new list
            data = child;
            return;
          } else if (child is DataRequirementBuilder) {
            // Add single element to existing list or create new list
            data = [
              ...(data ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is FhirExpressionBuilder) {
            condition = child;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'timing':
      case 'timingX':
        return [
          'TimingBuilder',
          'ReferenceBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'timingTiming':
        return ['TimingBuilder'];
      case 'timingReference':
        return ['ReferenceBuilder'];
      case 'timingDate':
        return ['FhirDateBuilder'];
      case 'timingDateTime':
        return ['FhirDateTimeBuilder'];
      case 'data':
        return ['DataRequirementBuilder'];
      case 'condition':
        return ['FhirExpressionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TriggerDefinitionBuilder]
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
      case 'type':
        {
          type = TriggerTypeBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingTiming':
        {
          timingX = TimingBuilder.empty();
          return;
        }
      case 'timingReference':
        {
          timingX = ReferenceBuilder.empty();
          return;
        }
      case 'timingDate':
        {
          timingX = FhirDateBuilder.empty();
          return;
        }
      case 'timingDateTime':
        {
          timingX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'data':
        {
          data = <DataRequirementBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = FhirExpressionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  TriggerDefinitionBuilder clone() => throw UnimplementedError();
  @override
  TriggerDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    TriggerTypeBuilder? type,
    FhirStringBuilder? name,
    TimingXTriggerDefinitionBuilder? timingX,
    List<DataRequirementBuilder>? data,
    FhirExpressionBuilder? condition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = TriggerDefinitionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      name: name ?? this.name,
      timingX: timingX ?? this.timingX,
      data: data ?? this.data,
      condition: condition ?? this.condition,
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
    if (o is! TriggerDefinitionBuilder) {
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
    if (!listEquals<DataRequirementBuilder>(
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
