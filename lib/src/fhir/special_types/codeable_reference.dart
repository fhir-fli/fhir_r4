// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'codeable_reference.freezed.dart';
part 'codeable_reference.g.dart';

/// [CodeableReference] A reference to a resource (by instance), or instead, a
/// reference to a concept defined in a terminology or ontology (by class).

@freezed
class CodeableReference with _$CodeableReference implements DataType {
  /// [CodeableReference] A reference to a resource (by instance), or instead, a
  /// reference to a concept defined in a terminology or ontology (by class).

  const CodeableReference._();

  /// [CodeableReference] A reference to a resource (by instance), or instead, a
  /// reference to a concept defined in a terminology or ontology (by class).
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.",
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  ///
  /// [concept] A reference to a concept - e.g. the information is identified by
  /// its general class to the degree of precision found in the terminology.",
  ///
  /// [reference] A reference to a resource the provides exact details about the
  /// information being referenced.
  const factory CodeableReference({
    /// [id] Unique id for the element within a resource (for internal references).
    /// This may be any string value that does not contain spaces.",
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [concept] A reference to a concept - e.g. the information is identified by
    /// its general class to the degree of precision found in the terminology.",
    CodeableConcept? concept,

    /// [reference] A reference to a resource the provides exact details about the
    /// information being referenced.
    Reference? reference,
  }) = _CodeableReference;

  @override
  String get fhirType => 'CodeableReference';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeableReference.fromYaml(dynamic yaml) => yaml is String
      ? CodeableReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeableReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeableReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeableReference.fromJson(Map<String, dynamic> json) =>
      _$CodeableReferenceFromJson(json);

  /// Acts like a constructor, returns a [CodeableReference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeableReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeableReferenceFromJson(json);
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
