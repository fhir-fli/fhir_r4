import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR, FhirExpression;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [FhirExpression] to a Builder
extension BuilderFhirExpression on FhirExpression {
  /// Converts [FhirExpression] to a [FhirExpressionBuilder]
  FhirExpressionBuilder get toBuilder =>
      FhirExpressionBuilder.fromJson(toJson());
}

/// [FhirExpressionBuilder]
/// A expression that is evaluated in a specified context and returns a
/// value. The context of use of the expression must specify the context in
/// which the expression is evaluated, and how the result of the expression
/// is used.
class FhirExpressionBuilder extends DataTypeBuilder
    implements
        DefinitionXEvidenceVariableCharacteristicBuilder,
        ValueXParametersParameterBuilder,
        DefinitionXResearchElementDefinitionCharacteristicBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [FhirExpressionBuilder]

  FhirExpressionBuilder({
    super.id,
    super.extension_,
    this.description,
    this.name,
    this.language,
    this.expression,
    this.reference,
    super.disallowExtensions,
    super.objectPath = 'FhirExpressionBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FhirExpressionBuilder.empty() => FhirExpressionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExpressionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirExpression';
    return FhirExpressionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      name: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'name',
        FhirIdBuilder.fromJson,
        '$objectPath.name',
      ),
      language: JsonParser.parsePrimitive<ExpressionLanguageBuilder>(
        json,
        'language',
        ExpressionLanguageBuilder.fromJson,
        '$objectPath.language',
      ),
      expression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
      reference: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'reference',
        FhirUriBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [FhirExpressionBuilder]
  /// from a [String] or [YamlMap] object
  factory FhirExpressionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirExpressionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirExpressionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirExpressionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirExpressionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExpressionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirExpressionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Expression';

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  FhirStringBuilder? description;

  /// [name]
  /// A short name assigned to the expression to allow for multiple reuse of
  /// the expression in the context where it is defined.
  FhirIdBuilder? name;

  /// [language]
  /// The media type of the language for the expression.
  ExpressionLanguageBuilder? language;

  /// [expression]
  /// An expression in the specified language that returns a value.
  FhirStringBuilder? expression;

  /// [reference]
  /// A URI that defines where the expression is found.
  FhirUriBuilder? reference;

  /// Converts a FhirExpressionBuilder to [FhirExpression]
  FhirExpression build() => FhirExpression.fromJson(toJson());

  /// Converts a [FhirExpressionBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'description',
      'name',
      'language',
      'expression',
      'reference',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirIdBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is ExpressionLanguageBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirStringBuilder) {
            expression = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is FhirUriBuilder) {
            reference = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirIdBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      case 'reference':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirExpressionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirIdBuilder.empty();
          return;
        }
      case 'language':
        {
          language = ExpressionLanguageBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirStringBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool description = false,
    bool name = false,
    bool language = false,
    bool expression = false,
    bool reference = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (description) this.description = null;
    if (name) this.name = null;
    if (language) this.language = null;
    if (expression) this.expression = null;
    if (reference) this.reference = null;
  }

  @override
  FhirExpressionBuilder clone() => throw UnimplementedError();
  @override
  FhirExpressionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? description,
    FhirIdBuilder? name,
    ExpressionLanguageBuilder? language,
    FhirStringBuilder? expression,
    FhirUriBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = FhirExpressionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      description: description ?? this.description,
      name: name ?? this.name,
      language: language ?? this.language,
      expression: expression ?? this.expression,
      reference: reference ?? this.reference,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! FhirExpressionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}
