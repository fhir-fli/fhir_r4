// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'fhir_expression.freezed.dart';
part 'fhir_expression.g.dart';

/// [FhirExpression] A expression that is evaluated in a specified context and
@freezed
class FhirExpression with _$FhirExpression implements DataType {
  /// [FhirExpression] A expression that is evaluated in a specified context and
  const FhirExpression._();

  /// [FhirExpression] A expression that is evaluated in a specified context and
  /// returns a value. The context of use of the expression must specify the
  /// context in which the expression is evaluated, and how the result of the
  ///  expression is used.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [description] A brief, natural language description of the condition that
  ///  effectively communicates the intended semantics.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [name] A short name assigned to the expression to allow for multiple
  ///  reuse of the expression in the context where it is defined.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [language] The media type of the language for the expression.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [expression] An expression in the specified language that returns a
  ///  value.
  ///
  /// [expressionElement] Extensions for expression
  ///
  /// [reference] A URI that defines where the expression is found.
  ///
  /// [referenceElement] Extensions for reference
  const factory FhirExpression({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [description] A brief, natural language description of the condition that
    ///  effectively communicates the intended semantics.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [name] A short name assigned to the expression to allow for multiple
    ///  reuse of the expression in the context where it is defined.
    FhirId? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') Element? nameElement,
    @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)

    /// [language] The media type of the language for the expression.
    FhirExpressionLanguage? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [expression] An expression in the specified language that returns a
    ///  value.
    String? expression,

    /// [expressionElement] Extensions for expression
    @JsonKey(name: '_expression') Element? expressionElement,

    /// [reference] A URI that defines where the expression is found.
    FhirUri? reference,

    /// [referenceElement] Extensions for reference
    @JsonKey(name: '_reference') Element? referenceElement,
  }) = _FhirExpression;

  @override
  String get fhirType => 'FhirExpression';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirExpression.fromYaml(dynamic yaml) => yaml is String
      ? FhirExpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirExpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirExpression cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirExpression.fromJson(Map<String, dynamic> json) =>
      _$FhirExpressionFromJson(json);

  /// Acts like a constructor, returns a [FhirExpression], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirExpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirExpressionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
