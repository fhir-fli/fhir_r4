import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirExpression]
/// A expression that is evaluated in a specified context and returns a
/// value. The context of use of the expression must specify the context in
/// which the expression is evaluated, and how the result of the expression
/// is used.
class FhirExpression extends DataType {
  /// Primary constructor for [FhirExpression]

  FhirExpression({
    super.id,
    this.extension_,
    this.description,
    this.name,
    required this.language,
    this.expression,
    this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExpression.fromJson(Map<String, dynamic> json) {
    return FhirExpression(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      name: json['name'] != null
          ? FhirId.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      language: ExpressionLanguage.fromJson({
        'value': json['language'],
        '_value': json['_language'],
      }),
      expression: json['expression'] != null
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      reference: json['reference'] != null
          ? FhirUri.fromJson({
              'value': json['reference'],
              '_value': json['_reference'],
            })
          : null,
    );
  }

  /// Deserialize [FhirExpression] from a [String]
  /// or [YamlMap] object
  factory FhirExpression.fromYaml(dynamic yaml) => yaml is String
      ? FhirExpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirExpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('FhirExpression cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirExpression]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirExpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirExpression';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;

  /// [name]
  /// A short name assigned to the expression to allow for multiple reuse of
  /// the expression in the context where it is defined.
  final FhirId? name;

  /// [language]
  /// The media type of the language for the expression.
  final ExpressionLanguage language;

  /// [expression]
  /// An expression in the specified language that returns a value.
  final FhirString? expression;

  /// [reference]
  /// A URI that defines where the expression is found.
  final FhirUri? reference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson1 = description!.toJson();
      json['description'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_description'] = fieldJson1['_value'];
      }
    }

    if (name != null) {
      final fieldJson2 = name!.toJson();
      json['name'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_name'] = fieldJson2['_value'];
      }
    }

    json['language'] = language.toJson();

    if (expression != null) {
      final fieldJson4 = expression!.toJson();
      json['expression'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_expression'] = fieldJson4['_value'];
      }
    }

    if (reference != null) {
      final fieldJson5 = reference!.toJson();
      json['reference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_reference'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  FhirExpression clone() => throw UnimplementedError();
  @override
  FhirExpression copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? description,
    FhirId? name,
    ExpressionLanguage? language,
    FhirString? expression,
    FhirUri? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirExpression(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      description: description ?? this.description,
      name: name ?? this.name,
      language: language ?? this.language,
      expression: expression ?? this.expression,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
