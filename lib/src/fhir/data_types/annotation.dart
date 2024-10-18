import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Annotation]
/// A text note which also contains information about who made the
/// statement and when.
class Annotation extends DataType {
  /// Primary constructor for [Annotation]

  Annotation({
    super.id,
    this.extension_,
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
    return Annotation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      authorReference: json['authorReference'] != null
          ? Reference.fromJson(
              json['authorReference'] as Map<String, dynamic>,
            )
          : null,
      authorString: json['authorString'] != null
          ? FhirString.fromJson({
              'value': json['authorString'],
              '_value': json['_authorString'],
            })
          : null,
      time: json['time'] != null
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

  /// Deserialize [Annotation] from a [String]
  /// or [YamlMap] object
  factory Annotation.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Annotation.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Annotation.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError('Annotation cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Annotation]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (authorReference != null) {
      json['authorReference'] = authorReference!.toJson();
    }

    if (authorString != null) {
      final fieldJson2 = authorString!.toJson();
      json['authorString'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_authorString'] = fieldJson2['_value'];
      }
    }

    if (time != null) {
      final fieldJson3 = time!.toJson();
      json['time'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_time'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = text.toJson();
    json['text'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_text'] = fieldJson4['_value'];
    }

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
