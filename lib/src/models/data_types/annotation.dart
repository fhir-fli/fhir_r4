import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Annotation]
/// A text note which also contains information about who made the
/// statement and when.
class Annotation extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Annotation]

  const Annotation({
    super.id,
    super.extension_,
    this.authorX,
    this.time,
    required this.text,
    super.disallowExtensions,
    super.objectPath = 'Annotation',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Annotation.empty() => Annotation(
        text: FhirMarkdown.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Annotation.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Annotation';
    return Annotation(
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
      authorX: JsonParser.parsePolymorphic<AuthorXAnnotation>(
        json,
        {
          'authorReference': Reference.fromJson,
          'authorString': FhirString.fromJson,
        },
        objectPath,
      ),
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
        '$objectPath.time',
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
        '$objectPath.text',
      )!,
    );
  }

  /// Deserialize [Annotation]
  /// from a [String] or [YamlMap] object
  factory Annotation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Annotation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Annotation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Annotation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Annotation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Annotation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Annotation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Annotation';

  /// [authorX]
  /// The individual responsible for making the annotation.
  final AuthorXAnnotation? authorX;

  /// Getter for [authorReference] as a Reference
  Reference? get authorReference => authorX?.isAs<Reference>();

  /// Getter for [authorString] as a FhirString
  FhirString? get authorString => authorX?.isAs<FhirString>();

  /// [time]
  /// Indicates when this particular annotation was made.
  final FhirDateTime? time;

  /// [text]
  /// The text of the annotation in markdown format.
  final FhirMarkdown text;
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
      case 'author':
        fields.add(authorX!);
      case 'authorX':
        fields.add(authorX!);
      case 'authorReference':
        if (authorX is Reference) {
          fields.add(authorX!);
        }
      case 'authorString':
        if (authorX is FhirString) {
          fields.add(authorX!);
        }
      case 'time':
        if (time != null) {
          fields.add(time!);
        }
      case 'text':
        fields.add(text);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
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
  Annotation clone() => throw UnimplementedError();
  @override
  Annotation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    AuthorXAnnotation? authorX,
    FhirDateTime? time,
    FhirMarkdown? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Annotation(
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
      authorX: authorX?.copyWith(
            objectPath: '$newObjectPath.authorX',
          ) as AuthorXAnnotation? ??
          this.authorX,
      time: time?.copyWith(
            objectPath: '$newObjectPath.time',
          ) ??
          this.time,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Annotation) {
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
    if (!equalsDeepWithNull(authorX, o.authorX)) {
      return false;
    }
    if (!equalsDeepWithNull(time, o.time)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    return true;
  }
}
