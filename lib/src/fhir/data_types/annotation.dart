import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Annotation]
/// A text note which also contains information about who made the
/// statement and when.
class Annotation extends DataType {
  /// Primary constructor for
  /// [Annotation]

  Annotation({
    super.id,
    super.extension_,
    this.authorReference,
    this.authorString,
    this.time,
    required this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Annotation.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Annotation(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      authorReference: json['authorReference'] != null
          ? Reference.fromJson(
              json['authorReference'] as Map<String, dynamic>,
            )
          : null,
      authorString: parseField<FhirString>(
        json['authorString'],
        json['_authorString'],
        FhirString.fromJson,
      ),
      time: parseField<FhirDateTime>(
        json['time'],
        json['_time'],
        FhirDateTime.fromJson,
      ),
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

  /// [authorReference]
  /// The individual responsible for making the annotation.
  final Reference? authorReference;

  /// [authorString]
  /// The individual responsible for making the annotation.
  final FhirString? authorString;

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

    if (authorReference != null) {
      json['authorReference'] = authorReference!.toJson();
    }

    addField('authorString', authorString);
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
    Reference? authorReference,
    FhirString? authorString,
    FhirDateTime? time,
    FhirMarkdown? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Annotation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      authorReference: authorReference ?? this.authorReference,
      authorString: authorString ?? this.authorString,
      time: time ?? this.time,
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
