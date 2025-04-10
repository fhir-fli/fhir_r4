import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Annotation, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AnnotationBuilder]
/// A text note which also contains information about who made the
/// statement and when.
class AnnotationBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [AnnotationBuilder]

  AnnotationBuilder({
    super.id,
    super.extension_,
    this.authorX,
    this.time,
    this.text,
    super.disallowExtensions,
    super.objectPath = 'AnnotationBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AnnotationBuilder.empty() => AnnotationBuilder(
        text: FhirMarkdownBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AnnotationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Annotation';
    return AnnotationBuilder(
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
      authorX: JsonParser.parsePolymorphic<AuthorXAnnotationBuilder>(
        json,
        {
          'authorReference': ReferenceBuilder.fromJson,
          'authorString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      time: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'time',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.time',
      ),
      text: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'text',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [AnnotationBuilder]
  /// from a [String] or [YamlMap] object
  factory AnnotationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AnnotationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AnnotationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AnnotationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AnnotationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AnnotationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AnnotationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Annotation';

  /// [authorX]
  /// The individual responsible for making the annotation.
  AuthorXAnnotationBuilder? authorX;

  /// Getter for [authorReference] as a ReferenceBuilder
  ReferenceBuilder? get authorReference => authorX?.isAs<ReferenceBuilder>();

  /// Getter for [authorString] as a FhirStringBuilder
  FhirStringBuilder? get authorString => authorX?.isAs<FhirStringBuilder>();

  /// [time]
  /// Indicates when this particular annotation was made.
  FhirDateTimeBuilder? time;

  /// [text]
  /// The text of the annotation in markdown format.
  FhirMarkdownBuilder? text;

  /// Converts a [AnnotationBuilder]
  /// to [Annotation]
  @override
  Annotation build() => Annotation.fromJson(toJson());

  /// Converts a [AnnotationBuilder]
  /// to a [Map<String, dynamic>]
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
    if (authorX != null) {
      final fhirType = authorX!.fhirType;
      addField('author${fhirType.capitalize()}', authorX);
    }

    addField('time', time);
    addField('text', text);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'authorX',
      'time',
      'text',
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
      case 'author':
        if (authorX != null) {
          fields.add(authorX!);
        }
      case 'authorX':
        if (authorX != null) {
          fields.add(authorX!);
        }
      case 'authorReference':
        if (authorX is ReferenceBuilder) {
          fields.add(authorX!);
        }
      case 'authorString':
        if (authorX is FhirStringBuilder) {
          fields.add(authorX!);
        }
      case 'time':
        if (time != null) {
          fields.add(time!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
      case 'authorX':
        {
          if (child is AuthorXAnnotationBuilder) {
            authorX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              authorX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              authorX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorReference':
        {
          if (child is ReferenceBuilder) {
            authorX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authorString':
        {
          if (child is FhirStringBuilder) {
            authorX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'time':
        {
          if (child is FhirDateTimeBuilder) {
            time = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                time = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirMarkdownBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'author':
      case 'authorX':
        return [
          'ReferenceBuilder',
          'FhirStringBuilder',
        ];
      case 'authorReference':
        return ['ReferenceBuilder'];
      case 'authorString':
        return ['FhirStringBuilder'];
      case 'time':
        return ['FhirDateTimeBuilder'];
      case 'text':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AnnotationBuilder]
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
      case 'author':
      case 'authorX':
      case 'authorReference':
        {
          authorX = ReferenceBuilder.empty();
          return;
        }
      case 'authorString':
        {
          authorX = FhirStringBuilder.empty();
          return;
        }
      case 'time':
        {
          time = FhirDateTimeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AnnotationBuilder clone() => throw UnimplementedError();
  @override
  AnnotationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    AuthorXAnnotationBuilder? authorX,
    FhirDateTimeBuilder? time,
    FhirMarkdownBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AnnotationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      authorX: authorX ?? this.authorX,
      time: time ?? this.time,
      text: text ?? this.text,
    )..objectPath = newObjectPath;
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
    if (o is! AnnotationBuilder) {
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
      authorX,
      o.authorX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      time,
      o.time,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}
