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
    super.objectPath = 'FhirExpression',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory FhirExpression.empty() => FhirExpression(
        language: ExpressionLanguage.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExpression.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirExpression';
    return FhirExpression(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      name: JsonParser.parsePrimitive<FhirId>(
        json,
        'name',
        FhirId.fromJson,
        '$objectPath.name',
      ),
      language: JsonParser.parsePrimitive<ExpressionLanguage>(
        json,
        'language',
        ExpressionLanguage.fromJson,
        '$objectPath.language',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
        '$objectPath.reference',
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
    if (json is Map<String, dynamic>) {
      return FhirExpression.fromJson(json);
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(language);
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

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirId) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is ExpressionLanguage) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reference':
        {
          if (child is FhirUri) {
            return copyWith(reference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'description':
        return ['FhirString'];
      case 'name':
        return ['FhirId'];
      case 'language':
        return ['FhirCode'];
      case 'expression':
        return ['FhirString'];
      case 'reference':
        return ['FhirUri'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirExpression]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  FhirExpression createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'name':
        {
          return copyWith(name: FhirId.empty());
        }
      case 'language':
        {
          return copyWith(language: ExpressionLanguage.empty());
        }
      case 'expression':
        {
          return copyWith(expression: FhirString.empty());
        }
      case 'reference':
        {
          return copyWith(reference: FhirUri.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  FhirExpression clear({
    bool id = false,
    bool extension_ = false,
    bool description = false,
    bool name = false,
    bool expression = false,
    bool reference = false,
  }) {
    return FhirExpression(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      description: description ? null : this.description,
      name: name ? null : this.name,
      language: language,
      expression: expression ? null : this.expression,
      reference: reference ? null : this.reference,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return FhirExpression(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirExpression) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    if (!equalsDeepWithNull(reference, o.reference)) {
      return false;
    }
    return true;
  }
}
