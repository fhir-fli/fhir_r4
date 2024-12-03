import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ParameterDefinition]
/// The parameters to the module. This collection specifies both the input
/// and output parameters. Input parameters are provided by the caller as
/// part of the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
class ParameterDefinition extends DataType {
  /// Primary constructor for
  /// [ParameterDefinition]

  ParameterDefinition({
    super.id,
    super.extension_,
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
  factory ParameterDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ParameterDefinition(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      name: parseField<FhirCode>(
        json['name'],
        json['_name'],
        FhirCode.fromJson,
      ),
      use: OperationParameterUse.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      min: parseField<FhirInteger>(
        json['min'],
        json['_min'],
        FhirInteger.fromJson,
      ),
      max: parseField<FhirString>(
        json['max'],
        json['_max'],
        FhirString.fromJson,
      ),
      documentation: parseField<FhirString>(
        json['documentation'],
        json['_documentation'],
        FhirString.fromJson,
      ),
      type: FHIRAllTypes.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      profile: parseField<FhirCanonical>(
        json['profile'],
        json['_profile'],
        FhirCanonical.fromJson,
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
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('use', use);
    addField('min', min);
    addField('max', max);
    addField('documentation', documentation);
    addField('type', type);
    addField('profile', profile);
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
