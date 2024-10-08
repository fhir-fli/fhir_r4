import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'parameter_definition.g.dart';

/// [ParameterDefinition] /// The parameters to the module. This collection specifies both the input and
/// output parameters. Input parameters are provided by the caller as part of
/// the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
@JsonSerializable()
class ParameterDefinition extends DataType {
  ParameterDefinition({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ParameterDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the parameter used to allow access to the value of the
  /// parameter in evaluation contexts.
  @JsonKey(name: 'name')
  final FhirCode? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [use] /// Whether the parameter is input or output for the module.
  @JsonKey(name: 'use')
  final OperationParameterUse use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [min] /// The minimum number of times this parameter SHALL appear in the request or
  /// response.
  @JsonKey(name: 'min')
  final FhirInteger? min;
  @JsonKey(name: '_min')
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  @JsonKey(name: 'max')
  final FhirString? max;
  @JsonKey(name: '_max')
  final Element? maxElement;

  /// [documentation] /// A brief discussion of what the parameter is for and how it is used by the
  /// module.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [type] /// The type of the parameter.
  @JsonKey(name: 'type')
  final FHIRAllTypes type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [profile] /// If specified, this indicates a profile that the input data must conform to,
  /// or that the output data will conform to.
  @JsonKey(name: 'profile')
  final FhirCanonical? profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;
  factory ParameterDefinition.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParameterDefinitionToJson(this);

  @override
  ParameterDefinition clone() => throw UnimplementedError();
  @override
  ParameterDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? name,
    Element? nameElement,
    OperationParameterUse? use,
    Element? useElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? documentation,
    Element? documentationElement,
    FHIRAllTypes? type,
    Element? typeElement,
    FhirCanonical? profile,
    Element? profileElement,
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
      nameElement: nameElement ?? this.nameElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ParameterDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ParameterDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ParameterDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ParameterDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ParameterDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ParameterDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
