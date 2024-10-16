import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeableReference]
/// A reference to a resource (by instance), or instead, a reference to a
/// concept defined in a terminology or ontology (by class).
class CodeableReference extends DataType {
  /// Primary constructor for [CodeableReference]

  CodeableReference({
    super.id,
    this.extension_,
    this.concept,
    this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableReference.fromJson(Map<String, dynamic> json) {
    return CodeableReference(
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
      concept: json['concept'] != null
          ? CodeableConcept.fromJson(
              json['concept'] as Map<String, dynamic>,
            )
          : null,
      reference: json['reference'] != null
          ? Reference.fromJson(
              json['reference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CodeableReference] from a [String]
  /// or [YamlMap] object
  factory CodeableReference.fromYaml(dynamic yaml) => yaml is String
      ? CodeableReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CodeableReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CodeableReference cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CodeableReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeableReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeableReference';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [concept]
  /// A reference to a concept - e.g. the information is identified by its
  /// general class to the degree of precision found in the terminology.
  final CodeableConcept? concept;

  /// [reference]
  /// A reference to a resource the provides exact details about the
  /// information being referenced.
  final Reference? reference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (concept != null) {
      json['concept'] = concept!.toJson();
    }
    if (reference != null) {
      json['reference'] = reference!.toJson();
    }
    return json;
  }

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
}
