import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'expression.g.dart';

/// [FhirExpression] /// A expression that is evaluated in a specified context and returns a value.
/// The context of use of the expression must specify the context in which the
/// expression is evaluated, and how the result of the expression is used.
@JsonSerializable()
class FhirExpression extends DataType {
  FhirExpression({
    super.id,
    super.extension_,
    this.description,
    this.descriptionElement,
    this.name,
    this.nameElement,
    required this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
    this.reference,
    this.referenceElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'FhirExpression';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [name] /// A short name assigned to the expression to allow for multiple reuse of the
  /// expression in the context where it is defined.
  @JsonKey(name: 'name')
  final FhirId? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [language] /// The media type of the language for the expression.
  @JsonKey(name: 'language')
  final ExpressionLanguage language;
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [expression] /// An expression in the specified language that returns a value.
  @JsonKey(name: 'expression')
  final FhirString? expression;
  @JsonKey(name: '_expression')
  final Element? expressionElement;

  /// [reference] /// A URI that defines where the expression is found.
  @JsonKey(name: 'reference')
  final FhirUri? reference;
  @JsonKey(name: '_reference')
  final Element? referenceElement;
  factory FhirExpression.fromJson(Map<String, dynamic> json) =>
      _$FhirExpressionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FhirExpressionToJson(this);

  @override
  FhirExpression clone() => throw UnimplementedError();
  @override
  FhirExpression copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? description,
    Element? descriptionElement,
    FhirId? name,
    Element? nameElement,
    ExpressionLanguage? language,
    Element? languageElement,
    FhirString? expression,
    Element? expressionElement,
    FhirUri? reference,
    Element? referenceElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FhirExpression.fromYaml(dynamic yaml) => yaml is String
      ? FhirExpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FhirExpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FhirExpression cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FhirExpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirExpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
