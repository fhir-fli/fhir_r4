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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParameterDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ParameterDefinition(
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
      name: (json['name'] != null || json['_name'] != null)
          ? FhirCode.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      use: OperationParameterUse.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      min: (json['min'] != null || json['_min'] != null)
          ? FhirInteger.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: (json['max'] != null || json['_max'] != null)
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirString.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      type: FHIRAllTypes.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      profile: (json['profile'] != null || json['_profile'] != null)
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return ParameterDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      addField('name', name);
    }

    addField('use', use);
    if (min != null) {
      addField('min', min);
    }

    if (max != null) {
      addField('max', max);
    }

    if (documentation != null) {
      addField('documentation', documentation);
    }

    addField('type', type);
    if (profile != null) {
      addField('profile', profile);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ParameterDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      name: name ?? this.name,
      use: use ?? this.use,
      min: min ?? this.min,
      max: max ?? this.max,
      documentation: documentation ?? this.documentation,
      type: type ?? this.type,
      profile: profile ?? this.profile,
    );
  }
}
