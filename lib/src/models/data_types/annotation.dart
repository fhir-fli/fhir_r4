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
    this.authorXAnnotation,
    this.time,
    required this.text,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Annotation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Annotation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      authorXAnnotation:
          json['authorReference'] != null || json['_authorReference'] != null
              ? Reference.fromJson({
                  'value': json['authorReference'],
                  '_value': json['_authorReference'],
                })
              : json['authorString'] != null || json['_authorString'] != null
                  ? FhirString.fromJson({
                      'value': json['authorString'],
                      '_value': json['_authorString'],
                    })
                  : null,
      time: (json['time'] != null || json['_time'] != null)
          ? FhirDateTime.fromJson({
              'value': json['time'],
              '_value': json['_time'],
            })
          : null,
      text: FhirMarkdown.fromJson({
        'value': json['text'],
        '_value': json['_text'],
      }),
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
    if (json is Map<String, Object?>) {
      return Annotation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Annotation';

  /// [authorXAnnotation]
  /// The individual responsible for making the annotation.
  final AuthorXAnnotation? authorXAnnotation;

  /// [time]
  /// Indicates when this particular annotation was made.
  final FhirDateTime? time;

  /// [text]
  /// The text of the annotation in markdown format.
  final FhirMarkdown text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (authorXAnnotation != null) {
      json['authorXAnnotation'] = authorXAnnotation!.toJson();
    }

    addField('time', time);
    addField('text', text);
    return json;
  }

  @override
  Annotation clone() => throw UnimplementedError();
  @override
  Annotation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    AuthorXAnnotation? authorXAnnotation,
    FhirDateTime? time,
    FhirMarkdown? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Annotation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      authorXAnnotation: authorXAnnotation ?? this.authorXAnnotation,
      time: time ?? this.time,
      text: text ?? this.text,
    );
  }
}
