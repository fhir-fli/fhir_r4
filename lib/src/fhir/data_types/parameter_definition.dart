import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ParameterDefinition]
/// The parameters to the module. This collection specifies both the input
/// and output parameters. Input parameters are provided by the caller as
/// part of the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
class ParameterDefinition extends DataType {
  /// Primary constructor for [ParameterDefinition]

  ParameterDefinition({
    super.id,
    this.extension_,
    this.name,
    required this.use,
    this.min,
    this.max,
    this.documentation,
    required this.type,
    this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParameterDefinition.fromJson(Map<String, dynamic> json) {
    return ParameterDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      name: json['name'] != null
          ? FhirCode.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      use: OperationParameterUse.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      min: json['min'] != null
          ? FhirInteger.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: json['max'] != null
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
      type: FHIRAllTypes.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      profile: json['profile'] != null
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
    );
  }

  /// Deserialize [ParameterDefinition] from a [String]
  /// or [YamlMap] object
  factory ParameterDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ParameterDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ParameterDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ParameterDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ParameterDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ParameterDefinition.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      final fieldJson1 = name!.toJson();
      json['name'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_name'] = fieldJson1['_value'];
      }
    }

    json['use'] = use.toJson();

    if (min != null) {
      final fieldJson3 = min!.toJson();
      json['min'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_min'] = fieldJson3['_value'];
      }
    }

    if (max != null) {
      final fieldJson4 = max!.toJson();
      json['max'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_max'] = fieldJson4['_value'];
      }
    }

    if (documentation != null) {
      final fieldJson5 = documentation!.toJson();
      json['documentation'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_documentation'] = fieldJson5['_value'];
      }
    }

    json['type'] = type.toJson();

    if (profile != null) {
      final fieldJson7 = profile!.toJson();
      json['profile'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_profile'] = fieldJson7['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
