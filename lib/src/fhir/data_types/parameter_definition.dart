import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ParameterDefinition] /// The parameters to the module. This collection specifies both the input and
/// output parameters. Input parameters are provided by the caller as part of
/// the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
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
  });

  @override
  String get fhirType => 'ParameterDefinition';

  @Id()
  int dbId = 0;

  /// [name] /// The name of the parameter used to allow access to the value of the
  /// parameter in evaluation contexts.
  final FhirCode? name;
  final Element? nameElement;

  /// [use] /// Whether the parameter is input or output for the module.
  final OperationParameterUse use;
  final Element? useElement;

  /// [min] /// The minimum number of times this parameter SHALL appear in the request or
  /// response.
  final FhirInteger? min;
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString? max;
  final Element? maxElement;

  /// [documentation] /// A brief discussion of what the parameter is for and how it is used by the
  /// module.
  final FhirString? documentation;
  final Element? documentationElement;

  /// [type] /// The type of the parameter.
  final FHIRAllTypes type;
  final Element? typeElement;

  /// [profile] /// If specified, this indicates a profile that the input data must conform to,
  /// or that the output data will conform to.
  final FhirCanonical? profile;
  final Element? profileElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['use'] = use.toJson();
    if (min?.value != null) {
      json['min'] = min!.value;
    }
    if (minElement != null) {
      json['_min'] = minElement!.toJson();
    }
    if (max?.value != null) {
      json['max'] = max!.value;
    }
    if (maxElement != null) {
      json['_max'] = maxElement!.toJson();
    }
    if (documentation?.value != null) {
      json['documentation'] = documentation!.value;
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    json['type'] = type.toJson();
    if (profile?.value != null) {
      json['profile'] = profile!.value;
    }
    if (profileElement != null) {
      json['_profile'] = profileElement!.toJson();
    }
    return json;
  }

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) {
    return ParameterDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirCode(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      use: OperationParameterUse.fromJson(json['use'] as Map<String, dynamic>),
      min: json['min'] != null ? FhirInteger(json['min']) : null,
      minElement: json['_min'] != null
          ? Element.fromJson(json['_min'] as Map<String, dynamic>)
          : null,
      max: json['max'] != null ? FhirString(json['max']) : null,
      maxElement: json['_max'] != null
          ? Element.fromJson(json['_max'] as Map<String, dynamic>)
          : null,
      documentation: json['documentation'] != null
          ? FhirString(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
      type: FHIRAllTypes.fromJson(json['type'] as Map<String, dynamic>),
      profile: json['profile'] != null ? FhirCanonical(json['profile']) : null,
      profileElement: json['_profile'] != null
          ? Element.fromJson(json['_profile'] as Map<String, dynamic>)
          : null,
    );
  }
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
