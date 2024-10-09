import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'codeable_reference.g.dart';

/// [CodeableReference] /// A reference to a resource (by instance), or instead, a reference to a
/// concept defined in a terminology or ontology (by class).
@JsonSerializable()
class CodeableReference extends DataType {
  CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CodeableReference';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [concept] /// A reference to a concept - e.g. the information is identified by its
  /// general class to the degree of precision found in the terminology.
  @JsonKey(name: 'concept')
  final CodeableConcept? concept;

  /// [reference] /// A reference to a resource the provides exact details about the information
  /// being referenced.
  @JsonKey(name: 'reference')
  final Reference? reference;
  factory CodeableReference.fromJson(Map<String, dynamic> json) =>
      _$CodeableReferenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeableReferenceToJson(this);

  @override
  CodeableReference clone() => throw UnimplementedError();
  @override
  CodeableReference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? concept,
    Reference? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeableReference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      concept: concept ?? this.concept,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CodeableReference.fromYaml(dynamic yaml) => yaml is String
      ? CodeableReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeableReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeableReference cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeableReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeableReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
