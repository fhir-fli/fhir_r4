import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ParameterDefinition]
/// The parameters to the module. This collection specifies both the input
/// and output parameters. Input parameters are provided by the caller as
/// part of the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
class ParameterDefinition extends DataType
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
  /// [ParameterDefinition]

  const ParameterDefinition({
    super.id,
    super.extension_,
    this.name,
    required this.use,
    this.min,
    this.max,
    this.documentation,
    required this.type,
    this.profile,
    super.disallowExtensions,
    super.objectPath = 'ParameterDefinition',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ParameterDefinition.empty() => ParameterDefinition(
        use: OperationParameterUse.values.first,
        type: FHIRAllTypes.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParameterDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ParameterDefinition';
    return ParameterDefinition(
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
      name: JsonParser.parsePrimitive<FhirCode>(
        json,
        'name',
        FhirCode.fromJson,
        '$objectPath.name',
      ),
      use: JsonParser.parsePrimitive<OperationParameterUse>(
        json,
        'use',
        OperationParameterUse.fromJson,
        '$objectPath.use',
      )!,
      min: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'min',
        FhirInteger.fromJson,
        '$objectPath.min',
      ),
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
        '$objectPath.max',
      ),
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
      type: JsonParser.parsePrimitive<FHIRAllTypes>(
        json,
        'type',
        FHIRAllTypes.fromJson,
        '$objectPath.type',
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
    );
  }

  /// Deserialize [ParameterDefinition]
  /// from a [String] or [YamlMap] object
  factory ParameterDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ParameterDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ParameterDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ParameterDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ParameterDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ParameterDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ParameterDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ParameterDefinition';

  /// [name]
  /// The name of the parameter used to allow access to the value of the
  /// parameter in evaluation contexts.
  final FhirCode? name;

  /// [use]
  /// Whether the parameter is input or output for the module.
  final OperationParameterUse use;

  /// [min]
  /// The minimum number of times this parameter SHALL appear in the request
  /// or response.
  final FhirInteger? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString? max;

  /// [documentation]
  /// A brief discussion of what the parameter is for and how it is used by
  /// the module.
  final FhirString? documentation;

  /// [type]
  /// The type of the parameter.
  final FHIRAllTypes type;

  /// [profile]
  /// If specified, this indicates a profile that the input data must conform
  /// to, or that the output data will conform to.
  final FhirCanonical? profile;
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
    addField('name', name);
    addField('use', use);
    addField('min', min);
    addField('max', max);
    addField('documentation', documentation);
    addField('type', type);
    addField('profile', profile);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'name',
      'use',
      'min',
      'max',
      'documentation',
      'type',
      'profile',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'use':
        fields.add(use);
      case 'min':
        if (min != null) {
          fields.add(min!);
        }
      case 'max':
        if (max != null) {
          fields.add(max!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'type':
        fields.add(type);
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ParameterDefinition clone() => throw UnimplementedError();
  @override
  ParameterDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? name,
    OperationParameterUse? use,
    FhirInteger? min,
    FhirString? max,
    FhirString? documentation,
    FHIRAllTypes? type,
    FhirCanonical? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ParameterDefinition(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      min: min?.copyWith(
            objectPath: '$newObjectPath.min',
          ) ??
          this.min,
      max: max?.copyWith(
            objectPath: '$newObjectPath.max',
          ) ??
          this.max,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ParameterDefinition) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(min, o.min)) {
      return false;
    }
    if (!equalsDeepWithNull(max, o.max)) {
      return false;
    }
    if (!equalsDeepWithNull(documentation, o.documentation)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(profile, o.profile)) {
      return false;
    }
    return true;
  }
}
