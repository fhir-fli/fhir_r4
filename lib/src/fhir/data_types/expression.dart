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
    super.extension_,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    required this.language,

    /// Extensions for [language]
    this.languageElement,
    this.expression,

    /// Extensions for [expression]
    this.expressionElement,
    this.reference,

    /// Extensions for [reference]
    this.referenceElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirId.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      language: ExpressionLanguage.fromJson(json['language']),
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      expression: json['expression'] != null
          ? FhirString.fromJson(json['expression'])
          : null,
      expressionElement: json['_expression'] != null
          ? Element.fromJson(
              json['_expression'] as Map<String, dynamic>,
            )
          : null,
      reference: json['reference'] != null
          ? FhirUri.fromJson(json['reference'])
          : null,
      referenceElement: json['_reference'] != null
          ? Element.fromJson(
              json['_reference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [FhirExpression] from a [String] or [YamlMap] object
  factory FhirExpression.fromYaml(dynamic yaml) => yaml is String
      ? FhirExpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirExpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FhirExpression cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirExpression] that takes in a [String]
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

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [name]
  /// A short name assigned to the expression to allow for multiple reuse of
  /// the expression in the context where it is defined.
  final FhirId? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [language]
  /// The media type of the language for the expression.
  final ExpressionLanguage language;

  /// Extensions for [language]
  final Element? languageElement;

  /// [expression]
  /// An expression in the specified language that returns a value.
  final FhirString? expression;

  /// Extensions for [expression]
  final Element? expressionElement;

  /// [reference]
  /// A URI that defines where the expression is found.
  final FhirUri? reference;

  /// Extensions for [reference]
  final Element? referenceElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['language'] = language.toJson();
    if (expression?.value != null) {
      json['expression'] = expression!.toJson();
    }
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (reference?.value != null) {
      json['reference'] = reference!.toJson();
    }
    if (referenceElement != null) {
      json['_reference'] = referenceElement!.toJson();
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
}
