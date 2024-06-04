// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'annotation.freezed.dart';
part 'annotation.g.dart';

/// [Annotation] A  text note which also  contains information about who made
@freezed
class Annotation with _$Annotation implements DataType {
  /// [Annotation] A  text note which also  contains information about who made
  const Annotation._();

  /// [Annotation] A  text note which also  contains information about who made
  ///  the statement and when.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [authorReference] The individual responsible for making the annotation.
  ///
  /// [authorString] The individual responsible for making the annotation.
  ///
  /// [authorStringElement] Extensions for authorString
  ///
  /// [time] Indicates when this particular annotation was made.
  ///
  /// [timeElement] Extensions for time
  ///
  /// [text] The text of the annotation in markdown format.
  ///
  /// [textElement] Extensions for text
  const factory Annotation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [authorReference] The individual responsible for making the annotation.
    Reference? authorReference,

    /// [authorString] The individual responsible for making the annotation.
    String? authorString,

    /// [authorStringElement] Extensions for authorString
    @JsonKey(name: '_authorString') PrimitiveElement? authorStringElement,

    /// [time] Indicates when this particular annotation was made.
    FhirDateTime? time,

    /// [timeElement] Extensions for time
    @JsonKey(name: '_time') PrimitiveElement? timeElement,

    /// [text] The text of the annotation in markdown format.
    FhirMarkdown? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _Annotation;

  @override
  String get fhirType => 'Annotation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Annotation.fromYaml(dynamic yaml) => yaml is String
      ? Annotation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Annotation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Annotation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  /// Acts like a constructor, returns a [Annotation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Annotation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AnnotationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
