import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Annotation] /// A text note which also contains information about who made the statement
/// and when.
class Annotation extends DataType {
  Annotation({
    super.id,
    super.extension_,
    this.authorReference,
    this.authorString,
    this.authorStringElement,
    this.time,
    this.timeElement,
    required this.text,
    this.textElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'Annotation';

  /// [authorReference] /// The individual responsible for making the annotation.
  final Reference? authorReference;

  /// [authorString] /// The individual responsible for making the annotation.
  final FhirString? authorString;
  final Element? authorStringElement;

  /// [time] /// Indicates when this particular annotation was made.
  final FhirDateTime? time;
  final Element? timeElement;

  /// [text] /// The text of the annotation in markdown format.
  final FhirMarkdown text;
  final Element? textElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (authorReference != null) {
      json['authorReference'] = authorReference!.toJson();
    }
    if (authorString?.value != null) {
      json['authorString'] = authorString!.toJson();
    }
    if (authorStringElement != null) {
      json['_authorString'] = authorStringElement!.toJson();
    }
    if (time?.value != null) {
      json['time'] = time!.toJson();
    }
    if (timeElement != null) {
      json['_time'] = timeElement!.toJson();
    }
    json['text'] = text.toJson();
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory Annotation.fromJson(Map<String, dynamic> json) {
    return Annotation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      authorReference: json['authorReference'] != null
          ? Reference.fromJson(json['authorReference'] as Map<String, dynamic>)
          : null,
      authorString: json['authorString'] != null
          ? FhirString.fromJson(json['authorString'])
          : null,
      authorStringElement: json['_authorString'] != null
          ? Element.fromJson(json['_authorString'] as Map<String, dynamic>)
          : null,
      time: json['time'] != null ? FhirDateTime.fromJson(json['time']) : null,
      timeElement: json['_time'] != null
          ? Element.fromJson(json['_time'] as Map<String, dynamic>)
          : null,
      text: FhirMarkdown.fromJson(json['text']),
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Annotation clone() => throw UnimplementedError();
  @override
  Annotation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Reference? authorReference,
    FhirString? authorString,
    Element? authorStringElement,
    FhirDateTime? time,
    Element? timeElement,
    FhirMarkdown? text,
    Element? textElement,
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
      authorStringElement: authorStringElement ?? this.authorStringElement,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Annotation.fromYaml(dynamic yaml) => yaml is String
      ? Annotation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Annotation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Annotation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Annotation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Annotation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
