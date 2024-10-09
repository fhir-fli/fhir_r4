import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'annotation.g.dart';

/// [Annotation] /// A text note which also contains information about who made the statement
/// and when.
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authorReference] /// The individual responsible for making the annotation.
  @JsonKey(name: 'authorReference')
  final Reference? authorReference;

  /// [authorString] /// The individual responsible for making the annotation.
  @JsonKey(name: 'authorString')
  final FhirString? authorString;
  @JsonKey(name: '_authorString')
  final Element? authorStringElement;

  /// [time] /// Indicates when this particular annotation was made.
  @JsonKey(name: 'time')
  final FhirDateTime? time;
  @JsonKey(name: '_time')
  final Element? timeElement;

  /// [text] /// The text of the annotation in markdown format.
  @JsonKey(name: 'text')
  final FhirMarkdown text;
  @JsonKey(name: '_text')
  final Element? textElement;
  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnnotationToJson(this);

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
