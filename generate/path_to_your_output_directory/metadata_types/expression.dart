/// /// [Expression] A expression that is evaluated in a specified context and
/// returns a value. The context of use of the expression must specify the
/// context in which the expression is evaluated, and how the result of the
/// expression is used.

@freezed
class Expression with _$Expression {
  const Expression._();

  const factory Expression({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [description] A brief, natural language description of the condition
/// that effectively communicates the intended semantics.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [name] A short name assigned to the expression to allow for multiple
/// reuse of the expression in the context where it is defined.

    @JsonKey(name: 'name') FhirCode? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [language] The media type of the language for the expression.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [expression] An expression in the specified language that returns a
/// value.

    @JsonKey(name: 'expression') String? expression,
/// /// [_expression] Extensions for expression

    @JsonKey(name: '_expression') FhirElement? expressionElement,
/// /// [reference] A URI that defines where the expression is found.

    @JsonKey(name: 'reference') FhirUri? reference,
/// /// [_reference] Extensions for reference

    @JsonKey(name: '_reference') FhirElement? referenceElement,
  }) = _$Expression;

  @override
  String get fhirType => 'Expression';

  factory Expression.fromJson(Map<String, dynamic> json) =>
      _$ExpressionFromJson(json);

  factory Expression.fromYaml(dynamic yaml) => yaml is String
      ? Expression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Expression.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Expression cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Expression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExpressionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
