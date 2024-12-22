import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirExpression]
/// A expression that is evaluated in a specified context and returns a
/// value. The context of use of the expression must specify the context in
/// which the expression is evaluated, and how the result of the expression
/// is used.
class FhirExpression extends DataType
    implements
        DefinitionXEvidenceVariableCharacteristic,
        ValueXParametersParameter,
        DefinitionXResearchElementDefinitionCharacteristic,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [FhirExpression]

  const FhirExpression({
    super.id,
    super.extension_,
    this.description,
    this.name,
    required this.language,
    this.expression,
    this.reference,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExpression.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirExpression(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
      ),
      language: JsonParser.parsePrimitive<ExpressionLanguage>(
        json,
        'language',
        ExpressionLanguage.fromJson,
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
      ),
    );
  }

  /// Deserialize [FhirExpression]
  /// from a [String] or [YamlMap] object
  factory FhirExpression.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirExpression.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirExpression.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirExpression '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirExpression]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExpression.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirExpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Expression';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('description', description);
    addField('name', name);
    addField('language', language);
    addField('expression', expression);
    addField('reference', reference);
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
  }) {
    return FhirExpression(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      description: description ?? this.description,
      name: name ?? this.name,
      language: language ?? this.language,
      expression: expression ?? this.expression,
      reference: reference ?? this.reference,
    );
  }
}
